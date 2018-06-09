Cat.UnpackedVector3d = Table.Callable (
	function (x, y, z)
		return x, y, z
	end
)

function Cat.UnpackedVector3d.Zero ()
	return 0, 0, 0
end

-- Norms
function Cat.UnpackedVector3d.L0Norm (x, y, z)
	return math.min (math.abs (x), math.abs (y), math.abs (z))
end

function Cat.UnpackedVector3d.L1Norm (x, y, z)
	return math.abs (x) + math.abs (y) + math.abs (z)
end

function Cat.UnpackedVector3d.L2Norm (x, y, z)
	return math.sqrt (x * x + y * y + z * z)
end

function Cat.UnpackedVector3d.L2NormSquared (x, y, z)
	return x * x + y * y + z * z
end

function Cat.UnpackedVector3d.LInfinityNorm (x, y, z)
	return math.max (math.abs (x), math.abs (y), math.abs (z))
end

Cat.UnpackedVector3d.Length        = Cat.UnpackedVector3d.L2Norm
Cat.UnpackedVector3d.LengthSquared = Cat.UnpackedVector3d.L2NormSquared

function Cat.UnpackedVector3d.Distance (x1, y1, z1, x2, y2, z2)
	local dx, dy, dz = x2 - x1, y2 - y1, z2 - z1
	return math.sqrt (dx * dx + dy * dy + dz * dz)
end

function Cat.UnpackedVector3d.DistanceSquared (x1, y1, z1, x2, y2, z2)
	local dx, dy, dz = x2 - x1, y2 - y1, z2 - z1
	return dx * dx + dy * dy + dz * dz
end

-- Arithmetic
function Cat.UnpackedVector3d.Add (x1, y1, z1, x2, y2, z2)
	return x1 + x2, y1 + y2, z1 + z2
end

function Cat.UnpackedVector3d.Subtract (x1, y1, z1, x2, y2, z2)
	return x1 - x2, y1 - y2, z1 - z2
end

function Cat.UnpackedVector3d.Negate (x, y, z)
	return -x, -y, -z
end

function Cat.UnpackedVector3d.ScalarMultiply (x, y, z, k)
	return x * k, y * k, z * k
end

function Cat.UnpackedVector3d.ScalarDivide (x, y, z, k)
	return x / k, y / k, z / k
end

-- Products
function Cat.UnpackedVector3d.InnerProduct (x1, y1, z1, x2, y2, z2)
	return x1 * x2 + y1 * y2 + z1 * z2
end

function Cat.UnpackedVector3d.OuterProduct (x1, y1, z1, x2, y2, z2)
	return x1 * x2, x1 * y2, x1 * z2,
	       y1 * x2, y1 * y2, y1 * z2,
	       z1 * x2, z1 * y2, z1 * z2
end

function Cat.UnpackedVector3d.CrossProduct (x1, y1, z1, x2, y2, z2)
	return y1 * z2 - z1 * y2,
	       z1 * x2 - x1 * z2,
	       x1 * y2 - y1 * x2
end

Cat.UnpackedVector3d.DotProduct = Cat.UnpackedVector3d.InnerProduct
Cat.UnpackedVector3d.Dot        = Cat.UnpackedVector3d.InnerProduct
Cat.UnpackedVector3d.Cross      = Cat.UnpackedVector3d.Cross

-- Utility
function Cat.UnpackedVector2d.Clone (x, y, z)
	return x, y, z
end

function Cat.UnpackedVector3d.Equals (x1, y1, z1, x2, y2, z2)
	return x1 == x2 and y1 == y2 and z1 == z2
end

function Cat.UnpackedVector3d.Lerp (t, x1, y1, z1, x2, y2, z2)
	return t * x2 + (1 - t) * x1,
	       t * y2 + (1 - t) * y1,
	       t * z2 + (1 - t) * z1
end

function Cat.UnpackedVector3d.ToString (x, y, z)
	return "(" .. x .. ", " .. y .. ", " .. z .. ")"
end
