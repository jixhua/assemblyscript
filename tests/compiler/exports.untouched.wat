(module
 (type $iii (func (param i32 i32) (result i32)))
 (type $i (func (result i32)))
 (type $ii (func (param i32) (result i32)))
 (type $ii_ (func (param i32 i32)))
 (type $i_ (func (param i32)))
 (type $_ (func))
 (memory $0 0)
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/internal/allocator/MAX_SIZE_32 i32 (i32.const 1073741824))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $exports/Animal.CAT i32 (i32.const 0))
 (global $exports/Animal.DOG i32 (i32.const 1))
 (global $exports/animals.Animal.CAT i32 (i32.const 0))
 (global $exports/animals.Animal.DOG i32 (i32.const 1))
 (global $exports/Car.TIRES i32 (i32.const 4))
 (global $exports/vehicles.Car.TIRES i32 (i32.const 4))
 (global $exports/outer.inner.a i32 (i32.const 42))
 (global $HEAP_BASE i32 (i32.const 8))
 (global $~argc (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "add" (func $exports/add))
 (export "_setargc" (func $~setargc))
 (export "subOpt" (func $exports/subOpt|trampoline))
 (export "math.sub" (func $exports/math.sub))
 (export "Animal.CAT" (global $exports/Animal.CAT))
 (export "Animal.DOG" (global $exports/Animal.DOG))
 (export "animals.Animal.CAT" (global $exports/animals.Animal.CAT))
 (export "animals.Animal.DOG" (global $exports/animals.Animal.DOG))
 (export "Car.TIRES" (global $exports/Car.TIRES))
 (export "Car.getNumTires" (func $exports/Car.getNumTires))
 (export "Car#constructor" (func $exports/Car#constructor|trampoline))
 (export "Car#get:doors" (func $Car#get:doors))
 (export "Car#set:doors" (func $Car#set:doors))
 (export "Car#get:numDoors" (func $exports/Car#get:numDoors))
 (export "Car#set:numDoors" (func $exports/Car#set:numDoors))
 (export "Car#openDoors" (func $exports/Car#openDoors))
 (export "vehicles.Car.TIRES" (global $exports/vehicles.Car.TIRES))
 (export "vehicles.Car.getNumTires" (func $exports/vehicles.Car.getNumTires))
 (export "vehicles.Car#constructor" (func $exports/vehicles.Car#constructor|trampoline))
 (export "vehicles.Car#get:doors" (func $vehicles.Car#get:doors))
 (export "vehicles.Car#set:doors" (func $vehicles.Car#set:doors))
 (export "vehicles.Car#get:numDoors" (func $exports/vehicles.Car#get:numDoors))
 (export "vehicles.Car#set:numDoors" (func $exports/vehicles.Car#set:numDoors))
 (export "vehicles.Car#openDoors" (func $exports/vehicles.Car#openDoors))
 (export "outer.inner.a" (global $exports/outer.inner.a))
 (start $start)
 (func $exports/add (; 0 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $exports/subOpt (; 1 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.sub
 )
 (func $exports/math.sub (; 2 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.sub
 )
 (func $exports/Car.getNumTires (; 3 ;) (type $i) (result i32)
  global.get $exports/Car.TIRES
 )
 (func $~lib/allocator/arena/__memory_allocate (; 4 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  global.get $~lib/internal/allocator/MAX_SIZE_32
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/allocator/arena/offset
  local.set $1
  local.get $1
  local.get $0
  local.tee $2
  i32.const 1
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  i32.add
  global.get $~lib/internal/allocator/AL_MASK
  i32.add
  global.get $~lib/internal/allocator/AL_MASK
  i32.const -1
  i32.xor
  i32.and
  local.set $4
  current_memory
  local.set $5
  local.get $4
  local.get $5
  i32.const 16
  i32.shl
  i32.gt_u
  if
   local.get $4
   local.get $1
   i32.sub
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   local.set $2
   local.get $5
   local.tee $3
   local.get $2
   local.tee $6
   local.get $3
   local.get $6
   i32.gt_s
   select
   local.set $3
   local.get $3
   grow_memory
   i32.const 0
   i32.lt_s
   if
    local.get $2
    grow_memory
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $4
  global.set $~lib/allocator/arena/offset
  local.get $1
 )
 (func $~lib/memory/memory.allocate (; 5 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/allocator/arena/__memory_allocate
  return
 )
 (func $exports/Car#constructor (; 6 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 4
    call $~lib/memory/memory.allocate
    local.set $0
   end
   local.get $0
   local.get $1
   i32.store
   local.get $0
  end
  local.get $1
  i32.store
  local.get $0
 )
 (func $exports/Car#get:numDoors (; 7 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
 )
 (func $exports/Car#set:numDoors (; 8 ;) (type $ii_) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $exports/Car#openDoors (; 9 ;) (type $i_) (param $0 i32)
  nop
 )
 (func $exports/vehicles.Car.getNumTires (; 10 ;) (type $i) (result i32)
  global.get $exports/vehicles.Car.TIRES
 )
 (func $exports/vehicles.Car#constructor (; 11 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 4
    call $~lib/memory/memory.allocate
    local.set $0
   end
   local.get $0
   local.get $1
   i32.store
   local.get $0
  end
  local.get $1
  i32.store
  local.get $0
 )
 (func $exports/vehicles.Car#get:numDoors (; 12 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
 )
 (func $exports/vehicles.Car#set:numDoors (; 13 ;) (type $ii_) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $exports/vehicles.Car#openDoors (; 14 ;) (type $i_) (param $0 i32)
  nop
 )
 (func $start (; 15 ;) (type $_)
  global.get $HEAP_BASE
  global.get $~lib/internal/allocator/AL_MASK
  i32.add
  global.get $~lib/internal/allocator/AL_MASK
  i32.const -1
  i32.xor
  i32.and
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
 )
 (func $null (; 16 ;) (type $_)
 )
 (func $exports/subOpt|trampoline (; 17 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argc
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 0
   local.set $1
  end
  local.get $0
  local.get $1
  call $exports/subOpt
 )
 (func $~setargc (; 18 ;) (type $i_) (param $0 i32)
  local.get $0
  global.set $~argc
 )
 (func $exports/Car#constructor|trampoline (; 19 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argc
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 2
   local.set $1
  end
  local.get $0
  local.get $1
  call $exports/Car#constructor
 )
 (func $Car#get:doors (; 20 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
 )
 (func $Car#set:doors (; 21 ;) (type $ii_) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $exports/vehicles.Car#constructor|trampoline (; 22 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argc
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 2
   local.set $1
  end
  local.get $0
  local.get $1
  call $exports/vehicles.Car#constructor
 )
 (func $vehicles.Car#get:doors (; 23 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
 )
 (func $vehicles.Car#set:doors (; 24 ;) (type $ii_) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
)
