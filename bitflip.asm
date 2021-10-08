

0000000100003970 <_timestamp>:
   100003970:	55                   	push   %rbp
   100003971:	48 89 e5             	mov    %rsp,%rbp
   100003974:	48 83 ec 10          	sub    $0x10,%rsp
   100003978:	31 ff                	xor    %edi,%edi
   10000397a:	e8 a7 04 00 00       	callq  100003e26 <_main+0x436>
   10000397f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   100003983:	48 8d 7d f8          	lea    -0x8(%rbp),%rdi
   100003987:	e8 7c 04 00 00       	callq  100003e08 <_main+0x418>
   10000398c:	48 89 c7             	mov    %rax,%rdi
   10000398f:	e8 44 04 00 00       	callq  100003dd8 <_main+0x3e8>
   100003994:	48 83 c4 10          	add    $0x10,%rsp
   100003998:	5d                   	pop    %rbp
   100003999:	c3                   	retq   
   10000399a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000001000039a0 <_stringify>:
   1000039a0:	55                   	push   %rbp
   1000039a1:	48 89 e5             	mov    %rsp,%rbp
   1000039a4:	48 83 ec 10          	sub    $0x10,%rsp
   1000039a8:	89 fa                	mov    %edi,%edx
   1000039aa:	48 8d 35 3f 05 00 00 	lea    0x53f(%rip),%rsi        # 100003ef0 <_main+0x500>
   1000039b1:	48 8d 7d f8          	lea    -0x8(%rbp),%rdi
   1000039b5:	31 c0                	xor    %eax,%eax
   1000039b7:	e8 22 04 00 00       	callq  100003dde <_main+0x3ee>
   1000039bc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1000039c0:	48 83 c4 10          	add    $0x10,%rsp
   1000039c4:	5d                   	pop    %rbp
   1000039c5:	c3                   	retq   
   1000039c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
   1000039cd:	00 00 00 

00000001000039d0 <_osdetect>:
   1000039d0:	55                   	push   %rbp
   1000039d1:	48 89 e5             	mov    %rsp,%rbp
   1000039d4:	48 63 f7             	movslq %edi,%rsi
   1000039d7:	48 8d 3d 15 05 00 00 	lea    0x515(%rip),%rdi        # 100003ef3 <_main+0x503>
   1000039de:	e8 1f 04 00 00       	callq  100003e02 <_main+0x412>
   1000039e3:	31 c0                	xor    %eax,%eax
   1000039e5:	5d                   	pop    %rbp
   1000039e6:	c3                   	retq   
   1000039e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1000039ee:	00 00 

00000001000039f0 <_main>:
   1000039f0:	55                   	push   %rbp
   1000039f1:	48 89 e5             	mov    %rsp,%rbp
   1000039f4:	41 57                	push   %r15
   1000039f6:	41 56                	push   %r14
   1000039f8:	41 55                	push   %r13
   1000039fa:	41 54                	push   %r12
   1000039fc:	53                   	push   %rbx
   1000039fd:	48 83 ec 38          	sub    $0x38,%rsp
   100003a01:	48 8d 3d 7b 05 00 00 	lea    0x57b(%rip),%rdi        # 100003f83 <_main+0x593>
   100003a08:	e8 0d 04 00 00       	callq  100003e1a <_main+0x42a>
   100003a0d:	48 8d 3d 82 05 00 00 	lea    0x582(%rip),%rdi        # 100003f96 <_main+0x5a6>
   100003a14:	e8 01 04 00 00       	callq  100003e1a <_main+0x42a>
   100003a19:	48 8d 3d e1 04 00 00 	lea    0x4e1(%rip),%rdi        # 100003f01 <_main+0x511>
   100003a20:	be 01 00 00 00       	mov    $0x1,%esi
   100003a25:	31 c0                	xor    %eax,%eax
   100003a27:	e8 e8 03 00 00       	callq  100003e14 <_main+0x424>
   100003a2c:	bf 00 00 00 40       	mov    $0x40000000,%edi
   100003a31:	be 01 00 00 00       	mov    $0x1,%esi
   100003a36:	e8 a9 03 00 00       	callq  100003de4 <_main+0x3f4>
   100003a3b:	48 89 c3             	mov    %rax,%rbx
   100003a3e:	be 00 00 00 40       	mov    $0x40000000,%esi
   100003a43:	48 89 c7             	mov    %rax,%rdi
   100003a46:	e8 c3 03 00 00       	callq  100003e0e <_main+0x41e>
   100003a4b:	be 00 00 00 40       	mov    $0x40000000,%esi
   100003a50:	48 89 df             	mov    %rbx,%rdi
   100003a53:	e8 7a 03 00 00       	callq  100003dd2 <_main+0x3e2>
   100003a58:	31 ff                	xor    %edi,%edi
   100003a5a:	e8 c7 03 00 00       	callq  100003e26 <_main+0x436>
   100003a5f:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
   100003a63:	48 8d 7d c0          	lea    -0x40(%rbp),%rdi
   100003a67:	e8 9c 03 00 00       	callq  100003e08 <_main+0x418>
   100003a6c:	48 89 c7             	mov    %rax,%rdi
   100003a6f:	e8 64 03 00 00       	callq  100003dd8 <_main+0x3e8>
   100003a74:	48 8d 3d a5 04 00 00 	lea    0x4a5(%rip),%rdi        # 100003f20 <_main+0x530>
   100003a7b:	48 89 c6             	mov    %rax,%rsi
   100003a7e:	31 c0                	xor    %eax,%eax
   100003a80:	e8 8f 03 00 00       	callq  100003e14 <_main+0x424>
   100003a85:	48 8b 05 7c 05 00 00 	mov    0x57c(%rip),%rax        # 100004008 <_main+0x618>
   100003a8c:	48 8b 38             	mov    (%rax),%rdi
   100003a8f:	e8 5c 03 00 00       	callq  100003df0 <_main+0x400>
   100003a94:	45 31 ff             	xor    %r15d,%r15d
   100003a97:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%rbp)
   100003a9e:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%rbp)
   100003aa5:	45 31 f6             	xor    %r14d,%r14d
   100003aa8:	e9 56 02 00 00       	jmpq   100003d03 <_main+0x313>
   100003aad:	0f 1f 00             	nopl   (%rax)
   100003ab0:	66 0f fc da          	paddb  %xmm2,%xmm3
   100003ab4:	66 0f 70 c3 4e       	pshufd $0x4e,%xmm3,%xmm0
   100003ab9:	66 0f fc c3          	paddb  %xmm3,%xmm0
   100003abd:	66 0f f6 05 1b 04 00 	psadbw 0x41b(%rip),%xmm0        # 100003ee0 <_main+0x4f0>
   100003ac4:	00 
   100003ac5:	66 41 0f 3a 14 c6 00 	pextrb $0x0,%xmm0,%r14d
   100003acc:	44 02 b3 e0 ff ff 3f 	add    0x3fffffe0(%rbx),%r14b
   100003ad3:	44 02 b3 e1 ff ff 3f 	add    0x3fffffe1(%rbx),%r14b
   100003ada:	44 02 b3 e2 ff ff 3f 	add    0x3fffffe2(%rbx),%r14b
   100003ae1:	44 02 b3 e3 ff ff 3f 	add    0x3fffffe3(%rbx),%r14b
   100003ae8:	44 02 b3 e4 ff ff 3f 	add    0x3fffffe4(%rbx),%r14b
   100003aef:	44 02 b3 e5 ff ff 3f 	add    0x3fffffe5(%rbx),%r14b
   100003af6:	44 02 b3 e6 ff ff 3f 	add    0x3fffffe6(%rbx),%r14b
   100003afd:	44 02 b3 e7 ff ff 3f 	add    0x3fffffe7(%rbx),%r14b
   100003b04:	44 02 b3 e8 ff ff 3f 	add    0x3fffffe8(%rbx),%r14b
   100003b0b:	44 02 b3 e9 ff ff 3f 	add    0x3fffffe9(%rbx),%r14b
   100003b12:	44 02 b3 ea ff ff 3f 	add    0x3fffffea(%rbx),%r14b
   100003b19:	44 02 b3 eb ff ff 3f 	add    0x3fffffeb(%rbx),%r14b
   100003b20:	44 02 b3 ec ff ff 3f 	add    0x3fffffec(%rbx),%r14b
   100003b27:	44 02 b3 ed ff ff 3f 	add    0x3fffffed(%rbx),%r14b
   100003b2e:	44 02 b3 ee ff ff 3f 	add    0x3fffffee(%rbx),%r14b
   100003b35:	44 02 b3 ef ff ff 3f 	add    0x3fffffef(%rbx),%r14b
   100003b3c:	44 02 b3 f0 ff ff 3f 	add    0x3ffffff0(%rbx),%r14b
   100003b43:	44 02 b3 f1 ff ff 3f 	add    0x3ffffff1(%rbx),%r14b
   100003b4a:	44 02 b3 f2 ff ff 3f 	add    0x3ffffff2(%rbx),%r14b
   100003b51:	44 02 b3 f3 ff ff 3f 	add    0x3ffffff3(%rbx),%r14b
   100003b58:	44 02 b3 f4 ff ff 3f 	add    0x3ffffff4(%rbx),%r14b
   100003b5f:	44 02 b3 f5 ff ff 3f 	add    0x3ffffff5(%rbx),%r14b
   100003b66:	44 02 b3 f6 ff ff 3f 	add    0x3ffffff6(%rbx),%r14b
   100003b6d:	44 02 b3 f7 ff ff 3f 	add    0x3ffffff7(%rbx),%r14b
   100003b74:	44 02 b3 f8 ff ff 3f 	add    0x3ffffff8(%rbx),%r14b
   100003b7b:	44 02 b3 f9 ff ff 3f 	add    0x3ffffff9(%rbx),%r14b
   100003b82:	44 02 b3 fa ff ff 3f 	add    0x3ffffffa(%rbx),%r14b
   100003b89:	44 02 b3 fb ff ff 3f 	add    0x3ffffffb(%rbx),%r14b
   100003b90:	44 02 b3 fc ff ff 3f 	add    0x3ffffffc(%rbx),%r14b
   100003b97:	44 02 b3 fd ff ff 3f 	add    0x3ffffffd(%rbx),%r14b
   100003b9e:	44 02 b3 fe ff ff 3f 	add    0x3ffffffe(%rbx),%r14b
   100003ba5:	45 89 fd             	mov    %r15d,%r13d
   100003ba8:	b8 c5 b3 a2 91       	mov    $0x91a2b3c5,%eax
   100003bad:	4c 0f af e8          	imul   %rax,%r13
   100003bb1:	49 c1 ed 2b          	shr    $0x2b,%r13
   100003bb5:	41 69 c5 f0 f1 ff ff 	imul   $0xfffff1f0,%r13d,%eax
   100003bbc:	44 01 f8             	add    %r15d,%eax
   100003bbf:	48 98                	cltq   
   100003bc1:	44 89 7d cc          	mov    %r15d,-0x34(%rbp)
   100003bc5:	4c 69 f8 89 88 88 88 	imul   $0xffffffff88888889,%rax,%r15
   100003bcc:	49 c1 ef 20          	shr    $0x20,%r15
   100003bd0:	41 01 c7             	add    %eax,%r15d
   100003bd3:	44 89 f9             	mov    %r15d,%ecx
   100003bd6:	c1 e9 1f             	shr    $0x1f,%ecx
   100003bd9:	41 c1 ff 05          	sar    $0x5,%r15d
   100003bdd:	41 01 cf             	add    %ecx,%r15d
   100003be0:	4c 89 65 b0          	mov    %r12,-0x50(%rbp)
   100003be4:	45 6b e7 c4          	imul   $0xffffffc4,%r15d,%r12d
   100003be8:	41 01 c4             	add    %eax,%r12d
   100003beb:	48 8b 05 0e 04 00 00 	mov    0x40e(%rip),%rax        # 100004000 <_main+0x610>
   100003bf2:	48 8b 38             	mov    (%rax),%rdi
   100003bf5:	48 8d 35 52 03 00 00 	lea    0x352(%rip),%rsi        # 100003f4e <_main+0x55e>
   100003bfc:	8b 55 d4             	mov    -0x2c(%rbp),%edx
   100003bff:	31 c0                	xor    %eax,%eax
   100003c01:	e8 f6 01 00 00       	callq  100003dfc <_main+0x40c>
   100003c06:	48 8b 05 f3 03 00 00 	mov    0x3f3(%rip),%rax        # 100004000 <_main+0x610>
   100003c0d:	48 8b 38             	mov    (%rax),%rdi
   100003c10:	41 0f b6 d6          	movzbl %r14b,%edx
   100003c14:	89 55 bc             	mov    %edx,-0x44(%rbp)
   100003c17:	48 8d 35 3f 03 00 00 	lea    0x33f(%rip),%rsi        # 100003f5d <_main+0x56d>
   100003c1e:	31 c0                	xor    %eax,%eax
   100003c20:	e8 d7 01 00 00       	callq  100003dfc <_main+0x40c>
   100003c25:	48 8b 05 d4 03 00 00 	mov    0x3d4(%rip),%rax        # 100004000 <_main+0x610>
   100003c2c:	48 8b 38             	mov    (%rax),%rdi
   100003c2f:	48 8d 35 36 03 00 00 	lea    0x336(%rip),%rsi        # 100003f6c <_main+0x57c>
   100003c36:	8b 55 cc             	mov    -0x34(%rbp),%edx
   100003c39:	31 c0                	xor    %eax,%eax
   100003c3b:	e8 bc 01 00 00       	callq  100003dfc <_main+0x40c>
   100003c40:	48 8d 7d a8          	lea    -0x58(%rbp),%rdi
   100003c44:	48 8d 35 2a 03 00 00 	lea    0x32a(%rip),%rsi        # 100003f75 <_main+0x585>
   100003c4b:	44 89 ea             	mov    %r13d,%edx
   100003c4e:	44 89 f9             	mov    %r15d,%ecx
   100003c51:	45 89 e0             	mov    %r12d,%r8d
   100003c54:	31 c0                	xor    %eax,%eax
   100003c56:	e8 83 01 00 00       	callq  100003dde <_main+0x3ee>
   100003c5b:	4c 8d 7d c0          	lea    -0x40(%rbp),%r15
   100003c5f:	4c 89 ff             	mov    %r15,%rdi
   100003c62:	48 8d 35 87 02 00 00 	lea    0x287(%rip),%rsi        # 100003ef0 <_main+0x500>
   100003c69:	8b 55 d4             	mov    -0x2c(%rbp),%edx
   100003c6c:	31 c0                	xor    %eax,%eax
   100003c6e:	e8 6b 01 00 00       	callq  100003dde <_main+0x3ee>
   100003c73:	48 8b 7d c0          	mov    -0x40(%rbp),%rdi
   100003c77:	4c 8b 65 b0          	mov    -0x50(%rbp),%r12
   100003c7b:	4c 89 e6             	mov    %r12,%rsi
   100003c7e:	e8 7f 01 00 00       	callq  100003e02 <_main+0x412>
   100003c83:	4c 8d 2d f5 02 00 00 	lea    0x2f5(%rip),%r13        # 100003f7f <_main+0x58f>
   100003c8a:	4c 89 ef             	mov    %r13,%rdi
   100003c8d:	4c 89 e6             	mov    %r12,%rsi
   100003c90:	e8 6d 01 00 00       	callq  100003e02 <_main+0x412>
   100003c95:	4c 89 ff             	mov    %r15,%rdi
   100003c98:	44 8b 7d cc          	mov    -0x34(%rbp),%r15d
   100003c9c:	48 8d 35 4d 02 00 00 	lea    0x24d(%rip),%rsi        # 100003ef0 <_main+0x500>
   100003ca3:	8b 55 bc             	mov    -0x44(%rbp),%edx
   100003ca6:	31 c0                	xor    %eax,%eax
   100003ca8:	e8 31 01 00 00       	callq  100003dde <_main+0x3ee>
   100003cad:	48 8b 7d c0          	mov    -0x40(%rbp),%rdi
   100003cb1:	4c 89 e6             	mov    %r12,%rsi
   100003cb4:	e8 49 01 00 00       	callq  100003e02 <_main+0x412>
   100003cb9:	4c 89 ef             	mov    %r13,%rdi
   100003cbc:	4c 89 e6             	mov    %r12,%rsi
   100003cbf:	e8 3e 01 00 00       	callq  100003e02 <_main+0x412>
   100003cc4:	48 8b 7d a8          	mov    -0x58(%rbp),%rdi
   100003cc8:	4c 89 e6             	mov    %r12,%rsi
   100003ccb:	e8 32 01 00 00       	callq  100003e02 <_main+0x412>
   100003cd0:	48 8d 3d aa 02 00 00 	lea    0x2aa(%rip),%rdi        # 100003f81 <_main+0x591>
   100003cd7:	4c 89 e6             	mov    %r12,%rsi
   100003cda:	e8 23 01 00 00       	callq  100003e02 <_main+0x412>
   100003cdf:	44 8b 6d d4          	mov    -0x2c(%rbp),%r13d
   100003ce3:	41 ff c5             	inc    %r13d
   100003ce6:	41 83 c7 0a          	add    $0xa,%r15d
   100003cea:	4c 89 e7             	mov    %r12,%rdi
   100003ced:	e8 f8 00 00 00       	callq  100003dea <_main+0x3fa>
   100003cf2:	44 89 6d d4          	mov    %r13d,-0x2c(%rbp)
   100003cf6:	41 81 fd 68 01 00 00 	cmp    $0x168,%r13d
   100003cfd:	0f 84 be 00 00 00    	je     100003dc1 <_main+0x3d1>
   100003d03:	48 8d 3d 27 02 00 00 	lea    0x227(%rip),%rdi        # 100003f31 <_main+0x541>
   100003d0a:	48 8d 35 26 02 00 00 	lea    0x226(%rip),%rsi        # 100003f37 <_main+0x547>
   100003d11:	e8 e0 00 00 00       	callq  100003df6 <_main+0x406>
   100003d16:	49 89 c4             	mov    %rax,%r12
   100003d19:	83 7d d0 00          	cmpl   $0x0,-0x30(%rbp)
   100003d1d:	75 25                	jne    100003d44 <_main+0x354>
   100003d1f:	48 8d 3d cd 01 00 00 	lea    0x1cd(%rip),%rdi        # 100003ef3 <_main+0x503>
   100003d26:	4c 89 e6             	mov    %r12,%rsi
   100003d29:	e8 d4 00 00 00       	callq  100003e02 <_main+0x412>
   100003d2e:	48 8d 3d 05 02 00 00 	lea    0x205(%rip),%rdi        # 100003f3a <_main+0x54a>
   100003d35:	4c 89 e6             	mov    %r12,%rsi
   100003d38:	e8 c5 00 00 00       	callq  100003e02 <_main+0x412>
   100003d3d:	c7 45 d0 01 00 00 00 	movl   $0x1,-0x30(%rbp)
   100003d44:	bf 0a 00 00 00       	mov    $0xa,%edi
   100003d49:	e8 d2 00 00 00       	callq  100003e20 <_main+0x430>
   100003d4e:	41 0f b6 c6          	movzbl %r14b,%eax
   100003d52:	66 0f 6e c8          	movd   %eax,%xmm1
   100003d56:	66 0f ef c0          	pxor   %xmm0,%xmm0
   100003d5a:	b8 70 00 00 00       	mov    $0x70,%eax
   100003d5f:	90                   	nop
   100003d60:	f3 0f 6f 5c 03 90    	movdqu -0x70(%rbx,%rax,1),%xmm3
   100003d66:	66 0f fc d9          	paddb  %xmm1,%xmm3
   100003d6a:	f3 0f 6f 4c 03 a0    	movdqu -0x60(%rbx,%rax,1),%xmm1
   100003d70:	66 0f fc c8          	paddb  %xmm0,%xmm1
   100003d74:	f3 0f 6f 44 03 b0    	movdqu -0x50(%rbx,%rax,1),%xmm0
   100003d7a:	f3 0f 6f 64 03 c0    	movdqu -0x40(%rbx,%rax,1),%xmm4
   100003d80:	f3 0f 6f 54 03 d0    	movdqu -0x30(%rbx,%rax,1),%xmm2
   100003d86:	66 0f fc d0          	paddb  %xmm0,%xmm2
   100003d8a:	66 0f fc d3          	paddb  %xmm3,%xmm2
   100003d8e:	f3 0f 6f 5c 03 e0    	movdqu -0x20(%rbx,%rax,1),%xmm3
   100003d94:	66 0f fc dc          	paddb  %xmm4,%xmm3
   100003d98:	66 0f fc d9          	paddb  %xmm1,%xmm3
   100003d9c:	48 3d f0 ff ff 3f    	cmp    $0x3ffffff0,%rax
   100003da2:	0f 84 08 fd ff ff    	je     100003ab0 <_main+0xc0>
   100003da8:	f3 0f 6f 4c 03 f0    	movdqu -0x10(%rbx,%rax,1),%xmm1
   100003dae:	f3 0f 6f 04 03       	movdqu (%rbx,%rax,1),%xmm0
   100003db3:	66 0f fc ca          	paddb  %xmm2,%xmm1
   100003db7:	66 0f fc c3          	paddb  %xmm3,%xmm0
   100003dbb:	48 83 e8 80          	sub    $0xffffffffffffff80,%rax
   100003dbf:	eb 9f                	jmp    100003d60 <_main+0x370>
   100003dc1:	31 c0                	xor    %eax,%eax
   100003dc3:	48 83 c4 38          	add    $0x38,%rsp
   100003dc7:	5b                   	pop    %rbx
   100003dc8:	41 5c                	pop    %r12
   100003dca:	41 5d                	pop    %r13
   100003dcc:	41 5e                	pop    %r14
   100003dce:	41 5f                	pop    %r15
   100003dd0:	5d                   	pop    %rbp
   100003dd1:	c3                   	retq   

