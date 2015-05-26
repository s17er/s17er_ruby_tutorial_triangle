require File.expand_path(File.dirname(__FILE__) + '/../triangle')

describe Triangle do
  specify '各辺が3,3,3は正三角形である' do
	  expect(Triangle.triangle_type(3, 3, 3)).to eq TriangleType::Equilateral  
  end
end

describe Triangle do
  specify '各辺が1,1,1は正三角形である' do
	  expect(Triangle.triangle_type(1, 1, 1)).to eq TriangleType::Equilateral  
  end
  specify '各辺が0,0,0は三角形でない' do
	  expect(Triangle.triangle_type(0, 0, 0)).to eq TriangleType::NotTriangle  
  end
end

describe Triangle do
  specify '各辺が3,3,5は二等辺三角形である' do
	  expect(Triangle.triangle_type(3, 3, 5)).to eq TriangleType::Isosceles   
  end
  specify '各辺が3,5,3は二等辺三角形である' do
	  expect(Triangle.triangle_type(3, 5, 3)).to eq TriangleType::Isosceles   
  end
  specify '各辺が5,3,3は二等辺三角形である' do
	  expect(Triangle.triangle_type(5, 3, 3)).to eq TriangleType::Isosceles   
  end
end

describe Triangle do
  specify '各辺が3,3,6は三角形でない' do
	  expect(Triangle.triangle_type(3, 3, 6)).to eq TriangleType::NotTriangle   
  end
end

describe Triangle do
  specify '各辺が3,4,5は不等辺三角形である' do
	  expect(Triangle.triangle_type(3, 4, 5)).to eq TriangleType::Scalene   
  end
end


describe Triangle do
  specify '1辺が0の場合、三角形ではない 1' do
	  expect(Triangle.triangle_type(0, 1, 2)).to eq TriangleType::NotTriangle 
  end
  specify '1辺が0の場合、三角形ではない 2' do
	  expect(Triangle.triangle_type(1, 0, 2)).to eq TriangleType::NotTriangle 
  end
  specify '1辺が0の場合、三角形ではない 3' do
	  expect(Triangle.triangle_type(1, 2, 0)).to eq TriangleType::NotTriangle 
  end
  specify '1辺が-1の場合、三角形ではない 1' do
	  expect(Triangle.triangle_type(-1, 1, 2)).to eq TriangleType::NotTriangle 
  end
  specify '1辺が-1の場合、三角形ではない 2' do
	  expect(Triangle.triangle_type(1, -1, 2)).to eq TriangleType::NotTriangle 
  end
  specify '1辺が-1の場合、三角形ではない 3' do
	  expect(Triangle.triangle_type(1, 2, -1)).to eq TriangleType::NotTriangle 
  end
end

