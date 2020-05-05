nT = 8
nh = 1
n = 2*nh+1

Ga = zeros(nT, n)
x = [1, 2, 3, 4, 5, 6, 7, 8]

for i in 1:1:nT
    x=[i]
end

y = [1]
for i in x
    Ga[i,1] = 1
    for j in y
        Ga[i,2*j] = cos(j*i*2*pi/nT)
        Ga[i,2*j+1] = sin(j*i*2*pi/nT)
    end
end

Gp = zeros(n, nT)
for i in x
    Gp[1,i] = 1/nT
    for j in y
        Gp[2*j,i] = (1/nT)*2*cos(j*i*2*pi/nT)
        Gp[2*j+1,i] = (1/nT)*2*sin(j*i*2*pi/nT)
    end
end
print(Gp)
