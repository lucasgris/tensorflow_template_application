и▄
▌2╢2
:
Add
x"T
y"T
z"T"
Ttype:
2	
h
All	
input

reduction_indices"Tidx

output
"
	keep_dimsbool( "
Tidxtype0:
2	
Ж
ApplyAdagrad
var"TА
accum"TА
lr"T	
grad"T
out"TА" 
Ttype:
2	"
use_lockingbool( 
Ы
ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeintИ
x
Assign
ref"TА

value"T

output_ref"TА"	
Ttype"
validate_shapebool("
use_lockingbool(Ш
s
	AssignAdd
ref"TА

value"T

output_ref"TА" 
Ttype:
2	"
use_lockingbool( 

BatchDataset
input_dataset

batch_size	

handle"
output_types
list(type)(0" 
output_shapeslist(shape)(0
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
B
Equal
x"T
y"T
z
"
Ttype:
2	
Р
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
╖
FlatMapDataset
input_dataset
other_arguments2
Targuments

handle"	
ffunc"

Targuments
list(type)("
output_types
list(type)(0" 
output_shapeslist(shape)(0
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
З
Iterator

handle"
shared_namestring"
	containerstring"
output_types
list(type)(0" 
output_shapeslist(shape)(0И
А
IteratorGetNext
iterator

components2output_types"
output_types
list(type)(0" 
output_shapeslist(shape)(0И
C
IteratorToStringHandle
resource_handle
string_handleИ
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
$

LogicalAnd
x

y

z
Р


LogicalNot
x

y

,
MakeIterator
dataset
iteratorИ
│

MapDataset
input_dataset
other_arguments2
Targuments

handle"	
ffunc"

Targuments
list(type)("
output_types
list(type)(0" 
output_shapeslist(shape)(0
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
;
Maximum
x"T
y"T
z"T"
Ttype:

2	Р
Н
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
8
MergeSummary
inputs*N
summary"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
L
PreventGradient

input"T
output"T"	
Ttype"
messagestring 
Н
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
Е
RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
)
Rank

input"T

output"	
Ttype
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
D
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
{
RepeatDataset
input_dataset	
count	

handle"
output_types
list(type)(0" 
output_shapeslist(shape)(0
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
╜
ShuffleDataset
input_dataset
buffer_size	
seed		
seed2	

handle"$
reshuffle_each_iterationbool("
output_types
list(type)(0" 
output_shapeslist(shape)(0
9
Softmax
logits"T
softmax"T"
Ttype:
2
У
#SparseSoftmaxCrossEntropyWithLogits
features"T
labels"Tlabels	
loss"T
backprop"T"
Ttype:
2"
Tlabelstype0	:
2	
╝
SparseToDense
sparse_indices"Tindices
output_shape"Tindices
sparse_values"T
default_value"T

dense"T"
validate_indicesbool("	
Ttype"
Tindicestype:
2	
Ў
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
М
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
Г
TensorSliceDataset

components2Toutput_types

handle"
Toutput_types
list(type)(0" 
output_shapeslist(shape)(0И
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
s

VariableV2
ref"dtypeА"
shapeshape"
dtypetype"
	containerstring "
shared_namestring И
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.8.02v1.8.0-0-g93bc2e2072в╔
f
PlaceholderPlaceholder*
dtype0*#
_output_shapes
:         *
shape:         
g
flat_filenames/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
x
flat_filenamesReshapePlaceholderflat_filenames/shape*#
_output_shapes
:         *
T0*
Tshape0
G
countConst*
dtype0	*
_output_shapes
: *
value	B	 Rd
L

batch_sizeConst*
value	B	 R@*
dtype0	*
_output_shapes
: 
N
buffer_sizeConst*
dtype0	*
_output_shapes
: *
value
B	 R└
F
seedConst*
dtype0	*
_output_shapes
: *
value	B	 R 
G
seed2Const*
value	B	 R *
dtype0	*
_output_shapes
: 
Я
IteratorIterator*
output_types
2	*
shared_name *5
output_shapes$
":         	:         *
	container *
_output_shapes
: 
Ь
TensorSliceDatasetTensorSliceDatasetflat_filenames*
_output_shapes
: *
output_shapes
: *
Toutput_types
2*
_class
loc:@Iterator
╦
FlatMapDatasetFlatMapDatasetTensorSliceDataset*
output_shapes
: *
_class
loc:@Iterator* 
fR
tf_map_func_OyxSeFxXjco*
output_types
2*

Targuments
 *
_output_shapes
: 
╞

MapDataset
MapDatasetFlatMapDataset*
_output_shapes
: *
output_shapes

:	: *
_class
loc:@Iterator* 
fR
tf_map_func_FeMukb41Iag*
output_types
2	*

Targuments
 
Ы
RepeatDatasetRepeatDataset
MapDatasetcount*
_output_shapes
: *
output_types
2	*
output_shapes

:	: *
_class
loc:@Iterator
╗
BatchDatasetBatchDatasetRepeatDataset
batch_size*5
output_shapes$
":         	:         *
_class
loc:@Iterator*
_output_shapes
: *
output_types
2	
ь
ShuffleDatasetShuffleDatasetBatchDatasetbuffer_sizeseedseed2*
output_types
2	*5
output_shapes$
":         	:         *
_class
loc:@Iterator*
reshuffle_each_iteration(*
_output_shapes
: 
S
MakeIteratorMakeIteratorShuffleDatasetIterator*
_class
loc:@Iterator
R
IteratorToStringHandleIteratorToStringHandleIterator*
_output_shapes
: 
│
IteratorGetNextIteratorGetNextIterator*6
_output_shapes$
":         	:         *
output_types
2	*5
output_shapes$
":         	:         
h
Placeholder_1Placeholder*
dtype0*#
_output_shapes
:         *
shape:         
i
flat_filenames_1/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
~
flat_filenames_1ReshapePlaceholder_1flat_filenames_1/shape*#
_output_shapes
:         *
T0*
Tshape0
I
count_1Const*
_output_shapes
: *
value	B	 Rd*
dtype0	
N
batch_size_1Const*
value	B	 R@*
dtype0	*
_output_shapes
: 
P
buffer_size_1Const*
value
B	 R└*
dtype0	*
_output_shapes
: 
H
seed_1Const*
value	B	 R *
dtype0	*
_output_shapes
: 
I
seed2_1Const*
value	B	 R *
dtype0	*
_output_shapes
: 
б

Iterator_1Iterator*5
output_shapes$
":         	:         *
	container *
_output_shapes
: *
output_types
2	*
shared_name 
в
TensorSliceDataset_1TensorSliceDatasetflat_filenames_1*
_output_shapes
: *
output_shapes
: *
Toutput_types
2*
_class
loc:@Iterator_1
╤
FlatMapDataset_1FlatMapDatasetTensorSliceDataset_1*
_output_shapes
: *
output_shapes
: *
_class
loc:@Iterator_1* 
fR
tf_map_func_OyxSeFxXjco*
output_types
2*

Targuments
 
╠
MapDataset_1
MapDatasetFlatMapDataset_1* 
fR
tf_map_func_FeMukb41Iag*
output_types
2	*

Targuments
 *
_output_shapes
: *
output_shapes

:	: *
_class
loc:@Iterator_1
г
RepeatDataset_1RepeatDatasetMapDataset_1count_1*
_class
loc:@Iterator_1*
_output_shapes
: *
output_types
2	*
output_shapes

:	: 
├
BatchDataset_1BatchDatasetRepeatDataset_1batch_size_1*5
output_shapes$
":         	:         *
_class
loc:@Iterator_1*
_output_shapes
: *
output_types
2	
°
ShuffleDataset_1ShuffleDatasetBatchDataset_1buffer_size_1seed_1seed2_1*
_class
loc:@Iterator_1*
reshuffle_each_iteration(*
_output_shapes
: *
output_types
2	*5
output_shapes$
":         	:         
[
MakeIterator_1MakeIteratorShuffleDataset_1
Iterator_1*
_class
loc:@Iterator_1
V
IteratorToStringHandle_1IteratorToStringHandle
Iterator_1*
_output_shapes
: 
╖
IteratorGetNext_1IteratorGetNext
Iterator_1*
output_types
2	*5
output_shapes$
":         	:         *6
_output_shapes$
":         	:         
м
3input_layer/weights/Initializer/random_normal/shapeConst*
valueB"	   А   *&
_class
loc:@input_layer/weights*
dtype0*
_output_shapes
:
Я
2input_layer/weights/Initializer/random_normal/meanConst*
valueB
 *    *&
_class
loc:@input_layer/weights*
dtype0*
_output_shapes
: 
б
4input_layer/weights/Initializer/random_normal/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *  А?*&
_class
loc:@input_layer/weights
З
Binput_layer/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal3input_layer/weights/Initializer/random_normal/shape*
dtype0*
_output_shapes
:		А*

seed *
T0*&
_class
loc:@input_layer/weights*
seed2 
Д
1input_layer/weights/Initializer/random_normal/mulMulBinput_layer/weights/Initializer/random_normal/RandomStandardNormal4input_layer/weights/Initializer/random_normal/stddev*&
_class
loc:@input_layer/weights*
_output_shapes
:		А*
T0
э
-input_layer/weights/Initializer/random_normalAdd1input_layer/weights/Initializer/random_normal/mul2input_layer/weights/Initializer/random_normal/mean*
T0*&
_class
loc:@input_layer/weights*
_output_shapes
:		А
▒
input_layer/weights
VariableV2*
dtype0*
_output_shapes
:		А*
shared_name *&
_class
loc:@input_layer/weights*
	container *
shape:		А
у
input_layer/weights/AssignAssigninput_layer/weights-input_layer/weights/Initializer/random_normal*
validate_shape(*
_output_shapes
:		А*
use_locking(*
T0*&
_class
loc:@input_layer/weights
Л
input_layer/weights/readIdentityinput_layer/weights*
_output_shapes
:		А*
T0*&
_class
loc:@input_layer/weights
д
2input_layer/biases/Initializer/random_normal/shapeConst*
valueB:А*%
_class
loc:@input_layer/biases*
dtype0*
_output_shapes
:
Э
1input_layer/biases/Initializer/random_normal/meanConst*
valueB
 *    *%
_class
loc:@input_layer/biases*
dtype0*
_output_shapes
: 
Я
3input_layer/biases/Initializer/random_normal/stddevConst*
valueB
 *  А?*%
_class
loc:@input_layer/biases*
dtype0*
_output_shapes
: 
А
Ainput_layer/biases/Initializer/random_normal/RandomStandardNormalRandomStandardNormal2input_layer/biases/Initializer/random_normal/shape*
dtype0*
_output_shapes	
:А*

seed *
T0*%
_class
loc:@input_layer/biases*
seed2 
№
0input_layer/biases/Initializer/random_normal/mulMulAinput_layer/biases/Initializer/random_normal/RandomStandardNormal3input_layer/biases/Initializer/random_normal/stddev*%
_class
loc:@input_layer/biases*
_output_shapes	
:А*
T0
х
,input_layer/biases/Initializer/random_normalAdd0input_layer/biases/Initializer/random_normal/mul1input_layer/biases/Initializer/random_normal/mean*
T0*%
_class
loc:@input_layer/biases*
_output_shapes	
:А
з
input_layer/biases
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name *%
_class
loc:@input_layer/biases*
	container *
shape:А
█
input_layer/biases/AssignAssigninput_layer/biases,input_layer/biases/Initializer/random_normal*
use_locking(*
T0*%
_class
loc:@input_layer/biases*
validate_shape(*
_output_shapes	
:А
Д
input_layer/biases/readIdentityinput_layer/biases*
_output_shapes	
:А*
T0*%
_class
loc:@input_layer/biases
а
input_layer/MatMulMatMulIteratorGetNextinput_layer/weights/read*
transpose_a( *(
_output_shapes
:         А*
transpose_b( *
T0
v
input_layer/addAddinput_layer/MatMulinput_layer/biases/read*
T0*(
_output_shapes
:         А
\
input_layer/ReluReluinput_layer/add*
T0*(
_output_shapes
:         А
д
/layer_0/weights/Initializer/random_normal/shapeConst*
valueB"А       *"
_class
loc:@layer_0/weights*
dtype0*
_output_shapes
:
Ч
.layer_0/weights/Initializer/random_normal/meanConst*
valueB
 *    *"
_class
loc:@layer_0/weights*
dtype0*
_output_shapes
: 
Щ
0layer_0/weights/Initializer/random_normal/stddevConst*
valueB
 *  А?*"
_class
loc:@layer_0/weights*
dtype0*
_output_shapes
: 
√
>layer_0/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal/layer_0/weights/Initializer/random_normal/shape*
T0*"
_class
loc:@layer_0/weights*
seed2 *
dtype0*
_output_shapes
:	А *

seed 
Ї
-layer_0/weights/Initializer/random_normal/mulMul>layer_0/weights/Initializer/random_normal/RandomStandardNormal0layer_0/weights/Initializer/random_normal/stddev*
_output_shapes
:	А *
T0*"
_class
loc:@layer_0/weights
▌
)layer_0/weights/Initializer/random_normalAdd-layer_0/weights/Initializer/random_normal/mul.layer_0/weights/Initializer/random_normal/mean*
_output_shapes
:	А *
T0*"
_class
loc:@layer_0/weights
й
layer_0/weights
VariableV2*
shared_name *"
_class
loc:@layer_0/weights*
	container *
shape:	А *
dtype0*
_output_shapes
:	А 
╙
layer_0/weights/AssignAssignlayer_0/weights)layer_0/weights/Initializer/random_normal*
use_locking(*
T0*"
_class
loc:@layer_0/weights*
validate_shape(*
_output_shapes
:	А 

layer_0/weights/readIdentitylayer_0/weights*
T0*"
_class
loc:@layer_0/weights*
_output_shapes
:	А 
Ы
.layer_0/biases/Initializer/random_normal/shapeConst*
valueB: *!
_class
loc:@layer_0/biases*
dtype0*
_output_shapes
:
Х
-layer_0/biases/Initializer/random_normal/meanConst*
valueB
 *    *!
_class
loc:@layer_0/biases*
dtype0*
_output_shapes
: 
Ч
/layer_0/biases/Initializer/random_normal/stddevConst*
_output_shapes
: *
valueB
 *  А?*!
_class
loc:@layer_0/biases*
dtype0
є
=layer_0/biases/Initializer/random_normal/RandomStandardNormalRandomStandardNormal.layer_0/biases/Initializer/random_normal/shape*
_output_shapes
: *

seed *
T0*!
_class
loc:@layer_0/biases*
seed2 *
dtype0
ы
,layer_0/biases/Initializer/random_normal/mulMul=layer_0/biases/Initializer/random_normal/RandomStandardNormal/layer_0/biases/Initializer/random_normal/stddev*
_output_shapes
: *
T0*!
_class
loc:@layer_0/biases
╘
(layer_0/biases/Initializer/random_normalAdd,layer_0/biases/Initializer/random_normal/mul-layer_0/biases/Initializer/random_normal/mean*
T0*!
_class
loc:@layer_0/biases*
_output_shapes
: 
Э
layer_0/biases
VariableV2*
dtype0*
_output_shapes
: *
shared_name *!
_class
loc:@layer_0/biases*
	container *
shape: 
╩
layer_0/biases/AssignAssignlayer_0/biases(layer_0/biases/Initializer/random_normal*
use_locking(*
T0*!
_class
loc:@layer_0/biases*
validate_shape(*
_output_shapes
: 
w
layer_0/biases/readIdentitylayer_0/biases*
T0*!
_class
loc:@layer_0/biases*
_output_shapes
: 
Ш
layer_0/MatMulMatMulinput_layer/Relulayer_0/weights/read*
transpose_a( *'
_output_shapes
:          *
transpose_b( *
T0
i
layer_0/addAddlayer_0/MatMullayer_0/biases/read*
T0*'
_output_shapes
:          
S
layer_0/ReluRelulayer_0/add*'
_output_shapes
:          *
T0
д
/layer_1/weights/Initializer/random_normal/shapeConst*
valueB"       *"
_class
loc:@layer_1/weights*
dtype0*
_output_shapes
:
Ч
.layer_1/weights/Initializer/random_normal/meanConst*
valueB
 *    *"
_class
loc:@layer_1/weights*
dtype0*
_output_shapes
: 
Щ
0layer_1/weights/Initializer/random_normal/stddevConst*
_output_shapes
: *
valueB
 *  А?*"
_class
loc:@layer_1/weights*
dtype0
·
>layer_1/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal/layer_1/weights/Initializer/random_normal/shape*
dtype0*
_output_shapes

: *

seed *
T0*"
_class
loc:@layer_1/weights*
seed2 
є
-layer_1/weights/Initializer/random_normal/mulMul>layer_1/weights/Initializer/random_normal/RandomStandardNormal0layer_1/weights/Initializer/random_normal/stddev*"
_class
loc:@layer_1/weights*
_output_shapes

: *
T0
▄
)layer_1/weights/Initializer/random_normalAdd-layer_1/weights/Initializer/random_normal/mul.layer_1/weights/Initializer/random_normal/mean*
_output_shapes

: *
T0*"
_class
loc:@layer_1/weights
з
layer_1/weights
VariableV2*"
_class
loc:@layer_1/weights*
	container *
shape
: *
dtype0*
_output_shapes

: *
shared_name 
╥
layer_1/weights/AssignAssignlayer_1/weights)layer_1/weights/Initializer/random_normal*
_output_shapes

: *
use_locking(*
T0*"
_class
loc:@layer_1/weights*
validate_shape(
~
layer_1/weights/readIdentitylayer_1/weights*
T0*"
_class
loc:@layer_1/weights*
_output_shapes

: 
Ы
.layer_1/biases/Initializer/random_normal/shapeConst*
valueB:*!
_class
loc:@layer_1/biases*
dtype0*
_output_shapes
:
Х
-layer_1/biases/Initializer/random_normal/meanConst*
valueB
 *    *!
_class
loc:@layer_1/biases*
dtype0*
_output_shapes
: 
Ч
/layer_1/biases/Initializer/random_normal/stddevConst*
valueB
 *  А?*!
_class
loc:@layer_1/biases*
dtype0*
_output_shapes
: 
є
=layer_1/biases/Initializer/random_normal/RandomStandardNormalRandomStandardNormal.layer_1/biases/Initializer/random_normal/shape*

seed *
T0*!
_class
loc:@layer_1/biases*
seed2 *
dtype0*
_output_shapes
:
ы
,layer_1/biases/Initializer/random_normal/mulMul=layer_1/biases/Initializer/random_normal/RandomStandardNormal/layer_1/biases/Initializer/random_normal/stddev*
_output_shapes
:*
T0*!
_class
loc:@layer_1/biases
╘
(layer_1/biases/Initializer/random_normalAdd,layer_1/biases/Initializer/random_normal/mul-layer_1/biases/Initializer/random_normal/mean*!
_class
loc:@layer_1/biases*
_output_shapes
:*
T0
Э
layer_1/biases
VariableV2*
dtype0*
_output_shapes
:*
shared_name *!
_class
loc:@layer_1/biases*
	container *
shape:
╩
layer_1/biases/AssignAssignlayer_1/biases(layer_1/biases/Initializer/random_normal*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@layer_1/biases*
validate_shape(
w
layer_1/biases/readIdentitylayer_1/biases*!
_class
loc:@layer_1/biases*
_output_shapes
:*
T0
Ф
layer_1/MatMulMatMullayer_0/Relulayer_1/weights/read*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:         
i
layer_1/addAddlayer_1/MatMullayer_1/biases/read*'
_output_shapes
:         *
T0
S
layer_1/ReluRelulayer_1/add*
T0*'
_output_shapes
:         
о
4output_layer/weights/Initializer/random_normal/shapeConst*
valueB"      *'
_class
loc:@output_layer/weights*
dtype0*
_output_shapes
:
б
3output_layer/weights/Initializer/random_normal/meanConst*
valueB
 *    *'
_class
loc:@output_layer/weights*
dtype0*
_output_shapes
: 
г
5output_layer/weights/Initializer/random_normal/stddevConst*
valueB
 *  А?*'
_class
loc:@output_layer/weights*
dtype0*
_output_shapes
: 
Й
Coutput_layer/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal4output_layer/weights/Initializer/random_normal/shape*

seed *
T0*'
_class
loc:@output_layer/weights*
seed2 *
dtype0*
_output_shapes

:
З
2output_layer/weights/Initializer/random_normal/mulMulCoutput_layer/weights/Initializer/random_normal/RandomStandardNormal5output_layer/weights/Initializer/random_normal/stddev*
T0*'
_class
loc:@output_layer/weights*
_output_shapes

:
Ё
.output_layer/weights/Initializer/random_normalAdd2output_layer/weights/Initializer/random_normal/mul3output_layer/weights/Initializer/random_normal/mean*'
_class
loc:@output_layer/weights*
_output_shapes

:*
T0
▒
output_layer/weights
VariableV2*'
_class
loc:@output_layer/weights*
	container *
shape
:*
dtype0*
_output_shapes

:*
shared_name 
ц
output_layer/weights/AssignAssignoutput_layer/weights.output_layer/weights/Initializer/random_normal*
use_locking(*
T0*'
_class
loc:@output_layer/weights*
validate_shape(*
_output_shapes

:
Н
output_layer/weights/readIdentityoutput_layer/weights*
T0*'
_class
loc:@output_layer/weights*
_output_shapes

:
е
3output_layer/biases/Initializer/random_normal/shapeConst*
valueB:*&
_class
loc:@output_layer/biases*
dtype0*
_output_shapes
:
Я
2output_layer/biases/Initializer/random_normal/meanConst*
valueB
 *    *&
_class
loc:@output_layer/biases*
dtype0*
_output_shapes
: 
б
4output_layer/biases/Initializer/random_normal/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *  А?*&
_class
loc:@output_layer/biases
В
Boutput_layer/biases/Initializer/random_normal/RandomStandardNormalRandomStandardNormal3output_layer/biases/Initializer/random_normal/shape*&
_class
loc:@output_layer/biases*
seed2 *
dtype0*
_output_shapes
:*

seed *
T0
 
1output_layer/biases/Initializer/random_normal/mulMulBoutput_layer/biases/Initializer/random_normal/RandomStandardNormal4output_layer/biases/Initializer/random_normal/stddev*
_output_shapes
:*
T0*&
_class
loc:@output_layer/biases
ш
-output_layer/biases/Initializer/random_normalAdd1output_layer/biases/Initializer/random_normal/mul2output_layer/biases/Initializer/random_normal/mean*
T0*&
_class
loc:@output_layer/biases*
_output_shapes
:
з
output_layer/biases
VariableV2*&
_class
loc:@output_layer/biases*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
▐
output_layer/biases/AssignAssignoutput_layer/biases-output_layer/biases/Initializer/random_normal*
_output_shapes
:*
use_locking(*
T0*&
_class
loc:@output_layer/biases*
validate_shape(
Ж
output_layer/biases/readIdentityoutput_layer/biases*
_output_shapes
:*
T0*&
_class
loc:@output_layer/biases
Ю
output_layer/MatMulMatMullayer_1/Reluoutput_layer/weights/read*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:         
x
output_layer/addAddoutput_layer/MatMuloutput_layer/biases/read*'
_output_shapes
:         *
T0
z
)SparseSoftmaxCrossEntropyWithLogits/ShapeShapeIteratorGetNext:1*
out_type0*
_output_shapes
:*
T0	
у
GSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsoutput_layer/addIteratorGetNext:1*
Tlabels0	*6
_output_shapes$
":         :         *
T0
O
ConstConst*
valueB: *
dtype0*
_output_shapes
:
Ъ
lossMeanGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsConst*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
[
global_step/initial_valueConst*
dtype0*
_output_shapes
: *
value	B : 
o
global_step
VariableV2*
shared_name *
dtype0*
	container *
_output_shapes
: *
shape: 
о
global_step/AssignAssignglobal_stepglobal_step/initial_value*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
T0*
_class
loc:@global_step*
_output_shapes
: 
R
gradients/ShapeConst*
dtype0*
_output_shapes
: *
valueB 
X
gradients/grad_ys_0Const*
valueB
 *  А?*
dtype0*
_output_shapes
: 
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*

index_type0*
_output_shapes
: *
T0
k
!gradients/loss_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
М
gradients/loss_grad/ReshapeReshapegradients/Fill!gradients/loss_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
а
gradients/loss_grad/ShapeShapeGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0*
_output_shapes
:
Ш
gradients/loss_grad/TileTilegradients/loss_grad/Reshapegradients/loss_grad/Shape*#
_output_shapes
:         *

Tmultiples0*
T0
в
gradients/loss_grad/Shape_1ShapeGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0*
_output_shapes
:
^
gradients/loss_grad/Shape_2Const*
dtype0*
_output_shapes
: *
valueB 
c
gradients/loss_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Ц
gradients/loss_grad/ProdProdgradients/loss_grad/Shape_1gradients/loss_grad/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
e
gradients/loss_grad/Const_1Const*
_output_shapes
:*
valueB: *
dtype0
Ъ
gradients/loss_grad/Prod_1Prodgradients/loss_grad/Shape_2gradients/loss_grad/Const_1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
_
gradients/loss_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
В
gradients/loss_grad/MaximumMaximumgradients/loss_grad/Prod_1gradients/loss_grad/Maximum/y*
_output_shapes
: *
T0
А
gradients/loss_grad/floordivFloorDivgradients/loss_grad/Prodgradients/loss_grad/Maximum*
T0*
_output_shapes
: 
n
gradients/loss_grad/CastCastgradients/loss_grad/floordiv*

DstT0*
_output_shapes
: *

SrcT0
И
gradients/loss_grad/truedivRealDivgradients/loss_grad/Tilegradients/loss_grad/Cast*#
_output_shapes
:         *
T0
Ю
gradients/zeros_like	ZerosLikeISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*'
_output_shapes
:         *
T0
н
fgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*┤
messageиеCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*'
_output_shapes
:         
░
egradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
         *
dtype0*
_output_shapes
: 
▒
agradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDimsgradients/loss_grad/truedivegradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:         
▐
Zgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulagradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsfgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*'
_output_shapes
:         
x
%gradients/output_layer/add_grad/ShapeShapeoutput_layer/MatMul*
T0*
out_type0*
_output_shapes
:
q
'gradients/output_layer/add_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
█
5gradients/output_layer/add_grad/BroadcastGradientArgsBroadcastGradientArgs%gradients/output_layer/add_grad/Shape'gradients/output_layer/add_grad/Shape_1*2
_output_shapes 
:         :         *
T0
¤
#gradients/output_layer/add_grad/SumSumZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul5gradients/output_layer/add_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
╛
'gradients/output_layer/add_grad/ReshapeReshape#gradients/output_layer/add_grad/Sum%gradients/output_layer/add_grad/Shape*
Tshape0*'
_output_shapes
:         *
T0
Б
%gradients/output_layer/add_grad/Sum_1SumZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul7gradients/output_layer/add_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
╖
)gradients/output_layer/add_grad/Reshape_1Reshape%gradients/output_layer/add_grad/Sum_1'gradients/output_layer/add_grad/Shape_1*
Tshape0*
_output_shapes
:*
T0
О
0gradients/output_layer/add_grad/tuple/group_depsNoOp(^gradients/output_layer/add_grad/Reshape*^gradients/output_layer/add_grad/Reshape_1
О
8gradients/output_layer/add_grad/tuple/control_dependencyIdentity'gradients/output_layer/add_grad/Reshape1^gradients/output_layer/add_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients/output_layer/add_grad/Reshape*'
_output_shapes
:         
З
:gradients/output_layer/add_grad/tuple/control_dependency_1Identity)gradients/output_layer/add_grad/Reshape_11^gradients/output_layer/add_grad/tuple/group_deps*
T0*<
_class2
0.loc:@gradients/output_layer/add_grad/Reshape_1*
_output_shapes
:
р
)gradients/output_layer/MatMul_grad/MatMulMatMul8gradients/output_layer/add_grad/tuple/control_dependencyoutput_layer/weights/read*
transpose_a( *'
_output_shapes
:         *
transpose_b(*
T0
╠
+gradients/output_layer/MatMul_grad/MatMul_1MatMullayer_1/Relu8gradients/output_layer/add_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:*
transpose_b( 
Х
3gradients/output_layer/MatMul_grad/tuple/group_depsNoOp*^gradients/output_layer/MatMul_grad/MatMul,^gradients/output_layer/MatMul_grad/MatMul_1
Ш
;gradients/output_layer/MatMul_grad/tuple/control_dependencyIdentity)gradients/output_layer/MatMul_grad/MatMul4^gradients/output_layer/MatMul_grad/tuple/group_deps*
T0*<
_class2
0.loc:@gradients/output_layer/MatMul_grad/MatMul*'
_output_shapes
:         
Х
=gradients/output_layer/MatMul_grad/tuple/control_dependency_1Identity+gradients/output_layer/MatMul_grad/MatMul_14^gradients/output_layer/MatMul_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/output_layer/MatMul_grad/MatMul_1*
_output_shapes

:
н
$gradients/layer_1/Relu_grad/ReluGradReluGrad;gradients/output_layer/MatMul_grad/tuple/control_dependencylayer_1/Relu*'
_output_shapes
:         *
T0
n
 gradients/layer_1/add_grad/ShapeShapelayer_1/MatMul*
T0*
out_type0*
_output_shapes
:
l
"gradients/layer_1/add_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
╠
0gradients/layer_1/add_grad/BroadcastGradientArgsBroadcastGradientArgs gradients/layer_1/add_grad/Shape"gradients/layer_1/add_grad/Shape_1*
T0*2
_output_shapes 
:         :         
╜
gradients/layer_1/add_grad/SumSum$gradients/layer_1/Relu_grad/ReluGrad0gradients/layer_1/add_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
п
"gradients/layer_1/add_grad/ReshapeReshapegradients/layer_1/add_grad/Sum gradients/layer_1/add_grad/Shape*
T0*
Tshape0*'
_output_shapes
:         
┴
 gradients/layer_1/add_grad/Sum_1Sum$gradients/layer_1/Relu_grad/ReluGrad2gradients/layer_1/add_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
и
$gradients/layer_1/add_grad/Reshape_1Reshape gradients/layer_1/add_grad/Sum_1"gradients/layer_1/add_grad/Shape_1*
Tshape0*
_output_shapes
:*
T0

+gradients/layer_1/add_grad/tuple/group_depsNoOp#^gradients/layer_1/add_grad/Reshape%^gradients/layer_1/add_grad/Reshape_1
·
3gradients/layer_1/add_grad/tuple/control_dependencyIdentity"gradients/layer_1/add_grad/Reshape,^gradients/layer_1/add_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/layer_1/add_grad/Reshape*'
_output_shapes
:         
є
5gradients/layer_1/add_grad/tuple/control_dependency_1Identity$gradients/layer_1/add_grad/Reshape_1,^gradients/layer_1/add_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/layer_1/add_grad/Reshape_1*
_output_shapes
:
╤
$gradients/layer_1/MatMul_grad/MatMulMatMul3gradients/layer_1/add_grad/tuple/control_dependencylayer_1/weights/read*
T0*
transpose_a( *'
_output_shapes
:          *
transpose_b(
┬
&gradients/layer_1/MatMul_grad/MatMul_1MatMullayer_0/Relu3gradients/layer_1/add_grad/tuple/control_dependency*
transpose_a(*
_output_shapes

: *
transpose_b( *
T0
Ж
.gradients/layer_1/MatMul_grad/tuple/group_depsNoOp%^gradients/layer_1/MatMul_grad/MatMul'^gradients/layer_1/MatMul_grad/MatMul_1
Д
6gradients/layer_1/MatMul_grad/tuple/control_dependencyIdentity$gradients/layer_1/MatMul_grad/MatMul/^gradients/layer_1/MatMul_grad/tuple/group_deps*'
_output_shapes
:          *
T0*7
_class-
+)loc:@gradients/layer_1/MatMul_grad/MatMul
Б
8gradients/layer_1/MatMul_grad/tuple/control_dependency_1Identity&gradients/layer_1/MatMul_grad/MatMul_1/^gradients/layer_1/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/layer_1/MatMul_grad/MatMul_1*
_output_shapes

: 
и
$gradients/layer_0/Relu_grad/ReluGradReluGrad6gradients/layer_1/MatMul_grad/tuple/control_dependencylayer_0/Relu*'
_output_shapes
:          *
T0
n
 gradients/layer_0/add_grad/ShapeShapelayer_0/MatMul*
T0*
out_type0*
_output_shapes
:
l
"gradients/layer_0/add_grad/Shape_1Const*
valueB: *
dtype0*
_output_shapes
:
╠
0gradients/layer_0/add_grad/BroadcastGradientArgsBroadcastGradientArgs gradients/layer_0/add_grad/Shape"gradients/layer_0/add_grad/Shape_1*2
_output_shapes 
:         :         *
T0
╜
gradients/layer_0/add_grad/SumSum$gradients/layer_0/Relu_grad/ReluGrad0gradients/layer_0/add_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
п
"gradients/layer_0/add_grad/ReshapeReshapegradients/layer_0/add_grad/Sum gradients/layer_0/add_grad/Shape*
T0*
Tshape0*'
_output_shapes
:          
┴
 gradients/layer_0/add_grad/Sum_1Sum$gradients/layer_0/Relu_grad/ReluGrad2gradients/layer_0/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
и
$gradients/layer_0/add_grad/Reshape_1Reshape gradients/layer_0/add_grad/Sum_1"gradients/layer_0/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 

+gradients/layer_0/add_grad/tuple/group_depsNoOp#^gradients/layer_0/add_grad/Reshape%^gradients/layer_0/add_grad/Reshape_1
·
3gradients/layer_0/add_grad/tuple/control_dependencyIdentity"gradients/layer_0/add_grad/Reshape,^gradients/layer_0/add_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/layer_0/add_grad/Reshape*'
_output_shapes
:          
є
5gradients/layer_0/add_grad/tuple/control_dependency_1Identity$gradients/layer_0/add_grad/Reshape_1,^gradients/layer_0/add_grad/tuple/group_deps*
_output_shapes
: *
T0*7
_class-
+)loc:@gradients/layer_0/add_grad/Reshape_1
╥
$gradients/layer_0/MatMul_grad/MatMulMatMul3gradients/layer_0/add_grad/tuple/control_dependencylayer_0/weights/read*
T0*
transpose_a( *(
_output_shapes
:         А*
transpose_b(
╟
&gradients/layer_0/MatMul_grad/MatMul_1MatMulinput_layer/Relu3gradients/layer_0/add_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes
:	А *
transpose_b( 
Ж
.gradients/layer_0/MatMul_grad/tuple/group_depsNoOp%^gradients/layer_0/MatMul_grad/MatMul'^gradients/layer_0/MatMul_grad/MatMul_1
Е
6gradients/layer_0/MatMul_grad/tuple/control_dependencyIdentity$gradients/layer_0/MatMul_grad/MatMul/^gradients/layer_0/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/layer_0/MatMul_grad/MatMul*(
_output_shapes
:         А
В
8gradients/layer_0/MatMul_grad/tuple/control_dependency_1Identity&gradients/layer_0/MatMul_grad/MatMul_1/^gradients/layer_0/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/layer_0/MatMul_grad/MatMul_1*
_output_shapes
:	А 
▒
(gradients/input_layer/Relu_grad/ReluGradReluGrad6gradients/layer_0/MatMul_grad/tuple/control_dependencyinput_layer/Relu*
T0*(
_output_shapes
:         А
v
$gradients/input_layer/add_grad/ShapeShapeinput_layer/MatMul*
T0*
out_type0*
_output_shapes
:
q
&gradients/input_layer/add_grad/Shape_1Const*
valueB:А*
dtype0*
_output_shapes
:
╪
4gradients/input_layer/add_grad/BroadcastGradientArgsBroadcastGradientArgs$gradients/input_layer/add_grad/Shape&gradients/input_layer/add_grad/Shape_1*2
_output_shapes 
:         :         *
T0
╔
"gradients/input_layer/add_grad/SumSum(gradients/input_layer/Relu_grad/ReluGrad4gradients/input_layer/add_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
╝
&gradients/input_layer/add_grad/ReshapeReshape"gradients/input_layer/add_grad/Sum$gradients/input_layer/add_grad/Shape*
T0*
Tshape0*(
_output_shapes
:         А
═
$gradients/input_layer/add_grad/Sum_1Sum(gradients/input_layer/Relu_grad/ReluGrad6gradients/input_layer/add_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
╡
(gradients/input_layer/add_grad/Reshape_1Reshape$gradients/input_layer/add_grad/Sum_1&gradients/input_layer/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes	
:А
Л
/gradients/input_layer/add_grad/tuple/group_depsNoOp'^gradients/input_layer/add_grad/Reshape)^gradients/input_layer/add_grad/Reshape_1
Л
7gradients/input_layer/add_grad/tuple/control_dependencyIdentity&gradients/input_layer/add_grad/Reshape0^gradients/input_layer/add_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/input_layer/add_grad/Reshape*(
_output_shapes
:         А
Д
9gradients/input_layer/add_grad/tuple/control_dependency_1Identity(gradients/input_layer/add_grad/Reshape_10^gradients/input_layer/add_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/input_layer/add_grad/Reshape_1*
_output_shapes	
:А
▌
(gradients/input_layer/MatMul_grad/MatMulMatMul7gradients/input_layer/add_grad/tuple/control_dependencyinput_layer/weights/read*
transpose_a( *'
_output_shapes
:         	*
transpose_b(*
T0
╬
*gradients/input_layer/MatMul_grad/MatMul_1MatMulIteratorGetNext7gradients/input_layer/add_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes
:		А*
transpose_b( 
Т
2gradients/input_layer/MatMul_grad/tuple/group_depsNoOp)^gradients/input_layer/MatMul_grad/MatMul+^gradients/input_layer/MatMul_grad/MatMul_1
Ф
:gradients/input_layer/MatMul_grad/tuple/control_dependencyIdentity(gradients/input_layer/MatMul_grad/MatMul3^gradients/input_layer/MatMul_grad/tuple/group_deps*'
_output_shapes
:         	*
T0*;
_class1
/-loc:@gradients/input_layer/MatMul_grad/MatMul
Т
<gradients/input_layer/MatMul_grad/tuple/control_dependency_1Identity*gradients/input_layer/MatMul_grad/MatMul_13^gradients/input_layer/MatMul_grad/tuple/group_deps*=
_class3
1/loc:@gradients/input_layer/MatMul_grad/MatMul_1*
_output_shapes
:		А*
T0
м
-input_layer/weights/Adagrad/Initializer/ConstConst*
dtype0*
_output_shapes
:		А*
valueB		А*═╠╠=*&
_class
loc:@input_layer/weights
╣
input_layer/weights/Adagrad
VariableV2*
dtype0*
_output_shapes
:		А*
shared_name *&
_class
loc:@input_layer/weights*
	container *
shape:		А
є
"input_layer/weights/Adagrad/AssignAssigninput_layer/weights/Adagrad-input_layer/weights/Adagrad/Initializer/Const*
validate_shape(*
_output_shapes
:		А*
use_locking(*
T0*&
_class
loc:@input_layer/weights
Ы
 input_layer/weights/Adagrad/readIdentityinput_layer/weights/Adagrad*
T0*&
_class
loc:@input_layer/weights*
_output_shapes
:		А
в
,input_layer/biases/Adagrad/Initializer/ConstConst*
dtype0*
_output_shapes	
:А*
valueBА*═╠╠=*%
_class
loc:@input_layer/biases
п
input_layer/biases/Adagrad
VariableV2*
	container *
shape:А*
dtype0*
_output_shapes	
:А*
shared_name *%
_class
loc:@input_layer/biases
ы
!input_layer/biases/Adagrad/AssignAssigninput_layer/biases/Adagrad,input_layer/biases/Adagrad/Initializer/Const*
use_locking(*
T0*%
_class
loc:@input_layer/biases*
validate_shape(*
_output_shapes	
:А
Ф
input_layer/biases/Adagrad/readIdentityinput_layer/biases/Adagrad*
T0*%
_class
loc:@input_layer/biases*
_output_shapes	
:А
д
)layer_0/weights/Adagrad/Initializer/ConstConst*
valueB	А *═╠╠=*"
_class
loc:@layer_0/weights*
dtype0*
_output_shapes
:	А 
▒
layer_0/weights/Adagrad
VariableV2*
shared_name *"
_class
loc:@layer_0/weights*
	container *
shape:	А *
dtype0*
_output_shapes
:	А 
у
layer_0/weights/Adagrad/AssignAssignlayer_0/weights/Adagrad)layer_0/weights/Adagrad/Initializer/Const*
validate_shape(*
_output_shapes
:	А *
use_locking(*
T0*"
_class
loc:@layer_0/weights
П
layer_0/weights/Adagrad/readIdentitylayer_0/weights/Adagrad*
T0*"
_class
loc:@layer_0/weights*
_output_shapes
:	А 
Ш
(layer_0/biases/Adagrad/Initializer/ConstConst*
dtype0*
_output_shapes
: *
valueB *═╠╠=*!
_class
loc:@layer_0/biases
е
layer_0/biases/Adagrad
VariableV2*
shared_name *!
_class
loc:@layer_0/biases*
	container *
shape: *
dtype0*
_output_shapes
: 
┌
layer_0/biases/Adagrad/AssignAssignlayer_0/biases/Adagrad(layer_0/biases/Adagrad/Initializer/Const*
use_locking(*
T0*!
_class
loc:@layer_0/biases*
validate_shape(*
_output_shapes
: 
З
layer_0/biases/Adagrad/readIdentitylayer_0/biases/Adagrad*
_output_shapes
: *
T0*!
_class
loc:@layer_0/biases
в
)layer_1/weights/Adagrad/Initializer/ConstConst*
valueB *═╠╠=*"
_class
loc:@layer_1/weights*
dtype0*
_output_shapes

: 
п
layer_1/weights/Adagrad
VariableV2*
shared_name *"
_class
loc:@layer_1/weights*
	container *
shape
: *
dtype0*
_output_shapes

: 
т
layer_1/weights/Adagrad/AssignAssignlayer_1/weights/Adagrad)layer_1/weights/Adagrad/Initializer/Const*
use_locking(*
T0*"
_class
loc:@layer_1/weights*
validate_shape(*
_output_shapes

: 
О
layer_1/weights/Adagrad/readIdentitylayer_1/weights/Adagrad*
T0*"
_class
loc:@layer_1/weights*
_output_shapes

: 
Ш
(layer_1/biases/Adagrad/Initializer/ConstConst*
valueB*═╠╠=*!
_class
loc:@layer_1/biases*
dtype0*
_output_shapes
:
е
layer_1/biases/Adagrad
VariableV2*
dtype0*
_output_shapes
:*
shared_name *!
_class
loc:@layer_1/biases*
	container *
shape:
┌
layer_1/biases/Adagrad/AssignAssignlayer_1/biases/Adagrad(layer_1/biases/Adagrad/Initializer/Const*
use_locking(*
T0*!
_class
loc:@layer_1/biases*
validate_shape(*
_output_shapes
:
З
layer_1/biases/Adagrad/readIdentitylayer_1/biases/Adagrad*
_output_shapes
:*
T0*!
_class
loc:@layer_1/biases
м
.output_layer/weights/Adagrad/Initializer/ConstConst*
valueB*═╠╠=*'
_class
loc:@output_layer/weights*
dtype0*
_output_shapes

:
╣
output_layer/weights/Adagrad
VariableV2*
	container *
shape
:*
dtype0*
_output_shapes

:*
shared_name *'
_class
loc:@output_layer/weights
Ў
#output_layer/weights/Adagrad/AssignAssignoutput_layer/weights/Adagrad.output_layer/weights/Adagrad/Initializer/Const*
_output_shapes

:*
use_locking(*
T0*'
_class
loc:@output_layer/weights*
validate_shape(
Э
!output_layer/weights/Adagrad/readIdentityoutput_layer/weights/Adagrad*'
_class
loc:@output_layer/weights*
_output_shapes

:*
T0
в
-output_layer/biases/Adagrad/Initializer/ConstConst*
valueB*═╠╠=*&
_class
loc:@output_layer/biases*
dtype0*
_output_shapes
:
п
output_layer/biases/Adagrad
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *&
_class
loc:@output_layer/biases
ю
"output_layer/biases/Adagrad/AssignAssignoutput_layer/biases/Adagrad-output_layer/biases/Adagrad/Initializer/Const*
use_locking(*
T0*&
_class
loc:@output_layer/biases*
validate_shape(*
_output_shapes
:
Ц
 output_layer/biases/Adagrad/readIdentityoutput_layer/biases/Adagrad*
_output_shapes
:*
T0*&
_class
loc:@output_layer/biases
Z
Adagrad/learning_rateConst*
valueB
 *
╫#<*
dtype0*
_output_shapes
: 
л
/Adagrad/update_input_layer/weights/ApplyAdagradApplyAdagradinput_layer/weightsinput_layer/weights/AdagradAdagrad/learning_rate<gradients/input_layer/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*&
_class
loc:@input_layer/weights*
_output_shapes
:		А
а
.Adagrad/update_input_layer/biases/ApplyAdagradApplyAdagradinput_layer/biasesinput_layer/biases/AdagradAdagrad/learning_rate9gradients/input_layer/add_grad/tuple/control_dependency_1*%
_class
loc:@input_layer/biases*
_output_shapes	
:А*
use_locking( *
T0
Ч
+Adagrad/update_layer_0/weights/ApplyAdagradApplyAdagradlayer_0/weightslayer_0/weights/AdagradAdagrad/learning_rate8gradients/layer_0/MatMul_grad/tuple/control_dependency_1*"
_class
loc:@layer_0/weights*
_output_shapes
:	А *
use_locking( *
T0
Л
*Adagrad/update_layer_0/biases/ApplyAdagradApplyAdagradlayer_0/biaseslayer_0/biases/AdagradAdagrad/learning_rate5gradients/layer_0/add_grad/tuple/control_dependency_1*
use_locking( *
T0*!
_class
loc:@layer_0/biases*
_output_shapes
: 
Ц
+Adagrad/update_layer_1/weights/ApplyAdagradApplyAdagradlayer_1/weightslayer_1/weights/AdagradAdagrad/learning_rate8gradients/layer_1/MatMul_grad/tuple/control_dependency_1*
_output_shapes

: *
use_locking( *
T0*"
_class
loc:@layer_1/weights
Л
*Adagrad/update_layer_1/biases/ApplyAdagradApplyAdagradlayer_1/biaseslayer_1/biases/AdagradAdagrad/learning_rate5gradients/layer_1/add_grad/tuple/control_dependency_1*
use_locking( *
T0*!
_class
loc:@layer_1/biases*
_output_shapes
:
п
0Adagrad/update_output_layer/weights/ApplyAdagradApplyAdagradoutput_layer/weightsoutput_layer/weights/AdagradAdagrad/learning_rate=gradients/output_layer/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*'
_class
loc:@output_layer/weights*
_output_shapes

:
д
/Adagrad/update_output_layer/biases/ApplyAdagradApplyAdagradoutput_layer/biasesoutput_layer/biases/AdagradAdagrad/learning_rate:gradients/output_layer/add_grad/tuple/control_dependency_1*
_output_shapes
:*
use_locking( *
T0*&
_class
loc:@output_layer/biases
Ф
Adagrad/updateNoOp/^Adagrad/update_input_layer/biases/ApplyAdagrad0^Adagrad/update_input_layer/weights/ApplyAdagrad+^Adagrad/update_layer_0/biases/ApplyAdagrad,^Adagrad/update_layer_0/weights/ApplyAdagrad+^Adagrad/update_layer_1/biases/ApplyAdagrad,^Adagrad/update_layer_1/weights/ApplyAdagrad0^Adagrad/update_output_layer/biases/ApplyAdagrad1^Adagrad/update_output_layer/weights/ApplyAdagrad
А
Adagrad/valueConst^Adagrad/update*
_output_shapes
: *
value	B :*
_class
loc:@global_step*
dtype0
Д
Adagrad	AssignAddglobal_stepAdagrad/value*
use_locking( *
T0*
_class
loc:@global_step*
_output_shapes
: 
в
input_layer_1/MatMulMatMulIteratorGetNextinput_layer/weights/read*
transpose_a( *(
_output_shapes
:         А*
transpose_b( *
T0
z
input_layer_1/addAddinput_layer_1/MatMulinput_layer/biases/read*(
_output_shapes
:         А*
T0
`
input_layer_1/ReluReluinput_layer_1/add*(
_output_shapes
:         А*
T0
Ь
layer_0_1/MatMulMatMulinput_layer_1/Relulayer_0/weights/read*
T0*
transpose_a( *'
_output_shapes
:          *
transpose_b( 
m
layer_0_1/addAddlayer_0_1/MatMullayer_0/biases/read*
T0*'
_output_shapes
:          
W
layer_0_1/ReluRelulayer_0_1/add*
T0*'
_output_shapes
:          
Ш
layer_1_1/MatMulMatMullayer_0_1/Relulayer_1/weights/read*
T0*
transpose_a( *'
_output_shapes
:         *
transpose_b( 
m
layer_1_1/addAddlayer_1_1/MatMullayer_1/biases/read*
T0*'
_output_shapes
:         
W
layer_1_1/ReluRelulayer_1_1/add*
T0*'
_output_shapes
:         
в
output_layer_1/MatMulMatMullayer_1_1/Reluoutput_layer/weights/read*
transpose_a( *'
_output_shapes
:         *
transpose_b( *
T0
|
output_layer_1/addAddoutput_layer_1/MatMuloutput_layer/biases/read*'
_output_shapes
:         *
T0
X
SoftmaxSoftmaxoutput_layer_1/add*
T0*'
_output_shapes
:         
R
ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
x
ArgMaxArgMaxSoftmaxArgMax/dimension*
T0*
output_type0	*#
_output_shapes
:         *

Tidx0
W
EqualEqualArgMaxIteratorGetNext:1*
T0	*#
_output_shapes
:         
P
CastCastEqual*

SrcT0
*

DstT0*#
_output_shapes
:         
Q
Const_1Const*
valueB: *
dtype0*
_output_shapes
:
Y
MeanMeanCastConst_1*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
^
Cast_1CastIteratorGetNext:1*

SrcT0	*

DstT0*#
_output_shapes
:         
^
Reshape/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
i
ReshapeReshapeCast_1Reshape/shape*
T0*
Tshape0*'
_output_shapes
:         
K
ShapeShapeCast_1*
_output_shapes
:*
T0*
out_type0
]
strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
_
strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
_
strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
∙
strided_sliceStridedSliceShapestrided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
M
range/startConst*
value	B : *
dtype0*
_output_shapes
: 
M
range/deltaConst*
_output_shapes
: *
value	B :*
dtype0
h
rangeRangerange/startstrided_slicerange/delta*#
_output_shapes
:         *

Tidx0
`
Reshape_1/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
l
	Reshape_1ReshaperangeReshape_1/shape*
T0*
Tshape0*'
_output_shapes
:         
M
concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
z
concatConcatV2	Reshape_1Reshapeconcat/axis*

Tidx0*
T0*
N*'
_output_shapes
:         
I
stack/1Const*
dtype0*
_output_shapes
: *
value	B :
_
stackPackstrided_slicestack/1*
T0*

axis *
N*
_output_shapes
:
`
SparseToDense/sparse_valuesConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
`
SparseToDense/default_valueConst*
_output_shapes
: *
valueB
 *    *
dtype0
┴
SparseToDenseSparseToDenseconcatstackSparseToDense/sparse_valuesSparseToDense/default_value*
Tindices0*
T0*
validate_indices(*'
_output_shapes
:         
O

auc/Cast/xConst*
valueB
 *    *
dtype0*
_output_shapes
: 
|
%auc/assert_greater_equal/GreaterEqualGreaterEqualSoftmax
auc/Cast/x*
T0*'
_output_shapes
:         
o
auc/assert_greater_equal/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
Я
auc/assert_greater_equal/AllAll%auc/assert_greater_equal/GreaterEqualauc/assert_greater_equal/Const*
_output_shapes
: *

Tidx0*
	keep_dims( 
Г
%auc/assert_greater_equal/Assert/ConstConst*.
value%B# Bpredictions must be in [0, 1]*
dtype0*
_output_shapes
: 
г
'auc/assert_greater_equal/Assert/Const_1Const*
_output_shapes
: *L
valueCBA B;Condition x >= y did not hold element-wise:x (Softmax:0) = *
dtype0
{
'auc/assert_greater_equal/Assert/Const_2Const*$
valueB By (auc/Cast/x:0) = *
dtype0*
_output_shapes
: 
Ы
2auc/assert_greater_equal/Assert/AssertGuard/SwitchSwitchauc/assert_greater_equal/Allauc/assert_greater_equal/All*
_output_shapes
: : *
T0

Ч
4auc/assert_greater_equal/Assert/AssertGuard/switch_tIdentity4auc/assert_greater_equal/Assert/AssertGuard/Switch:1*
_output_shapes
: *
T0

Х
4auc/assert_greater_equal/Assert/AssertGuard/switch_fIdentity2auc/assert_greater_equal/Assert/AssertGuard/Switch*
_output_shapes
: *
T0

~
3auc/assert_greater_equal/Assert/AssertGuard/pred_idIdentityauc/assert_greater_equal/All*
_output_shapes
: *
T0

o
0auc/assert_greater_equal/Assert/AssertGuard/NoOpNoOp5^auc/assert_greater_equal/Assert/AssertGuard/switch_t
Э
>auc/assert_greater_equal/Assert/AssertGuard/control_dependencyIdentity4auc/assert_greater_equal/Assert/AssertGuard/switch_t1^auc/assert_greater_equal/Assert/AssertGuard/NoOp*
T0
*G
_class=
;9loc:@auc/assert_greater_equal/Assert/AssertGuard/switch_t*
_output_shapes
: 
╬
9auc/assert_greater_equal/Assert/AssertGuard/Assert/data_0Const5^auc/assert_greater_equal/Assert/AssertGuard/switch_f*.
value%B# Bpredictions must be in [0, 1]*
dtype0*
_output_shapes
: 
ь
9auc/assert_greater_equal/Assert/AssertGuard/Assert/data_1Const5^auc/assert_greater_equal/Assert/AssertGuard/switch_f*L
valueCBA B;Condition x >= y did not hold element-wise:x (Softmax:0) = *
dtype0*
_output_shapes
: 
─
9auc/assert_greater_equal/Assert/AssertGuard/Assert/data_3Const5^auc/assert_greater_equal/Assert/AssertGuard/switch_f*
_output_shapes
: *$
valueB By (auc/Cast/x:0) = *
dtype0
├
2auc/assert_greater_equal/Assert/AssertGuard/AssertAssert9auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch9auc/assert_greater_equal/Assert/AssertGuard/Assert/data_09auc/assert_greater_equal/Assert/AssertGuard/Assert/data_1;auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch_19auc/assert_greater_equal/Assert/AssertGuard/Assert/data_3;auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch_2*
T	
2*
	summarize
ъ
9auc/assert_greater_equal/Assert/AssertGuard/Assert/SwitchSwitchauc/assert_greater_equal/All3auc/assert_greater_equal/Assert/AssertGuard/pred_id*
T0
*/
_class%
#!loc:@auc/assert_greater_equal/All*
_output_shapes
: : 
ф
;auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch_1SwitchSoftmax3auc/assert_greater_equal/Assert/AssertGuard/pred_id*
T0*
_class
loc:@Softmax*:
_output_shapes(
&:         :         
╚
;auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch_2Switch
auc/Cast/x3auc/assert_greater_equal/Assert/AssertGuard/pred_id*
T0*
_class
loc:@auc/Cast/x*
_output_shapes
: : 
б
@auc/assert_greater_equal/Assert/AssertGuard/control_dependency_1Identity4auc/assert_greater_equal/Assert/AssertGuard/switch_f3^auc/assert_greater_equal/Assert/AssertGuard/Assert*G
_class=
;9loc:@auc/assert_greater_equal/Assert/AssertGuard/switch_f*
_output_shapes
: *
T0

ш
1auc/assert_greater_equal/Assert/AssertGuard/MergeMerge@auc/assert_greater_equal/Assert/AssertGuard/control_dependency_1>auc/assert_greater_equal/Assert/AssertGuard/control_dependency*
_output_shapes
: : *
T0
*
N
Q
auc/Cast_1/xConst*
_output_shapes
: *
valueB
 *  А?*
dtype0
u
auc/assert_less_equal/LessEqual	LessEqualSoftmaxauc/Cast_1/x*
T0*'
_output_shapes
:         
l
auc/assert_less_equal/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
У
auc/assert_less_equal/AllAllauc/assert_less_equal/LessEqualauc/assert_less_equal/Const*
_output_shapes
: *

Tidx0*
	keep_dims( 
А
"auc/assert_less_equal/Assert/ConstConst*
_output_shapes
: *.
value%B# Bpredictions must be in [0, 1]*
dtype0
а
$auc/assert_less_equal/Assert/Const_1Const*L
valueCBA B;Condition x <= y did not hold element-wise:x (Softmax:0) = *
dtype0*
_output_shapes
: 
z
$auc/assert_less_equal/Assert/Const_2Const*&
valueB By (auc/Cast_1/x:0) = *
dtype0*
_output_shapes
: 
Т
/auc/assert_less_equal/Assert/AssertGuard/SwitchSwitchauc/assert_less_equal/Allauc/assert_less_equal/All*
_output_shapes
: : *
T0

С
1auc/assert_less_equal/Assert/AssertGuard/switch_tIdentity1auc/assert_less_equal/Assert/AssertGuard/Switch:1*
_output_shapes
: *
T0

П
1auc/assert_less_equal/Assert/AssertGuard/switch_fIdentity/auc/assert_less_equal/Assert/AssertGuard/Switch*
T0
*
_output_shapes
: 
x
0auc/assert_less_equal/Assert/AssertGuard/pred_idIdentityauc/assert_less_equal/All*
T0
*
_output_shapes
: 
i
-auc/assert_less_equal/Assert/AssertGuard/NoOpNoOp2^auc/assert_less_equal/Assert/AssertGuard/switch_t
С
;auc/assert_less_equal/Assert/AssertGuard/control_dependencyIdentity1auc/assert_less_equal/Assert/AssertGuard/switch_t.^auc/assert_less_equal/Assert/AssertGuard/NoOp*D
_class:
86loc:@auc/assert_less_equal/Assert/AssertGuard/switch_t*
_output_shapes
: *
T0

╚
6auc/assert_less_equal/Assert/AssertGuard/Assert/data_0Const2^auc/assert_less_equal/Assert/AssertGuard/switch_f*.
value%B# Bpredictions must be in [0, 1]*
dtype0*
_output_shapes
: 
ц
6auc/assert_less_equal/Assert/AssertGuard/Assert/data_1Const2^auc/assert_less_equal/Assert/AssertGuard/switch_f*
dtype0*
_output_shapes
: *L
valueCBA B;Condition x <= y did not hold element-wise:x (Softmax:0) = 
└
6auc/assert_less_equal/Assert/AssertGuard/Assert/data_3Const2^auc/assert_less_equal/Assert/AssertGuard/switch_f*&
valueB By (auc/Cast_1/x:0) = *
dtype0*
_output_shapes
: 
о
/auc/assert_less_equal/Assert/AssertGuard/AssertAssert6auc/assert_less_equal/Assert/AssertGuard/Assert/Switch6auc/assert_less_equal/Assert/AssertGuard/Assert/data_06auc/assert_less_equal/Assert/AssertGuard/Assert/data_18auc/assert_less_equal/Assert/AssertGuard/Assert/Switch_16auc/assert_less_equal/Assert/AssertGuard/Assert/data_38auc/assert_less_equal/Assert/AssertGuard/Assert/Switch_2*
	summarize*
T	
2
▐
6auc/assert_less_equal/Assert/AssertGuard/Assert/SwitchSwitchauc/assert_less_equal/All0auc/assert_less_equal/Assert/AssertGuard/pred_id*
T0
*,
_class"
 loc:@auc/assert_less_equal/All*
_output_shapes
: : 
▐
8auc/assert_less_equal/Assert/AssertGuard/Assert/Switch_1SwitchSoftmax0auc/assert_less_equal/Assert/AssertGuard/pred_id*
T0*
_class
loc:@Softmax*:
_output_shapes(
&:         :         
╞
8auc/assert_less_equal/Assert/AssertGuard/Assert/Switch_2Switchauc/Cast_1/x0auc/assert_less_equal/Assert/AssertGuard/pred_id*
_output_shapes
: : *
T0*
_class
loc:@auc/Cast_1/x
Х
=auc/assert_less_equal/Assert/AssertGuard/control_dependency_1Identity1auc/assert_less_equal/Assert/AssertGuard/switch_f0^auc/assert_less_equal/Assert/AssertGuard/Assert*
T0
*D
_class:
86loc:@auc/assert_less_equal/Assert/AssertGuard/switch_f*
_output_shapes
: 
▀
.auc/assert_less_equal/Assert/AssertGuard/MergeMerge=auc/assert_less_equal/Assert/AssertGuard/control_dependency_1;auc/assert_less_equal/Assert/AssertGuard/control_dependency*
T0
*
N*
_output_shapes
: : 
╟

auc/Cast_2CastSparseToDense2^auc/assert_greater_equal/Assert/AssertGuard/Merge/^auc/assert_less_equal/Assert/AssertGuard/Merge*

SrcT0*

DstT0
*'
_output_shapes
:         
b
auc/Reshape/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
r
auc/ReshapeReshapeSoftmaxauc/Reshape/shape*
Tshape0*'
_output_shapes
:         *
T0
d
auc/Reshape_1/shapeConst*
_output_shapes
:*
valueB"       *
dtype0
y
auc/Reshape_1Reshape
auc/Cast_2auc/Reshape_1/shape*
T0
*
Tshape0*'
_output_shapes
:         
T
	auc/ShapeShapeauc/Reshape*
T0*
out_type0*
_output_shapes
:
a
auc/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
c
auc/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
c
auc/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Н
auc/strided_sliceStridedSlice	auc/Shapeauc/strided_slice/stackauc/strided_slice/stack_1auc/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
°
	auc/ConstConst*
dtype0*
_output_shapes	
:╚*╣
valueпBм╚"аХ┐╓│╧йд;╧й$<╖■v<╧йд<C╘═<╖■Ў<Х=╧й$=	?9=C╘M=}ib=╖■v=°╔Е=ХР=2_Ъ=╧йд=lЇо=	?╣=жЙ├=C╘═=р╪=}iт=┤ь=╖■Ў=кд >°╔>Gя
>Х>ф9>2_>БД>╧й$>╧)>lЇ.>╗4>	?9>Wd>>жЙC>ЇоH>C╘M>С∙R>рX>.D]>}ib>╦Оg>┤l>h┘q>╖■v>$|>кдА>Q7Г>°╔Е>а\И>GяК>юБН>ХР><зТ>ф9Х>Л╠Ч>2_Ъ>┘ёЬ>БДЯ>(в>╧йд>v<з>╧й>┼aм>lЇо>З▒>╗┤>bм╢>	?╣>░╤╗>Wd╛> Ў└>жЙ├>M╞>Їо╚>ЬA╦>C╘═>ъf╨>С∙╥>9М╒>р╪>З▒┌>.D▌>╓╓▀>}iт>$№ф>╦Оч>r!ъ>┤ь>┴Fя>h┘ё>lЇ>╖■Ў>^С∙>$№>м╢■>кд ?¤э?Q7?еА?°╔?L?а\?єе	?Gя
?Ъ8?юБ?B╦?Х?щ]?<з?РЁ?ф9?7Г?Л╠?▀?2_?Жи?┘ё?-;?БД?╘═ ?("?{`#?╧й$?#є%?v<'?╩Е(?╧)?q+?┼a,?л-?lЇ.?└=0?З1?g╨2?╗4?c5?bм6?╡ї7?	?9?]И:?░╤;?=?Wd>?лн?? Ў@?R@B?жЙC?·╥D?MF?бeG?ЇоH?H°I?ЬAK?яКL?C╘M?ЧO?ъfP?>░Q?С∙R?хBT?9МU?М╒V?рX?3hY?З▒Z?█·[?.D]?ВН^?╓╓_?) a?}ib?╨▓c?$№d?xEf?╦Оg?╪h?r!j?╞jk?┤l?m¤m?┴Fo?Рp?h┘q?╝"s?lt?c╡u?╖■v?
Hx?^Сy?▓┌z?$|?Ym}?м╢~? А?
\
auc/ExpandDims/dimConst*
dtype0*
_output_shapes
:*
valueB:
q
auc/ExpandDims
ExpandDims	auc/Constauc/ExpandDims/dim*
T0*
_output_shapes
:	╚*

Tdim0
M
auc/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
k
	auc/stackPackauc/stack/0auc/strided_slice*
_output_shapes
:*
T0*

axis *
N
p
auc/TileTileauc/ExpandDims	auc/stack*(
_output_shapes
:╚         *

Tmultiples0*
T0
H
auc/transpose/RankRankauc/Reshape*
_output_shapes
: *
T0
U
auc/transpose/sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
b
auc/transpose/subSubauc/transpose/Rankauc/transpose/sub/y*
T0*
_output_shapes
: 
[
auc/transpose/Range/startConst*
value	B : *
dtype0*
_output_shapes
: 
[
auc/transpose/Range/deltaConst*
_output_shapes
: *
value	B :*
dtype0
О
auc/transpose/RangeRangeauc/transpose/Range/startauc/transpose/Rankauc/transpose/Range/delta*

Tidx0*
_output_shapes
:
g
auc/transpose/sub_1Subauc/transpose/subauc/transpose/Range*
_output_shapes
:*
T0
{
auc/transpose	Transposeauc/Reshapeauc/transpose/sub_1*
T0*'
_output_shapes
:         *
Tperm0
e
auc/Tile_1/multiplesConst*
valueB"╚      *
dtype0*
_output_shapes
:
|

auc/Tile_1Tileauc/transposeauc/Tile_1/multiples*

Tmultiples0*
T0*(
_output_shapes
:╚         
_
auc/GreaterGreater
auc/Tile_1auc/Tile*
T0*(
_output_shapes
:╚         
S
auc/LogicalNot
LogicalNotauc/Greater*(
_output_shapes
:╚         
e
auc/Tile_2/multiplesConst*
dtype0*
_output_shapes
:*
valueB"╚      
|

auc/Tile_2Tileauc/Reshape_1auc/Tile_2/multiples*(
_output_shapes
:╚         *

Tmultiples0*
T0

T
auc/LogicalNot_1
LogicalNot
auc/Tile_2*(
_output_shapes
:╚         
Ъ
$auc/true_positives/Initializer/zerosConst*
valueB╚*    *%
_class
loc:@auc/true_positives*
dtype0*
_output_shapes	
:╚
з
auc/true_positives
VariableV2*
dtype0*
_output_shapes	
:╚*
shared_name *%
_class
loc:@auc/true_positives*
	container *
shape:╚
╙
auc/true_positives/AssignAssignauc/true_positives$auc/true_positives/Initializer/zeros*
use_locking(*
T0*%
_class
loc:@auc/true_positives*
validate_shape(*
_output_shapes	
:╚
Д
auc/true_positives/readIdentityauc/true_positives*
T0*%
_class
loc:@auc/true_positives*
_output_shapes	
:╚
_
auc/LogicalAnd
LogicalAnd
auc/Tile_2auc/Greater*(
_output_shapes
:╚         
g
auc/ToFloat_1Castauc/LogicalAnd*

SrcT0
*

DstT0*(
_output_shapes
:╚         
[
auc/Sum/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
{
auc/SumSumauc/ToFloat_1auc/Sum/reduction_indices*

Tidx0*
	keep_dims( *
T0*
_output_shapes	
:╚
Ч
auc/AssignAdd	AssignAddauc/true_positivesauc/Sum*%
_class
loc:@auc/true_positives*
_output_shapes	
:╚*
use_locking( *
T0
Ь
%auc/false_negatives/Initializer/zerosConst*
valueB╚*    *&
_class
loc:@auc/false_negatives*
dtype0*
_output_shapes	
:╚
й
auc/false_negatives
VariableV2*&
_class
loc:@auc/false_negatives*
	container *
shape:╚*
dtype0*
_output_shapes	
:╚*
shared_name 
╫
auc/false_negatives/AssignAssignauc/false_negatives%auc/false_negatives/Initializer/zeros*
validate_shape(*
_output_shapes	
:╚*
use_locking(*
T0*&
_class
loc:@auc/false_negatives
З
auc/false_negatives/readIdentityauc/false_negatives*
T0*&
_class
loc:@auc/false_negatives*
_output_shapes	
:╚
d
auc/LogicalAnd_1
LogicalAnd
auc/Tile_2auc/LogicalNot*(
_output_shapes
:╚         
i
auc/ToFloat_2Castauc/LogicalAnd_1*

SrcT0
*

DstT0*(
_output_shapes
:╚         
]
auc/Sum_1/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 

	auc/Sum_1Sumauc/ToFloat_2auc/Sum_1/reduction_indices*
T0*
_output_shapes	
:╚*

Tidx0*
	keep_dims( 
Э
auc/AssignAdd_1	AssignAddauc/false_negatives	auc/Sum_1*&
_class
loc:@auc/false_negatives*
_output_shapes	
:╚*
use_locking( *
T0
Ъ
$auc/true_negatives/Initializer/zerosConst*
valueB╚*    *%
_class
loc:@auc/true_negatives*
dtype0*
_output_shapes	
:╚
з
auc/true_negatives
VariableV2*
dtype0*
_output_shapes	
:╚*
shared_name *%
_class
loc:@auc/true_negatives*
	container *
shape:╚
╙
auc/true_negatives/AssignAssignauc/true_negatives$auc/true_negatives/Initializer/zeros*
T0*%
_class
loc:@auc/true_negatives*
validate_shape(*
_output_shapes	
:╚*
use_locking(
Д
auc/true_negatives/readIdentityauc/true_negatives*
_output_shapes	
:╚*
T0*%
_class
loc:@auc/true_negatives
j
auc/LogicalAnd_2
LogicalAndauc/LogicalNot_1auc/LogicalNot*(
_output_shapes
:╚         
i
auc/ToFloat_3Castauc/LogicalAnd_2*

SrcT0
*

DstT0*(
_output_shapes
:╚         
]
auc/Sum_2/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 

	auc/Sum_2Sumauc/ToFloat_3auc/Sum_2/reduction_indices*
_output_shapes	
:╚*

Tidx0*
	keep_dims( *
T0
Ы
auc/AssignAdd_2	AssignAddauc/true_negatives	auc/Sum_2*
T0*%
_class
loc:@auc/true_negatives*
_output_shapes	
:╚*
use_locking( 
Ь
%auc/false_positives/Initializer/zerosConst*
valueB╚*    *&
_class
loc:@auc/false_positives*
dtype0*
_output_shapes	
:╚
й
auc/false_positives
VariableV2*
	container *
shape:╚*
dtype0*
_output_shapes	
:╚*
shared_name *&
_class
loc:@auc/false_positives
╫
auc/false_positives/AssignAssignauc/false_positives%auc/false_positives/Initializer/zeros*
validate_shape(*
_output_shapes	
:╚*
use_locking(*
T0*&
_class
loc:@auc/false_positives
З
auc/false_positives/readIdentityauc/false_positives*
T0*&
_class
loc:@auc/false_positives*
_output_shapes	
:╚
g
auc/LogicalAnd_3
LogicalAndauc/LogicalNot_1auc/Greater*(
_output_shapes
:╚         
i
auc/ToFloat_4Castauc/LogicalAnd_3*

DstT0*(
_output_shapes
:╚         *

SrcT0

]
auc/Sum_3/reduction_indicesConst*
dtype0*
_output_shapes
: *
value	B :

	auc/Sum_3Sumauc/ToFloat_4auc/Sum_3/reduction_indices*
T0*
_output_shapes	
:╚*

Tidx0*
	keep_dims( 
Э
auc/AssignAdd_3	AssignAddauc/false_positives	auc/Sum_3*
use_locking( *
T0*&
_class
loc:@auc/false_positives*
_output_shapes	
:╚
N
	auc/add/yConst*
valueB
 *╜7Ж5*
dtype0*
_output_shapes
: 
X
auc/addAddauc/true_positives/read	auc/add/y*
T0*
_output_shapes	
:╚
i
	auc/add_1Addauc/true_positives/readauc/false_negatives/read*
T0*
_output_shapes	
:╚
P
auc/add_2/yConst*
valueB
 *╜7Ж5*
dtype0*
_output_shapes
: 
N
	auc/add_2Add	auc/add_1auc/add_2/y*
T0*
_output_shapes	
:╚
L
auc/divRealDivauc/add	auc/add_2*
T0*
_output_shapes	
:╚
i
	auc/add_3Addauc/false_positives/readauc/true_negatives/read*
T0*
_output_shapes	
:╚
P
auc/add_4/yConst*
valueB
 *╜7Ж5*
dtype0*
_output_shapes
: 
N
	auc/add_4Add	auc/add_3auc/add_4/y*
_output_shapes	
:╚*
T0
_
	auc/div_1RealDivauc/false_positives/read	auc/add_4*
T0*
_output_shapes	
:╚
c
auc/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
f
auc/strided_slice_1/stack_1Const*
valueB:╟*
dtype0*
_output_shapes
:
e
auc/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ъ
auc/strided_slice_1StridedSlice	auc/div_1auc/strided_slice_1/stackauc/strided_slice_1/stack_1auc/strided_slice_1/stack_2*
Index0*
T0*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask *
_output_shapes	
:╟
c
auc/strided_slice_2/stackConst*
dtype0*
_output_shapes
:*
valueB:
e
auc/strided_slice_2/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 
e
auc/strided_slice_2/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
Ъ
auc/strided_slice_2StridedSlice	auc/div_1auc/strided_slice_2/stackauc/strided_slice_2/stack_1auc/strided_slice_2/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes	
:╟*
Index0*
T0*
shrink_axis_mask 
^
auc/subSubauc/strided_slice_1auc/strided_slice_2*
T0*
_output_shapes	
:╟
c
auc/strided_slice_3/stackConst*
valueB: *
dtype0*
_output_shapes
:
f
auc/strided_slice_3/stack_1Const*
valueB:╟*
dtype0*
_output_shapes
:
e
auc/strided_slice_3/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Ш
auc/strided_slice_3StridedSliceauc/divauc/strided_slice_3/stackauc/strided_slice_3/stack_1auc/strided_slice_3/stack_2*
Index0*
T0*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask *
_output_shapes	
:╟
c
auc/strided_slice_4/stackConst*
valueB:*
dtype0*
_output_shapes
:
e
auc/strided_slice_4/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
e
auc/strided_slice_4/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ш
auc/strided_slice_4StridedSliceauc/divauc/strided_slice_4/stackauc/strided_slice_4/stack_1auc/strided_slice_4/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes	
:╟*
Index0*
T0*
shrink_axis_mask 
`
	auc/add_5Addauc/strided_slice_3auc/strided_slice_4*
_output_shapes	
:╟*
T0
R
auc/truediv/yConst*
_output_shapes
: *
valueB
 *   @*
dtype0
V
auc/truedivRealDiv	auc/add_5auc/truediv/y*
_output_shapes	
:╟*
T0
J
auc/MulMulauc/subauc/truediv*
_output_shapes	
:╟*
T0
U
auc/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
d
	auc/valueSumauc/Mulauc/Const_1*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
P
auc/add_6/yConst*
valueB
 *╜7Ж5*
dtype0*
_output_shapes
: 
R
	auc/add_6Addauc/AssignAddauc/add_6/y*
T0*
_output_shapes	
:╚
V
	auc/add_7Addauc/AssignAddauc/AssignAdd_1*
T0*
_output_shapes	
:╚
P
auc/add_8/yConst*
valueB
 *╜7Ж5*
dtype0*
_output_shapes
: 
N
	auc/add_8Add	auc/add_7auc/add_8/y*
_output_shapes	
:╚*
T0
P
	auc/div_2RealDiv	auc/add_6	auc/add_8*
T0*
_output_shapes	
:╚
X
	auc/add_9Addauc/AssignAdd_3auc/AssignAdd_2*
T0*
_output_shapes	
:╚
Q
auc/add_10/yConst*
valueB
 *╜7Ж5*
dtype0*
_output_shapes
: 
P

auc/add_10Add	auc/add_9auc/add_10/y*
T0*
_output_shapes	
:╚
W
	auc/div_3RealDivauc/AssignAdd_3
auc/add_10*
_output_shapes	
:╚*
T0
c
auc/strided_slice_5/stackConst*
valueB: *
dtype0*
_output_shapes
:
f
auc/strided_slice_5/stack_1Const*
valueB:╟*
dtype0*
_output_shapes
:
e
auc/strided_slice_5/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ъ
auc/strided_slice_5StridedSlice	auc/div_3auc/strided_slice_5/stackauc/strided_slice_5/stack_1auc/strided_slice_5/stack_2*
end_mask *
_output_shapes	
:╟*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask 
c
auc/strided_slice_6/stackConst*
valueB:*
dtype0*
_output_shapes
:
e
auc/strided_slice_6/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
e
auc/strided_slice_6/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Ъ
auc/strided_slice_6StridedSlice	auc/div_3auc/strided_slice_6/stackauc/strided_slice_6/stack_1auc/strided_slice_6/stack_2*
end_mask*
_output_shapes	
:╟*
T0*
Index0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask 
`
	auc/sub_1Subauc/strided_slice_5auc/strided_slice_6*
T0*
_output_shapes	
:╟
c
auc/strided_slice_7/stackConst*
valueB: *
dtype0*
_output_shapes
:
f
auc/strided_slice_7/stack_1Const*
valueB:╟*
dtype0*
_output_shapes
:
e
auc/strided_slice_7/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ъ
auc/strided_slice_7StridedSlice	auc/div_2auc/strided_slice_7/stackauc/strided_slice_7/stack_1auc/strided_slice_7/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes	
:╟*
Index0*
T0
c
auc/strided_slice_8/stackConst*
_output_shapes
:*
valueB:*
dtype0
e
auc/strided_slice_8/stack_1Const*
_output_shapes
:*
valueB: *
dtype0
e
auc/strided_slice_8/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ъ
auc/strided_slice_8StridedSlice	auc/div_2auc/strided_slice_8/stackauc/strided_slice_8/stack_1auc/strided_slice_8/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes	
:╟
a

auc/add_11Addauc/strided_slice_7auc/strided_slice_8*
T0*
_output_shapes	
:╟
T
auc/truediv_1/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
[
auc/truediv_1RealDiv
auc/add_11auc/truediv_1/y*
_output_shapes	
:╟*
T0
P
	auc/Mul_1Mul	auc/sub_1auc/truediv_1*
T0*
_output_shapes	
:╟
U
auc/Const_2Const*
dtype0*
_output_shapes
:*
valueB: 
j
auc/update_opSum	auc/Mul_1auc/Const_2*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
д
input_layer_2/MatMulMatMulIteratorGetNext_1input_layer/weights/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:         А
z
input_layer_2/addAddinput_layer_2/MatMulinput_layer/biases/read*
T0*(
_output_shapes
:         А
`
input_layer_2/ReluReluinput_layer_2/add*(
_output_shapes
:         А*
T0
Ь
layer_0_2/MatMulMatMulinput_layer_2/Relulayer_0/weights/read*
transpose_a( *'
_output_shapes
:          *
transpose_b( *
T0
m
layer_0_2/addAddlayer_0_2/MatMullayer_0/biases/read*
T0*'
_output_shapes
:          
W
layer_0_2/ReluRelulayer_0_2/add*
T0*'
_output_shapes
:          
Ш
layer_1_2/MatMulMatMullayer_0_2/Relulayer_1/weights/read*
transpose_a( *'
_output_shapes
:         *
transpose_b( *
T0
m
layer_1_2/addAddlayer_1_2/MatMullayer_1/biases/read*
T0*'
_output_shapes
:         
W
layer_1_2/ReluRelulayer_1_2/add*'
_output_shapes
:         *
T0
в
output_layer_2/MatMulMatMullayer_1_2/Reluoutput_layer/weights/read*
transpose_a( *'
_output_shapes
:         *
transpose_b( *
T0
|
output_layer_2/addAddoutput_layer_2/MatMuloutput_layer/biases/read*'
_output_shapes
:         *
T0
Z
	Softmax_1Softmaxoutput_layer_2/add*
T0*'
_output_shapes
:         
T
ArgMax_1/dimensionConst*
dtype0*
_output_shapes
: *
value	B :
~
ArgMax_1ArgMax	Softmax_1ArgMax_1/dimension*
output_type0	*#
_output_shapes
:         *

Tidx0*
T0
]
Equal_1EqualArgMax_1IteratorGetNext_1:1*
T0	*#
_output_shapes
:         
T
Cast_2CastEqual_1*

DstT0*#
_output_shapes
:         *

SrcT0

Q
Const_2Const*
valueB: *
dtype0*
_output_shapes
:
]
Mean_1MeanCast_2Const_2*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
`
Cast_3CastIteratorGetNext_1:1*

SrcT0	*

DstT0*#
_output_shapes
:         
`
Reshape_2/shapeConst*
dtype0*
_output_shapes
:*
valueB"       
m
	Reshape_2ReshapeCast_3Reshape_2/shape*
T0*
Tshape0*'
_output_shapes
:         
M
Shape_1ShapeCast_3*
_output_shapes
:*
T0*
out_type0
_
strided_slice_1/stackConst*
_output_shapes
:*
valueB: *
dtype0
a
strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
a
strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Г
strided_slice_1StridedSliceShape_1strided_slice_1/stackstrided_slice_1/stack_1strided_slice_1/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
O
range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
O
range_1/deltaConst*
dtype0*
_output_shapes
: *
value	B :
p
range_1Rangerange_1/startstrided_slice_1range_1/delta*

Tidx0*#
_output_shapes
:         
`
Reshape_3/shapeConst*
dtype0*
_output_shapes
:*
valueB"       
n
	Reshape_3Reshaperange_1Reshape_3/shape*
Tshape0*'
_output_shapes
:         *
T0
O
concat_1/axisConst*
value	B :*
dtype0*
_output_shapes
: 
А
concat_1ConcatV2	Reshape_3	Reshape_2concat_1/axis*'
_output_shapes
:         *

Tidx0*
T0*
N
K
	stack_1/1Const*
value	B :*
dtype0*
_output_shapes
: 
e
stack_1Packstrided_slice_1	stack_1/1*
T0*

axis *
N*
_output_shapes
:
b
SparseToDense_1/sparse_valuesConst*
_output_shapes
: *
valueB
 *  А?*
dtype0
b
SparseToDense_1/default_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
╦
SparseToDense_1SparseToDenseconcat_1stack_1SparseToDense_1/sparse_valuesSparseToDense_1/default_value*'
_output_shapes
:         *
Tindices0*
T0*
validate_indices(
Q
auc_1/Cast/xConst*
valueB
 *    *
dtype0*
_output_shapes
: 
В
'auc_1/assert_greater_equal/GreaterEqualGreaterEqual	Softmax_1auc_1/Cast/x*'
_output_shapes
:         *
T0
q
 auc_1/assert_greater_equal/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
е
auc_1/assert_greater_equal/AllAll'auc_1/assert_greater_equal/GreaterEqual auc_1/assert_greater_equal/Const*
_output_shapes
: *

Tidx0*
	keep_dims( 
Е
'auc_1/assert_greater_equal/Assert/ConstConst*.
value%B# Bpredictions must be in [0, 1]*
dtype0*
_output_shapes
: 
з
)auc_1/assert_greater_equal/Assert/Const_1Const*
_output_shapes
: *N
valueEBC B=Condition x >= y did not hold element-wise:x (Softmax_1:0) = *
dtype0

)auc_1/assert_greater_equal/Assert/Const_2Const*&
valueB By (auc_1/Cast/x:0) = *
dtype0*
_output_shapes
: 
б
4auc_1/assert_greater_equal/Assert/AssertGuard/SwitchSwitchauc_1/assert_greater_equal/Allauc_1/assert_greater_equal/All*
_output_shapes
: : *
T0

Ы
6auc_1/assert_greater_equal/Assert/AssertGuard/switch_tIdentity6auc_1/assert_greater_equal/Assert/AssertGuard/Switch:1*
T0
*
_output_shapes
: 
Щ
6auc_1/assert_greater_equal/Assert/AssertGuard/switch_fIdentity4auc_1/assert_greater_equal/Assert/AssertGuard/Switch*
T0
*
_output_shapes
: 
В
5auc_1/assert_greater_equal/Assert/AssertGuard/pred_idIdentityauc_1/assert_greater_equal/All*
T0
*
_output_shapes
: 
s
2auc_1/assert_greater_equal/Assert/AssertGuard/NoOpNoOp7^auc_1/assert_greater_equal/Assert/AssertGuard/switch_t
е
@auc_1/assert_greater_equal/Assert/AssertGuard/control_dependencyIdentity6auc_1/assert_greater_equal/Assert/AssertGuard/switch_t3^auc_1/assert_greater_equal/Assert/AssertGuard/NoOp*
_output_shapes
: *
T0
*I
_class?
=;loc:@auc_1/assert_greater_equal/Assert/AssertGuard/switch_t
╥
;auc_1/assert_greater_equal/Assert/AssertGuard/Assert/data_0Const7^auc_1/assert_greater_equal/Assert/AssertGuard/switch_f*.
value%B# Bpredictions must be in [0, 1]*
dtype0*
_output_shapes
: 
Є
;auc_1/assert_greater_equal/Assert/AssertGuard/Assert/data_1Const7^auc_1/assert_greater_equal/Assert/AssertGuard/switch_f*N
valueEBC B=Condition x >= y did not hold element-wise:x (Softmax_1:0) = *
dtype0*
_output_shapes
: 
╩
;auc_1/assert_greater_equal/Assert/AssertGuard/Assert/data_3Const7^auc_1/assert_greater_equal/Assert/AssertGuard/switch_f*&
valueB By (auc_1/Cast/x:0) = *
dtype0*
_output_shapes
: 
╤
4auc_1/assert_greater_equal/Assert/AssertGuard/AssertAssert;auc_1/assert_greater_equal/Assert/AssertGuard/Assert/Switch;auc_1/assert_greater_equal/Assert/AssertGuard/Assert/data_0;auc_1/assert_greater_equal/Assert/AssertGuard/Assert/data_1=auc_1/assert_greater_equal/Assert/AssertGuard/Assert/Switch_1;auc_1/assert_greater_equal/Assert/AssertGuard/Assert/data_3=auc_1/assert_greater_equal/Assert/AssertGuard/Assert/Switch_2*
T	
2*
	summarize
Є
;auc_1/assert_greater_equal/Assert/AssertGuard/Assert/SwitchSwitchauc_1/assert_greater_equal/All5auc_1/assert_greater_equal/Assert/AssertGuard/pred_id*
_output_shapes
: : *
T0
*1
_class'
%#loc:@auc_1/assert_greater_equal/All
ь
=auc_1/assert_greater_equal/Assert/AssertGuard/Assert/Switch_1Switch	Softmax_15auc_1/assert_greater_equal/Assert/AssertGuard/pred_id*
T0*
_class
loc:@Softmax_1*:
_output_shapes(
&:         :         
╨
=auc_1/assert_greater_equal/Assert/AssertGuard/Assert/Switch_2Switchauc_1/Cast/x5auc_1/assert_greater_equal/Assert/AssertGuard/pred_id*
T0*
_class
loc:@auc_1/Cast/x*
_output_shapes
: : 
й
Bauc_1/assert_greater_equal/Assert/AssertGuard/control_dependency_1Identity6auc_1/assert_greater_equal/Assert/AssertGuard/switch_f5^auc_1/assert_greater_equal/Assert/AssertGuard/Assert*
T0
*I
_class?
=;loc:@auc_1/assert_greater_equal/Assert/AssertGuard/switch_f*
_output_shapes
: 
ю
3auc_1/assert_greater_equal/Assert/AssertGuard/MergeMergeBauc_1/assert_greater_equal/Assert/AssertGuard/control_dependency_1@auc_1/assert_greater_equal/Assert/AssertGuard/control_dependency*
_output_shapes
: : *
T0
*
N
S
auc_1/Cast_1/xConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
{
!auc_1/assert_less_equal/LessEqual	LessEqual	Softmax_1auc_1/Cast_1/x*
T0*'
_output_shapes
:         
n
auc_1/assert_less_equal/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
Щ
auc_1/assert_less_equal/AllAll!auc_1/assert_less_equal/LessEqualauc_1/assert_less_equal/Const*

Tidx0*
	keep_dims( *
_output_shapes
: 
В
$auc_1/assert_less_equal/Assert/ConstConst*
_output_shapes
: *.
value%B# Bpredictions must be in [0, 1]*
dtype0
д
&auc_1/assert_less_equal/Assert/Const_1Const*N
valueEBC B=Condition x <= y did not hold element-wise:x (Softmax_1:0) = *
dtype0*
_output_shapes
: 
~
&auc_1/assert_less_equal/Assert/Const_2Const*(
valueB By (auc_1/Cast_1/x:0) = *
dtype0*
_output_shapes
: 
Ш
1auc_1/assert_less_equal/Assert/AssertGuard/SwitchSwitchauc_1/assert_less_equal/Allauc_1/assert_less_equal/All*
T0
*
_output_shapes
: : 
Х
3auc_1/assert_less_equal/Assert/AssertGuard/switch_tIdentity3auc_1/assert_less_equal/Assert/AssertGuard/Switch:1*
T0
*
_output_shapes
: 
У
3auc_1/assert_less_equal/Assert/AssertGuard/switch_fIdentity1auc_1/assert_less_equal/Assert/AssertGuard/Switch*
_output_shapes
: *
T0

|
2auc_1/assert_less_equal/Assert/AssertGuard/pred_idIdentityauc_1/assert_less_equal/All*
T0
*
_output_shapes
: 
m
/auc_1/assert_less_equal/Assert/AssertGuard/NoOpNoOp4^auc_1/assert_less_equal/Assert/AssertGuard/switch_t
Щ
=auc_1/assert_less_equal/Assert/AssertGuard/control_dependencyIdentity3auc_1/assert_less_equal/Assert/AssertGuard/switch_t0^auc_1/assert_less_equal/Assert/AssertGuard/NoOp*
T0
*F
_class<
:8loc:@auc_1/assert_less_equal/Assert/AssertGuard/switch_t*
_output_shapes
: 
╠
8auc_1/assert_less_equal/Assert/AssertGuard/Assert/data_0Const4^auc_1/assert_less_equal/Assert/AssertGuard/switch_f*.
value%B# Bpredictions must be in [0, 1]*
dtype0*
_output_shapes
: 
ь
8auc_1/assert_less_equal/Assert/AssertGuard/Assert/data_1Const4^auc_1/assert_less_equal/Assert/AssertGuard/switch_f*
_output_shapes
: *N
valueEBC B=Condition x <= y did not hold element-wise:x (Softmax_1:0) = *
dtype0
╞
8auc_1/assert_less_equal/Assert/AssertGuard/Assert/data_3Const4^auc_1/assert_less_equal/Assert/AssertGuard/switch_f*(
valueB By (auc_1/Cast_1/x:0) = *
dtype0*
_output_shapes
: 
╝
1auc_1/assert_less_equal/Assert/AssertGuard/AssertAssert8auc_1/assert_less_equal/Assert/AssertGuard/Assert/Switch8auc_1/assert_less_equal/Assert/AssertGuard/Assert/data_08auc_1/assert_less_equal/Assert/AssertGuard/Assert/data_1:auc_1/assert_less_equal/Assert/AssertGuard/Assert/Switch_18auc_1/assert_less_equal/Assert/AssertGuard/Assert/data_3:auc_1/assert_less_equal/Assert/AssertGuard/Assert/Switch_2*
T	
2*
	summarize
ц
8auc_1/assert_less_equal/Assert/AssertGuard/Assert/SwitchSwitchauc_1/assert_less_equal/All2auc_1/assert_less_equal/Assert/AssertGuard/pred_id*
_output_shapes
: : *
T0
*.
_class$
" loc:@auc_1/assert_less_equal/All
ц
:auc_1/assert_less_equal/Assert/AssertGuard/Assert/Switch_1Switch	Softmax_12auc_1/assert_less_equal/Assert/AssertGuard/pred_id*
T0*
_class
loc:@Softmax_1*:
_output_shapes(
&:         :         
╬
:auc_1/assert_less_equal/Assert/AssertGuard/Assert/Switch_2Switchauc_1/Cast_1/x2auc_1/assert_less_equal/Assert/AssertGuard/pred_id*!
_class
loc:@auc_1/Cast_1/x*
_output_shapes
: : *
T0
Э
?auc_1/assert_less_equal/Assert/AssertGuard/control_dependency_1Identity3auc_1/assert_less_equal/Assert/AssertGuard/switch_f2^auc_1/assert_less_equal/Assert/AssertGuard/Assert*
T0
*F
_class<
:8loc:@auc_1/assert_less_equal/Assert/AssertGuard/switch_f*
_output_shapes
: 
х
0auc_1/assert_less_equal/Assert/AssertGuard/MergeMerge?auc_1/assert_less_equal/Assert/AssertGuard/control_dependency_1=auc_1/assert_less_equal/Assert/AssertGuard/control_dependency*
_output_shapes
: : *
T0
*
N
╧
auc_1/Cast_2CastSparseToDense_14^auc_1/assert_greater_equal/Assert/AssertGuard/Merge1^auc_1/assert_less_equal/Assert/AssertGuard/Merge*

SrcT0*

DstT0
*'
_output_shapes
:         
d
auc_1/Reshape/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
x
auc_1/ReshapeReshape	Softmax_1auc_1/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:         
f
auc_1/Reshape_1/shapeConst*
valueB"       *
dtype0*
_output_shapes
:

auc_1/Reshape_1Reshapeauc_1/Cast_2auc_1/Reshape_1/shape*
Tshape0*'
_output_shapes
:         *
T0

X
auc_1/ShapeShapeauc_1/Reshape*
T0*
out_type0*
_output_shapes
:
c
auc_1/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
e
auc_1/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
e
auc_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ч
auc_1/strided_sliceStridedSliceauc_1/Shapeauc_1/strided_slice/stackauc_1/strided_slice/stack_1auc_1/strided_slice/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
·
auc_1/ConstConst*╣
valueпBм╚"аХ┐╓│╧йд;╧й$<╖■v<╧йд<C╘═<╖■Ў<Х=╧й$=	?9=C╘M=}ib=╖■v=°╔Е=ХР=2_Ъ=╧йд=lЇо=	?╣=жЙ├=C╘═=р╪=}iт=┤ь=╖■Ў=кд >°╔>Gя
>Х>ф9>2_>БД>╧й$>╧)>lЇ.>╗4>	?9>Wd>>жЙC>ЇоH>C╘M>С∙R>рX>.D]>}ib>╦Оg>┤l>h┘q>╖■v>$|>кдА>Q7Г>°╔Е>а\И>GяК>юБН>ХР><зТ>ф9Х>Л╠Ч>2_Ъ>┘ёЬ>БДЯ>(в>╧йд>v<з>╧й>┼aм>lЇо>З▒>╗┤>bм╢>	?╣>░╤╗>Wd╛> Ў└>жЙ├>M╞>Їо╚>ЬA╦>C╘═>ъf╨>С∙╥>9М╒>р╪>З▒┌>.D▌>╓╓▀>}iт>$№ф>╦Оч>r!ъ>┤ь>┴Fя>h┘ё>lЇ>╖■Ў>^С∙>$№>м╢■>кд ?¤э?Q7?еА?°╔?L?а\?єе	?Gя
?Ъ8?юБ?B╦?Х?щ]?<з?РЁ?ф9?7Г?Л╠?▀?2_?Жи?┘ё?-;?БД?╘═ ?("?{`#?╧й$?#є%?v<'?╩Е(?╧)?q+?┼a,?л-?lЇ.?└=0?З1?g╨2?╗4?c5?bм6?╡ї7?	?9?]И:?░╤;?=?Wd>?лн?? Ў@?R@B?жЙC?·╥D?MF?бeG?ЇоH?H°I?ЬAK?яКL?C╘M?ЧO?ъfP?>░Q?С∙R?хBT?9МU?М╒V?рX?3hY?З▒Z?█·[?.D]?ВН^?╓╓_?) a?}ib?╨▓c?$№d?xEf?╦Оg?╪h?r!j?╞jk?┤l?m¤m?┴Fo?Рp?h┘q?╝"s?lt?c╡u?╖■v?
Hx?^Сy?▓┌z?$|?Ym}?м╢~? А?*
dtype0*
_output_shapes	
:╚
^
auc_1/ExpandDims/dimConst*
valueB:*
dtype0*
_output_shapes
:
w
auc_1/ExpandDims
ExpandDimsauc_1/Constauc_1/ExpandDims/dim*
T0*
_output_shapes
:	╚*

Tdim0
O
auc_1/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
q
auc_1/stackPackauc_1/stack/0auc_1/strided_slice*
T0*

axis *
N*
_output_shapes
:
v

auc_1/TileTileauc_1/ExpandDimsauc_1/stack*(
_output_shapes
:╚         *

Tmultiples0*
T0
L
auc_1/transpose/RankRankauc_1/Reshape*
T0*
_output_shapes
: 
W
auc_1/transpose/sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
h
auc_1/transpose/subSubauc_1/transpose/Rankauc_1/transpose/sub/y*
_output_shapes
: *
T0
]
auc_1/transpose/Range/startConst*
_output_shapes
: *
value	B : *
dtype0
]
auc_1/transpose/Range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ц
auc_1/transpose/RangeRangeauc_1/transpose/Range/startauc_1/transpose/Rankauc_1/transpose/Range/delta*
_output_shapes
:*

Tidx0
m
auc_1/transpose/sub_1Subauc_1/transpose/subauc_1/transpose/Range*
_output_shapes
:*
T0
Б
auc_1/transpose	Transposeauc_1/Reshapeauc_1/transpose/sub_1*'
_output_shapes
:         *
Tperm0*
T0
g
auc_1/Tile_1/multiplesConst*
valueB"╚      *
dtype0*
_output_shapes
:
В
auc_1/Tile_1Tileauc_1/transposeauc_1/Tile_1/multiples*(
_output_shapes
:╚         *

Tmultiples0*
T0
e
auc_1/GreaterGreaterauc_1/Tile_1
auc_1/Tile*
T0*(
_output_shapes
:╚         
W
auc_1/LogicalNot
LogicalNotauc_1/Greater*(
_output_shapes
:╚         
g
auc_1/Tile_2/multiplesConst*
valueB"╚      *
dtype0*
_output_shapes
:
В
auc_1/Tile_2Tileauc_1/Reshape_1auc_1/Tile_2/multiples*

Tmultiples0*
T0
*(
_output_shapes
:╚         
X
auc_1/LogicalNot_1
LogicalNotauc_1/Tile_2*(
_output_shapes
:╚         
Ю
&auc_1/true_positives/Initializer/zerosConst*
_output_shapes	
:╚*
valueB╚*    *'
_class
loc:@auc_1/true_positives*
dtype0
л
auc_1/true_positives
VariableV2*
shared_name *'
_class
loc:@auc_1/true_positives*
	container *
shape:╚*
dtype0*
_output_shapes	
:╚
█
auc_1/true_positives/AssignAssignauc_1/true_positives&auc_1/true_positives/Initializer/zeros*
_output_shapes	
:╚*
use_locking(*
T0*'
_class
loc:@auc_1/true_positives*
validate_shape(
К
auc_1/true_positives/readIdentityauc_1/true_positives*
_output_shapes	
:╚*
T0*'
_class
loc:@auc_1/true_positives
e
auc_1/LogicalAnd
LogicalAndauc_1/Tile_2auc_1/Greater*(
_output_shapes
:╚         
k
auc_1/ToFloat_1Castauc_1/LogicalAnd*

DstT0*(
_output_shapes
:╚         *

SrcT0

]
auc_1/Sum/reduction_indicesConst*
dtype0*
_output_shapes
: *
value	B :
Б
	auc_1/SumSumauc_1/ToFloat_1auc_1/Sum/reduction_indices*
T0*
_output_shapes	
:╚*

Tidx0*
	keep_dims( 
Я
auc_1/AssignAdd	AssignAddauc_1/true_positives	auc_1/Sum*
_output_shapes	
:╚*
use_locking( *
T0*'
_class
loc:@auc_1/true_positives
а
'auc_1/false_negatives/Initializer/zerosConst*
valueB╚*    *(
_class
loc:@auc_1/false_negatives*
dtype0*
_output_shapes	
:╚
н
auc_1/false_negatives
VariableV2*
dtype0*
_output_shapes	
:╚*
shared_name *(
_class
loc:@auc_1/false_negatives*
	container *
shape:╚
▀
auc_1/false_negatives/AssignAssignauc_1/false_negatives'auc_1/false_negatives/Initializer/zeros*
use_locking(*
T0*(
_class
loc:@auc_1/false_negatives*
validate_shape(*
_output_shapes	
:╚
Н
auc_1/false_negatives/readIdentityauc_1/false_negatives*
T0*(
_class
loc:@auc_1/false_negatives*
_output_shapes	
:╚
j
auc_1/LogicalAnd_1
LogicalAndauc_1/Tile_2auc_1/LogicalNot*(
_output_shapes
:╚         
m
auc_1/ToFloat_2Castauc_1/LogicalAnd_1*

DstT0*(
_output_shapes
:╚         *

SrcT0

_
auc_1/Sum_1/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
Е
auc_1/Sum_1Sumauc_1/ToFloat_2auc_1/Sum_1/reduction_indices*
T0*
_output_shapes	
:╚*

Tidx0*
	keep_dims( 
е
auc_1/AssignAdd_1	AssignAddauc_1/false_negativesauc_1/Sum_1*
T0*(
_class
loc:@auc_1/false_negatives*
_output_shapes	
:╚*
use_locking( 
Ю
&auc_1/true_negatives/Initializer/zerosConst*
valueB╚*    *'
_class
loc:@auc_1/true_negatives*
dtype0*
_output_shapes	
:╚
л
auc_1/true_negatives
VariableV2*
dtype0*
_output_shapes	
:╚*
shared_name *'
_class
loc:@auc_1/true_negatives*
	container *
shape:╚
█
auc_1/true_negatives/AssignAssignauc_1/true_negatives&auc_1/true_negatives/Initializer/zeros*
use_locking(*
T0*'
_class
loc:@auc_1/true_negatives*
validate_shape(*
_output_shapes	
:╚
К
auc_1/true_negatives/readIdentityauc_1/true_negatives*
T0*'
_class
loc:@auc_1/true_negatives*
_output_shapes	
:╚
p
auc_1/LogicalAnd_2
LogicalAndauc_1/LogicalNot_1auc_1/LogicalNot*(
_output_shapes
:╚         
m
auc_1/ToFloat_3Castauc_1/LogicalAnd_2*

DstT0*(
_output_shapes
:╚         *

SrcT0

_
auc_1/Sum_2/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
Е
auc_1/Sum_2Sumauc_1/ToFloat_3auc_1/Sum_2/reduction_indices*
T0*
_output_shapes	
:╚*

Tidx0*
	keep_dims( 
г
auc_1/AssignAdd_2	AssignAddauc_1/true_negativesauc_1/Sum_2*
use_locking( *
T0*'
_class
loc:@auc_1/true_negatives*
_output_shapes	
:╚
а
'auc_1/false_positives/Initializer/zerosConst*
valueB╚*    *(
_class
loc:@auc_1/false_positives*
dtype0*
_output_shapes	
:╚
н
auc_1/false_positives
VariableV2*(
_class
loc:@auc_1/false_positives*
	container *
shape:╚*
dtype0*
_output_shapes	
:╚*
shared_name 
▀
auc_1/false_positives/AssignAssignauc_1/false_positives'auc_1/false_positives/Initializer/zeros*(
_class
loc:@auc_1/false_positives*
validate_shape(*
_output_shapes	
:╚*
use_locking(*
T0
Н
auc_1/false_positives/readIdentityauc_1/false_positives*
T0*(
_class
loc:@auc_1/false_positives*
_output_shapes	
:╚
m
auc_1/LogicalAnd_3
LogicalAndauc_1/LogicalNot_1auc_1/Greater*(
_output_shapes
:╚         
m
auc_1/ToFloat_4Castauc_1/LogicalAnd_3*

SrcT0
*

DstT0*(
_output_shapes
:╚         
_
auc_1/Sum_3/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
Е
auc_1/Sum_3Sumauc_1/ToFloat_4auc_1/Sum_3/reduction_indices*

Tidx0*
	keep_dims( *
T0*
_output_shapes	
:╚
е
auc_1/AssignAdd_3	AssignAddauc_1/false_positivesauc_1/Sum_3*(
_class
loc:@auc_1/false_positives*
_output_shapes	
:╚*
use_locking( *
T0
P
auc_1/add/yConst*
_output_shapes
: *
valueB
 *╜7Ж5*
dtype0
^
	auc_1/addAddauc_1/true_positives/readauc_1/add/y*
T0*
_output_shapes	
:╚
o
auc_1/add_1Addauc_1/true_positives/readauc_1/false_negatives/read*
_output_shapes	
:╚*
T0
R
auc_1/add_2/yConst*
valueB
 *╜7Ж5*
dtype0*
_output_shapes
: 
T
auc_1/add_2Addauc_1/add_1auc_1/add_2/y*
T0*
_output_shapes	
:╚
R
	auc_1/divRealDiv	auc_1/addauc_1/add_2*
_output_shapes	
:╚*
T0
o
auc_1/add_3Addauc_1/false_positives/readauc_1/true_negatives/read*
T0*
_output_shapes	
:╚
R
auc_1/add_4/yConst*
valueB
 *╜7Ж5*
dtype0*
_output_shapes
: 
T
auc_1/add_4Addauc_1/add_3auc_1/add_4/y*
T0*
_output_shapes	
:╚
e
auc_1/div_1RealDivauc_1/false_positives/readauc_1/add_4*
T0*
_output_shapes	
:╚
e
auc_1/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
h
auc_1/strided_slice_1/stack_1Const*
valueB:╟*
dtype0*
_output_shapes
:
g
auc_1/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
д
auc_1/strided_slice_1StridedSliceauc_1/div_1auc_1/strided_slice_1/stackauc_1/strided_slice_1/stack_1auc_1/strided_slice_1/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes	
:╟*
T0*
Index0
e
auc_1/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
g
auc_1/strided_slice_2/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 
g
auc_1/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
д
auc_1/strided_slice_2StridedSliceauc_1/div_1auc_1/strided_slice_2/stackauc_1/strided_slice_2/stack_1auc_1/strided_slice_2/stack_2*
Index0*
T0*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes	
:╟
d
	auc_1/subSubauc_1/strided_slice_1auc_1/strided_slice_2*
T0*
_output_shapes	
:╟
e
auc_1/strided_slice_3/stackConst*
valueB: *
dtype0*
_output_shapes
:
h
auc_1/strided_slice_3/stack_1Const*
valueB:╟*
dtype0*
_output_shapes
:
g
auc_1/strided_slice_3/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
в
auc_1/strided_slice_3StridedSlice	auc_1/divauc_1/strided_slice_3/stackauc_1/strided_slice_3/stack_1auc_1/strided_slice_3/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes	
:╟*
Index0*
T0
e
auc_1/strided_slice_4/stackConst*
dtype0*
_output_shapes
:*
valueB:
g
auc_1/strided_slice_4/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
g
auc_1/strided_slice_4/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
в
auc_1/strided_slice_4StridedSlice	auc_1/divauc_1/strided_slice_4/stackauc_1/strided_slice_4/stack_1auc_1/strided_slice_4/stack_2*
Index0*
T0*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes	
:╟
f
auc_1/add_5Addauc_1/strided_slice_3auc_1/strided_slice_4*
T0*
_output_shapes	
:╟
T
auc_1/truediv/yConst*
_output_shapes
: *
valueB
 *   @*
dtype0
\
auc_1/truedivRealDivauc_1/add_5auc_1/truediv/y*
T0*
_output_shapes	
:╟
P
	auc_1/MulMul	auc_1/subauc_1/truediv*
T0*
_output_shapes	
:╟
W
auc_1/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
j
auc_1/valueSum	auc_1/Mulauc_1/Const_1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
R
auc_1/add_6/yConst*
valueB
 *╜7Ж5*
dtype0*
_output_shapes
: 
X
auc_1/add_6Addauc_1/AssignAddauc_1/add_6/y*
_output_shapes	
:╚*
T0
\
auc_1/add_7Addauc_1/AssignAddauc_1/AssignAdd_1*
T0*
_output_shapes	
:╚
R
auc_1/add_8/yConst*
valueB
 *╜7Ж5*
dtype0*
_output_shapes
: 
T
auc_1/add_8Addauc_1/add_7auc_1/add_8/y*
T0*
_output_shapes	
:╚
V
auc_1/div_2RealDivauc_1/add_6auc_1/add_8*
T0*
_output_shapes	
:╚
^
auc_1/add_9Addauc_1/AssignAdd_3auc_1/AssignAdd_2*
T0*
_output_shapes	
:╚
S
auc_1/add_10/yConst*
_output_shapes
: *
valueB
 *╜7Ж5*
dtype0
V
auc_1/add_10Addauc_1/add_9auc_1/add_10/y*
T0*
_output_shapes	
:╚
]
auc_1/div_3RealDivauc_1/AssignAdd_3auc_1/add_10*
T0*
_output_shapes	
:╚
e
auc_1/strided_slice_5/stackConst*
valueB: *
dtype0*
_output_shapes
:
h
auc_1/strided_slice_5/stack_1Const*
valueB:╟*
dtype0*
_output_shapes
:
g
auc_1/strided_slice_5/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
д
auc_1/strided_slice_5StridedSliceauc_1/div_3auc_1/strided_slice_5/stackauc_1/strided_slice_5/stack_1auc_1/strided_slice_5/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes	
:╟
e
auc_1/strided_slice_6/stackConst*
dtype0*
_output_shapes
:*
valueB:
g
auc_1/strided_slice_6/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
g
auc_1/strided_slice_6/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
д
auc_1/strided_slice_6StridedSliceauc_1/div_3auc_1/strided_slice_6/stackauc_1/strided_slice_6/stack_1auc_1/strided_slice_6/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes	
:╟
f
auc_1/sub_1Subauc_1/strided_slice_5auc_1/strided_slice_6*
T0*
_output_shapes	
:╟
e
auc_1/strided_slice_7/stackConst*
dtype0*
_output_shapes
:*
valueB: 
h
auc_1/strided_slice_7/stack_1Const*
valueB:╟*
dtype0*
_output_shapes
:
g
auc_1/strided_slice_7/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
д
auc_1/strided_slice_7StridedSliceauc_1/div_2auc_1/strided_slice_7/stackauc_1/strided_slice_7/stack_1auc_1/strided_slice_7/stack_2*
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask *
_output_shapes	
:╟*
Index0*
T0*
shrink_axis_mask 
e
auc_1/strided_slice_8/stackConst*
valueB:*
dtype0*
_output_shapes
:
g
auc_1/strided_slice_8/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
g
auc_1/strided_slice_8/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
д
auc_1/strided_slice_8StridedSliceauc_1/div_2auc_1/strided_slice_8/stackauc_1/strided_slice_8/stack_1auc_1/strided_slice_8/stack_2*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes	
:╟*
T0*
Index0
g
auc_1/add_11Addauc_1/strided_slice_7auc_1/strided_slice_8*
T0*
_output_shapes	
:╟
V
auc_1/truediv_1/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
a
auc_1/truediv_1RealDivauc_1/add_11auc_1/truediv_1/y*
T0*
_output_shapes	
:╟
V
auc_1/Mul_1Mulauc_1/sub_1auc_1/truediv_1*
_output_shapes	
:╟*
T0
W
auc_1/Const_2Const*
valueB: *
dtype0*
_output_shapes
:
p
auc_1/update_opSumauc_1/Mul_1auc_1/Const_2*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
k
featuresPlaceholder*
dtype0*'
_output_shapes
:         	*
shape:         	
Ы
input_layer_3/MatMulMatMulfeaturesinput_layer/weights/read*
T0*
transpose_a( *(
_output_shapes
:         А*
transpose_b( 
z
input_layer_3/addAddinput_layer_3/MatMulinput_layer/biases/read*(
_output_shapes
:         А*
T0
`
input_layer_3/ReluReluinput_layer_3/add*(
_output_shapes
:         А*
T0
Ь
layer_0_3/MatMulMatMulinput_layer_3/Relulayer_0/weights/read*
T0*
transpose_a( *'
_output_shapes
:          *
transpose_b( 
m
layer_0_3/addAddlayer_0_3/MatMullayer_0/biases/read*'
_output_shapes
:          *
T0
W
layer_0_3/ReluRelulayer_0_3/add*'
_output_shapes
:          *
T0
Ш
layer_1_3/MatMulMatMullayer_0_3/Relulayer_1/weights/read*
T0*
transpose_a( *'
_output_shapes
:         *
transpose_b( 
m
layer_1_3/addAddlayer_1_3/MatMullayer_1/biases/read*
T0*'
_output_shapes
:         
W
layer_1_3/ReluRelulayer_1_3/add*
T0*'
_output_shapes
:         
в
output_layer_3/MatMulMatMullayer_1_3/Reluoutput_layer/weights/read*
T0*
transpose_a( *'
_output_shapes
:         *
transpose_b( 
|
output_layer_3/addAddoutput_layer_3/MatMuloutput_layer/biases/read*
T0*'
_output_shapes
:         
b
inference_softmaxSoftmaxoutput_layer_3/add*
T0*'
_output_shapes
:         
`
inference_prediction/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
Ю
inference_predictionArgMaxinference_softmaxinference_prediction/dimension*
T0*
output_type0	*#
_output_shapes
:         *

Tidx0
g
keysPlaceholder*
dtype0*'
_output_shapes
:         *
shape:         
R
inference_keysIdentitykeys*
T0*'
_output_shapes
:         
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
█
save/SaveV2/tensor_namesConst*О
valueДBБBglobal_stepBinput_layer/biasesBinput_layer/biases/AdagradBinput_layer/weightsBinput_layer/weights/AdagradBlayer_0/biasesBlayer_0/biases/AdagradBlayer_0/weightsBlayer_0/weights/AdagradBlayer_1/biasesBlayer_1/biases/AdagradBlayer_1/weightsBlayer_1/weights/AdagradBoutput_layer/biasesBoutput_layer/biases/AdagradBoutput_layer/weightsBoutput_layer/weights/Adagrad*
dtype0*
_output_shapes
:
Е
save/SaveV2/shape_and_slicesConst*5
value,B*B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
є
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesglobal_stepinput_layer/biasesinput_layer/biases/Adagradinput_layer/weightsinput_layer/weights/Adagradlayer_0/biaseslayer_0/biases/Adagradlayer_0/weightslayer_0/weights/Adagradlayer_1/biaseslayer_1/biases/Adagradlayer_1/weightslayer_1/weights/Adagradoutput_layer/biasesoutput_layer/biases/Adagradoutput_layer/weightsoutput_layer/weights/Adagrad*
dtypes
2
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
▐
save/RestoreV2/tensor_namesConst*
dtype0*
_output_shapes
:*О
valueДBБBglobal_stepBinput_layer/biasesBinput_layer/biases/AdagradBinput_layer/weightsBinput_layer/weights/AdagradBlayer_0/biasesBlayer_0/biases/AdagradBlayer_0/weightsBlayer_0/weights/AdagradBlayer_1/biasesBlayer_1/biases/AdagradBlayer_1/weightsBlayer_1/weights/AdagradBoutput_layer/biasesBoutput_layer/biases/AdagradBoutput_layer/weightsBoutput_layer/weights/Adagrad
И
save/RestoreV2/shape_and_slicesConst*
_output_shapes
:*5
value,B*B B B B B B B B B B B B B B B B B *
dtype0
р
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*X
_output_shapesF
D:::::::::::::::::*
dtypes
2
Ь
save/AssignAssignglobal_stepsave/RestoreV2*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(
│
save/Assign_1Assigninput_layer/biasessave/RestoreV2:1*
_output_shapes	
:А*
use_locking(*
T0*%
_class
loc:@input_layer/biases*
validate_shape(
╗
save/Assign_2Assigninput_layer/biases/Adagradsave/RestoreV2:2*
_output_shapes	
:А*
use_locking(*
T0*%
_class
loc:@input_layer/biases*
validate_shape(
╣
save/Assign_3Assigninput_layer/weightssave/RestoreV2:3*
_output_shapes
:		А*
use_locking(*
T0*&
_class
loc:@input_layer/weights*
validate_shape(
┴
save/Assign_4Assigninput_layer/weights/Adagradsave/RestoreV2:4*
use_locking(*
T0*&
_class
loc:@input_layer/weights*
validate_shape(*
_output_shapes
:		А
к
save/Assign_5Assignlayer_0/biasessave/RestoreV2:5*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*!
_class
loc:@layer_0/biases
▓
save/Assign_6Assignlayer_0/biases/Adagradsave/RestoreV2:6*
_output_shapes
: *
use_locking(*
T0*!
_class
loc:@layer_0/biases*
validate_shape(
▒
save/Assign_7Assignlayer_0/weightssave/RestoreV2:7*
T0*"
_class
loc:@layer_0/weights*
validate_shape(*
_output_shapes
:	А *
use_locking(
╣
save/Assign_8Assignlayer_0/weights/Adagradsave/RestoreV2:8*"
_class
loc:@layer_0/weights*
validate_shape(*
_output_shapes
:	А *
use_locking(*
T0
к
save/Assign_9Assignlayer_1/biasessave/RestoreV2:9*!
_class
loc:@layer_1/biases*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
┤
save/Assign_10Assignlayer_1/biases/Adagradsave/RestoreV2:10*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@layer_1/biases
▓
save/Assign_11Assignlayer_1/weightssave/RestoreV2:11*
use_locking(*
T0*"
_class
loc:@layer_1/weights*
validate_shape(*
_output_shapes

: 
║
save/Assign_12Assignlayer_1/weights/Adagradsave/RestoreV2:12*
T0*"
_class
loc:@layer_1/weights*
validate_shape(*
_output_shapes

: *
use_locking(
╢
save/Assign_13Assignoutput_layer/biasessave/RestoreV2:13*
_output_shapes
:*
use_locking(*
T0*&
_class
loc:@output_layer/biases*
validate_shape(
╛
save/Assign_14Assignoutput_layer/biases/Adagradsave/RestoreV2:14*&
_class
loc:@output_layer/biases*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
╝
save/Assign_15Assignoutput_layer/weightssave/RestoreV2:15*
_output_shapes

:*
use_locking(*
T0*'
_class
loc:@output_layer/weights*
validate_shape(
─
save/Assign_16Assignoutput_layer/weights/Adagradsave/RestoreV2:16*
T0*'
_class
loc:@output_layer/weights*
validate_shape(*
_output_shapes

:*
use_locking(
н
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
R
loss_1/tagsConst*
valueB Bloss_1*
dtype0*
_output_shapes
: 
K
loss_1ScalarSummaryloss_1/tagsloss*
_output_shapes
: *
T0
b
train_accuracy/tagsConst*
valueB Btrain_accuracy*
dtype0*
_output_shapes
: 
[
train_accuracyScalarSummarytrain_accuracy/tagsMean*
_output_shapes
: *
T0
X
train_auc/tagsConst*
dtype0*
_output_shapes
: *
valueB B	train_auc
Z
	train_aucScalarSummarytrain_auc/tagsauc/update_op*
T0*
_output_shapes
: 
h
validate_accuracy/tagsConst*"
valueB Bvalidate_accuracy*
dtype0*
_output_shapes
: 
c
validate_accuracyScalarSummaryvalidate_accuracy/tagsMean_1*
T0*
_output_shapes
: 
^
validate_auc/tagsConst*
valueB Bvalidate_auc*
dtype0*
_output_shapes
: 
b
validate_aucScalarSummaryvalidate_auc/tagsauc_1/update_op*
_output_shapes
: *
T0
З
Merge/MergeSummaryMergeSummaryloss_1train_accuracy	train_aucvalidate_accuracyvalidate_auc*
N*
_output_shapes
: 
Н
initNoOp^global_step/Assign"^input_layer/biases/Adagrad/Assign^input_layer/biases/Assign#^input_layer/weights/Adagrad/Assign^input_layer/weights/Assign^layer_0/biases/Adagrad/Assign^layer_0/biases/Assign^layer_0/weights/Adagrad/Assign^layer_0/weights/Assign^layer_1/biases/Adagrad/Assign^layer_1/biases/Assign^layer_1/weights/Adagrad/Assign^layer_1/weights/Assign#^output_layer/biases/Adagrad/Assign^output_layer/biases/Assign$^output_layer/weights/Adagrad/Assign^output_layer/weights/Assign
·
init_1NoOp^auc/false_negatives/Assign^auc/false_positives/Assign^auc/true_negatives/Assign^auc/true_positives/Assign^auc_1/false_negatives/Assign^auc_1/false_positives/Assign^auc_1/true_negatives/Assign^auc_1/true_positives/Assign

init_all_tablesNoOp
(
legacy_init_opNoOp^init_all_tables
R
save_1/ConstConst*
_output_shapes
: *
valueB Bmodel*
dtype0
Ж
save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_853e5caeeab14dce919eee21891f514f/part*
dtype0*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
_output_shapes
: *
	separator *
N
S
save_1/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
^
save_1/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
Е
save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
▌
save_1/SaveV2/tensor_namesConst*О
valueДBБBglobal_stepBinput_layer/biasesBinput_layer/biases/AdagradBinput_layer/weightsBinput_layer/weights/AdagradBlayer_0/biasesBlayer_0/biases/AdagradBlayer_0/weightsBlayer_0/weights/AdagradBlayer_1/biasesBlayer_1/biases/AdagradBlayer_1/weightsBlayer_1/weights/AdagradBoutput_layer/biasesBoutput_layer/biases/AdagradBoutput_layer/weightsBoutput_layer/weights/Adagrad*
dtype0*
_output_shapes
:
З
save_1/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*5
value,B*B B B B B B B B B B B B B B B B B 
Е
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesglobal_stepinput_layer/biasesinput_layer/biases/Adagradinput_layer/weightsinput_layer/weights/Adagradlayer_0/biaseslayer_0/biases/Adagradlayer_0/weightslayer_0/weights/Adagradlayer_1/biaseslayer_1/biases/Adagradlayer_1/weightslayer_1/weights/Adagradoutput_layer/biasesoutput_layer/biases/Adagradoutput_layer/weightsoutput_layer/weights/Adagrad*
dtypes
2
Щ
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*
_output_shapes
: *
T0*)
_class
loc:@save_1/ShardedFilename
г
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*
T0*

axis *
N*
_output_shapes
:
Г
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(
В
save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency*
T0*
_output_shapes
: 
р
save_1/RestoreV2/tensor_namesConst*О
valueДBБBglobal_stepBinput_layer/biasesBinput_layer/biases/AdagradBinput_layer/weightsBinput_layer/weights/AdagradBlayer_0/biasesBlayer_0/biases/AdagradBlayer_0/weightsBlayer_0/weights/AdagradBlayer_1/biasesBlayer_1/biases/AdagradBlayer_1/weightsBlayer_1/weights/AdagradBoutput_layer/biasesBoutput_layer/biases/AdagradBoutput_layer/weightsBoutput_layer/weights/Adagrad*
dtype0*
_output_shapes
:
К
!save_1/RestoreV2/shape_and_slicesConst*
_output_shapes
:*5
value,B*B B B B B B B B B B B B B B B B B *
dtype0
ш
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*
dtypes
2*X
_output_shapesF
D:::::::::::::::::
а
save_1/AssignAssignglobal_stepsave_1/RestoreV2*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(
╖
save_1/Assign_1Assigninput_layer/biasessave_1/RestoreV2:1*
use_locking(*
T0*%
_class
loc:@input_layer/biases*
validate_shape(*
_output_shapes	
:А
┐
save_1/Assign_2Assigninput_layer/biases/Adagradsave_1/RestoreV2:2*
_output_shapes	
:А*
use_locking(*
T0*%
_class
loc:@input_layer/biases*
validate_shape(
╜
save_1/Assign_3Assigninput_layer/weightssave_1/RestoreV2:3*
use_locking(*
T0*&
_class
loc:@input_layer/weights*
validate_shape(*
_output_shapes
:		А
┼
save_1/Assign_4Assigninput_layer/weights/Adagradsave_1/RestoreV2:4*
_output_shapes
:		А*
use_locking(*
T0*&
_class
loc:@input_layer/weights*
validate_shape(
о
save_1/Assign_5Assignlayer_0/biasessave_1/RestoreV2:5*
use_locking(*
T0*!
_class
loc:@layer_0/biases*
validate_shape(*
_output_shapes
: 
╢
save_1/Assign_6Assignlayer_0/biases/Adagradsave_1/RestoreV2:6*
use_locking(*
T0*!
_class
loc:@layer_0/biases*
validate_shape(*
_output_shapes
: 
╡
save_1/Assign_7Assignlayer_0/weightssave_1/RestoreV2:7*
validate_shape(*
_output_shapes
:	А *
use_locking(*
T0*"
_class
loc:@layer_0/weights
╜
save_1/Assign_8Assignlayer_0/weights/Adagradsave_1/RestoreV2:8*
_output_shapes
:	А *
use_locking(*
T0*"
_class
loc:@layer_0/weights*
validate_shape(
о
save_1/Assign_9Assignlayer_1/biasessave_1/RestoreV2:9*
use_locking(*
T0*!
_class
loc:@layer_1/biases*
validate_shape(*
_output_shapes
:
╕
save_1/Assign_10Assignlayer_1/biases/Adagradsave_1/RestoreV2:10*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@layer_1/biases*
validate_shape(
╢
save_1/Assign_11Assignlayer_1/weightssave_1/RestoreV2:11*
use_locking(*
T0*"
_class
loc:@layer_1/weights*
validate_shape(*
_output_shapes

: 
╛
save_1/Assign_12Assignlayer_1/weights/Adagradsave_1/RestoreV2:12*
use_locking(*
T0*"
_class
loc:@layer_1/weights*
validate_shape(*
_output_shapes

: 
║
save_1/Assign_13Assignoutput_layer/biasessave_1/RestoreV2:13*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*&
_class
loc:@output_layer/biases
┬
save_1/Assign_14Assignoutput_layer/biases/Adagradsave_1/RestoreV2:14*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*&
_class
loc:@output_layer/biases
└
save_1/Assign_15Assignoutput_layer/weightssave_1/RestoreV2:15*'
_class
loc:@output_layer/weights*
validate_shape(*
_output_shapes

:*
use_locking(*
T0
╚
save_1/Assign_16Assignoutput_layer/weights/Adagradsave_1/RestoreV2:16*
use_locking(*
T0*'
_class
loc:@output_layer/weights*
validate_shape(*
_output_shapes

:
╙
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9
1
save_1/restore_allNoOp^save_1/restore_shardш

Ё
r
tf_map_func_OyxSeFxXjco
arg0
tfrecorddataset25A wrapper for Defun that facilitates shape inference.И9
compression_typeConst*
valueB B *
dtype07
buffer_sizeConst*
valueB		 RАА*
dtype0	Y
TFRecordDatasetTFRecordDatasetarg0compression_type:output:0buffer_size:output:0"+
tfrecorddatasetTFRecordDataset:handle:0
Є
▓
tf_map_func_FeMukb41Iag
arg0)
%parsesingleexample_parsesingleexample+
'parsesingleexample_parsesingleexample_0	25A wrapper for Defun that facilitates shape inference.A
ParseSingleExample/ConstConst*
valueB *
dtype0F
ParseSingleExample/key_labelConst*
value	B	 R *
dtype0	I
 ParseSingleExample/Reshape/shapeConst*
valueB *
dtype0О
ParseSingleExample/ReshapeReshape%ParseSingleExample/key_label:output:0)ParseSingleExample/Reshape/shape:output:0*
T0	*
Tshape0У
%ParseSingleExample/ParseSingleExampleParseSingleExamplearg0!ParseSingleExample/Const:output:0#ParseSingleExample/Reshape:output:0*
Tdense
2	*

num_sparse *!

dense_keys
featureslabel*
dense_shapes

:	: *
sparse_types
 *
sparse_keys
 "]
%parsesingleexample_parsesingleexample4ParseSingleExample/ParseSingleExample:dense_values:0"_
'parsesingleexample_parsesingleexample_04ParseSingleExample/ParseSingleExample:dense_values:1"B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"ц
trainable_variables╬╦
А
input_layer/weights:0input_layer/weights/Assigninput_layer/weights/read:02/input_layer/weights/Initializer/random_normal:0
|
input_layer/biases:0input_layer/biases/Assigninput_layer/biases/read:02.input_layer/biases/Initializer/random_normal:0
p
layer_0/weights:0layer_0/weights/Assignlayer_0/weights/read:02+layer_0/weights/Initializer/random_normal:0
l
layer_0/biases:0layer_0/biases/Assignlayer_0/biases/read:02*layer_0/biases/Initializer/random_normal:0
p
layer_1/weights:0layer_1/weights/Assignlayer_1/weights/read:02+layer_1/weights/Initializer/random_normal:0
l
layer_1/biases:0layer_1/biases/Assignlayer_1/biases/read:02*layer_1/biases/Initializer/random_normal:0
Д
output_layer/weights:0output_layer/weights/Assignoutput_layer/weights/read:020output_layer/weights/Initializer/random_normal:0
А
output_layer/biases:0output_layer/biases/Assignoutput_layer/biases/read:02/output_layer/biases/Initializer/random_normal:0"]
	summariesP
N
loss_1:0
train_accuracy:0
train_auc:0
validate_accuracy:0
validate_auc:0"∙
local_variablesхт
t
auc/true_positives:0auc/true_positives/Assignauc/true_positives/read:02&auc/true_positives/Initializer/zeros:0
x
auc/false_negatives:0auc/false_negatives/Assignauc/false_negatives/read:02'auc/false_negatives/Initializer/zeros:0
t
auc/true_negatives:0auc/true_negatives/Assignauc/true_negatives/read:02&auc/true_negatives/Initializer/zeros:0
x
auc/false_positives:0auc/false_positives/Assignauc/false_positives/read:02'auc/false_positives/Initializer/zeros:0
|
auc_1/true_positives:0auc_1/true_positives/Assignauc_1/true_positives/read:02(auc_1/true_positives/Initializer/zeros:0
А
auc_1/false_negatives:0auc_1/false_negatives/Assignauc_1/false_negatives/read:02)auc_1/false_negatives/Initializer/zeros:0
|
auc_1/true_negatives:0auc_1/true_negatives/Assignauc_1/true_negatives/read:02(auc_1/true_negatives/Initializer/zeros:0
А
auc_1/false_positives:0auc_1/false_positives/Assignauc_1/false_positives/read:02)auc_1/false_positives/Initializer/zeros:0"┬
	variables┤▒
А
input_layer/weights:0input_layer/weights/Assigninput_layer/weights/read:02/input_layer/weights/Initializer/random_normal:0
|
input_layer/biases:0input_layer/biases/Assigninput_layer/biases/read:02.input_layer/biases/Initializer/random_normal:0
p
layer_0/weights:0layer_0/weights/Assignlayer_0/weights/read:02+layer_0/weights/Initializer/random_normal:0
l
layer_0/biases:0layer_0/biases/Assignlayer_0/biases/read:02*layer_0/biases/Initializer/random_normal:0
p
layer_1/weights:0layer_1/weights/Assignlayer_1/weights/read:02+layer_1/weights/Initializer/random_normal:0
l
layer_1/biases:0layer_1/biases/Assignlayer_1/biases/read:02*layer_1/biases/Initializer/random_normal:0
Д
output_layer/weights:0output_layer/weights/Assignoutput_layer/weights/read:020output_layer/weights/Initializer/random_normal:0
А
output_layer/biases:0output_layer/biases/Assignoutput_layer/biases/read:02/output_layer/biases/Initializer/random_normal:0
T
global_step:0global_step/Assignglobal_step/read:02global_step/initial_value:0
Ш
input_layer/weights/Adagrad:0"input_layer/weights/Adagrad/Assign"input_layer/weights/Adagrad/read:02/input_layer/weights/Adagrad/Initializer/Const:0
Ф
input_layer/biases/Adagrad:0!input_layer/biases/Adagrad/Assign!input_layer/biases/Adagrad/read:02.input_layer/biases/Adagrad/Initializer/Const:0
И
layer_0/weights/Adagrad:0layer_0/weights/Adagrad/Assignlayer_0/weights/Adagrad/read:02+layer_0/weights/Adagrad/Initializer/Const:0
Д
layer_0/biases/Adagrad:0layer_0/biases/Adagrad/Assignlayer_0/biases/Adagrad/read:02*layer_0/biases/Adagrad/Initializer/Const:0
И
layer_1/weights/Adagrad:0layer_1/weights/Adagrad/Assignlayer_1/weights/Adagrad/read:02+layer_1/weights/Adagrad/Initializer/Const:0
Д
layer_1/biases/Adagrad:0layer_1/biases/Adagrad/Assignlayer_1/biases/Adagrad/read:02*layer_1/biases/Adagrad/Initializer/Const:0
Ь
output_layer/weights/Adagrad:0#output_layer/weights/Adagrad/Assign#output_layer/weights/Adagrad/read:020output_layer/weights/Adagrad/Initializer/Const:0
Ш
output_layer/biases/Adagrad:0"output_layer/biases/Adagrad/Assign"output_layer/biases/Adagrad/read:02/output_layer/biases/Adagrad/Initializer/Const:0"$
legacy_init_op

legacy_init_op"╘
metric_variables┐
╝
auc/true_positives:0
auc/false_negatives:0
auc/true_negatives:0
auc/false_positives:0
auc_1/true_positives:0
auc_1/false_negatives:0
auc_1/true_negatives:0
auc_1/false_positives:0"Т9
cond_contextБ9■8
╛
5auc/assert_greater_equal/Assert/AssertGuard/cond_text5auc/assert_greater_equal/Assert/AssertGuard/pred_id:06auc/assert_greater_equal/Assert/AssertGuard/switch_t:0 *У
@auc/assert_greater_equal/Assert/AssertGuard/control_dependency:0
5auc/assert_greater_equal/Assert/AssertGuard/pred_id:0
6auc/assert_greater_equal/Assert/AssertGuard/switch_t:0n
5auc/assert_greater_equal/Assert/AssertGuard/pred_id:05auc/assert_greater_equal/Assert/AssertGuard/pred_id:0p
6auc/assert_greater_equal/Assert/AssertGuard/switch_t:06auc/assert_greater_equal/Assert/AssertGuard/switch_t:0
х	
7auc/assert_greater_equal/Assert/AssertGuard/cond_text_15auc/assert_greater_equal/Assert/AssertGuard/pred_id:06auc/assert_greater_equal/Assert/AssertGuard/switch_f:0*║
	Softmax:0
auc/Cast/x:0
auc/assert_greater_equal/All:0
;auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch:0
=auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch_1:0
=auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch_2:0
;auc/assert_greater_equal/Assert/AssertGuard/Assert/data_0:0
;auc/assert_greater_equal/Assert/AssertGuard/Assert/data_1:0
;auc/assert_greater_equal/Assert/AssertGuard/Assert/data_3:0
Bauc/assert_greater_equal/Assert/AssertGuard/control_dependency_1:0
5auc/assert_greater_equal/Assert/AssertGuard/pred_id:0
6auc/assert_greater_equal/Assert/AssertGuard/switch_f:0p
6auc/assert_greater_equal/Assert/AssertGuard/switch_f:06auc/assert_greater_equal/Assert/AssertGuard/switch_f:0J
	Softmax:0=auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch_1:0n
5auc/assert_greater_equal/Assert/AssertGuard/pred_id:05auc/assert_greater_equal/Assert/AssertGuard/pred_id:0M
auc/Cast/x:0=auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch_2:0]
auc/assert_greater_equal/All:0;auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch:0
а
2auc/assert_less_equal/Assert/AssertGuard/cond_text2auc/assert_less_equal/Assert/AssertGuard/pred_id:03auc/assert_less_equal/Assert/AssertGuard/switch_t:0 *■
=auc/assert_less_equal/Assert/AssertGuard/control_dependency:0
2auc/assert_less_equal/Assert/AssertGuard/pred_id:0
3auc/assert_less_equal/Assert/AssertGuard/switch_t:0j
3auc/assert_less_equal/Assert/AssertGuard/switch_t:03auc/assert_less_equal/Assert/AssertGuard/switch_t:0h
2auc/assert_less_equal/Assert/AssertGuard/pred_id:02auc/assert_less_equal/Assert/AssertGuard/pred_id:0
к	
4auc/assert_less_equal/Assert/AssertGuard/cond_text_12auc/assert_less_equal/Assert/AssertGuard/pred_id:03auc/assert_less_equal/Assert/AssertGuard/switch_f:0*И
	Softmax:0
auc/Cast_1/x:0
auc/assert_less_equal/All:0
8auc/assert_less_equal/Assert/AssertGuard/Assert/Switch:0
:auc/assert_less_equal/Assert/AssertGuard/Assert/Switch_1:0
:auc/assert_less_equal/Assert/AssertGuard/Assert/Switch_2:0
8auc/assert_less_equal/Assert/AssertGuard/Assert/data_0:0
8auc/assert_less_equal/Assert/AssertGuard/Assert/data_1:0
8auc/assert_less_equal/Assert/AssertGuard/Assert/data_3:0
?auc/assert_less_equal/Assert/AssertGuard/control_dependency_1:0
2auc/assert_less_equal/Assert/AssertGuard/pred_id:0
3auc/assert_less_equal/Assert/AssertGuard/switch_f:0h
2auc/assert_less_equal/Assert/AssertGuard/pred_id:02auc/assert_less_equal/Assert/AssertGuard/pred_id:0j
3auc/assert_less_equal/Assert/AssertGuard/switch_f:03auc/assert_less_equal/Assert/AssertGuard/switch_f:0G
	Softmax:0:auc/assert_less_equal/Assert/AssertGuard/Assert/Switch_1:0L
auc/Cast_1/x:0:auc/assert_less_equal/Assert/AssertGuard/Assert/Switch_2:0W
auc/assert_less_equal/All:08auc/assert_less_equal/Assert/AssertGuard/Assert/Switch:0
╥
7auc_1/assert_greater_equal/Assert/AssertGuard/cond_text7auc_1/assert_greater_equal/Assert/AssertGuard/pred_id:08auc_1/assert_greater_equal/Assert/AssertGuard/switch_t:0 *б
Bauc_1/assert_greater_equal/Assert/AssertGuard/control_dependency:0
7auc_1/assert_greater_equal/Assert/AssertGuard/pred_id:0
8auc_1/assert_greater_equal/Assert/AssertGuard/switch_t:0r
7auc_1/assert_greater_equal/Assert/AssertGuard/pred_id:07auc_1/assert_greater_equal/Assert/AssertGuard/pred_id:0t
8auc_1/assert_greater_equal/Assert/AssertGuard/switch_t:08auc_1/assert_greater_equal/Assert/AssertGuard/switch_t:0
Ч

9auc_1/assert_greater_equal/Assert/AssertGuard/cond_text_17auc_1/assert_greater_equal/Assert/AssertGuard/pred_id:08auc_1/assert_greater_equal/Assert/AssertGuard/switch_f:0*ц
Softmax_1:0
auc_1/Cast/x:0
 auc_1/assert_greater_equal/All:0
=auc_1/assert_greater_equal/Assert/AssertGuard/Assert/Switch:0
?auc_1/assert_greater_equal/Assert/AssertGuard/Assert/Switch_1:0
?auc_1/assert_greater_equal/Assert/AssertGuard/Assert/Switch_2:0
=auc_1/assert_greater_equal/Assert/AssertGuard/Assert/data_0:0
=auc_1/assert_greater_equal/Assert/AssertGuard/Assert/data_1:0
=auc_1/assert_greater_equal/Assert/AssertGuard/Assert/data_3:0
Dauc_1/assert_greater_equal/Assert/AssertGuard/control_dependency_1:0
7auc_1/assert_greater_equal/Assert/AssertGuard/pred_id:0
8auc_1/assert_greater_equal/Assert/AssertGuard/switch_f:0t
8auc_1/assert_greater_equal/Assert/AssertGuard/switch_f:08auc_1/assert_greater_equal/Assert/AssertGuard/switch_f:0N
Softmax_1:0?auc_1/assert_greater_equal/Assert/AssertGuard/Assert/Switch_1:0r
7auc_1/assert_greater_equal/Assert/AssertGuard/pred_id:07auc_1/assert_greater_equal/Assert/AssertGuard/pred_id:0a
 auc_1/assert_greater_equal/All:0=auc_1/assert_greater_equal/Assert/AssertGuard/Assert/Switch:0Q
auc_1/Cast/x:0?auc_1/assert_greater_equal/Assert/AssertGuard/Assert/Switch_2:0
┤
4auc_1/assert_less_equal/Assert/AssertGuard/cond_text4auc_1/assert_less_equal/Assert/AssertGuard/pred_id:05auc_1/assert_less_equal/Assert/AssertGuard/switch_t:0 *М
?auc_1/assert_less_equal/Assert/AssertGuard/control_dependency:0
4auc_1/assert_less_equal/Assert/AssertGuard/pred_id:0
5auc_1/assert_less_equal/Assert/AssertGuard/switch_t:0n
5auc_1/assert_less_equal/Assert/AssertGuard/switch_t:05auc_1/assert_less_equal/Assert/AssertGuard/switch_t:0l
4auc_1/assert_less_equal/Assert/AssertGuard/pred_id:04auc_1/assert_less_equal/Assert/AssertGuard/pred_id:0
▄	
6auc_1/assert_less_equal/Assert/AssertGuard/cond_text_14auc_1/assert_less_equal/Assert/AssertGuard/pred_id:05auc_1/assert_less_equal/Assert/AssertGuard/switch_f:0*┤
Softmax_1:0
auc_1/Cast_1/x:0
auc_1/assert_less_equal/All:0
:auc_1/assert_less_equal/Assert/AssertGuard/Assert/Switch:0
<auc_1/assert_less_equal/Assert/AssertGuard/Assert/Switch_1:0
<auc_1/assert_less_equal/Assert/AssertGuard/Assert/Switch_2:0
:auc_1/assert_less_equal/Assert/AssertGuard/Assert/data_0:0
:auc_1/assert_less_equal/Assert/AssertGuard/Assert/data_1:0
:auc_1/assert_less_equal/Assert/AssertGuard/Assert/data_3:0
Aauc_1/assert_less_equal/Assert/AssertGuard/control_dependency_1:0
4auc_1/assert_less_equal/Assert/AssertGuard/pred_id:0
5auc_1/assert_less_equal/Assert/AssertGuard/switch_f:0l
4auc_1/assert_less_equal/Assert/AssertGuard/pred_id:04auc_1/assert_less_equal/Assert/AssertGuard/pred_id:0n
5auc_1/assert_less_equal/Assert/AssertGuard/switch_f:05auc_1/assert_less_equal/Assert/AssertGuard/switch_f:0K
Softmax_1:0<auc_1/assert_less_equal/Assert/AssertGuard/Assert/Switch_1:0P
auc_1/Cast_1/x:0<auc_1/assert_less_equal/Assert/AssertGuard/Assert/Switch_2:0[
auc_1/assert_less_equal/All:0:auc_1/assert_less_equal/Assert/AssertGuard/Assert/Switch:0"
train_op
	
Adagrad*з
serving_defaultУ
%
keys
keys:0         
-
features!

features:0         	5
softmax*
inference_softmax:0         /
keys'
inference_keys:0         7

prediction)
inference_prediction:0	         tensorflow/serving/predict