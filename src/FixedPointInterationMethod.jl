module FPIteration

export norm, solve

function norm(mat :: AbstractArray{<:Real, 2}) :: Real
  @assert size(mat, 1) == size(mat,2)
  n = size(mat, 1)
  return maximum(sum.(selectdim(abs.(mat), 1, i) for i = 1:n))
end

arr = [1 2 3; 4 5 6; 7 8 9]

print(norm(arr))

end
