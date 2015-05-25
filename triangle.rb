module TriangleType
	Equilateral = 1 # 正三角形
	Isosceles = 2 # 二等辺三角形
	Scalene = 3 # 不等辺三角形
	NotTriangle = 0
end

MESSAGE = {
	TriangleType::Equilateral => "正三角形ですね！",
	TriangleType::Isosceles => "二等辺三角形ですね！",
	TriangleType::Scalene => "不等辺三角形ですね！",
	TriangleType::NotTriangle => "三角形じゃないです＞＜",
}

class Triangle
	def self.triangle_type(a, b, c)
		if is_triangle(a, b, c)
			if is_eqilateral_triangle(a, b, c)
				TriangleType::Equilateral
			elsif is_isosceles_triangle(a, b, c)
				TriangleType::Isosceles
			else
				TriangleType::Scalene
			end
		else
			TriangleType::NotTriangle
		end
	end

	def self.print_triangle_type(a, b, c)
		puts MESSAGE[triangle_type(a, b, c)]
	end

	def self.is_triangle(a, b, c) 
		a + b > c && b + c > a && c + a > b
	end

	def self.is_eqilateral_triangle(a, b, c)
		a == b && b == c && c == a
	end

	def self.is_isosceles_triangle(a, b, c)
		a == b || b == c || c == a
	end

end

if __FILE__ == $0
	if ARGV.length == 3
		Triangle.print_triangle_type(ARGV[0].to_i(), ARGV[1].to_i(), ARGV[2].to_i())
	else
		puts '3 argument is need'
	end
end
