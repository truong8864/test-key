threadFunc():
  push rbp
  mov rbp, rsp
  mov eax, 10
  pop rbp
  ret
add():
  push rbp
  mov rbp, rsp
  sub rsp, 16
  lea rax, [rbp-8]
  mov esi, OFFSET FLAT:threadFunc()
  mov rdi, rax
  call std::thread::thread<int (&)(), , void>(int (&)())
  lea rax, [rbp-8]
  mov rdi, rax
  call std::thread::~thread() [complete object destructor]
  nop
  leave
  ret
vtable for std::thread::_State_impl<std::thread::_Invoker<std::tuple<int (*)()> > >:
  .quad 0
  .quad typeinfo for std::thread::_State_impl<std::thread::_Invoker<std::tuple<int (*)()> > >
  .quad std::thread::_State_impl<std::thread::_Invoker<std::tuple<int (*)()> > >::~_State_impl() [complete object destructor]
  .quad std::thread::_State_impl<std::thread::_Invoker<std::tuple<int (*)()> > >::~_State_impl() [deleting destructor]
  .quad std::thread::_State_impl<std::thread::_Invoker<std::tuple<int (*)()> > >::_M_run()
typeinfo for std::thread::_State_impl<std::thread::_Invoker<std::tuple<int (*)()> > >:
  .quad vtable for __cxxabiv1::__si_class_type_info+16
  .quad typeinfo name for std::thread::_State_impl<std::thread::_Invoker<std::tuple<int (*)()> > >
  .quad typeinfo for std::thread::_State
typeinfo name for std::thread::_State_impl<std::thread::_Invoker<std::tuple<int (*)()> > >:
  .string "NSt6thread11_State_implINS_8_InvokerISt5tupleIJPFivEEEEEEE"