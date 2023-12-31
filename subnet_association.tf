resource "aws_route_table_association" "rta_subnet_public1" {
  subnet_id      = aws_subnet.subnet_public1.id
  route_table_id = aws_route_table.rtb_public.id
}

resource "aws_route_table_association" "rta_subnet_public2" {
  subnet_id      = aws_subnet.subnet_public2.id
  route_table_id = aws_route_table.rtb_public.id
}

resource "aws_route_table_association" "rta_subnet_private1" {
  subnet_id      = aws_subnet.subnet_private1.id
  route_table_id = aws_route_table.eks_nat_rt.id
}

resource "aws_route_table_association" "rta_subnet_private2" {
  subnet_id      = aws_subnet.subnet_private2.id
  route_table_id = aws_route_table.eks_nat_rt.id
}