?? 
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
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
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
?
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
?
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handle???element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListReserve
element_shape"
shape_type
num_elements(
handle???element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint?????????
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
?
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
?"serve*2.8.22v2.8.2-0-g2ea19cbb5758ߛ
{
dense_59/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?* 
shared_namedense_59/kernel
t
#dense_59/kernel/Read/ReadVariableOpReadVariableOpdense_59/kernel*
_output_shapes
:	?*
dtype0
s
dense_59/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_59/bias
l
!dense_59/bias/Read/ReadVariableOpReadVariableOpdense_59/bias*
_output_shapes	
:?*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
?
lstm_118/lstm_cell_118/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_118/lstm_cell_118/kernel
?
1lstm_118/lstm_cell_118/kernel/Read/ReadVariableOpReadVariableOplstm_118/lstm_cell_118/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_118/lstm_cell_118/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*8
shared_name)'lstm_118/lstm_cell_118/recurrent_kernel
?
;lstm_118/lstm_cell_118/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_118/lstm_cell_118/recurrent_kernel*
_output_shapes

:*
dtype0
?
lstm_118/lstm_cell_118/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelstm_118/lstm_cell_118/bias
?
/lstm_118/lstm_cell_118/bias/Read/ReadVariableOpReadVariableOplstm_118/lstm_cell_118/bias*
_output_shapes
:*
dtype0
?
lstm_119/lstm_cell_119/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*.
shared_namelstm_119/lstm_cell_119/kernel
?
1lstm_119/lstm_cell_119/kernel/Read/ReadVariableOpReadVariableOplstm_119/lstm_cell_119/kernel*
_output_shapes

:*
dtype0
?
'lstm_119/lstm_cell_119/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*8
shared_name)'lstm_119/lstm_cell_119/recurrent_kernel
?
;lstm_119/lstm_cell_119/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_119/lstm_cell_119/recurrent_kernel*
_output_shapes

:*
dtype0
?
lstm_119/lstm_cell_119/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelstm_119/lstm_cell_119/bias
?
/lstm_119/lstm_cell_119/bias/Read/ReadVariableOpReadVariableOplstm_119/lstm_cell_119/bias*
_output_shapes
:*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
Adam/dense_59/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*'
shared_nameAdam/dense_59/kernel/m
?
*Adam/dense_59/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_59/kernel/m*
_output_shapes
:	?*
dtype0
?
Adam/dense_59/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_59/bias/m
z
(Adam/dense_59/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_59/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_118/lstm_cell_118/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_118/lstm_cell_118/kernel/m
?
8Adam/lstm_118/lstm_cell_118/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_118/lstm_cell_118/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_118/lstm_cell_118/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*?
shared_name0.Adam/lstm_118/lstm_cell_118/recurrent_kernel/m
?
BAdam/lstm_118/lstm_cell_118/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_118/lstm_cell_118/recurrent_kernel/m*
_output_shapes

:*
dtype0
?
"Adam/lstm_118/lstm_cell_118/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/lstm_118/lstm_cell_118/bias/m
?
6Adam/lstm_118/lstm_cell_118/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_118/lstm_cell_118/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_119/lstm_cell_119/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*5
shared_name&$Adam/lstm_119/lstm_cell_119/kernel/m
?
8Adam/lstm_119/lstm_cell_119/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_119/lstm_cell_119/kernel/m*
_output_shapes

:*
dtype0
?
.Adam/lstm_119/lstm_cell_119/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*?
shared_name0.Adam/lstm_119/lstm_cell_119/recurrent_kernel/m
?
BAdam/lstm_119/lstm_cell_119/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_119/lstm_cell_119/recurrent_kernel/m*
_output_shapes

:*
dtype0
?
"Adam/lstm_119/lstm_cell_119/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/lstm_119/lstm_cell_119/bias/m
?
6Adam/lstm_119/lstm_cell_119/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_119/lstm_cell_119/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_59/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*'
shared_nameAdam/dense_59/kernel/v
?
*Adam/dense_59/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_59/kernel/v*
_output_shapes
:	?*
dtype0
?
Adam/dense_59/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_59/bias/v
z
(Adam/dense_59/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_59/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_118/lstm_cell_118/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_118/lstm_cell_118/kernel/v
?
8Adam/lstm_118/lstm_cell_118/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_118/lstm_cell_118/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_118/lstm_cell_118/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*?
shared_name0.Adam/lstm_118/lstm_cell_118/recurrent_kernel/v
?
BAdam/lstm_118/lstm_cell_118/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_118/lstm_cell_118/recurrent_kernel/v*
_output_shapes

:*
dtype0
?
"Adam/lstm_118/lstm_cell_118/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/lstm_118/lstm_cell_118/bias/v
?
6Adam/lstm_118/lstm_cell_118/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_118/lstm_cell_118/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_119/lstm_cell_119/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*5
shared_name&$Adam/lstm_119/lstm_cell_119/kernel/v
?
8Adam/lstm_119/lstm_cell_119/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_119/lstm_cell_119/kernel/v*
_output_shapes

:*
dtype0
?
.Adam/lstm_119/lstm_cell_119/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*?
shared_name0.Adam/lstm_119/lstm_cell_119/recurrent_kernel/v
?
BAdam/lstm_119/lstm_cell_119/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_119/lstm_cell_119/recurrent_kernel/v*
_output_shapes

:*
dtype0
?
"Adam/lstm_119/lstm_cell_119/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/lstm_119/lstm_cell_119/bias/v
?
6Adam/lstm_119/lstm_cell_119/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_119/lstm_cell_119/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?>
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?=
value?=B?= B?=
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature

signatures*
?
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
*&call_and_return_all_conditional_losses*
?
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
*&call_and_return_all_conditional_losses*
?

kernel
 bias
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses*
?
'iter

(beta_1

)beta_2
	*decay
+learning_ratemn mo,mp-mq.mr/ms0mt1muvv vw,vx-vy.vz/v{0v|1v}*
<
,0
-1
.2
/3
04
15
6
 7*
<
,0
-1
.2
/3
04
15
6
 7*
* 
?
2non_trainable_variables

3layers
4metrics
5layer_regularization_losses
6layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses*
* 
* 
* 

7serving_default* 
?
8
state_size

,kernel
-recurrent_kernel
.bias
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=_random_generator
>__call__
*?&call_and_return_all_conditional_losses*
* 

,0
-1
.2*

,0
-1
.2*
* 
?

@states
Anon_trainable_variables

Blayers
Cmetrics
Dlayer_regularization_losses
Elayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
?
F
state_size

/kernel
0recurrent_kernel
1bias
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K_random_generator
L__call__
*M&call_and_return_all_conditional_losses*
* 

/0
01
12*

/0
01
12*
* 
?

Nstates
Onon_trainable_variables

Players
Qmetrics
Rlayer_regularization_losses
Slayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
_Y
VARIABLE_VALUEdense_59/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_59/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
 1*

0
 1*
* 
?
Tnon_trainable_variables

Ulayers
Vmetrics
Wlayer_regularization_losses
Xlayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUElstm_118/lstm_cell_118/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE'lstm_118/lstm_cell_118/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUElstm_118/lstm_cell_118/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUElstm_119/lstm_cell_119/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE'lstm_119/lstm_cell_119/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUElstm_119/lstm_cell_119/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1
2*

Y0
Z1*
* 
* 
* 
* 

,0
-1
.2*

,0
-1
.2*
* 
?
[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics
9	variables
:trainable_variables
;regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

0*
* 
* 
* 
* 

/0
01
12*

/0
01
12*
* 
?
`non_trainable_variables

alayers
bmetrics
clayer_regularization_losses
dlayer_metrics
G	variables
Htrainable_variables
Iregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
8
	etotal
	fcount
g	variables
h	keras_api*
H
	itotal
	jcount
k
_fn_kwargs
l	variables
m	keras_api*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

e0
f1*

g	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

i0
j1*

l	variables*
?|
VARIABLE_VALUEAdam/dense_59/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_59/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUE$Adam/lstm_118/lstm_cell_118/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE.Adam/lstm_118/lstm_cell_118/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/lstm_118/lstm_cell_118/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUE$Adam/lstm_119/lstm_cell_119/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE.Adam/lstm_119/lstm_cell_119/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/lstm_119/lstm_cell_119/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_59/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_59/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUE$Adam/lstm_118/lstm_cell_118/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE.Adam/lstm_118/lstm_cell_118/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/lstm_118/lstm_cell_118/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUE$Adam/lstm_119/lstm_cell_119/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE.Adam/lstm_119/lstm_cell_119/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/lstm_119/lstm_cell_119/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?
serving_default_lstm_118_inputPlaceholder*,
_output_shapes
:??????????*
dtype0*!
shape:??????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_118_inputlstm_118/lstm_cell_118/kernel'lstm_118/lstm_cell_118/recurrent_kernellstm_118/lstm_cell_118/biaslstm_119/lstm_cell_119/kernel'lstm_119/lstm_cell_119/recurrent_kernellstm_119/lstm_cell_119/biasdense_59/kerneldense_59/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_669316
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_59/kernel/Read/ReadVariableOp!dense_59/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_118/lstm_cell_118/kernel/Read/ReadVariableOp;lstm_118/lstm_cell_118/recurrent_kernel/Read/ReadVariableOp/lstm_118/lstm_cell_118/bias/Read/ReadVariableOp1lstm_119/lstm_cell_119/kernel/Read/ReadVariableOp;lstm_119/lstm_cell_119/recurrent_kernel/Read/ReadVariableOp/lstm_119/lstm_cell_119/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/dense_59/kernel/m/Read/ReadVariableOp(Adam/dense_59/bias/m/Read/ReadVariableOp8Adam/lstm_118/lstm_cell_118/kernel/m/Read/ReadVariableOpBAdam/lstm_118/lstm_cell_118/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_118/lstm_cell_118/bias/m/Read/ReadVariableOp8Adam/lstm_119/lstm_cell_119/kernel/m/Read/ReadVariableOpBAdam/lstm_119/lstm_cell_119/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_119/lstm_cell_119/bias/m/Read/ReadVariableOp*Adam/dense_59/kernel/v/Read/ReadVariableOp(Adam/dense_59/bias/v/Read/ReadVariableOp8Adam/lstm_118/lstm_cell_118/kernel/v/Read/ReadVariableOpBAdam/lstm_118/lstm_cell_118/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_118/lstm_cell_118/bias/v/Read/ReadVariableOp8Adam/lstm_119/lstm_cell_119/kernel/v/Read/ReadVariableOpBAdam/lstm_119/lstm_cell_119/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_119/lstm_cell_119/bias/v/Read/ReadVariableOpConst*.
Tin'
%2#	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *(
f#R!
__inference__traced_save_670885
?	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_59/kerneldense_59/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_118/lstm_cell_118/kernel'lstm_118/lstm_cell_118/recurrent_kernellstm_118/lstm_cell_118/biaslstm_119/lstm_cell_119/kernel'lstm_119/lstm_cell_119/recurrent_kernellstm_119/lstm_cell_119/biastotalcounttotal_1count_1Adam/dense_59/kernel/mAdam/dense_59/bias/m$Adam/lstm_118/lstm_cell_118/kernel/m.Adam/lstm_118/lstm_cell_118/recurrent_kernel/m"Adam/lstm_118/lstm_cell_118/bias/m$Adam/lstm_119/lstm_cell_119/kernel/m.Adam/lstm_119/lstm_cell_119/recurrent_kernel/m"Adam/lstm_119/lstm_cell_119/bias/mAdam/dense_59/kernel/vAdam/dense_59/bias/v$Adam/lstm_118/lstm_cell_118/kernel/v.Adam/lstm_118/lstm_cell_118/recurrent_kernel/v"Adam/lstm_118/lstm_cell_118/bias/v$Adam/lstm_119/lstm_cell_119/kernel/v.Adam/lstm_119/lstm_cell_119/recurrent_kernel/v"Adam/lstm_119/lstm_cell_119/bias/v*-
Tin&
$2"*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__traced_restore_670994??
?
?
I__inference_sequential_59_layer_call_and_return_conditional_losses_668669
lstm_118_input"
lstm_118_668649:	?!
lstm_118_668651:
lstm_118_668653:!
lstm_119_668656:!
lstm_119_668658:
lstm_119_668660:"
dense_59_668663:	?
dense_59_668665:	?
identity?? dense_59/StatefulPartitionedCall? lstm_118/StatefulPartitionedCall? lstm_119/StatefulPartitionedCall?
 lstm_118/StatefulPartitionedCallStatefulPartitionedCalllstm_118_inputlstm_118_668649lstm_118_668651lstm_118_668653*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_118_layer_call_and_return_conditional_losses_668528?
 lstm_119/StatefulPartitionedCallStatefulPartitionedCall)lstm_118/StatefulPartitionedCall:output:0lstm_119_668656lstm_119_668658lstm_119_668660*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_119_layer_call_and_return_conditional_losses_668363?
 dense_59/StatefulPartitionedCallStatefulPartitionedCall)lstm_119/StatefulPartitionedCall:output:0dense_59_668663dense_59_668665*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_59_layer_call_and_return_conditional_losses_668171y
IdentityIdentity)dense_59/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp!^dense_59/StatefulPartitionedCall!^lstm_118/StatefulPartitionedCall!^lstm_119/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : 2D
 dense_59/StatefulPartitionedCall dense_59/StatefulPartitionedCall2D
 lstm_118/StatefulPartitionedCall lstm_118/StatefulPartitionedCall2D
 lstm_119/StatefulPartitionedCall lstm_119/StatefulPartitionedCall:\ X
,
_output_shapes
:??????????
(
_user_specified_namelstm_118_input
?
?
while_cond_667234
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_667234___redundant_placeholder04
0while_while_cond_667234___redundant_placeholder14
0while_while_cond_667234___redundant_placeholder24
0while_while_cond_667234___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
ï
?
I__inference_sequential_59_layer_call_and_return_conditional_losses_669005

inputsH
5lstm_118_lstm_cell_118_matmul_readvariableop_resource:	?I
7lstm_118_lstm_cell_118_matmul_1_readvariableop_resource:D
6lstm_118_lstm_cell_118_biasadd_readvariableop_resource:G
5lstm_119_lstm_cell_119_matmul_readvariableop_resource:I
7lstm_119_lstm_cell_119_matmul_1_readvariableop_resource:D
6lstm_119_lstm_cell_119_biasadd_readvariableop_resource::
'dense_59_matmul_readvariableop_resource:	?7
(dense_59_biasadd_readvariableop_resource:	?
identity??dense_59/BiasAdd/ReadVariableOp?dense_59/MatMul/ReadVariableOp?-lstm_118/lstm_cell_118/BiasAdd/ReadVariableOp?,lstm_118/lstm_cell_118/MatMul/ReadVariableOp?.lstm_118/lstm_cell_118/MatMul_1/ReadVariableOp?lstm_118/while?-lstm_119/lstm_cell_119/BiasAdd/ReadVariableOp?,lstm_119/lstm_cell_119/MatMul/ReadVariableOp?.lstm_119/lstm_cell_119/MatMul_1/ReadVariableOp?lstm_119/whileD
lstm_118/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_118/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_118/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_118/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_118/strided_sliceStridedSlicelstm_118/Shape:output:0%lstm_118/strided_slice/stack:output:0'lstm_118/strided_slice/stack_1:output:0'lstm_118/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_118/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :?
lstm_118/zeros/packedPacklstm_118/strided_slice:output:0 lstm_118/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_118/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_118/zerosFilllstm_118/zeros/packed:output:0lstm_118/zeros/Const:output:0*
T0*'
_output_shapes
:?????????[
lstm_118/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :?
lstm_118/zeros_1/packedPacklstm_118/strided_slice:output:0"lstm_118/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_118/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_118/zeros_1Fill lstm_118/zeros_1/packed:output:0lstm_118/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????l
lstm_118/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_118/transpose	Transposeinputs lstm_118/transpose/perm:output:0*
T0*,
_output_shapes
:??????????V
lstm_118/Shape_1Shapelstm_118/transpose:y:0*
T0*
_output_shapes
:h
lstm_118/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_118/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_118/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_118/strided_slice_1StridedSlicelstm_118/Shape_1:output:0'lstm_118/strided_slice_1/stack:output:0)lstm_118/strided_slice_1/stack_1:output:0)lstm_118/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_118/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_118/TensorArrayV2TensorListReserve-lstm_118/TensorArrayV2/element_shape:output:0!lstm_118/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_118/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
0lstm_118/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_118/transpose:y:0Glstm_118/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_118/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_118/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_118/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_118/strided_slice_2StridedSlicelstm_118/transpose:y:0'lstm_118/strided_slice_2/stack:output:0)lstm_118/strided_slice_2/stack_1:output:0)lstm_118/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
,lstm_118/lstm_cell_118/MatMul/ReadVariableOpReadVariableOp5lstm_118_lstm_cell_118_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_118/lstm_cell_118/MatMulMatMul!lstm_118/strided_slice_2:output:04lstm_118/lstm_cell_118/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
.lstm_118/lstm_cell_118/MatMul_1/ReadVariableOpReadVariableOp7lstm_118_lstm_cell_118_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0?
lstm_118/lstm_cell_118/MatMul_1MatMullstm_118/zeros:output:06lstm_118/lstm_cell_118/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
lstm_118/lstm_cell_118/addAddV2'lstm_118/lstm_cell_118/MatMul:product:0)lstm_118/lstm_cell_118/MatMul_1:product:0*
T0*'
_output_shapes
:??????????
-lstm_118/lstm_cell_118/BiasAdd/ReadVariableOpReadVariableOp6lstm_118_lstm_cell_118_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
lstm_118/lstm_cell_118/BiasAddBiasAddlstm_118/lstm_cell_118/add:z:05lstm_118/lstm_cell_118/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
&lstm_118/lstm_cell_118/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_118/lstm_cell_118/splitSplit/lstm_118/lstm_cell_118/split/split_dim:output:0'lstm_118/lstm_cell_118/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split?
lstm_118/lstm_cell_118/SigmoidSigmoid%lstm_118/lstm_cell_118/split:output:0*
T0*'
_output_shapes
:??????????
 lstm_118/lstm_cell_118/Sigmoid_1Sigmoid%lstm_118/lstm_cell_118/split:output:1*
T0*'
_output_shapes
:??????????
lstm_118/lstm_cell_118/mulMul$lstm_118/lstm_cell_118/Sigmoid_1:y:0lstm_118/zeros_1:output:0*
T0*'
_output_shapes
:?????????|
lstm_118/lstm_cell_118/ReluRelu%lstm_118/lstm_cell_118/split:output:2*
T0*'
_output_shapes
:??????????
lstm_118/lstm_cell_118/mul_1Mul"lstm_118/lstm_cell_118/Sigmoid:y:0)lstm_118/lstm_cell_118/Relu:activations:0*
T0*'
_output_shapes
:??????????
lstm_118/lstm_cell_118/add_1AddV2lstm_118/lstm_cell_118/mul:z:0 lstm_118/lstm_cell_118/mul_1:z:0*
T0*'
_output_shapes
:??????????
 lstm_118/lstm_cell_118/Sigmoid_2Sigmoid%lstm_118/lstm_cell_118/split:output:3*
T0*'
_output_shapes
:?????????y
lstm_118/lstm_cell_118/Relu_1Relu lstm_118/lstm_cell_118/add_1:z:0*
T0*'
_output_shapes
:??????????
lstm_118/lstm_cell_118/mul_2Mul$lstm_118/lstm_cell_118/Sigmoid_2:y:0+lstm_118/lstm_cell_118/Relu_1:activations:0*
T0*'
_output_shapes
:?????????w
&lstm_118/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
lstm_118/TensorArrayV2_1TensorListReserve/lstm_118/TensorArrayV2_1/element_shape:output:0!lstm_118/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_118/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_118/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_118/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_118/whileWhile$lstm_118/while/loop_counter:output:0*lstm_118/while/maximum_iterations:output:0lstm_118/time:output:0!lstm_118/TensorArrayV2_1:handle:0lstm_118/zeros:output:0lstm_118/zeros_1:output:0!lstm_118/strided_slice_1:output:0@lstm_118/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_118_lstm_cell_118_matmul_readvariableop_resource7lstm_118_lstm_cell_118_matmul_1_readvariableop_resource6lstm_118_lstm_cell_118_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_118_while_body_668776*&
condR
lstm_118_while_cond_668775*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations ?
9lstm_118/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
+lstm_118/TensorArrayV2Stack/TensorListStackTensorListStacklstm_118/while:output:3Blstm_118/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????*
element_dtype0q
lstm_118/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_118/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_118/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_118/strided_slice_3StridedSlice4lstm_118/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_118/strided_slice_3/stack:output:0)lstm_118/strided_slice_3/stack_1:output:0)lstm_118/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maskn
lstm_118/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_118/transpose_1	Transpose4lstm_118/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_118/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????d
lstm_118/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_119/ShapeShapelstm_118/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_119/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_119/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_119/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_119/strided_sliceStridedSlicelstm_119/Shape:output:0%lstm_119/strided_slice/stack:output:0'lstm_119/strided_slice/stack_1:output:0'lstm_119/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_119/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :?
lstm_119/zeros/packedPacklstm_119/strided_slice:output:0 lstm_119/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_119/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_119/zerosFilllstm_119/zeros/packed:output:0lstm_119/zeros/Const:output:0*
T0*'
_output_shapes
:?????????[
lstm_119/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :?
lstm_119/zeros_1/packedPacklstm_119/strided_slice:output:0"lstm_119/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_119/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_119/zeros_1Fill lstm_119/zeros_1/packed:output:0lstm_119/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????l
lstm_119/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_119/transpose	Transposelstm_118/transpose_1:y:0 lstm_119/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_119/Shape_1Shapelstm_119/transpose:y:0*
T0*
_output_shapes
:h
lstm_119/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_119/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_119/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_119/strided_slice_1StridedSlicelstm_119/Shape_1:output:0'lstm_119/strided_slice_1/stack:output:0)lstm_119/strided_slice_1/stack_1:output:0)lstm_119/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_119/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_119/TensorArrayV2TensorListReserve-lstm_119/TensorArrayV2/element_shape:output:0!lstm_119/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_119/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_119/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_119/transpose:y:0Glstm_119/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_119/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_119/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_119/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_119/strided_slice_2StridedSlicelstm_119/transpose:y:0'lstm_119/strided_slice_2/stack:output:0)lstm_119/strided_slice_2/stack_1:output:0)lstm_119/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_119/lstm_cell_119/MatMul/ReadVariableOpReadVariableOp5lstm_119_lstm_cell_119_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
lstm_119/lstm_cell_119/MatMulMatMul!lstm_119/strided_slice_2:output:04lstm_119/lstm_cell_119/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
.lstm_119/lstm_cell_119/MatMul_1/ReadVariableOpReadVariableOp7lstm_119_lstm_cell_119_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0?
lstm_119/lstm_cell_119/MatMul_1MatMullstm_119/zeros:output:06lstm_119/lstm_cell_119/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
lstm_119/lstm_cell_119/addAddV2'lstm_119/lstm_cell_119/MatMul:product:0)lstm_119/lstm_cell_119/MatMul_1:product:0*
T0*'
_output_shapes
:??????????
-lstm_119/lstm_cell_119/BiasAdd/ReadVariableOpReadVariableOp6lstm_119_lstm_cell_119_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
lstm_119/lstm_cell_119/BiasAddBiasAddlstm_119/lstm_cell_119/add:z:05lstm_119/lstm_cell_119/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
&lstm_119/lstm_cell_119/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_119/lstm_cell_119/splitSplit/lstm_119/lstm_cell_119/split/split_dim:output:0'lstm_119/lstm_cell_119/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split?
lstm_119/lstm_cell_119/SigmoidSigmoid%lstm_119/lstm_cell_119/split:output:0*
T0*'
_output_shapes
:??????????
 lstm_119/lstm_cell_119/Sigmoid_1Sigmoid%lstm_119/lstm_cell_119/split:output:1*
T0*'
_output_shapes
:??????????
lstm_119/lstm_cell_119/mulMul$lstm_119/lstm_cell_119/Sigmoid_1:y:0lstm_119/zeros_1:output:0*
T0*'
_output_shapes
:?????????|
lstm_119/lstm_cell_119/ReluRelu%lstm_119/lstm_cell_119/split:output:2*
T0*'
_output_shapes
:??????????
lstm_119/lstm_cell_119/mul_1Mul"lstm_119/lstm_cell_119/Sigmoid:y:0)lstm_119/lstm_cell_119/Relu:activations:0*
T0*'
_output_shapes
:??????????
lstm_119/lstm_cell_119/add_1AddV2lstm_119/lstm_cell_119/mul:z:0 lstm_119/lstm_cell_119/mul_1:z:0*
T0*'
_output_shapes
:??????????
 lstm_119/lstm_cell_119/Sigmoid_2Sigmoid%lstm_119/lstm_cell_119/split:output:3*
T0*'
_output_shapes
:?????????y
lstm_119/lstm_cell_119/Relu_1Relu lstm_119/lstm_cell_119/add_1:z:0*
T0*'
_output_shapes
:??????????
lstm_119/lstm_cell_119/mul_2Mul$lstm_119/lstm_cell_119/Sigmoid_2:y:0+lstm_119/lstm_cell_119/Relu_1:activations:0*
T0*'
_output_shapes
:?????????w
&lstm_119/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
lstm_119/TensorArrayV2_1TensorListReserve/lstm_119/TensorArrayV2_1/element_shape:output:0!lstm_119/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_119/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_119/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_119/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_119/whileWhile$lstm_119/while/loop_counter:output:0*lstm_119/while/maximum_iterations:output:0lstm_119/time:output:0!lstm_119/TensorArrayV2_1:handle:0lstm_119/zeros:output:0lstm_119/zeros_1:output:0!lstm_119/strided_slice_1:output:0@lstm_119/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_119_lstm_cell_119_matmul_readvariableop_resource7lstm_119_lstm_cell_119_matmul_1_readvariableop_resource6lstm_119_lstm_cell_119_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_119_while_body_668915*&
condR
lstm_119_while_cond_668914*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations ?
9lstm_119/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
+lstm_119/TensorArrayV2Stack/TensorListStackTensorListStacklstm_119/while:output:3Blstm_119/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????*
element_dtype0q
lstm_119/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_119/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_119/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_119/strided_slice_3StridedSlice4lstm_119/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_119/strided_slice_3/stack:output:0)lstm_119/strided_slice_3/stack_1:output:0)lstm_119/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maskn
lstm_119/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_119/transpose_1	Transpose4lstm_119/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_119/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????d
lstm_119/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_59/MatMul/ReadVariableOpReadVariableOp'dense_59_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense_59/MatMulMatMul!lstm_119/strided_slice_3:output:0&dense_59/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_59/BiasAdd/ReadVariableOpReadVariableOp(dense_59_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_59/BiasAddBiasAdddense_59/MatMul:product:0'dense_59/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????i
IdentityIdentitydense_59/BiasAdd:output:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp ^dense_59/BiasAdd/ReadVariableOp^dense_59/MatMul/ReadVariableOp.^lstm_118/lstm_cell_118/BiasAdd/ReadVariableOp-^lstm_118/lstm_cell_118/MatMul/ReadVariableOp/^lstm_118/lstm_cell_118/MatMul_1/ReadVariableOp^lstm_118/while.^lstm_119/lstm_cell_119/BiasAdd/ReadVariableOp-^lstm_119/lstm_cell_119/MatMul/ReadVariableOp/^lstm_119/lstm_cell_119/MatMul_1/ReadVariableOp^lstm_119/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : 2B
dense_59/BiasAdd/ReadVariableOpdense_59/BiasAdd/ReadVariableOp2@
dense_59/MatMul/ReadVariableOpdense_59/MatMul/ReadVariableOp2^
-lstm_118/lstm_cell_118/BiasAdd/ReadVariableOp-lstm_118/lstm_cell_118/BiasAdd/ReadVariableOp2\
,lstm_118/lstm_cell_118/MatMul/ReadVariableOp,lstm_118/lstm_cell_118/MatMul/ReadVariableOp2`
.lstm_118/lstm_cell_118/MatMul_1/ReadVariableOp.lstm_118/lstm_cell_118/MatMul_1/ReadVariableOp2 
lstm_118/whilelstm_118/while2^
-lstm_119/lstm_cell_119/BiasAdd/ReadVariableOp-lstm_119/lstm_cell_119/BiasAdd/ReadVariableOp2\
,lstm_119/lstm_cell_119/MatMul/ReadVariableOp,lstm_119/lstm_cell_119/MatMul/ReadVariableOp2`
.lstm_119/lstm_cell_119/MatMul_1/ReadVariableOp.lstm_119/lstm_cell_119/MatMul_1/ReadVariableOp2 
lstm_119/whilelstm_119/while:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
)__inference_lstm_119_layer_call_fn_669965

inputs
unknown:
	unknown_0:
	unknown_1:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_119_layer_call_and_return_conditional_losses_668153o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
.__inference_lstm_cell_119_layer_call_fn_670699

inputs
states_0
states_1
unknown:
	unknown_0:
	unknown_1:
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????:?????????:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_lstm_cell_119_layer_call_and_return_conditional_losses_667717o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/1
?
?
while_cond_668068
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_668068___redundant_placeholder04
0while_while_cond_668068___redundant_placeholder14
0while_while_cond_668068___redundant_placeholder24
0while_while_cond_668068___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
??
?	
!__inference__wrapped_model_667154
lstm_118_inputV
Csequential_59_lstm_118_lstm_cell_118_matmul_readvariableop_resource:	?W
Esequential_59_lstm_118_lstm_cell_118_matmul_1_readvariableop_resource:R
Dsequential_59_lstm_118_lstm_cell_118_biasadd_readvariableop_resource:U
Csequential_59_lstm_119_lstm_cell_119_matmul_readvariableop_resource:W
Esequential_59_lstm_119_lstm_cell_119_matmul_1_readvariableop_resource:R
Dsequential_59_lstm_119_lstm_cell_119_biasadd_readvariableop_resource:H
5sequential_59_dense_59_matmul_readvariableop_resource:	?E
6sequential_59_dense_59_biasadd_readvariableop_resource:	?
identity??-sequential_59/dense_59/BiasAdd/ReadVariableOp?,sequential_59/dense_59/MatMul/ReadVariableOp?;sequential_59/lstm_118/lstm_cell_118/BiasAdd/ReadVariableOp?:sequential_59/lstm_118/lstm_cell_118/MatMul/ReadVariableOp?<sequential_59/lstm_118/lstm_cell_118/MatMul_1/ReadVariableOp?sequential_59/lstm_118/while?;sequential_59/lstm_119/lstm_cell_119/BiasAdd/ReadVariableOp?:sequential_59/lstm_119/lstm_cell_119/MatMul/ReadVariableOp?<sequential_59/lstm_119/lstm_cell_119/MatMul_1/ReadVariableOp?sequential_59/lstm_119/whileZ
sequential_59/lstm_118/ShapeShapelstm_118_input*
T0*
_output_shapes
:t
*sequential_59/lstm_118/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_59/lstm_118/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_59/lstm_118/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_59/lstm_118/strided_sliceStridedSlice%sequential_59/lstm_118/Shape:output:03sequential_59/lstm_118/strided_slice/stack:output:05sequential_59/lstm_118/strided_slice/stack_1:output:05sequential_59/lstm_118/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_59/lstm_118/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :?
#sequential_59/lstm_118/zeros/packedPack-sequential_59/lstm_118/strided_slice:output:0.sequential_59/lstm_118/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_59/lstm_118/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_59/lstm_118/zerosFill,sequential_59/lstm_118/zeros/packed:output:0+sequential_59/lstm_118/zeros/Const:output:0*
T0*'
_output_shapes
:?????????i
'sequential_59/lstm_118/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :?
%sequential_59/lstm_118/zeros_1/packedPack-sequential_59/lstm_118/strided_slice:output:00sequential_59/lstm_118/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_59/lstm_118/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_59/lstm_118/zeros_1Fill.sequential_59/lstm_118/zeros_1/packed:output:0-sequential_59/lstm_118/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????z
%sequential_59/lstm_118/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_59/lstm_118/transpose	Transposelstm_118_input.sequential_59/lstm_118/transpose/perm:output:0*
T0*,
_output_shapes
:??????????r
sequential_59/lstm_118/Shape_1Shape$sequential_59/lstm_118/transpose:y:0*
T0*
_output_shapes
:v
,sequential_59/lstm_118/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_59/lstm_118/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_59/lstm_118/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_59/lstm_118/strided_slice_1StridedSlice'sequential_59/lstm_118/Shape_1:output:05sequential_59/lstm_118/strided_slice_1/stack:output:07sequential_59/lstm_118/strided_slice_1/stack_1:output:07sequential_59/lstm_118/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_59/lstm_118/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_59/lstm_118/TensorArrayV2TensorListReserve;sequential_59/lstm_118/TensorArrayV2/element_shape:output:0/sequential_59/lstm_118/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_59/lstm_118/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
>sequential_59/lstm_118/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_59/lstm_118/transpose:y:0Usequential_59/lstm_118/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_59/lstm_118/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_59/lstm_118/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_59/lstm_118/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_59/lstm_118/strided_slice_2StridedSlice$sequential_59/lstm_118/transpose:y:05sequential_59/lstm_118/strided_slice_2/stack:output:07sequential_59/lstm_118/strided_slice_2/stack_1:output:07sequential_59/lstm_118/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
:sequential_59/lstm_118/lstm_cell_118/MatMul/ReadVariableOpReadVariableOpCsequential_59_lstm_118_lstm_cell_118_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
+sequential_59/lstm_118/lstm_cell_118/MatMulMatMul/sequential_59/lstm_118/strided_slice_2:output:0Bsequential_59/lstm_118/lstm_cell_118/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
<sequential_59/lstm_118/lstm_cell_118/MatMul_1/ReadVariableOpReadVariableOpEsequential_59_lstm_118_lstm_cell_118_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0?
-sequential_59/lstm_118/lstm_cell_118/MatMul_1MatMul%sequential_59/lstm_118/zeros:output:0Dsequential_59/lstm_118/lstm_cell_118/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
(sequential_59/lstm_118/lstm_cell_118/addAddV25sequential_59/lstm_118/lstm_cell_118/MatMul:product:07sequential_59/lstm_118/lstm_cell_118/MatMul_1:product:0*
T0*'
_output_shapes
:??????????
;sequential_59/lstm_118/lstm_cell_118/BiasAdd/ReadVariableOpReadVariableOpDsequential_59_lstm_118_lstm_cell_118_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
,sequential_59/lstm_118/lstm_cell_118/BiasAddBiasAdd,sequential_59/lstm_118/lstm_cell_118/add:z:0Csequential_59/lstm_118/lstm_cell_118/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????v
4sequential_59/lstm_118/lstm_cell_118/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_59/lstm_118/lstm_cell_118/splitSplit=sequential_59/lstm_118/lstm_cell_118/split/split_dim:output:05sequential_59/lstm_118/lstm_cell_118/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split?
,sequential_59/lstm_118/lstm_cell_118/SigmoidSigmoid3sequential_59/lstm_118/lstm_cell_118/split:output:0*
T0*'
_output_shapes
:??????????
.sequential_59/lstm_118/lstm_cell_118/Sigmoid_1Sigmoid3sequential_59/lstm_118/lstm_cell_118/split:output:1*
T0*'
_output_shapes
:??????????
(sequential_59/lstm_118/lstm_cell_118/mulMul2sequential_59/lstm_118/lstm_cell_118/Sigmoid_1:y:0'sequential_59/lstm_118/zeros_1:output:0*
T0*'
_output_shapes
:??????????
)sequential_59/lstm_118/lstm_cell_118/ReluRelu3sequential_59/lstm_118/lstm_cell_118/split:output:2*
T0*'
_output_shapes
:??????????
*sequential_59/lstm_118/lstm_cell_118/mul_1Mul0sequential_59/lstm_118/lstm_cell_118/Sigmoid:y:07sequential_59/lstm_118/lstm_cell_118/Relu:activations:0*
T0*'
_output_shapes
:??????????
*sequential_59/lstm_118/lstm_cell_118/add_1AddV2,sequential_59/lstm_118/lstm_cell_118/mul:z:0.sequential_59/lstm_118/lstm_cell_118/mul_1:z:0*
T0*'
_output_shapes
:??????????
.sequential_59/lstm_118/lstm_cell_118/Sigmoid_2Sigmoid3sequential_59/lstm_118/lstm_cell_118/split:output:3*
T0*'
_output_shapes
:??????????
+sequential_59/lstm_118/lstm_cell_118/Relu_1Relu.sequential_59/lstm_118/lstm_cell_118/add_1:z:0*
T0*'
_output_shapes
:??????????
*sequential_59/lstm_118/lstm_cell_118/mul_2Mul2sequential_59/lstm_118/lstm_cell_118/Sigmoid_2:y:09sequential_59/lstm_118/lstm_cell_118/Relu_1:activations:0*
T0*'
_output_shapes
:??????????
4sequential_59/lstm_118/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
&sequential_59/lstm_118/TensorArrayV2_1TensorListReserve=sequential_59/lstm_118/TensorArrayV2_1/element_shape:output:0/sequential_59/lstm_118/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_59/lstm_118/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_59/lstm_118/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_59/lstm_118/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_59/lstm_118/whileWhile2sequential_59/lstm_118/while/loop_counter:output:08sequential_59/lstm_118/while/maximum_iterations:output:0$sequential_59/lstm_118/time:output:0/sequential_59/lstm_118/TensorArrayV2_1:handle:0%sequential_59/lstm_118/zeros:output:0'sequential_59/lstm_118/zeros_1:output:0/sequential_59/lstm_118/strided_slice_1:output:0Nsequential_59/lstm_118/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_59_lstm_118_lstm_cell_118_matmul_readvariableop_resourceEsequential_59_lstm_118_lstm_cell_118_matmul_1_readvariableop_resourceDsequential_59_lstm_118_lstm_cell_118_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *4
body,R*
(sequential_59_lstm_118_while_body_666925*4
cond,R*
(sequential_59_lstm_118_while_cond_666924*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations ?
Gsequential_59/lstm_118/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
9sequential_59/lstm_118/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_59/lstm_118/while:output:3Psequential_59/lstm_118/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????*
element_dtype0
,sequential_59/lstm_118/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_59/lstm_118/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_59/lstm_118/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_59/lstm_118/strided_slice_3StridedSliceBsequential_59/lstm_118/TensorArrayV2Stack/TensorListStack:tensor:05sequential_59/lstm_118/strided_slice_3/stack:output:07sequential_59/lstm_118/strided_slice_3/stack_1:output:07sequential_59/lstm_118/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask|
'sequential_59/lstm_118/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_59/lstm_118/transpose_1	TransposeBsequential_59/lstm_118/TensorArrayV2Stack/TensorListStack:tensor:00sequential_59/lstm_118/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????r
sequential_59/lstm_118/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_59/lstm_119/ShapeShape&sequential_59/lstm_118/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_59/lstm_119/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_59/lstm_119/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_59/lstm_119/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_59/lstm_119/strided_sliceStridedSlice%sequential_59/lstm_119/Shape:output:03sequential_59/lstm_119/strided_slice/stack:output:05sequential_59/lstm_119/strided_slice/stack_1:output:05sequential_59/lstm_119/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_59/lstm_119/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :?
#sequential_59/lstm_119/zeros/packedPack-sequential_59/lstm_119/strided_slice:output:0.sequential_59/lstm_119/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_59/lstm_119/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_59/lstm_119/zerosFill,sequential_59/lstm_119/zeros/packed:output:0+sequential_59/lstm_119/zeros/Const:output:0*
T0*'
_output_shapes
:?????????i
'sequential_59/lstm_119/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :?
%sequential_59/lstm_119/zeros_1/packedPack-sequential_59/lstm_119/strided_slice:output:00sequential_59/lstm_119/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_59/lstm_119/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_59/lstm_119/zeros_1Fill.sequential_59/lstm_119/zeros_1/packed:output:0-sequential_59/lstm_119/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????z
%sequential_59/lstm_119/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_59/lstm_119/transpose	Transpose&sequential_59/lstm_118/transpose_1:y:0.sequential_59/lstm_119/transpose/perm:output:0*
T0*+
_output_shapes
:?????????r
sequential_59/lstm_119/Shape_1Shape$sequential_59/lstm_119/transpose:y:0*
T0*
_output_shapes
:v
,sequential_59/lstm_119/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_59/lstm_119/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_59/lstm_119/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_59/lstm_119/strided_slice_1StridedSlice'sequential_59/lstm_119/Shape_1:output:05sequential_59/lstm_119/strided_slice_1/stack:output:07sequential_59/lstm_119/strided_slice_1/stack_1:output:07sequential_59/lstm_119/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_59/lstm_119/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_59/lstm_119/TensorArrayV2TensorListReserve;sequential_59/lstm_119/TensorArrayV2/element_shape:output:0/sequential_59/lstm_119/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_59/lstm_119/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
>sequential_59/lstm_119/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_59/lstm_119/transpose:y:0Usequential_59/lstm_119/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_59/lstm_119/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_59/lstm_119/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_59/lstm_119/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_59/lstm_119/strided_slice_2StridedSlice$sequential_59/lstm_119/transpose:y:05sequential_59/lstm_119/strided_slice_2/stack:output:07sequential_59/lstm_119/strided_slice_2/stack_1:output:07sequential_59/lstm_119/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
:sequential_59/lstm_119/lstm_cell_119/MatMul/ReadVariableOpReadVariableOpCsequential_59_lstm_119_lstm_cell_119_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
+sequential_59/lstm_119/lstm_cell_119/MatMulMatMul/sequential_59/lstm_119/strided_slice_2:output:0Bsequential_59/lstm_119/lstm_cell_119/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
<sequential_59/lstm_119/lstm_cell_119/MatMul_1/ReadVariableOpReadVariableOpEsequential_59_lstm_119_lstm_cell_119_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0?
-sequential_59/lstm_119/lstm_cell_119/MatMul_1MatMul%sequential_59/lstm_119/zeros:output:0Dsequential_59/lstm_119/lstm_cell_119/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
(sequential_59/lstm_119/lstm_cell_119/addAddV25sequential_59/lstm_119/lstm_cell_119/MatMul:product:07sequential_59/lstm_119/lstm_cell_119/MatMul_1:product:0*
T0*'
_output_shapes
:??????????
;sequential_59/lstm_119/lstm_cell_119/BiasAdd/ReadVariableOpReadVariableOpDsequential_59_lstm_119_lstm_cell_119_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
,sequential_59/lstm_119/lstm_cell_119/BiasAddBiasAdd,sequential_59/lstm_119/lstm_cell_119/add:z:0Csequential_59/lstm_119/lstm_cell_119/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????v
4sequential_59/lstm_119/lstm_cell_119/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_59/lstm_119/lstm_cell_119/splitSplit=sequential_59/lstm_119/lstm_cell_119/split/split_dim:output:05sequential_59/lstm_119/lstm_cell_119/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split?
,sequential_59/lstm_119/lstm_cell_119/SigmoidSigmoid3sequential_59/lstm_119/lstm_cell_119/split:output:0*
T0*'
_output_shapes
:??????????
.sequential_59/lstm_119/lstm_cell_119/Sigmoid_1Sigmoid3sequential_59/lstm_119/lstm_cell_119/split:output:1*
T0*'
_output_shapes
:??????????
(sequential_59/lstm_119/lstm_cell_119/mulMul2sequential_59/lstm_119/lstm_cell_119/Sigmoid_1:y:0'sequential_59/lstm_119/zeros_1:output:0*
T0*'
_output_shapes
:??????????
)sequential_59/lstm_119/lstm_cell_119/ReluRelu3sequential_59/lstm_119/lstm_cell_119/split:output:2*
T0*'
_output_shapes
:??????????
*sequential_59/lstm_119/lstm_cell_119/mul_1Mul0sequential_59/lstm_119/lstm_cell_119/Sigmoid:y:07sequential_59/lstm_119/lstm_cell_119/Relu:activations:0*
T0*'
_output_shapes
:??????????
*sequential_59/lstm_119/lstm_cell_119/add_1AddV2,sequential_59/lstm_119/lstm_cell_119/mul:z:0.sequential_59/lstm_119/lstm_cell_119/mul_1:z:0*
T0*'
_output_shapes
:??????????
.sequential_59/lstm_119/lstm_cell_119/Sigmoid_2Sigmoid3sequential_59/lstm_119/lstm_cell_119/split:output:3*
T0*'
_output_shapes
:??????????
+sequential_59/lstm_119/lstm_cell_119/Relu_1Relu.sequential_59/lstm_119/lstm_cell_119/add_1:z:0*
T0*'
_output_shapes
:??????????
*sequential_59/lstm_119/lstm_cell_119/mul_2Mul2sequential_59/lstm_119/lstm_cell_119/Sigmoid_2:y:09sequential_59/lstm_119/lstm_cell_119/Relu_1:activations:0*
T0*'
_output_shapes
:??????????
4sequential_59/lstm_119/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
&sequential_59/lstm_119/TensorArrayV2_1TensorListReserve=sequential_59/lstm_119/TensorArrayV2_1/element_shape:output:0/sequential_59/lstm_119/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_59/lstm_119/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_59/lstm_119/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_59/lstm_119/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_59/lstm_119/whileWhile2sequential_59/lstm_119/while/loop_counter:output:08sequential_59/lstm_119/while/maximum_iterations:output:0$sequential_59/lstm_119/time:output:0/sequential_59/lstm_119/TensorArrayV2_1:handle:0%sequential_59/lstm_119/zeros:output:0'sequential_59/lstm_119/zeros_1:output:0/sequential_59/lstm_119/strided_slice_1:output:0Nsequential_59/lstm_119/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_59_lstm_119_lstm_cell_119_matmul_readvariableop_resourceEsequential_59_lstm_119_lstm_cell_119_matmul_1_readvariableop_resourceDsequential_59_lstm_119_lstm_cell_119_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *4
body,R*
(sequential_59_lstm_119_while_body_667064*4
cond,R*
(sequential_59_lstm_119_while_cond_667063*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations ?
Gsequential_59/lstm_119/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
9sequential_59/lstm_119/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_59/lstm_119/while:output:3Psequential_59/lstm_119/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????*
element_dtype0
,sequential_59/lstm_119/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_59/lstm_119/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_59/lstm_119/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_59/lstm_119/strided_slice_3StridedSliceBsequential_59/lstm_119/TensorArrayV2Stack/TensorListStack:tensor:05sequential_59/lstm_119/strided_slice_3/stack:output:07sequential_59/lstm_119/strided_slice_3/stack_1:output:07sequential_59/lstm_119/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask|
'sequential_59/lstm_119/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_59/lstm_119/transpose_1	TransposeBsequential_59/lstm_119/TensorArrayV2Stack/TensorListStack:tensor:00sequential_59/lstm_119/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????r
sequential_59/lstm_119/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
,sequential_59/dense_59/MatMul/ReadVariableOpReadVariableOp5sequential_59_dense_59_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
sequential_59/dense_59/MatMulMatMul/sequential_59/lstm_119/strided_slice_3:output:04sequential_59/dense_59/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
-sequential_59/dense_59/BiasAdd/ReadVariableOpReadVariableOp6sequential_59_dense_59_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_59/dense_59/BiasAddBiasAdd'sequential_59/dense_59/MatMul:product:05sequential_59/dense_59/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
IdentityIdentity'sequential_59/dense_59/BiasAdd:output:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp.^sequential_59/dense_59/BiasAdd/ReadVariableOp-^sequential_59/dense_59/MatMul/ReadVariableOp<^sequential_59/lstm_118/lstm_cell_118/BiasAdd/ReadVariableOp;^sequential_59/lstm_118/lstm_cell_118/MatMul/ReadVariableOp=^sequential_59/lstm_118/lstm_cell_118/MatMul_1/ReadVariableOp^sequential_59/lstm_118/while<^sequential_59/lstm_119/lstm_cell_119/BiasAdd/ReadVariableOp;^sequential_59/lstm_119/lstm_cell_119/MatMul/ReadVariableOp=^sequential_59/lstm_119/lstm_cell_119/MatMul_1/ReadVariableOp^sequential_59/lstm_119/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : 2^
-sequential_59/dense_59/BiasAdd/ReadVariableOp-sequential_59/dense_59/BiasAdd/ReadVariableOp2\
,sequential_59/dense_59/MatMul/ReadVariableOp,sequential_59/dense_59/MatMul/ReadVariableOp2z
;sequential_59/lstm_118/lstm_cell_118/BiasAdd/ReadVariableOp;sequential_59/lstm_118/lstm_cell_118/BiasAdd/ReadVariableOp2x
:sequential_59/lstm_118/lstm_cell_118/MatMul/ReadVariableOp:sequential_59/lstm_118/lstm_cell_118/MatMul/ReadVariableOp2|
<sequential_59/lstm_118/lstm_cell_118/MatMul_1/ReadVariableOp<sequential_59/lstm_118/lstm_cell_118/MatMul_1/ReadVariableOp2<
sequential_59/lstm_118/whilesequential_59/lstm_118/while2z
;sequential_59/lstm_119/lstm_cell_119/BiasAdd/ReadVariableOp;sequential_59/lstm_119/lstm_cell_119/BiasAdd/ReadVariableOp2x
:sequential_59/lstm_119/lstm_cell_119/MatMul/ReadVariableOp:sequential_59/lstm_119/lstm_cell_119/MatMul/ReadVariableOp2|
<sequential_59/lstm_119/lstm_cell_119/MatMul_1/ReadVariableOp<sequential_59/lstm_119/lstm_cell_119/MatMul_1/ReadVariableOp2<
sequential_59/lstm_119/whilesequential_59/lstm_119/while:\ X
,
_output_shapes
:??????????
(
_user_specified_namelstm_118_input
?C
?

lstm_118_while_body_668776.
*lstm_118_while_lstm_118_while_loop_counter4
0lstm_118_while_lstm_118_while_maximum_iterations
lstm_118_while_placeholder 
lstm_118_while_placeholder_1 
lstm_118_while_placeholder_2 
lstm_118_while_placeholder_3-
)lstm_118_while_lstm_118_strided_slice_1_0i
elstm_118_while_tensorarrayv2read_tensorlistgetitem_lstm_118_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_118_while_lstm_cell_118_matmul_readvariableop_resource_0:	?Q
?lstm_118_while_lstm_cell_118_matmul_1_readvariableop_resource_0:L
>lstm_118_while_lstm_cell_118_biasadd_readvariableop_resource_0:
lstm_118_while_identity
lstm_118_while_identity_1
lstm_118_while_identity_2
lstm_118_while_identity_3
lstm_118_while_identity_4
lstm_118_while_identity_5+
'lstm_118_while_lstm_118_strided_slice_1g
clstm_118_while_tensorarrayv2read_tensorlistgetitem_lstm_118_tensorarrayunstack_tensorlistfromtensorN
;lstm_118_while_lstm_cell_118_matmul_readvariableop_resource:	?O
=lstm_118_while_lstm_cell_118_matmul_1_readvariableop_resource:J
<lstm_118_while_lstm_cell_118_biasadd_readvariableop_resource:??3lstm_118/while/lstm_cell_118/BiasAdd/ReadVariableOp?2lstm_118/while/lstm_cell_118/MatMul/ReadVariableOp?4lstm_118/while/lstm_cell_118/MatMul_1/ReadVariableOp?
@lstm_118/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
2lstm_118/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_118_while_tensorarrayv2read_tensorlistgetitem_lstm_118_tensorarrayunstack_tensorlistfromtensor_0lstm_118_while_placeholderIlstm_118/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
2lstm_118/while/lstm_cell_118/MatMul/ReadVariableOpReadVariableOp=lstm_118_while_lstm_cell_118_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_118/while/lstm_cell_118/MatMulMatMul9lstm_118/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_118/while/lstm_cell_118/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
4lstm_118/while/lstm_cell_118/MatMul_1/ReadVariableOpReadVariableOp?lstm_118_while_lstm_cell_118_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0?
%lstm_118/while/lstm_cell_118/MatMul_1MatMullstm_118_while_placeholder_2<lstm_118/while/lstm_cell_118/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 lstm_118/while/lstm_cell_118/addAddV2-lstm_118/while/lstm_cell_118/MatMul:product:0/lstm_118/while/lstm_cell_118/MatMul_1:product:0*
T0*'
_output_shapes
:??????????
3lstm_118/while/lstm_cell_118/BiasAdd/ReadVariableOpReadVariableOp>lstm_118_while_lstm_cell_118_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0?
$lstm_118/while/lstm_cell_118/BiasAddBiasAdd$lstm_118/while/lstm_cell_118/add:z:0;lstm_118/while/lstm_cell_118/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????n
,lstm_118/while/lstm_cell_118/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_118/while/lstm_cell_118/splitSplit5lstm_118/while/lstm_cell_118/split/split_dim:output:0-lstm_118/while/lstm_cell_118/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split?
$lstm_118/while/lstm_cell_118/SigmoidSigmoid+lstm_118/while/lstm_cell_118/split:output:0*
T0*'
_output_shapes
:??????????
&lstm_118/while/lstm_cell_118/Sigmoid_1Sigmoid+lstm_118/while/lstm_cell_118/split:output:1*
T0*'
_output_shapes
:??????????
 lstm_118/while/lstm_cell_118/mulMul*lstm_118/while/lstm_cell_118/Sigmoid_1:y:0lstm_118_while_placeholder_3*
T0*'
_output_shapes
:??????????
!lstm_118/while/lstm_cell_118/ReluRelu+lstm_118/while/lstm_cell_118/split:output:2*
T0*'
_output_shapes
:??????????
"lstm_118/while/lstm_cell_118/mul_1Mul(lstm_118/while/lstm_cell_118/Sigmoid:y:0/lstm_118/while/lstm_cell_118/Relu:activations:0*
T0*'
_output_shapes
:??????????
"lstm_118/while/lstm_cell_118/add_1AddV2$lstm_118/while/lstm_cell_118/mul:z:0&lstm_118/while/lstm_cell_118/mul_1:z:0*
T0*'
_output_shapes
:??????????
&lstm_118/while/lstm_cell_118/Sigmoid_2Sigmoid+lstm_118/while/lstm_cell_118/split:output:3*
T0*'
_output_shapes
:??????????
#lstm_118/while/lstm_cell_118/Relu_1Relu&lstm_118/while/lstm_cell_118/add_1:z:0*
T0*'
_output_shapes
:??????????
"lstm_118/while/lstm_cell_118/mul_2Mul*lstm_118/while/lstm_cell_118/Sigmoid_2:y:01lstm_118/while/lstm_cell_118/Relu_1:activations:0*
T0*'
_output_shapes
:??????????
3lstm_118/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_118_while_placeholder_1lstm_118_while_placeholder&lstm_118/while/lstm_cell_118/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_118/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_118/while/addAddV2lstm_118_while_placeholderlstm_118/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_118/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_118/while/add_1AddV2*lstm_118_while_lstm_118_while_loop_counterlstm_118/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_118/while/IdentityIdentitylstm_118/while/add_1:z:0^lstm_118/while/NoOp*
T0*
_output_shapes
: ?
lstm_118/while/Identity_1Identity0lstm_118_while_lstm_118_while_maximum_iterations^lstm_118/while/NoOp*
T0*
_output_shapes
: t
lstm_118/while/Identity_2Identitylstm_118/while/add:z:0^lstm_118/while/NoOp*
T0*
_output_shapes
: ?
lstm_118/while/Identity_3IdentityClstm_118/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_118/while/NoOp*
T0*
_output_shapes
: :????
lstm_118/while/Identity_4Identity&lstm_118/while/lstm_cell_118/mul_2:z:0^lstm_118/while/NoOp*
T0*'
_output_shapes
:??????????
lstm_118/while/Identity_5Identity&lstm_118/while/lstm_cell_118/add_1:z:0^lstm_118/while/NoOp*
T0*'
_output_shapes
:??????????
lstm_118/while/NoOpNoOp4^lstm_118/while/lstm_cell_118/BiasAdd/ReadVariableOp3^lstm_118/while/lstm_cell_118/MatMul/ReadVariableOp5^lstm_118/while/lstm_cell_118/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_118_while_identity lstm_118/while/Identity:output:0"?
lstm_118_while_identity_1"lstm_118/while/Identity_1:output:0"?
lstm_118_while_identity_2"lstm_118/while/Identity_2:output:0"?
lstm_118_while_identity_3"lstm_118/while/Identity_3:output:0"?
lstm_118_while_identity_4"lstm_118/while/Identity_4:output:0"?
lstm_118_while_identity_5"lstm_118/while/Identity_5:output:0"T
'lstm_118_while_lstm_118_strided_slice_1)lstm_118_while_lstm_118_strided_slice_1_0"~
<lstm_118_while_lstm_cell_118_biasadd_readvariableop_resource>lstm_118_while_lstm_cell_118_biasadd_readvariableop_resource_0"?
=lstm_118_while_lstm_cell_118_matmul_1_readvariableop_resource?lstm_118_while_lstm_cell_118_matmul_1_readvariableop_resource_0"|
;lstm_118_while_lstm_cell_118_matmul_readvariableop_resource=lstm_118_while_lstm_cell_118_matmul_readvariableop_resource_0"?
clstm_118_while_tensorarrayv2read_tensorlistgetitem_lstm_118_tensorarrayunstack_tensorlistfromtensorelstm_118_while_tensorarrayv2read_tensorlistgetitem_lstm_118_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2j
3lstm_118/while/lstm_cell_118/BiasAdd/ReadVariableOp3lstm_118/while/lstm_cell_118/BiasAdd/ReadVariableOp2h
2lstm_118/while/lstm_cell_118/MatMul/ReadVariableOp2lstm_118/while/lstm_cell_118/MatMul/ReadVariableOp2l
4lstm_118/while/lstm_cell_118/MatMul_1/ReadVariableOp4lstm_118/while/lstm_cell_118/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?	
?
D__inference_dense_59_layer_call_and_return_conditional_losses_668171

inputs1
matmul_readvariableop_resource:	?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
D__inference_lstm_118_layer_call_and_return_conditional_losses_667304

inputs'
lstm_cell_118_667222:	?&
lstm_cell_118_667224:"
lstm_cell_118_667226:
identity??%lstm_cell_118/StatefulPartitionedCall?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
%lstm_cell_118/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_118_667222lstm_cell_118_667224lstm_cell_118_667226*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????:?????????:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_lstm_cell_118_layer_call_and_return_conditional_losses_667221n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_118_667222lstm_cell_118_667224lstm_cell_118_667226*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_667235*
condR
while_cond_667234*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :??????????????????v
NoOpNoOp&^lstm_cell_118/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 2N
%lstm_cell_118/StatefulPartitionedCall%lstm_cell_118/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
ï
?
I__inference_sequential_59_layer_call_and_return_conditional_losses_669293

inputsH
5lstm_118_lstm_cell_118_matmul_readvariableop_resource:	?I
7lstm_118_lstm_cell_118_matmul_1_readvariableop_resource:D
6lstm_118_lstm_cell_118_biasadd_readvariableop_resource:G
5lstm_119_lstm_cell_119_matmul_readvariableop_resource:I
7lstm_119_lstm_cell_119_matmul_1_readvariableop_resource:D
6lstm_119_lstm_cell_119_biasadd_readvariableop_resource::
'dense_59_matmul_readvariableop_resource:	?7
(dense_59_biasadd_readvariableop_resource:	?
identity??dense_59/BiasAdd/ReadVariableOp?dense_59/MatMul/ReadVariableOp?-lstm_118/lstm_cell_118/BiasAdd/ReadVariableOp?,lstm_118/lstm_cell_118/MatMul/ReadVariableOp?.lstm_118/lstm_cell_118/MatMul_1/ReadVariableOp?lstm_118/while?-lstm_119/lstm_cell_119/BiasAdd/ReadVariableOp?,lstm_119/lstm_cell_119/MatMul/ReadVariableOp?.lstm_119/lstm_cell_119/MatMul_1/ReadVariableOp?lstm_119/whileD
lstm_118/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_118/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_118/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_118/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_118/strided_sliceStridedSlicelstm_118/Shape:output:0%lstm_118/strided_slice/stack:output:0'lstm_118/strided_slice/stack_1:output:0'lstm_118/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_118/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :?
lstm_118/zeros/packedPacklstm_118/strided_slice:output:0 lstm_118/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_118/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_118/zerosFilllstm_118/zeros/packed:output:0lstm_118/zeros/Const:output:0*
T0*'
_output_shapes
:?????????[
lstm_118/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :?
lstm_118/zeros_1/packedPacklstm_118/strided_slice:output:0"lstm_118/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_118/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_118/zeros_1Fill lstm_118/zeros_1/packed:output:0lstm_118/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????l
lstm_118/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_118/transpose	Transposeinputs lstm_118/transpose/perm:output:0*
T0*,
_output_shapes
:??????????V
lstm_118/Shape_1Shapelstm_118/transpose:y:0*
T0*
_output_shapes
:h
lstm_118/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_118/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_118/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_118/strided_slice_1StridedSlicelstm_118/Shape_1:output:0'lstm_118/strided_slice_1/stack:output:0)lstm_118/strided_slice_1/stack_1:output:0)lstm_118/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_118/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_118/TensorArrayV2TensorListReserve-lstm_118/TensorArrayV2/element_shape:output:0!lstm_118/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_118/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
0lstm_118/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_118/transpose:y:0Glstm_118/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_118/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_118/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_118/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_118/strided_slice_2StridedSlicelstm_118/transpose:y:0'lstm_118/strided_slice_2/stack:output:0)lstm_118/strided_slice_2/stack_1:output:0)lstm_118/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
,lstm_118/lstm_cell_118/MatMul/ReadVariableOpReadVariableOp5lstm_118_lstm_cell_118_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_118/lstm_cell_118/MatMulMatMul!lstm_118/strided_slice_2:output:04lstm_118/lstm_cell_118/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
.lstm_118/lstm_cell_118/MatMul_1/ReadVariableOpReadVariableOp7lstm_118_lstm_cell_118_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0?
lstm_118/lstm_cell_118/MatMul_1MatMullstm_118/zeros:output:06lstm_118/lstm_cell_118/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
lstm_118/lstm_cell_118/addAddV2'lstm_118/lstm_cell_118/MatMul:product:0)lstm_118/lstm_cell_118/MatMul_1:product:0*
T0*'
_output_shapes
:??????????
-lstm_118/lstm_cell_118/BiasAdd/ReadVariableOpReadVariableOp6lstm_118_lstm_cell_118_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
lstm_118/lstm_cell_118/BiasAddBiasAddlstm_118/lstm_cell_118/add:z:05lstm_118/lstm_cell_118/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
&lstm_118/lstm_cell_118/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_118/lstm_cell_118/splitSplit/lstm_118/lstm_cell_118/split/split_dim:output:0'lstm_118/lstm_cell_118/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split?
lstm_118/lstm_cell_118/SigmoidSigmoid%lstm_118/lstm_cell_118/split:output:0*
T0*'
_output_shapes
:??????????
 lstm_118/lstm_cell_118/Sigmoid_1Sigmoid%lstm_118/lstm_cell_118/split:output:1*
T0*'
_output_shapes
:??????????
lstm_118/lstm_cell_118/mulMul$lstm_118/lstm_cell_118/Sigmoid_1:y:0lstm_118/zeros_1:output:0*
T0*'
_output_shapes
:?????????|
lstm_118/lstm_cell_118/ReluRelu%lstm_118/lstm_cell_118/split:output:2*
T0*'
_output_shapes
:??????????
lstm_118/lstm_cell_118/mul_1Mul"lstm_118/lstm_cell_118/Sigmoid:y:0)lstm_118/lstm_cell_118/Relu:activations:0*
T0*'
_output_shapes
:??????????
lstm_118/lstm_cell_118/add_1AddV2lstm_118/lstm_cell_118/mul:z:0 lstm_118/lstm_cell_118/mul_1:z:0*
T0*'
_output_shapes
:??????????
 lstm_118/lstm_cell_118/Sigmoid_2Sigmoid%lstm_118/lstm_cell_118/split:output:3*
T0*'
_output_shapes
:?????????y
lstm_118/lstm_cell_118/Relu_1Relu lstm_118/lstm_cell_118/add_1:z:0*
T0*'
_output_shapes
:??????????
lstm_118/lstm_cell_118/mul_2Mul$lstm_118/lstm_cell_118/Sigmoid_2:y:0+lstm_118/lstm_cell_118/Relu_1:activations:0*
T0*'
_output_shapes
:?????????w
&lstm_118/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
lstm_118/TensorArrayV2_1TensorListReserve/lstm_118/TensorArrayV2_1/element_shape:output:0!lstm_118/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_118/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_118/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_118/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_118/whileWhile$lstm_118/while/loop_counter:output:0*lstm_118/while/maximum_iterations:output:0lstm_118/time:output:0!lstm_118/TensorArrayV2_1:handle:0lstm_118/zeros:output:0lstm_118/zeros_1:output:0!lstm_118/strided_slice_1:output:0@lstm_118/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_118_lstm_cell_118_matmul_readvariableop_resource7lstm_118_lstm_cell_118_matmul_1_readvariableop_resource6lstm_118_lstm_cell_118_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_118_while_body_669064*&
condR
lstm_118_while_cond_669063*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations ?
9lstm_118/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
+lstm_118/TensorArrayV2Stack/TensorListStackTensorListStacklstm_118/while:output:3Blstm_118/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????*
element_dtype0q
lstm_118/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_118/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_118/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_118/strided_slice_3StridedSlice4lstm_118/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_118/strided_slice_3/stack:output:0)lstm_118/strided_slice_3/stack_1:output:0)lstm_118/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maskn
lstm_118/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_118/transpose_1	Transpose4lstm_118/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_118/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????d
lstm_118/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_119/ShapeShapelstm_118/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_119/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_119/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_119/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_119/strided_sliceStridedSlicelstm_119/Shape:output:0%lstm_119/strided_slice/stack:output:0'lstm_119/strided_slice/stack_1:output:0'lstm_119/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_119/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :?
lstm_119/zeros/packedPacklstm_119/strided_slice:output:0 lstm_119/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_119/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_119/zerosFilllstm_119/zeros/packed:output:0lstm_119/zeros/Const:output:0*
T0*'
_output_shapes
:?????????[
lstm_119/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :?
lstm_119/zeros_1/packedPacklstm_119/strided_slice:output:0"lstm_119/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_119/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_119/zeros_1Fill lstm_119/zeros_1/packed:output:0lstm_119/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????l
lstm_119/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_119/transpose	Transposelstm_118/transpose_1:y:0 lstm_119/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_119/Shape_1Shapelstm_119/transpose:y:0*
T0*
_output_shapes
:h
lstm_119/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_119/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_119/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_119/strided_slice_1StridedSlicelstm_119/Shape_1:output:0'lstm_119/strided_slice_1/stack:output:0)lstm_119/strided_slice_1/stack_1:output:0)lstm_119/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_119/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_119/TensorArrayV2TensorListReserve-lstm_119/TensorArrayV2/element_shape:output:0!lstm_119/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_119/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_119/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_119/transpose:y:0Glstm_119/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_119/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_119/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_119/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_119/strided_slice_2StridedSlicelstm_119/transpose:y:0'lstm_119/strided_slice_2/stack:output:0)lstm_119/strided_slice_2/stack_1:output:0)lstm_119/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_119/lstm_cell_119/MatMul/ReadVariableOpReadVariableOp5lstm_119_lstm_cell_119_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
lstm_119/lstm_cell_119/MatMulMatMul!lstm_119/strided_slice_2:output:04lstm_119/lstm_cell_119/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
.lstm_119/lstm_cell_119/MatMul_1/ReadVariableOpReadVariableOp7lstm_119_lstm_cell_119_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0?
lstm_119/lstm_cell_119/MatMul_1MatMullstm_119/zeros:output:06lstm_119/lstm_cell_119/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
lstm_119/lstm_cell_119/addAddV2'lstm_119/lstm_cell_119/MatMul:product:0)lstm_119/lstm_cell_119/MatMul_1:product:0*
T0*'
_output_shapes
:??????????
-lstm_119/lstm_cell_119/BiasAdd/ReadVariableOpReadVariableOp6lstm_119_lstm_cell_119_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
lstm_119/lstm_cell_119/BiasAddBiasAddlstm_119/lstm_cell_119/add:z:05lstm_119/lstm_cell_119/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
&lstm_119/lstm_cell_119/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_119/lstm_cell_119/splitSplit/lstm_119/lstm_cell_119/split/split_dim:output:0'lstm_119/lstm_cell_119/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split?
lstm_119/lstm_cell_119/SigmoidSigmoid%lstm_119/lstm_cell_119/split:output:0*
T0*'
_output_shapes
:??????????
 lstm_119/lstm_cell_119/Sigmoid_1Sigmoid%lstm_119/lstm_cell_119/split:output:1*
T0*'
_output_shapes
:??????????
lstm_119/lstm_cell_119/mulMul$lstm_119/lstm_cell_119/Sigmoid_1:y:0lstm_119/zeros_1:output:0*
T0*'
_output_shapes
:?????????|
lstm_119/lstm_cell_119/ReluRelu%lstm_119/lstm_cell_119/split:output:2*
T0*'
_output_shapes
:??????????
lstm_119/lstm_cell_119/mul_1Mul"lstm_119/lstm_cell_119/Sigmoid:y:0)lstm_119/lstm_cell_119/Relu:activations:0*
T0*'
_output_shapes
:??????????
lstm_119/lstm_cell_119/add_1AddV2lstm_119/lstm_cell_119/mul:z:0 lstm_119/lstm_cell_119/mul_1:z:0*
T0*'
_output_shapes
:??????????
 lstm_119/lstm_cell_119/Sigmoid_2Sigmoid%lstm_119/lstm_cell_119/split:output:3*
T0*'
_output_shapes
:?????????y
lstm_119/lstm_cell_119/Relu_1Relu lstm_119/lstm_cell_119/add_1:z:0*
T0*'
_output_shapes
:??????????
lstm_119/lstm_cell_119/mul_2Mul$lstm_119/lstm_cell_119/Sigmoid_2:y:0+lstm_119/lstm_cell_119/Relu_1:activations:0*
T0*'
_output_shapes
:?????????w
&lstm_119/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
lstm_119/TensorArrayV2_1TensorListReserve/lstm_119/TensorArrayV2_1/element_shape:output:0!lstm_119/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_119/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_119/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_119/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_119/whileWhile$lstm_119/while/loop_counter:output:0*lstm_119/while/maximum_iterations:output:0lstm_119/time:output:0!lstm_119/TensorArrayV2_1:handle:0lstm_119/zeros:output:0lstm_119/zeros_1:output:0!lstm_119/strided_slice_1:output:0@lstm_119/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_119_lstm_cell_119_matmul_readvariableop_resource7lstm_119_lstm_cell_119_matmul_1_readvariableop_resource6lstm_119_lstm_cell_119_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_119_while_body_669203*&
condR
lstm_119_while_cond_669202*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations ?
9lstm_119/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
+lstm_119/TensorArrayV2Stack/TensorListStackTensorListStacklstm_119/while:output:3Blstm_119/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????*
element_dtype0q
lstm_119/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_119/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_119/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_119/strided_slice_3StridedSlice4lstm_119/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_119/strided_slice_3/stack:output:0)lstm_119/strided_slice_3/stack_1:output:0)lstm_119/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maskn
lstm_119/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_119/transpose_1	Transpose4lstm_119/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_119/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????d
lstm_119/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_59/MatMul/ReadVariableOpReadVariableOp'dense_59_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense_59/MatMulMatMul!lstm_119/strided_slice_3:output:0&dense_59/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_59/BiasAdd/ReadVariableOpReadVariableOp(dense_59_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_59/BiasAddBiasAdddense_59/MatMul:product:0'dense_59/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????i
IdentityIdentitydense_59/BiasAdd:output:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp ^dense_59/BiasAdd/ReadVariableOp^dense_59/MatMul/ReadVariableOp.^lstm_118/lstm_cell_118/BiasAdd/ReadVariableOp-^lstm_118/lstm_cell_118/MatMul/ReadVariableOp/^lstm_118/lstm_cell_118/MatMul_1/ReadVariableOp^lstm_118/while.^lstm_119/lstm_cell_119/BiasAdd/ReadVariableOp-^lstm_119/lstm_cell_119/MatMul/ReadVariableOp/^lstm_119/lstm_cell_119/MatMul_1/ReadVariableOp^lstm_119/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : 2B
dense_59/BiasAdd/ReadVariableOpdense_59/BiasAdd/ReadVariableOp2@
dense_59/MatMul/ReadVariableOpdense_59/MatMul/ReadVariableOp2^
-lstm_118/lstm_cell_118/BiasAdd/ReadVariableOp-lstm_118/lstm_cell_118/BiasAdd/ReadVariableOp2\
,lstm_118/lstm_cell_118/MatMul/ReadVariableOp,lstm_118/lstm_cell_118/MatMul/ReadVariableOp2`
.lstm_118/lstm_cell_118/MatMul_1/ReadVariableOp.lstm_118/lstm_cell_118/MatMul_1/ReadVariableOp2 
lstm_118/whilelstm_118/while2^
-lstm_119/lstm_cell_119/BiasAdd/ReadVariableOp-lstm_119/lstm_cell_119/BiasAdd/ReadVariableOp2\
,lstm_119/lstm_cell_119/MatMul/ReadVariableOp,lstm_119/lstm_cell_119/MatMul/ReadVariableOp2`
.lstm_119/lstm_cell_119/MatMul_1/ReadVariableOp.lstm_119/lstm_cell_119/MatMul_1/ReadVariableOp2 
lstm_119/whilelstm_119/while:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?J
?
D__inference_lstm_118_layer_call_and_return_conditional_losses_669932

inputs?
,lstm_cell_118_matmul_readvariableop_resource:	?@
.lstm_cell_118_matmul_1_readvariableop_resource:;
-lstm_cell_118_biasadd_readvariableop_resource:
identity??$lstm_cell_118/BiasAdd/ReadVariableOp?#lstm_cell_118/MatMul/ReadVariableOp?%lstm_cell_118/MatMul_1/ReadVariableOp?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
#lstm_cell_118/MatMul/ReadVariableOpReadVariableOp,lstm_cell_118_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_118/MatMulMatMulstrided_slice_2:output:0+lstm_cell_118/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
%lstm_cell_118/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_118_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0?
lstm_cell_118/MatMul_1MatMulzeros:output:0-lstm_cell_118/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
lstm_cell_118/addAddV2lstm_cell_118/MatMul:product:0 lstm_cell_118/MatMul_1:product:0*
T0*'
_output_shapes
:??????????
$lstm_cell_118/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_118_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
lstm_cell_118/BiasAddBiasAddlstm_cell_118/add:z:0,lstm_cell_118/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
lstm_cell_118/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_118/splitSplit&lstm_cell_118/split/split_dim:output:0lstm_cell_118/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_splitp
lstm_cell_118/SigmoidSigmoidlstm_cell_118/split:output:0*
T0*'
_output_shapes
:?????????r
lstm_cell_118/Sigmoid_1Sigmoidlstm_cell_118/split:output:1*
T0*'
_output_shapes
:?????????y
lstm_cell_118/mulMullstm_cell_118/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????j
lstm_cell_118/ReluRelulstm_cell_118/split:output:2*
T0*'
_output_shapes
:??????????
lstm_cell_118/mul_1Mullstm_cell_118/Sigmoid:y:0 lstm_cell_118/Relu:activations:0*
T0*'
_output_shapes
:?????????~
lstm_cell_118/add_1AddV2lstm_cell_118/mul:z:0lstm_cell_118/mul_1:z:0*
T0*'
_output_shapes
:?????????r
lstm_cell_118/Sigmoid_2Sigmoidlstm_cell_118/split:output:3*
T0*'
_output_shapes
:?????????g
lstm_cell_118/Relu_1Relulstm_cell_118/add_1:z:0*
T0*'
_output_shapes
:??????????
lstm_cell_118/mul_2Mullstm_cell_118/Sigmoid_2:y:0"lstm_cell_118/Relu_1:activations:0*
T0*'
_output_shapes
:?????????n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_118_matmul_readvariableop_resource.lstm_cell_118_matmul_1_readvariableop_resource-lstm_cell_118_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_669848*
condR
while_cond_669847*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp%^lstm_cell_118/BiasAdd/ReadVariableOp$^lstm_cell_118/MatMul/ReadVariableOp&^lstm_cell_118/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 2L
$lstm_cell_118/BiasAdd/ReadVariableOp$lstm_cell_118/BiasAdd/ReadVariableOp2J
#lstm_cell_118/MatMul/ReadVariableOp#lstm_cell_118/MatMul/ReadVariableOp2N
%lstm_cell_118/MatMul_1/ReadVariableOp%lstm_cell_118/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?#
?
while_body_667235
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_118_667259_0:	?.
while_lstm_cell_118_667261_0:*
while_lstm_cell_118_667263_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_118_667259:	?,
while_lstm_cell_118_667261:(
while_lstm_cell_118_667263:??+while/lstm_cell_118/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
+while/lstm_cell_118/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_118_667259_0while_lstm_cell_118_667261_0while_lstm_cell_118_667263_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????:?????????:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_lstm_cell_118_layer_call_and_return_conditional_losses_667221?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_118/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :????
while/Identity_4Identity4while/lstm_cell_118/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:??????????
while/Identity_5Identity4while/lstm_cell_118/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????z

while/NoOpNoOp,^while/lstm_cell_118/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_118_667259while_lstm_cell_118_667259_0":
while_lstm_cell_118_667261while_lstm_cell_118_667261_0":
while_lstm_cell_118_667263while_lstm_cell_118_667263_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2Z
+while/lstm_cell_118/StatefulPartitionedCall+while/lstm_cell_118/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?
?
I__inference_sequential_59_layer_call_and_return_conditional_losses_668646
lstm_118_input"
lstm_118_668626:	?!
lstm_118_668628:
lstm_118_668630:!
lstm_119_668633:!
lstm_119_668635:
lstm_119_668637:"
dense_59_668640:	?
dense_59_668642:	?
identity?? dense_59/StatefulPartitionedCall? lstm_118/StatefulPartitionedCall? lstm_119/StatefulPartitionedCall?
 lstm_118/StatefulPartitionedCallStatefulPartitionedCalllstm_118_inputlstm_118_668626lstm_118_668628lstm_118_668630*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_118_layer_call_and_return_conditional_losses_668003?
 lstm_119/StatefulPartitionedCallStatefulPartitionedCall)lstm_118/StatefulPartitionedCall:output:0lstm_119_668633lstm_119_668635lstm_119_668637*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_119_layer_call_and_return_conditional_losses_668153?
 dense_59/StatefulPartitionedCallStatefulPartitionedCall)lstm_119/StatefulPartitionedCall:output:0dense_59_668640dense_59_668642*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_59_layer_call_and_return_conditional_losses_668171y
IdentityIdentity)dense_59/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp!^dense_59/StatefulPartitionedCall!^lstm_118/StatefulPartitionedCall!^lstm_119/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : 2D
 dense_59/StatefulPartitionedCall dense_59/StatefulPartitionedCall2D
 lstm_118/StatefulPartitionedCall lstm_118/StatefulPartitionedCall2D
 lstm_119/StatefulPartitionedCall lstm_119/StatefulPartitionedCall:\ X
,
_output_shapes
:??????????
(
_user_specified_namelstm_118_input
?
?
while_cond_669561
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_669561___redundant_placeholder04
0while_while_cond_669561___redundant_placeholder14
0while_while_cond_669561___redundant_placeholder24
0while_while_cond_669561___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?8
?
while_body_670321
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_119_matmul_readvariableop_resource_0:H
6while_lstm_cell_119_matmul_1_readvariableop_resource_0:C
5while_lstm_cell_119_biasadd_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_119_matmul_readvariableop_resource:F
4while_lstm_cell_119_matmul_1_readvariableop_resource:A
3while_lstm_cell_119_biasadd_readvariableop_resource:??*while/lstm_cell_119/BiasAdd/ReadVariableOp?)while/lstm_cell_119/MatMul/ReadVariableOp?+while/lstm_cell_119/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_119/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_119_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0?
while/lstm_cell_119/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_119/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
+while/lstm_cell_119/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_119_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0?
while/lstm_cell_119/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_119/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
while/lstm_cell_119/addAddV2$while/lstm_cell_119/MatMul:product:0&while/lstm_cell_119/MatMul_1:product:0*
T0*'
_output_shapes
:??????????
*while/lstm_cell_119/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_119_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0?
while/lstm_cell_119/BiasAddBiasAddwhile/lstm_cell_119/add:z:02while/lstm_cell_119/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????e
#while/lstm_cell_119/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_119/splitSplit,while/lstm_cell_119/split/split_dim:output:0$while/lstm_cell_119/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split|
while/lstm_cell_119/SigmoidSigmoid"while/lstm_cell_119/split:output:0*
T0*'
_output_shapes
:?????????~
while/lstm_cell_119/Sigmoid_1Sigmoid"while/lstm_cell_119/split:output:1*
T0*'
_output_shapes
:??????????
while/lstm_cell_119/mulMul!while/lstm_cell_119/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????v
while/lstm_cell_119/ReluRelu"while/lstm_cell_119/split:output:2*
T0*'
_output_shapes
:??????????
while/lstm_cell_119/mul_1Mulwhile/lstm_cell_119/Sigmoid:y:0&while/lstm_cell_119/Relu:activations:0*
T0*'
_output_shapes
:??????????
while/lstm_cell_119/add_1AddV2while/lstm_cell_119/mul:z:0while/lstm_cell_119/mul_1:z:0*
T0*'
_output_shapes
:?????????~
while/lstm_cell_119/Sigmoid_2Sigmoid"while/lstm_cell_119/split:output:3*
T0*'
_output_shapes
:?????????s
while/lstm_cell_119/Relu_1Reluwhile/lstm_cell_119/add_1:z:0*
T0*'
_output_shapes
:??????????
while/lstm_cell_119/mul_2Mul!while/lstm_cell_119/Sigmoid_2:y:0(while/lstm_cell_119/Relu_1:activations:0*
T0*'
_output_shapes
:??????????
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_119/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :???z
while/Identity_4Identitywhile/lstm_cell_119/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????z
while/Identity_5Identitywhile/lstm_cell_119/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:??????????

while/NoOpNoOp+^while/lstm_cell_119/BiasAdd/ReadVariableOp*^while/lstm_cell_119/MatMul/ReadVariableOp,^while/lstm_cell_119/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_119_biasadd_readvariableop_resource5while_lstm_cell_119_biasadd_readvariableop_resource_0"n
4while_lstm_cell_119_matmul_1_readvariableop_resource6while_lstm_cell_119_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_119_matmul_readvariableop_resource4while_lstm_cell_119_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2X
*while/lstm_cell_119/BiasAdd/ReadVariableOp*while/lstm_cell_119/BiasAdd/ReadVariableOp2V
)while/lstm_cell_119/MatMul/ReadVariableOp)while/lstm_cell_119/MatMul/ReadVariableOp2Z
+while/lstm_cell_119/MatMul_1/ReadVariableOp+while/lstm_cell_119/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?J
?
D__inference_lstm_119_layer_call_and_return_conditional_losses_670548

inputs>
,lstm_cell_119_matmul_readvariableop_resource:@
.lstm_cell_119_matmul_1_readvariableop_resource:;
-lstm_cell_119_biasadd_readvariableop_resource:
identity??$lstm_cell_119/BiasAdd/ReadVariableOp?#lstm_cell_119/MatMul/ReadVariableOp?%lstm_cell_119/MatMul_1/ReadVariableOp?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
#lstm_cell_119/MatMul/ReadVariableOpReadVariableOp,lstm_cell_119_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
lstm_cell_119/MatMulMatMulstrided_slice_2:output:0+lstm_cell_119/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
%lstm_cell_119/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_119_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0?
lstm_cell_119/MatMul_1MatMulzeros:output:0-lstm_cell_119/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
lstm_cell_119/addAddV2lstm_cell_119/MatMul:product:0 lstm_cell_119/MatMul_1:product:0*
T0*'
_output_shapes
:??????????
$lstm_cell_119/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_119_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
lstm_cell_119/BiasAddBiasAddlstm_cell_119/add:z:0,lstm_cell_119/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
lstm_cell_119/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_119/splitSplit&lstm_cell_119/split/split_dim:output:0lstm_cell_119/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_splitp
lstm_cell_119/SigmoidSigmoidlstm_cell_119/split:output:0*
T0*'
_output_shapes
:?????????r
lstm_cell_119/Sigmoid_1Sigmoidlstm_cell_119/split:output:1*
T0*'
_output_shapes
:?????????y
lstm_cell_119/mulMullstm_cell_119/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????j
lstm_cell_119/ReluRelulstm_cell_119/split:output:2*
T0*'
_output_shapes
:??????????
lstm_cell_119/mul_1Mullstm_cell_119/Sigmoid:y:0 lstm_cell_119/Relu:activations:0*
T0*'
_output_shapes
:?????????~
lstm_cell_119/add_1AddV2lstm_cell_119/mul:z:0lstm_cell_119/mul_1:z:0*
T0*'
_output_shapes
:?????????r
lstm_cell_119/Sigmoid_2Sigmoidlstm_cell_119/split:output:3*
T0*'
_output_shapes
:?????????g
lstm_cell_119/Relu_1Relulstm_cell_119/add_1:z:0*
T0*'
_output_shapes
:??????????
lstm_cell_119/mul_2Mullstm_cell_119/Sigmoid_2:y:0"lstm_cell_119/Relu_1:activations:0*
T0*'
_output_shapes
:?????????n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_119_matmul_readvariableop_resource.lstm_cell_119_matmul_1_readvariableop_resource-lstm_cell_119_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_670464*
condR
while_cond_670463*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp%^lstm_cell_119/BiasAdd/ReadVariableOp$^lstm_cell_119/MatMul/ReadVariableOp&^lstm_cell_119/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_119/BiasAdd/ReadVariableOp$lstm_cell_119/BiasAdd/ReadVariableOp2J
#lstm_cell_119/MatMul/ReadVariableOp#lstm_cell_119/MatMul/ReadVariableOp2N
%lstm_cell_119/MatMul_1/ReadVariableOp%lstm_cell_119/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
I__inference_lstm_cell_118_layer_call_and_return_conditional_losses_667221

inputs

states
states_11
matmul_readvariableop_resource:	?2
 matmul_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????N
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:??????????:?????????:?????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_namestates:OK
'
_output_shapes
:?????????
 
_user_specified_namestates
?
?
while_cond_669418
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_669418___redundant_placeholder04
0while_while_cond_669418___redundant_placeholder14
0while_while_cond_669418___redundant_placeholder24
0while_while_cond_669418___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?J
?
D__inference_lstm_119_layer_call_and_return_conditional_losses_668153

inputs>
,lstm_cell_119_matmul_readvariableop_resource:@
.lstm_cell_119_matmul_1_readvariableop_resource:;
-lstm_cell_119_biasadd_readvariableop_resource:
identity??$lstm_cell_119/BiasAdd/ReadVariableOp?#lstm_cell_119/MatMul/ReadVariableOp?%lstm_cell_119/MatMul_1/ReadVariableOp?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
#lstm_cell_119/MatMul/ReadVariableOpReadVariableOp,lstm_cell_119_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
lstm_cell_119/MatMulMatMulstrided_slice_2:output:0+lstm_cell_119/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
%lstm_cell_119/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_119_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0?
lstm_cell_119/MatMul_1MatMulzeros:output:0-lstm_cell_119/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
lstm_cell_119/addAddV2lstm_cell_119/MatMul:product:0 lstm_cell_119/MatMul_1:product:0*
T0*'
_output_shapes
:??????????
$lstm_cell_119/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_119_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
lstm_cell_119/BiasAddBiasAddlstm_cell_119/add:z:0,lstm_cell_119/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
lstm_cell_119/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_119/splitSplit&lstm_cell_119/split/split_dim:output:0lstm_cell_119/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_splitp
lstm_cell_119/SigmoidSigmoidlstm_cell_119/split:output:0*
T0*'
_output_shapes
:?????????r
lstm_cell_119/Sigmoid_1Sigmoidlstm_cell_119/split:output:1*
T0*'
_output_shapes
:?????????y
lstm_cell_119/mulMullstm_cell_119/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????j
lstm_cell_119/ReluRelulstm_cell_119/split:output:2*
T0*'
_output_shapes
:??????????
lstm_cell_119/mul_1Mullstm_cell_119/Sigmoid:y:0 lstm_cell_119/Relu:activations:0*
T0*'
_output_shapes
:?????????~
lstm_cell_119/add_1AddV2lstm_cell_119/mul:z:0lstm_cell_119/mul_1:z:0*
T0*'
_output_shapes
:?????????r
lstm_cell_119/Sigmoid_2Sigmoidlstm_cell_119/split:output:3*
T0*'
_output_shapes
:?????????g
lstm_cell_119/Relu_1Relulstm_cell_119/add_1:z:0*
T0*'
_output_shapes
:??????????
lstm_cell_119/mul_2Mullstm_cell_119/Sigmoid_2:y:0"lstm_cell_119/Relu_1:activations:0*
T0*'
_output_shapes
:?????????n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_119_matmul_readvariableop_resource.lstm_cell_119_matmul_1_readvariableop_resource-lstm_cell_119_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_668069*
condR
while_cond_668068*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp%^lstm_cell_119/BiasAdd/ReadVariableOp$^lstm_cell_119/MatMul/ReadVariableOp&^lstm_cell_119/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_119/BiasAdd/ReadVariableOp$lstm_cell_119/BiasAdd/ReadVariableOp2J
#lstm_cell_119/MatMul/ReadVariableOp#lstm_cell_119/MatMul/ReadVariableOp2N
%lstm_cell_119/MatMul_1/ReadVariableOp%lstm_cell_119/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_669562
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_118_matmul_readvariableop_resource_0:	?H
6while_lstm_cell_118_matmul_1_readvariableop_resource_0:C
5while_lstm_cell_118_biasadd_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_118_matmul_readvariableop_resource:	?F
4while_lstm_cell_118_matmul_1_readvariableop_resource:A
3while_lstm_cell_118_biasadd_readvariableop_resource:??*while/lstm_cell_118/BiasAdd/ReadVariableOp?)while/lstm_cell_118/MatMul/ReadVariableOp?+while/lstm_cell_118/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
)while/lstm_cell_118/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_118_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_118/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_118/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
+while/lstm_cell_118/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_118_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0?
while/lstm_cell_118/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_118/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
while/lstm_cell_118/addAddV2$while/lstm_cell_118/MatMul:product:0&while/lstm_cell_118/MatMul_1:product:0*
T0*'
_output_shapes
:??????????
*while/lstm_cell_118/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_118_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0?
while/lstm_cell_118/BiasAddBiasAddwhile/lstm_cell_118/add:z:02while/lstm_cell_118/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????e
#while/lstm_cell_118/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_118/splitSplit,while/lstm_cell_118/split/split_dim:output:0$while/lstm_cell_118/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split|
while/lstm_cell_118/SigmoidSigmoid"while/lstm_cell_118/split:output:0*
T0*'
_output_shapes
:?????????~
while/lstm_cell_118/Sigmoid_1Sigmoid"while/lstm_cell_118/split:output:1*
T0*'
_output_shapes
:??????????
while/lstm_cell_118/mulMul!while/lstm_cell_118/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????v
while/lstm_cell_118/ReluRelu"while/lstm_cell_118/split:output:2*
T0*'
_output_shapes
:??????????
while/lstm_cell_118/mul_1Mulwhile/lstm_cell_118/Sigmoid:y:0&while/lstm_cell_118/Relu:activations:0*
T0*'
_output_shapes
:??????????
while/lstm_cell_118/add_1AddV2while/lstm_cell_118/mul:z:0while/lstm_cell_118/mul_1:z:0*
T0*'
_output_shapes
:?????????~
while/lstm_cell_118/Sigmoid_2Sigmoid"while/lstm_cell_118/split:output:3*
T0*'
_output_shapes
:?????????s
while/lstm_cell_118/Relu_1Reluwhile/lstm_cell_118/add_1:z:0*
T0*'
_output_shapes
:??????????
while/lstm_cell_118/mul_2Mul!while/lstm_cell_118/Sigmoid_2:y:0(while/lstm_cell_118/Relu_1:activations:0*
T0*'
_output_shapes
:??????????
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_118/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :???z
while/Identity_4Identitywhile/lstm_cell_118/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????z
while/Identity_5Identitywhile/lstm_cell_118/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:??????????

while/NoOpNoOp+^while/lstm_cell_118/BiasAdd/ReadVariableOp*^while/lstm_cell_118/MatMul/ReadVariableOp,^while/lstm_cell_118/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_118_biasadd_readvariableop_resource5while_lstm_cell_118_biasadd_readvariableop_resource_0"n
4while_lstm_cell_118_matmul_1_readvariableop_resource6while_lstm_cell_118_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_118_matmul_readvariableop_resource4while_lstm_cell_118_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2X
*while/lstm_cell_118/BiasAdd/ReadVariableOp*while/lstm_cell_118/BiasAdd/ReadVariableOp2V
)while/lstm_cell_118/MatMul/ReadVariableOp)while/lstm_cell_118/MatMul/ReadVariableOp2Z
+while/lstm_cell_118/MatMul_1/ReadVariableOp+while/lstm_cell_118/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?
?
)__inference_lstm_118_layer_call_fn_669327
inputs_0
unknown:	?
	unknown_0:
	unknown_1:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_118_layer_call_and_return_conditional_losses_667304|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?J
?
D__inference_lstm_118_layer_call_and_return_conditional_losses_668003

inputs?
,lstm_cell_118_matmul_readvariableop_resource:	?@
.lstm_cell_118_matmul_1_readvariableop_resource:;
-lstm_cell_118_biasadd_readvariableop_resource:
identity??$lstm_cell_118/BiasAdd/ReadVariableOp?#lstm_cell_118/MatMul/ReadVariableOp?%lstm_cell_118/MatMul_1/ReadVariableOp?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
#lstm_cell_118/MatMul/ReadVariableOpReadVariableOp,lstm_cell_118_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_118/MatMulMatMulstrided_slice_2:output:0+lstm_cell_118/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
%lstm_cell_118/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_118_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0?
lstm_cell_118/MatMul_1MatMulzeros:output:0-lstm_cell_118/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
lstm_cell_118/addAddV2lstm_cell_118/MatMul:product:0 lstm_cell_118/MatMul_1:product:0*
T0*'
_output_shapes
:??????????
$lstm_cell_118/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_118_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
lstm_cell_118/BiasAddBiasAddlstm_cell_118/add:z:0,lstm_cell_118/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
lstm_cell_118/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_118/splitSplit&lstm_cell_118/split/split_dim:output:0lstm_cell_118/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_splitp
lstm_cell_118/SigmoidSigmoidlstm_cell_118/split:output:0*
T0*'
_output_shapes
:?????????r
lstm_cell_118/Sigmoid_1Sigmoidlstm_cell_118/split:output:1*
T0*'
_output_shapes
:?????????y
lstm_cell_118/mulMullstm_cell_118/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????j
lstm_cell_118/ReluRelulstm_cell_118/split:output:2*
T0*'
_output_shapes
:??????????
lstm_cell_118/mul_1Mullstm_cell_118/Sigmoid:y:0 lstm_cell_118/Relu:activations:0*
T0*'
_output_shapes
:?????????~
lstm_cell_118/add_1AddV2lstm_cell_118/mul:z:0lstm_cell_118/mul_1:z:0*
T0*'
_output_shapes
:?????????r
lstm_cell_118/Sigmoid_2Sigmoidlstm_cell_118/split:output:3*
T0*'
_output_shapes
:?????????g
lstm_cell_118/Relu_1Relulstm_cell_118/add_1:z:0*
T0*'
_output_shapes
:??????????
lstm_cell_118/mul_2Mullstm_cell_118/Sigmoid_2:y:0"lstm_cell_118/Relu_1:activations:0*
T0*'
_output_shapes
:?????????n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_118_matmul_readvariableop_resource.lstm_cell_118_matmul_1_readvariableop_resource-lstm_cell_118_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_667919*
condR
while_cond_667918*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp%^lstm_cell_118/BiasAdd/ReadVariableOp$^lstm_cell_118/MatMul/ReadVariableOp&^lstm_cell_118/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 2L
$lstm_cell_118/BiasAdd/ReadVariableOp$lstm_cell_118/BiasAdd/ReadVariableOp2J
#lstm_cell_118/MatMul/ReadVariableOp#lstm_cell_118/MatMul/ReadVariableOp2N
%lstm_cell_118/MatMul_1/ReadVariableOp%lstm_cell_118/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?8
?
while_body_669419
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_118_matmul_readvariableop_resource_0:	?H
6while_lstm_cell_118_matmul_1_readvariableop_resource_0:C
5while_lstm_cell_118_biasadd_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_118_matmul_readvariableop_resource:	?F
4while_lstm_cell_118_matmul_1_readvariableop_resource:A
3while_lstm_cell_118_biasadd_readvariableop_resource:??*while/lstm_cell_118/BiasAdd/ReadVariableOp?)while/lstm_cell_118/MatMul/ReadVariableOp?+while/lstm_cell_118/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
)while/lstm_cell_118/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_118_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_118/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_118/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
+while/lstm_cell_118/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_118_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0?
while/lstm_cell_118/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_118/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
while/lstm_cell_118/addAddV2$while/lstm_cell_118/MatMul:product:0&while/lstm_cell_118/MatMul_1:product:0*
T0*'
_output_shapes
:??????????
*while/lstm_cell_118/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_118_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0?
while/lstm_cell_118/BiasAddBiasAddwhile/lstm_cell_118/add:z:02while/lstm_cell_118/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????e
#while/lstm_cell_118/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_118/splitSplit,while/lstm_cell_118/split/split_dim:output:0$while/lstm_cell_118/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split|
while/lstm_cell_118/SigmoidSigmoid"while/lstm_cell_118/split:output:0*
T0*'
_output_shapes
:?????????~
while/lstm_cell_118/Sigmoid_1Sigmoid"while/lstm_cell_118/split:output:1*
T0*'
_output_shapes
:??????????
while/lstm_cell_118/mulMul!while/lstm_cell_118/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????v
while/lstm_cell_118/ReluRelu"while/lstm_cell_118/split:output:2*
T0*'
_output_shapes
:??????????
while/lstm_cell_118/mul_1Mulwhile/lstm_cell_118/Sigmoid:y:0&while/lstm_cell_118/Relu:activations:0*
T0*'
_output_shapes
:??????????
while/lstm_cell_118/add_1AddV2while/lstm_cell_118/mul:z:0while/lstm_cell_118/mul_1:z:0*
T0*'
_output_shapes
:?????????~
while/lstm_cell_118/Sigmoid_2Sigmoid"while/lstm_cell_118/split:output:3*
T0*'
_output_shapes
:?????????s
while/lstm_cell_118/Relu_1Reluwhile/lstm_cell_118/add_1:z:0*
T0*'
_output_shapes
:??????????
while/lstm_cell_118/mul_2Mul!while/lstm_cell_118/Sigmoid_2:y:0(while/lstm_cell_118/Relu_1:activations:0*
T0*'
_output_shapes
:??????????
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_118/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :???z
while/Identity_4Identitywhile/lstm_cell_118/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????z
while/Identity_5Identitywhile/lstm_cell_118/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:??????????

while/NoOpNoOp+^while/lstm_cell_118/BiasAdd/ReadVariableOp*^while/lstm_cell_118/MatMul/ReadVariableOp,^while/lstm_cell_118/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_118_biasadd_readvariableop_resource5while_lstm_cell_118_biasadd_readvariableop_resource_0"n
4while_lstm_cell_118_matmul_1_readvariableop_resource6while_lstm_cell_118_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_118_matmul_readvariableop_resource4while_lstm_cell_118_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2X
*while/lstm_cell_118/BiasAdd/ReadVariableOp*while/lstm_cell_118/BiasAdd/ReadVariableOp2V
)while/lstm_cell_118/MatMul/ReadVariableOp)while/lstm_cell_118/MatMul/ReadVariableOp2Z
+while/lstm_cell_118/MatMul_1/ReadVariableOp+while/lstm_cell_118/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_670034
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_670034___redundant_placeholder04
0while_while_cond_670034___redundant_placeholder14
0while_while_cond_670034___redundant_placeholder24
0while_while_cond_670034___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?8
?
D__inference_lstm_119_layer_call_and_return_conditional_losses_667845

inputs&
lstm_cell_119_667763:&
lstm_cell_119_667765:"
lstm_cell_119_667767:
identity??%lstm_cell_119/StatefulPartitionedCall?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
%lstm_cell_119/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_119_667763lstm_cell_119_667765lstm_cell_119_667767*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????:?????????:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_lstm_cell_119_layer_call_and_return_conditional_losses_667717n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_119_667763lstm_cell_119_667765lstm_cell_119_667767*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_667776*
condR
while_cond_667775*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????v
NoOpNoOp&^lstm_cell_119/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_119/StatefulPartitionedCall%lstm_cell_119/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_667584
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_667584___redundant_placeholder04
0while_while_cond_667584___redundant_placeholder14
0while_while_cond_667584___redundant_placeholder24
0while_while_cond_667584___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_670320
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_670320___redundant_placeholder04
0while_while_cond_670320___redundant_placeholder14
0while_while_cond_670320___redundant_placeholder24
0while_while_cond_670320___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?
?
.__inference_lstm_cell_118_layer_call_fn_670601

inputs
states_0
states_1
unknown:	?
	unknown_0:
	unknown_1:
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????:?????????:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_lstm_cell_118_layer_call_and_return_conditional_losses_667367o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:??????????:?????????:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/1
?
?
)__inference_dense_59_layer_call_fn_670557

inputs
unknown:	?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_59_layer_call_and_return_conditional_losses_668171p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
I__inference_lstm_cell_119_layer_call_and_return_conditional_losses_670763

inputs
states_0
states_10
matmul_readvariableop_resource:2
 matmul_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????N
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????:?????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/1
?8
?
D__inference_lstm_118_layer_call_and_return_conditional_losses_667495

inputs'
lstm_cell_118_667413:	?&
lstm_cell_118_667415:"
lstm_cell_118_667417:
identity??%lstm_cell_118/StatefulPartitionedCall?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
%lstm_cell_118/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_118_667413lstm_cell_118_667415lstm_cell_118_667417*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????:?????????:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_lstm_cell_118_layer_call_and_return_conditional_losses_667367n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_118_667413lstm_cell_118_667415lstm_cell_118_667417*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_667426*
condR
while_cond_667425*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :??????????????????v
NoOpNoOp&^lstm_cell_118/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 2N
%lstm_cell_118/StatefulPartitionedCall%lstm_cell_118/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?

?
lstm_118_while_cond_669063.
*lstm_118_while_lstm_118_while_loop_counter4
0lstm_118_while_lstm_118_while_maximum_iterations
lstm_118_while_placeholder 
lstm_118_while_placeholder_1 
lstm_118_while_placeholder_2 
lstm_118_while_placeholder_30
,lstm_118_while_less_lstm_118_strided_slice_1F
Blstm_118_while_lstm_118_while_cond_669063___redundant_placeholder0F
Blstm_118_while_lstm_118_while_cond_669063___redundant_placeholder1F
Blstm_118_while_lstm_118_while_cond_669063___redundant_placeholder2F
Blstm_118_while_lstm_118_while_cond_669063___redundant_placeholder3
lstm_118_while_identity
?
lstm_118/while/LessLesslstm_118_while_placeholder,lstm_118_while_less_lstm_118_strided_slice_1*
T0*
_output_shapes
: ]
lstm_118/while/IdentityIdentitylstm_118/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_118_while_identity lstm_118/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?

?
lstm_118_while_cond_668775.
*lstm_118_while_lstm_118_while_loop_counter4
0lstm_118_while_lstm_118_while_maximum_iterations
lstm_118_while_placeholder 
lstm_118_while_placeholder_1 
lstm_118_while_placeholder_2 
lstm_118_while_placeholder_30
,lstm_118_while_less_lstm_118_strided_slice_1F
Blstm_118_while_lstm_118_while_cond_668775___redundant_placeholder0F
Blstm_118_while_lstm_118_while_cond_668775___redundant_placeholder1F
Blstm_118_while_lstm_118_while_cond_668775___redundant_placeholder2F
Blstm_118_while_lstm_118_while_cond_668775___redundant_placeholder3
lstm_118_while_identity
?
lstm_118/while/LessLesslstm_118_while_placeholder,lstm_118_while_less_lstm_118_strided_slice_1*
T0*
_output_shapes
: ]
lstm_118/while/IdentityIdentitylstm_118/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_118_while_identity lstm_118/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?	
?
$__inference_signature_wrapper_669316
lstm_118_input
unknown:	?
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:	?
	unknown_6:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_118_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_667154p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
,
_output_shapes
:??????????
(
_user_specified_namelstm_118_input
?
?
(sequential_59_lstm_119_while_cond_667063J
Fsequential_59_lstm_119_while_sequential_59_lstm_119_while_loop_counterP
Lsequential_59_lstm_119_while_sequential_59_lstm_119_while_maximum_iterations,
(sequential_59_lstm_119_while_placeholder.
*sequential_59_lstm_119_while_placeholder_1.
*sequential_59_lstm_119_while_placeholder_2.
*sequential_59_lstm_119_while_placeholder_3L
Hsequential_59_lstm_119_while_less_sequential_59_lstm_119_strided_slice_1b
^sequential_59_lstm_119_while_sequential_59_lstm_119_while_cond_667063___redundant_placeholder0b
^sequential_59_lstm_119_while_sequential_59_lstm_119_while_cond_667063___redundant_placeholder1b
^sequential_59_lstm_119_while_sequential_59_lstm_119_while_cond_667063___redundant_placeholder2b
^sequential_59_lstm_119_while_sequential_59_lstm_119_while_cond_667063___redundant_placeholder3)
%sequential_59_lstm_119_while_identity
?
!sequential_59/lstm_119/while/LessLess(sequential_59_lstm_119_while_placeholderHsequential_59_lstm_119_while_less_sequential_59_lstm_119_strided_slice_1*
T0*
_output_shapes
: y
%sequential_59/lstm_119/while/IdentityIdentity%sequential_59/lstm_119/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_59_lstm_119_while_identity.sequential_59/lstm_119/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?S
?
(sequential_59_lstm_119_while_body_667064J
Fsequential_59_lstm_119_while_sequential_59_lstm_119_while_loop_counterP
Lsequential_59_lstm_119_while_sequential_59_lstm_119_while_maximum_iterations,
(sequential_59_lstm_119_while_placeholder.
*sequential_59_lstm_119_while_placeholder_1.
*sequential_59_lstm_119_while_placeholder_2.
*sequential_59_lstm_119_while_placeholder_3I
Esequential_59_lstm_119_while_sequential_59_lstm_119_strided_slice_1_0?
?sequential_59_lstm_119_while_tensorarrayv2read_tensorlistgetitem_sequential_59_lstm_119_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_59_lstm_119_while_lstm_cell_119_matmul_readvariableop_resource_0:_
Msequential_59_lstm_119_while_lstm_cell_119_matmul_1_readvariableop_resource_0:Z
Lsequential_59_lstm_119_while_lstm_cell_119_biasadd_readvariableop_resource_0:)
%sequential_59_lstm_119_while_identity+
'sequential_59_lstm_119_while_identity_1+
'sequential_59_lstm_119_while_identity_2+
'sequential_59_lstm_119_while_identity_3+
'sequential_59_lstm_119_while_identity_4+
'sequential_59_lstm_119_while_identity_5G
Csequential_59_lstm_119_while_sequential_59_lstm_119_strided_slice_1?
sequential_59_lstm_119_while_tensorarrayv2read_tensorlistgetitem_sequential_59_lstm_119_tensorarrayunstack_tensorlistfromtensor[
Isequential_59_lstm_119_while_lstm_cell_119_matmul_readvariableop_resource:]
Ksequential_59_lstm_119_while_lstm_cell_119_matmul_1_readvariableop_resource:X
Jsequential_59_lstm_119_while_lstm_cell_119_biasadd_readvariableop_resource:??Asequential_59/lstm_119/while/lstm_cell_119/BiasAdd/ReadVariableOp?@sequential_59/lstm_119/while/lstm_cell_119/MatMul/ReadVariableOp?Bsequential_59/lstm_119/while/lstm_cell_119/MatMul_1/ReadVariableOp?
Nsequential_59/lstm_119/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
@sequential_59/lstm_119/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_59_lstm_119_while_tensorarrayv2read_tensorlistgetitem_sequential_59_lstm_119_tensorarrayunstack_tensorlistfromtensor_0(sequential_59_lstm_119_while_placeholderWsequential_59/lstm_119/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
@sequential_59/lstm_119/while/lstm_cell_119/MatMul/ReadVariableOpReadVariableOpKsequential_59_lstm_119_while_lstm_cell_119_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0?
1sequential_59/lstm_119/while/lstm_cell_119/MatMulMatMulGsequential_59/lstm_119/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_59/lstm_119/while/lstm_cell_119/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
Bsequential_59/lstm_119/while/lstm_cell_119/MatMul_1/ReadVariableOpReadVariableOpMsequential_59_lstm_119_while_lstm_cell_119_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0?
3sequential_59/lstm_119/while/lstm_cell_119/MatMul_1MatMul*sequential_59_lstm_119_while_placeholder_2Jsequential_59/lstm_119/while/lstm_cell_119/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
.sequential_59/lstm_119/while/lstm_cell_119/addAddV2;sequential_59/lstm_119/while/lstm_cell_119/MatMul:product:0=sequential_59/lstm_119/while/lstm_cell_119/MatMul_1:product:0*
T0*'
_output_shapes
:??????????
Asequential_59/lstm_119/while/lstm_cell_119/BiasAdd/ReadVariableOpReadVariableOpLsequential_59_lstm_119_while_lstm_cell_119_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0?
2sequential_59/lstm_119/while/lstm_cell_119/BiasAddBiasAdd2sequential_59/lstm_119/while/lstm_cell_119/add:z:0Isequential_59/lstm_119/while/lstm_cell_119/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????|
:sequential_59/lstm_119/while/lstm_cell_119/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_59/lstm_119/while/lstm_cell_119/splitSplitCsequential_59/lstm_119/while/lstm_cell_119/split/split_dim:output:0;sequential_59/lstm_119/while/lstm_cell_119/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split?
2sequential_59/lstm_119/while/lstm_cell_119/SigmoidSigmoid9sequential_59/lstm_119/while/lstm_cell_119/split:output:0*
T0*'
_output_shapes
:??????????
4sequential_59/lstm_119/while/lstm_cell_119/Sigmoid_1Sigmoid9sequential_59/lstm_119/while/lstm_cell_119/split:output:1*
T0*'
_output_shapes
:??????????
.sequential_59/lstm_119/while/lstm_cell_119/mulMul8sequential_59/lstm_119/while/lstm_cell_119/Sigmoid_1:y:0*sequential_59_lstm_119_while_placeholder_3*
T0*'
_output_shapes
:??????????
/sequential_59/lstm_119/while/lstm_cell_119/ReluRelu9sequential_59/lstm_119/while/lstm_cell_119/split:output:2*
T0*'
_output_shapes
:??????????
0sequential_59/lstm_119/while/lstm_cell_119/mul_1Mul6sequential_59/lstm_119/while/lstm_cell_119/Sigmoid:y:0=sequential_59/lstm_119/while/lstm_cell_119/Relu:activations:0*
T0*'
_output_shapes
:??????????
0sequential_59/lstm_119/while/lstm_cell_119/add_1AddV22sequential_59/lstm_119/while/lstm_cell_119/mul:z:04sequential_59/lstm_119/while/lstm_cell_119/mul_1:z:0*
T0*'
_output_shapes
:??????????
4sequential_59/lstm_119/while/lstm_cell_119/Sigmoid_2Sigmoid9sequential_59/lstm_119/while/lstm_cell_119/split:output:3*
T0*'
_output_shapes
:??????????
1sequential_59/lstm_119/while/lstm_cell_119/Relu_1Relu4sequential_59/lstm_119/while/lstm_cell_119/add_1:z:0*
T0*'
_output_shapes
:??????????
0sequential_59/lstm_119/while/lstm_cell_119/mul_2Mul8sequential_59/lstm_119/while/lstm_cell_119/Sigmoid_2:y:0?sequential_59/lstm_119/while/lstm_cell_119/Relu_1:activations:0*
T0*'
_output_shapes
:??????????
Asequential_59/lstm_119/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_59_lstm_119_while_placeholder_1(sequential_59_lstm_119_while_placeholder4sequential_59/lstm_119/while/lstm_cell_119/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_59/lstm_119/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_59/lstm_119/while/addAddV2(sequential_59_lstm_119_while_placeholder+sequential_59/lstm_119/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_59/lstm_119/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_59/lstm_119/while/add_1AddV2Fsequential_59_lstm_119_while_sequential_59_lstm_119_while_loop_counter-sequential_59/lstm_119/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_59/lstm_119/while/IdentityIdentity&sequential_59/lstm_119/while/add_1:z:0"^sequential_59/lstm_119/while/NoOp*
T0*
_output_shapes
: ?
'sequential_59/lstm_119/while/Identity_1IdentityLsequential_59_lstm_119_while_sequential_59_lstm_119_while_maximum_iterations"^sequential_59/lstm_119/while/NoOp*
T0*
_output_shapes
: ?
'sequential_59/lstm_119/while/Identity_2Identity$sequential_59/lstm_119/while/add:z:0"^sequential_59/lstm_119/while/NoOp*
T0*
_output_shapes
: ?
'sequential_59/lstm_119/while/Identity_3IdentityQsequential_59/lstm_119/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_59/lstm_119/while/NoOp*
T0*
_output_shapes
: :????
'sequential_59/lstm_119/while/Identity_4Identity4sequential_59/lstm_119/while/lstm_cell_119/mul_2:z:0"^sequential_59/lstm_119/while/NoOp*
T0*'
_output_shapes
:??????????
'sequential_59/lstm_119/while/Identity_5Identity4sequential_59/lstm_119/while/lstm_cell_119/add_1:z:0"^sequential_59/lstm_119/while/NoOp*
T0*'
_output_shapes
:??????????
!sequential_59/lstm_119/while/NoOpNoOpB^sequential_59/lstm_119/while/lstm_cell_119/BiasAdd/ReadVariableOpA^sequential_59/lstm_119/while/lstm_cell_119/MatMul/ReadVariableOpC^sequential_59/lstm_119/while/lstm_cell_119/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_59_lstm_119_while_identity.sequential_59/lstm_119/while/Identity:output:0"[
'sequential_59_lstm_119_while_identity_10sequential_59/lstm_119/while/Identity_1:output:0"[
'sequential_59_lstm_119_while_identity_20sequential_59/lstm_119/while/Identity_2:output:0"[
'sequential_59_lstm_119_while_identity_30sequential_59/lstm_119/while/Identity_3:output:0"[
'sequential_59_lstm_119_while_identity_40sequential_59/lstm_119/while/Identity_4:output:0"[
'sequential_59_lstm_119_while_identity_50sequential_59/lstm_119/while/Identity_5:output:0"?
Jsequential_59_lstm_119_while_lstm_cell_119_biasadd_readvariableop_resourceLsequential_59_lstm_119_while_lstm_cell_119_biasadd_readvariableop_resource_0"?
Ksequential_59_lstm_119_while_lstm_cell_119_matmul_1_readvariableop_resourceMsequential_59_lstm_119_while_lstm_cell_119_matmul_1_readvariableop_resource_0"?
Isequential_59_lstm_119_while_lstm_cell_119_matmul_readvariableop_resourceKsequential_59_lstm_119_while_lstm_cell_119_matmul_readvariableop_resource_0"?
Csequential_59_lstm_119_while_sequential_59_lstm_119_strided_slice_1Esequential_59_lstm_119_while_sequential_59_lstm_119_strided_slice_1_0"?
sequential_59_lstm_119_while_tensorarrayv2read_tensorlistgetitem_sequential_59_lstm_119_tensorarrayunstack_tensorlistfromtensor?sequential_59_lstm_119_while_tensorarrayv2read_tensorlistgetitem_sequential_59_lstm_119_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2?
Asequential_59/lstm_119/while/lstm_cell_119/BiasAdd/ReadVariableOpAsequential_59/lstm_119/while/lstm_cell_119/BiasAdd/ReadVariableOp2?
@sequential_59/lstm_119/while/lstm_cell_119/MatMul/ReadVariableOp@sequential_59/lstm_119/while/lstm_cell_119/MatMul/ReadVariableOp2?
Bsequential_59/lstm_119/while/lstm_cell_119/MatMul_1/ReadVariableOpBsequential_59/lstm_119/while/lstm_cell_119/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?8
?
while_body_667919
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_118_matmul_readvariableop_resource_0:	?H
6while_lstm_cell_118_matmul_1_readvariableop_resource_0:C
5while_lstm_cell_118_biasadd_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_118_matmul_readvariableop_resource:	?F
4while_lstm_cell_118_matmul_1_readvariableop_resource:A
3while_lstm_cell_118_biasadd_readvariableop_resource:??*while/lstm_cell_118/BiasAdd/ReadVariableOp?)while/lstm_cell_118/MatMul/ReadVariableOp?+while/lstm_cell_118/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
)while/lstm_cell_118/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_118_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_118/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_118/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
+while/lstm_cell_118/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_118_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0?
while/lstm_cell_118/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_118/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
while/lstm_cell_118/addAddV2$while/lstm_cell_118/MatMul:product:0&while/lstm_cell_118/MatMul_1:product:0*
T0*'
_output_shapes
:??????????
*while/lstm_cell_118/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_118_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0?
while/lstm_cell_118/BiasAddBiasAddwhile/lstm_cell_118/add:z:02while/lstm_cell_118/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????e
#while/lstm_cell_118/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_118/splitSplit,while/lstm_cell_118/split/split_dim:output:0$while/lstm_cell_118/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split|
while/lstm_cell_118/SigmoidSigmoid"while/lstm_cell_118/split:output:0*
T0*'
_output_shapes
:?????????~
while/lstm_cell_118/Sigmoid_1Sigmoid"while/lstm_cell_118/split:output:1*
T0*'
_output_shapes
:??????????
while/lstm_cell_118/mulMul!while/lstm_cell_118/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????v
while/lstm_cell_118/ReluRelu"while/lstm_cell_118/split:output:2*
T0*'
_output_shapes
:??????????
while/lstm_cell_118/mul_1Mulwhile/lstm_cell_118/Sigmoid:y:0&while/lstm_cell_118/Relu:activations:0*
T0*'
_output_shapes
:??????????
while/lstm_cell_118/add_1AddV2while/lstm_cell_118/mul:z:0while/lstm_cell_118/mul_1:z:0*
T0*'
_output_shapes
:?????????~
while/lstm_cell_118/Sigmoid_2Sigmoid"while/lstm_cell_118/split:output:3*
T0*'
_output_shapes
:?????????s
while/lstm_cell_118/Relu_1Reluwhile/lstm_cell_118/add_1:z:0*
T0*'
_output_shapes
:??????????
while/lstm_cell_118/mul_2Mul!while/lstm_cell_118/Sigmoid_2:y:0(while/lstm_cell_118/Relu_1:activations:0*
T0*'
_output_shapes
:??????????
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_118/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :???z
while/Identity_4Identitywhile/lstm_cell_118/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????z
while/Identity_5Identitywhile/lstm_cell_118/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:??????????

while/NoOpNoOp+^while/lstm_cell_118/BiasAdd/ReadVariableOp*^while/lstm_cell_118/MatMul/ReadVariableOp,^while/lstm_cell_118/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_118_biasadd_readvariableop_resource5while_lstm_cell_118_biasadd_readvariableop_resource_0"n
4while_lstm_cell_118_matmul_1_readvariableop_resource6while_lstm_cell_118_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_118_matmul_readvariableop_resource4while_lstm_cell_118_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2X
*while/lstm_cell_118/BiasAdd/ReadVariableOp*while/lstm_cell_118/BiasAdd/ReadVariableOp2V
)while/lstm_cell_118/MatMul/ReadVariableOp)while/lstm_cell_118/MatMul/ReadVariableOp2Z
+while/lstm_cell_118/MatMul_1/ReadVariableOp+while/lstm_cell_118/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?8
?
while_body_670035
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_119_matmul_readvariableop_resource_0:H
6while_lstm_cell_119_matmul_1_readvariableop_resource_0:C
5while_lstm_cell_119_biasadd_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_119_matmul_readvariableop_resource:F
4while_lstm_cell_119_matmul_1_readvariableop_resource:A
3while_lstm_cell_119_biasadd_readvariableop_resource:??*while/lstm_cell_119/BiasAdd/ReadVariableOp?)while/lstm_cell_119/MatMul/ReadVariableOp?+while/lstm_cell_119/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_119/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_119_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0?
while/lstm_cell_119/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_119/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
+while/lstm_cell_119/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_119_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0?
while/lstm_cell_119/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_119/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
while/lstm_cell_119/addAddV2$while/lstm_cell_119/MatMul:product:0&while/lstm_cell_119/MatMul_1:product:0*
T0*'
_output_shapes
:??????????
*while/lstm_cell_119/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_119_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0?
while/lstm_cell_119/BiasAddBiasAddwhile/lstm_cell_119/add:z:02while/lstm_cell_119/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????e
#while/lstm_cell_119/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_119/splitSplit,while/lstm_cell_119/split/split_dim:output:0$while/lstm_cell_119/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split|
while/lstm_cell_119/SigmoidSigmoid"while/lstm_cell_119/split:output:0*
T0*'
_output_shapes
:?????????~
while/lstm_cell_119/Sigmoid_1Sigmoid"while/lstm_cell_119/split:output:1*
T0*'
_output_shapes
:??????????
while/lstm_cell_119/mulMul!while/lstm_cell_119/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????v
while/lstm_cell_119/ReluRelu"while/lstm_cell_119/split:output:2*
T0*'
_output_shapes
:??????????
while/lstm_cell_119/mul_1Mulwhile/lstm_cell_119/Sigmoid:y:0&while/lstm_cell_119/Relu:activations:0*
T0*'
_output_shapes
:??????????
while/lstm_cell_119/add_1AddV2while/lstm_cell_119/mul:z:0while/lstm_cell_119/mul_1:z:0*
T0*'
_output_shapes
:?????????~
while/lstm_cell_119/Sigmoid_2Sigmoid"while/lstm_cell_119/split:output:3*
T0*'
_output_shapes
:?????????s
while/lstm_cell_119/Relu_1Reluwhile/lstm_cell_119/add_1:z:0*
T0*'
_output_shapes
:??????????
while/lstm_cell_119/mul_2Mul!while/lstm_cell_119/Sigmoid_2:y:0(while/lstm_cell_119/Relu_1:activations:0*
T0*'
_output_shapes
:??????????
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_119/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :???z
while/Identity_4Identitywhile/lstm_cell_119/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????z
while/Identity_5Identitywhile/lstm_cell_119/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:??????????

while/NoOpNoOp+^while/lstm_cell_119/BiasAdd/ReadVariableOp*^while/lstm_cell_119/MatMul/ReadVariableOp,^while/lstm_cell_119/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_119_biasadd_readvariableop_resource5while_lstm_cell_119_biasadd_readvariableop_resource_0"n
4while_lstm_cell_119_matmul_1_readvariableop_resource6while_lstm_cell_119_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_119_matmul_readvariableop_resource4while_lstm_cell_119_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2X
*while/lstm_cell_119/BiasAdd/ReadVariableOp*while/lstm_cell_119/BiasAdd/ReadVariableOp2V
)while/lstm_cell_119/MatMul/ReadVariableOp)while/lstm_cell_119/MatMul/ReadVariableOp2Z
+while/lstm_cell_119/MatMul_1/ReadVariableOp+while/lstm_cell_119/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?	
?
D__inference_dense_59_layer_call_and_return_conditional_losses_670567

inputs1
matmul_readvariableop_resource:	?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_670464
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_119_matmul_readvariableop_resource_0:H
6while_lstm_cell_119_matmul_1_readvariableop_resource_0:C
5while_lstm_cell_119_biasadd_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_119_matmul_readvariableop_resource:F
4while_lstm_cell_119_matmul_1_readvariableop_resource:A
3while_lstm_cell_119_biasadd_readvariableop_resource:??*while/lstm_cell_119/BiasAdd/ReadVariableOp?)while/lstm_cell_119/MatMul/ReadVariableOp?+while/lstm_cell_119/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_119/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_119_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0?
while/lstm_cell_119/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_119/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
+while/lstm_cell_119/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_119_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0?
while/lstm_cell_119/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_119/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
while/lstm_cell_119/addAddV2$while/lstm_cell_119/MatMul:product:0&while/lstm_cell_119/MatMul_1:product:0*
T0*'
_output_shapes
:??????????
*while/lstm_cell_119/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_119_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0?
while/lstm_cell_119/BiasAddBiasAddwhile/lstm_cell_119/add:z:02while/lstm_cell_119/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????e
#while/lstm_cell_119/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_119/splitSplit,while/lstm_cell_119/split/split_dim:output:0$while/lstm_cell_119/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split|
while/lstm_cell_119/SigmoidSigmoid"while/lstm_cell_119/split:output:0*
T0*'
_output_shapes
:?????????~
while/lstm_cell_119/Sigmoid_1Sigmoid"while/lstm_cell_119/split:output:1*
T0*'
_output_shapes
:??????????
while/lstm_cell_119/mulMul!while/lstm_cell_119/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????v
while/lstm_cell_119/ReluRelu"while/lstm_cell_119/split:output:2*
T0*'
_output_shapes
:??????????
while/lstm_cell_119/mul_1Mulwhile/lstm_cell_119/Sigmoid:y:0&while/lstm_cell_119/Relu:activations:0*
T0*'
_output_shapes
:??????????
while/lstm_cell_119/add_1AddV2while/lstm_cell_119/mul:z:0while/lstm_cell_119/mul_1:z:0*
T0*'
_output_shapes
:?????????~
while/lstm_cell_119/Sigmoid_2Sigmoid"while/lstm_cell_119/split:output:3*
T0*'
_output_shapes
:?????????s
while/lstm_cell_119/Relu_1Reluwhile/lstm_cell_119/add_1:z:0*
T0*'
_output_shapes
:??????????
while/lstm_cell_119/mul_2Mul!while/lstm_cell_119/Sigmoid_2:y:0(while/lstm_cell_119/Relu_1:activations:0*
T0*'
_output_shapes
:??????????
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_119/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :???z
while/Identity_4Identitywhile/lstm_cell_119/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????z
while/Identity_5Identitywhile/lstm_cell_119/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:??????????

while/NoOpNoOp+^while/lstm_cell_119/BiasAdd/ReadVariableOp*^while/lstm_cell_119/MatMul/ReadVariableOp,^while/lstm_cell_119/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_119_biasadd_readvariableop_resource5while_lstm_cell_119_biasadd_readvariableop_resource_0"n
4while_lstm_cell_119_matmul_1_readvariableop_resource6while_lstm_cell_119_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_119_matmul_readvariableop_resource4while_lstm_cell_119_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2X
*while/lstm_cell_119/BiasAdd/ReadVariableOp*while/lstm_cell_119/BiasAdd/ReadVariableOp2V
)while/lstm_cell_119/MatMul/ReadVariableOp)while/lstm_cell_119/MatMul/ReadVariableOp2Z
+while/lstm_cell_119/MatMul_1/ReadVariableOp+while/lstm_cell_119/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?
?
I__inference_lstm_cell_119_layer_call_and_return_conditional_losses_667717

inputs

states
states_10
matmul_readvariableop_resource:2
 matmul_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????N
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????:?????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_namestates:OK
'
_output_shapes
:?????????
 
_user_specified_namestates
?
?
I__inference_lstm_cell_119_layer_call_and_return_conditional_losses_670731

inputs
states_0
states_10
matmul_readvariableop_resource:2
 matmul_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????N
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????:?????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/1
?
?
.__inference_lstm_cell_119_layer_call_fn_670682

inputs
states_0
states_1
unknown:
	unknown_0:
	unknown_1:
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????:?????????:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_lstm_cell_119_layer_call_and_return_conditional_losses_667571o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/1
?
?
while_cond_670177
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_670177___redundant_placeholder04
0while_while_cond_670177___redundant_placeholder14
0while_while_cond_670177___redundant_placeholder24
0while_while_cond_670177___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?S
?
(sequential_59_lstm_118_while_body_666925J
Fsequential_59_lstm_118_while_sequential_59_lstm_118_while_loop_counterP
Lsequential_59_lstm_118_while_sequential_59_lstm_118_while_maximum_iterations,
(sequential_59_lstm_118_while_placeholder.
*sequential_59_lstm_118_while_placeholder_1.
*sequential_59_lstm_118_while_placeholder_2.
*sequential_59_lstm_118_while_placeholder_3I
Esequential_59_lstm_118_while_sequential_59_lstm_118_strided_slice_1_0?
?sequential_59_lstm_118_while_tensorarrayv2read_tensorlistgetitem_sequential_59_lstm_118_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_59_lstm_118_while_lstm_cell_118_matmul_readvariableop_resource_0:	?_
Msequential_59_lstm_118_while_lstm_cell_118_matmul_1_readvariableop_resource_0:Z
Lsequential_59_lstm_118_while_lstm_cell_118_biasadd_readvariableop_resource_0:)
%sequential_59_lstm_118_while_identity+
'sequential_59_lstm_118_while_identity_1+
'sequential_59_lstm_118_while_identity_2+
'sequential_59_lstm_118_while_identity_3+
'sequential_59_lstm_118_while_identity_4+
'sequential_59_lstm_118_while_identity_5G
Csequential_59_lstm_118_while_sequential_59_lstm_118_strided_slice_1?
sequential_59_lstm_118_while_tensorarrayv2read_tensorlistgetitem_sequential_59_lstm_118_tensorarrayunstack_tensorlistfromtensor\
Isequential_59_lstm_118_while_lstm_cell_118_matmul_readvariableop_resource:	?]
Ksequential_59_lstm_118_while_lstm_cell_118_matmul_1_readvariableop_resource:X
Jsequential_59_lstm_118_while_lstm_cell_118_biasadd_readvariableop_resource:??Asequential_59/lstm_118/while/lstm_cell_118/BiasAdd/ReadVariableOp?@sequential_59/lstm_118/while/lstm_cell_118/MatMul/ReadVariableOp?Bsequential_59/lstm_118/while/lstm_cell_118/MatMul_1/ReadVariableOp?
Nsequential_59/lstm_118/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
@sequential_59/lstm_118/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_59_lstm_118_while_tensorarrayv2read_tensorlistgetitem_sequential_59_lstm_118_tensorarrayunstack_tensorlistfromtensor_0(sequential_59_lstm_118_while_placeholderWsequential_59/lstm_118/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
@sequential_59/lstm_118/while/lstm_cell_118/MatMul/ReadVariableOpReadVariableOpKsequential_59_lstm_118_while_lstm_cell_118_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
1sequential_59/lstm_118/while/lstm_cell_118/MatMulMatMulGsequential_59/lstm_118/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_59/lstm_118/while/lstm_cell_118/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
Bsequential_59/lstm_118/while/lstm_cell_118/MatMul_1/ReadVariableOpReadVariableOpMsequential_59_lstm_118_while_lstm_cell_118_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0?
3sequential_59/lstm_118/while/lstm_cell_118/MatMul_1MatMul*sequential_59_lstm_118_while_placeholder_2Jsequential_59/lstm_118/while/lstm_cell_118/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
.sequential_59/lstm_118/while/lstm_cell_118/addAddV2;sequential_59/lstm_118/while/lstm_cell_118/MatMul:product:0=sequential_59/lstm_118/while/lstm_cell_118/MatMul_1:product:0*
T0*'
_output_shapes
:??????????
Asequential_59/lstm_118/while/lstm_cell_118/BiasAdd/ReadVariableOpReadVariableOpLsequential_59_lstm_118_while_lstm_cell_118_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0?
2sequential_59/lstm_118/while/lstm_cell_118/BiasAddBiasAdd2sequential_59/lstm_118/while/lstm_cell_118/add:z:0Isequential_59/lstm_118/while/lstm_cell_118/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????|
:sequential_59/lstm_118/while/lstm_cell_118/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_59/lstm_118/while/lstm_cell_118/splitSplitCsequential_59/lstm_118/while/lstm_cell_118/split/split_dim:output:0;sequential_59/lstm_118/while/lstm_cell_118/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split?
2sequential_59/lstm_118/while/lstm_cell_118/SigmoidSigmoid9sequential_59/lstm_118/while/lstm_cell_118/split:output:0*
T0*'
_output_shapes
:??????????
4sequential_59/lstm_118/while/lstm_cell_118/Sigmoid_1Sigmoid9sequential_59/lstm_118/while/lstm_cell_118/split:output:1*
T0*'
_output_shapes
:??????????
.sequential_59/lstm_118/while/lstm_cell_118/mulMul8sequential_59/lstm_118/while/lstm_cell_118/Sigmoid_1:y:0*sequential_59_lstm_118_while_placeholder_3*
T0*'
_output_shapes
:??????????
/sequential_59/lstm_118/while/lstm_cell_118/ReluRelu9sequential_59/lstm_118/while/lstm_cell_118/split:output:2*
T0*'
_output_shapes
:??????????
0sequential_59/lstm_118/while/lstm_cell_118/mul_1Mul6sequential_59/lstm_118/while/lstm_cell_118/Sigmoid:y:0=sequential_59/lstm_118/while/lstm_cell_118/Relu:activations:0*
T0*'
_output_shapes
:??????????
0sequential_59/lstm_118/while/lstm_cell_118/add_1AddV22sequential_59/lstm_118/while/lstm_cell_118/mul:z:04sequential_59/lstm_118/while/lstm_cell_118/mul_1:z:0*
T0*'
_output_shapes
:??????????
4sequential_59/lstm_118/while/lstm_cell_118/Sigmoid_2Sigmoid9sequential_59/lstm_118/while/lstm_cell_118/split:output:3*
T0*'
_output_shapes
:??????????
1sequential_59/lstm_118/while/lstm_cell_118/Relu_1Relu4sequential_59/lstm_118/while/lstm_cell_118/add_1:z:0*
T0*'
_output_shapes
:??????????
0sequential_59/lstm_118/while/lstm_cell_118/mul_2Mul8sequential_59/lstm_118/while/lstm_cell_118/Sigmoid_2:y:0?sequential_59/lstm_118/while/lstm_cell_118/Relu_1:activations:0*
T0*'
_output_shapes
:??????????
Asequential_59/lstm_118/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_59_lstm_118_while_placeholder_1(sequential_59_lstm_118_while_placeholder4sequential_59/lstm_118/while/lstm_cell_118/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_59/lstm_118/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_59/lstm_118/while/addAddV2(sequential_59_lstm_118_while_placeholder+sequential_59/lstm_118/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_59/lstm_118/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_59/lstm_118/while/add_1AddV2Fsequential_59_lstm_118_while_sequential_59_lstm_118_while_loop_counter-sequential_59/lstm_118/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_59/lstm_118/while/IdentityIdentity&sequential_59/lstm_118/while/add_1:z:0"^sequential_59/lstm_118/while/NoOp*
T0*
_output_shapes
: ?
'sequential_59/lstm_118/while/Identity_1IdentityLsequential_59_lstm_118_while_sequential_59_lstm_118_while_maximum_iterations"^sequential_59/lstm_118/while/NoOp*
T0*
_output_shapes
: ?
'sequential_59/lstm_118/while/Identity_2Identity$sequential_59/lstm_118/while/add:z:0"^sequential_59/lstm_118/while/NoOp*
T0*
_output_shapes
: ?
'sequential_59/lstm_118/while/Identity_3IdentityQsequential_59/lstm_118/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_59/lstm_118/while/NoOp*
T0*
_output_shapes
: :????
'sequential_59/lstm_118/while/Identity_4Identity4sequential_59/lstm_118/while/lstm_cell_118/mul_2:z:0"^sequential_59/lstm_118/while/NoOp*
T0*'
_output_shapes
:??????????
'sequential_59/lstm_118/while/Identity_5Identity4sequential_59/lstm_118/while/lstm_cell_118/add_1:z:0"^sequential_59/lstm_118/while/NoOp*
T0*'
_output_shapes
:??????????
!sequential_59/lstm_118/while/NoOpNoOpB^sequential_59/lstm_118/while/lstm_cell_118/BiasAdd/ReadVariableOpA^sequential_59/lstm_118/while/lstm_cell_118/MatMul/ReadVariableOpC^sequential_59/lstm_118/while/lstm_cell_118/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_59_lstm_118_while_identity.sequential_59/lstm_118/while/Identity:output:0"[
'sequential_59_lstm_118_while_identity_10sequential_59/lstm_118/while/Identity_1:output:0"[
'sequential_59_lstm_118_while_identity_20sequential_59/lstm_118/while/Identity_2:output:0"[
'sequential_59_lstm_118_while_identity_30sequential_59/lstm_118/while/Identity_3:output:0"[
'sequential_59_lstm_118_while_identity_40sequential_59/lstm_118/while/Identity_4:output:0"[
'sequential_59_lstm_118_while_identity_50sequential_59/lstm_118/while/Identity_5:output:0"?
Jsequential_59_lstm_118_while_lstm_cell_118_biasadd_readvariableop_resourceLsequential_59_lstm_118_while_lstm_cell_118_biasadd_readvariableop_resource_0"?
Ksequential_59_lstm_118_while_lstm_cell_118_matmul_1_readvariableop_resourceMsequential_59_lstm_118_while_lstm_cell_118_matmul_1_readvariableop_resource_0"?
Isequential_59_lstm_118_while_lstm_cell_118_matmul_readvariableop_resourceKsequential_59_lstm_118_while_lstm_cell_118_matmul_readvariableop_resource_0"?
Csequential_59_lstm_118_while_sequential_59_lstm_118_strided_slice_1Esequential_59_lstm_118_while_sequential_59_lstm_118_strided_slice_1_0"?
sequential_59_lstm_118_while_tensorarrayv2read_tensorlistgetitem_sequential_59_lstm_118_tensorarrayunstack_tensorlistfromtensor?sequential_59_lstm_118_while_tensorarrayv2read_tensorlistgetitem_sequential_59_lstm_118_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2?
Asequential_59/lstm_118/while/lstm_cell_118/BiasAdd/ReadVariableOpAsequential_59/lstm_118/while/lstm_cell_118/BiasAdd/ReadVariableOp2?
@sequential_59/lstm_118/while/lstm_cell_118/MatMul/ReadVariableOp@sequential_59/lstm_118/while/lstm_cell_118/MatMul/ReadVariableOp2?
Bsequential_59/lstm_118/while/lstm_cell_118/MatMul_1/ReadVariableOpBsequential_59/lstm_118/while/lstm_cell_118/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?
?
I__inference_lstm_cell_118_layer_call_and_return_conditional_losses_670633

inputs
states_0
states_11
matmul_readvariableop_resource:	?2
 matmul_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????N
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:??????????:?????????:?????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/1
?#
?
while_body_667585
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_119_667609_0:.
while_lstm_cell_119_667611_0:*
while_lstm_cell_119_667613_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_119_667609:,
while_lstm_cell_119_667611:(
while_lstm_cell_119_667613:??+while/lstm_cell_119/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_119/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_119_667609_0while_lstm_cell_119_667611_0while_lstm_cell_119_667613_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????:?????????:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_lstm_cell_119_layer_call_and_return_conditional_losses_667571?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_119/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :????
while/Identity_4Identity4while/lstm_cell_119/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:??????????
while/Identity_5Identity4while/lstm_cell_119/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????z

while/NoOpNoOp,^while/lstm_cell_119/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_119_667609while_lstm_cell_119_667609_0":
while_lstm_cell_119_667611while_lstm_cell_119_667611_0":
while_lstm_cell_119_667613while_lstm_cell_119_667613_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2Z
+while/lstm_cell_119/StatefulPartitionedCall+while/lstm_cell_119/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?K
?
D__inference_lstm_118_layer_call_and_return_conditional_losses_669503
inputs_0?
,lstm_cell_118_matmul_readvariableop_resource:	?@
.lstm_cell_118_matmul_1_readvariableop_resource:;
-lstm_cell_118_biasadd_readvariableop_resource:
identity??$lstm_cell_118/BiasAdd/ReadVariableOp?#lstm_cell_118/MatMul/ReadVariableOp?%lstm_cell_118/MatMul_1/ReadVariableOp?while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
#lstm_cell_118/MatMul/ReadVariableOpReadVariableOp,lstm_cell_118_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_118/MatMulMatMulstrided_slice_2:output:0+lstm_cell_118/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
%lstm_cell_118/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_118_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0?
lstm_cell_118/MatMul_1MatMulzeros:output:0-lstm_cell_118/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
lstm_cell_118/addAddV2lstm_cell_118/MatMul:product:0 lstm_cell_118/MatMul_1:product:0*
T0*'
_output_shapes
:??????????
$lstm_cell_118/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_118_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
lstm_cell_118/BiasAddBiasAddlstm_cell_118/add:z:0,lstm_cell_118/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
lstm_cell_118/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_118/splitSplit&lstm_cell_118/split/split_dim:output:0lstm_cell_118/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_splitp
lstm_cell_118/SigmoidSigmoidlstm_cell_118/split:output:0*
T0*'
_output_shapes
:?????????r
lstm_cell_118/Sigmoid_1Sigmoidlstm_cell_118/split:output:1*
T0*'
_output_shapes
:?????????y
lstm_cell_118/mulMullstm_cell_118/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????j
lstm_cell_118/ReluRelulstm_cell_118/split:output:2*
T0*'
_output_shapes
:??????????
lstm_cell_118/mul_1Mullstm_cell_118/Sigmoid:y:0 lstm_cell_118/Relu:activations:0*
T0*'
_output_shapes
:?????????~
lstm_cell_118/add_1AddV2lstm_cell_118/mul:z:0lstm_cell_118/mul_1:z:0*
T0*'
_output_shapes
:?????????r
lstm_cell_118/Sigmoid_2Sigmoidlstm_cell_118/split:output:3*
T0*'
_output_shapes
:?????????g
lstm_cell_118/Relu_1Relulstm_cell_118/add_1:z:0*
T0*'
_output_shapes
:??????????
lstm_cell_118/mul_2Mullstm_cell_118/Sigmoid_2:y:0"lstm_cell_118/Relu_1:activations:0*
T0*'
_output_shapes
:?????????n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_118_matmul_readvariableop_resource.lstm_cell_118_matmul_1_readvariableop_resource-lstm_cell_118_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_669419*
condR
while_cond_669418*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :???????????????????
NoOpNoOp%^lstm_cell_118/BiasAdd/ReadVariableOp$^lstm_cell_118/MatMul/ReadVariableOp&^lstm_cell_118/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 2L
$lstm_cell_118/BiasAdd/ReadVariableOp$lstm_cell_118/BiasAdd/ReadVariableOp2J
#lstm_cell_118/MatMul/ReadVariableOp#lstm_cell_118/MatMul/ReadVariableOp2N
%lstm_cell_118/MatMul_1/ReadVariableOp%lstm_cell_118/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_667775
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_667775___redundant_placeholder04
0while_while_cond_667775___redundant_placeholder14
0while_while_cond_667775___redundant_placeholder24
0while_while_cond_667775___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?
?
I__inference_lstm_cell_118_layer_call_and_return_conditional_losses_667367

inputs

states
states_11
matmul_readvariableop_resource:	?2
 matmul_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????N
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:??????????:?????????:?????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_namestates:OK
'
_output_shapes
:?????????
 
_user_specified_namestates
?

?
lstm_119_while_cond_669202.
*lstm_119_while_lstm_119_while_loop_counter4
0lstm_119_while_lstm_119_while_maximum_iterations
lstm_119_while_placeholder 
lstm_119_while_placeholder_1 
lstm_119_while_placeholder_2 
lstm_119_while_placeholder_30
,lstm_119_while_less_lstm_119_strided_slice_1F
Blstm_119_while_lstm_119_while_cond_669202___redundant_placeholder0F
Blstm_119_while_lstm_119_while_cond_669202___redundant_placeholder1F
Blstm_119_while_lstm_119_while_cond_669202___redundant_placeholder2F
Blstm_119_while_lstm_119_while_cond_669202___redundant_placeholder3
lstm_119_while_identity
?
lstm_119/while/LessLesslstm_119_while_placeholder,lstm_119_while_less_lstm_119_strided_slice_1*
T0*
_output_shapes
: ]
lstm_119/while/IdentityIdentitylstm_119/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_119_while_identity lstm_119/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?
?
(sequential_59_lstm_118_while_cond_666924J
Fsequential_59_lstm_118_while_sequential_59_lstm_118_while_loop_counterP
Lsequential_59_lstm_118_while_sequential_59_lstm_118_while_maximum_iterations,
(sequential_59_lstm_118_while_placeholder.
*sequential_59_lstm_118_while_placeholder_1.
*sequential_59_lstm_118_while_placeholder_2.
*sequential_59_lstm_118_while_placeholder_3L
Hsequential_59_lstm_118_while_less_sequential_59_lstm_118_strided_slice_1b
^sequential_59_lstm_118_while_sequential_59_lstm_118_while_cond_666924___redundant_placeholder0b
^sequential_59_lstm_118_while_sequential_59_lstm_118_while_cond_666924___redundant_placeholder1b
^sequential_59_lstm_118_while_sequential_59_lstm_118_while_cond_666924___redundant_placeholder2b
^sequential_59_lstm_118_while_sequential_59_lstm_118_while_cond_666924___redundant_placeholder3)
%sequential_59_lstm_118_while_identity
?
!sequential_59/lstm_118/while/LessLess(sequential_59_lstm_118_while_placeholderHsequential_59_lstm_118_while_less_sequential_59_lstm_118_strided_slice_1*
T0*
_output_shapes
: y
%sequential_59/lstm_118/while/IdentityIdentity%sequential_59/lstm_118/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_59_lstm_118_while_identity.sequential_59/lstm_118/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?	
?
.__inference_sequential_59_layer_call_fn_668717

inputs
unknown:	?
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:	?
	unknown_6:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_59_layer_call_and_return_conditional_losses_668583p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?C
?

lstm_119_while_body_668915.
*lstm_119_while_lstm_119_while_loop_counter4
0lstm_119_while_lstm_119_while_maximum_iterations
lstm_119_while_placeholder 
lstm_119_while_placeholder_1 
lstm_119_while_placeholder_2 
lstm_119_while_placeholder_3-
)lstm_119_while_lstm_119_strided_slice_1_0i
elstm_119_while_tensorarrayv2read_tensorlistgetitem_lstm_119_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_119_while_lstm_cell_119_matmul_readvariableop_resource_0:Q
?lstm_119_while_lstm_cell_119_matmul_1_readvariableop_resource_0:L
>lstm_119_while_lstm_cell_119_biasadd_readvariableop_resource_0:
lstm_119_while_identity
lstm_119_while_identity_1
lstm_119_while_identity_2
lstm_119_while_identity_3
lstm_119_while_identity_4
lstm_119_while_identity_5+
'lstm_119_while_lstm_119_strided_slice_1g
clstm_119_while_tensorarrayv2read_tensorlistgetitem_lstm_119_tensorarrayunstack_tensorlistfromtensorM
;lstm_119_while_lstm_cell_119_matmul_readvariableop_resource:O
=lstm_119_while_lstm_cell_119_matmul_1_readvariableop_resource:J
<lstm_119_while_lstm_cell_119_biasadd_readvariableop_resource:??3lstm_119/while/lstm_cell_119/BiasAdd/ReadVariableOp?2lstm_119/while/lstm_cell_119/MatMul/ReadVariableOp?4lstm_119/while/lstm_cell_119/MatMul_1/ReadVariableOp?
@lstm_119/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_119/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_119_while_tensorarrayv2read_tensorlistgetitem_lstm_119_tensorarrayunstack_tensorlistfromtensor_0lstm_119_while_placeholderIlstm_119/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_119/while/lstm_cell_119/MatMul/ReadVariableOpReadVariableOp=lstm_119_while_lstm_cell_119_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0?
#lstm_119/while/lstm_cell_119/MatMulMatMul9lstm_119/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_119/while/lstm_cell_119/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
4lstm_119/while/lstm_cell_119/MatMul_1/ReadVariableOpReadVariableOp?lstm_119_while_lstm_cell_119_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0?
%lstm_119/while/lstm_cell_119/MatMul_1MatMullstm_119_while_placeholder_2<lstm_119/while/lstm_cell_119/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 lstm_119/while/lstm_cell_119/addAddV2-lstm_119/while/lstm_cell_119/MatMul:product:0/lstm_119/while/lstm_cell_119/MatMul_1:product:0*
T0*'
_output_shapes
:??????????
3lstm_119/while/lstm_cell_119/BiasAdd/ReadVariableOpReadVariableOp>lstm_119_while_lstm_cell_119_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0?
$lstm_119/while/lstm_cell_119/BiasAddBiasAdd$lstm_119/while/lstm_cell_119/add:z:0;lstm_119/while/lstm_cell_119/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????n
,lstm_119/while/lstm_cell_119/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_119/while/lstm_cell_119/splitSplit5lstm_119/while/lstm_cell_119/split/split_dim:output:0-lstm_119/while/lstm_cell_119/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split?
$lstm_119/while/lstm_cell_119/SigmoidSigmoid+lstm_119/while/lstm_cell_119/split:output:0*
T0*'
_output_shapes
:??????????
&lstm_119/while/lstm_cell_119/Sigmoid_1Sigmoid+lstm_119/while/lstm_cell_119/split:output:1*
T0*'
_output_shapes
:??????????
 lstm_119/while/lstm_cell_119/mulMul*lstm_119/while/lstm_cell_119/Sigmoid_1:y:0lstm_119_while_placeholder_3*
T0*'
_output_shapes
:??????????
!lstm_119/while/lstm_cell_119/ReluRelu+lstm_119/while/lstm_cell_119/split:output:2*
T0*'
_output_shapes
:??????????
"lstm_119/while/lstm_cell_119/mul_1Mul(lstm_119/while/lstm_cell_119/Sigmoid:y:0/lstm_119/while/lstm_cell_119/Relu:activations:0*
T0*'
_output_shapes
:??????????
"lstm_119/while/lstm_cell_119/add_1AddV2$lstm_119/while/lstm_cell_119/mul:z:0&lstm_119/while/lstm_cell_119/mul_1:z:0*
T0*'
_output_shapes
:??????????
&lstm_119/while/lstm_cell_119/Sigmoid_2Sigmoid+lstm_119/while/lstm_cell_119/split:output:3*
T0*'
_output_shapes
:??????????
#lstm_119/while/lstm_cell_119/Relu_1Relu&lstm_119/while/lstm_cell_119/add_1:z:0*
T0*'
_output_shapes
:??????????
"lstm_119/while/lstm_cell_119/mul_2Mul*lstm_119/while/lstm_cell_119/Sigmoid_2:y:01lstm_119/while/lstm_cell_119/Relu_1:activations:0*
T0*'
_output_shapes
:??????????
3lstm_119/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_119_while_placeholder_1lstm_119_while_placeholder&lstm_119/while/lstm_cell_119/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_119/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_119/while/addAddV2lstm_119_while_placeholderlstm_119/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_119/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_119/while/add_1AddV2*lstm_119_while_lstm_119_while_loop_counterlstm_119/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_119/while/IdentityIdentitylstm_119/while/add_1:z:0^lstm_119/while/NoOp*
T0*
_output_shapes
: ?
lstm_119/while/Identity_1Identity0lstm_119_while_lstm_119_while_maximum_iterations^lstm_119/while/NoOp*
T0*
_output_shapes
: t
lstm_119/while/Identity_2Identitylstm_119/while/add:z:0^lstm_119/while/NoOp*
T0*
_output_shapes
: ?
lstm_119/while/Identity_3IdentityClstm_119/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_119/while/NoOp*
T0*
_output_shapes
: :????
lstm_119/while/Identity_4Identity&lstm_119/while/lstm_cell_119/mul_2:z:0^lstm_119/while/NoOp*
T0*'
_output_shapes
:??????????
lstm_119/while/Identity_5Identity&lstm_119/while/lstm_cell_119/add_1:z:0^lstm_119/while/NoOp*
T0*'
_output_shapes
:??????????
lstm_119/while/NoOpNoOp4^lstm_119/while/lstm_cell_119/BiasAdd/ReadVariableOp3^lstm_119/while/lstm_cell_119/MatMul/ReadVariableOp5^lstm_119/while/lstm_cell_119/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_119_while_identity lstm_119/while/Identity:output:0"?
lstm_119_while_identity_1"lstm_119/while/Identity_1:output:0"?
lstm_119_while_identity_2"lstm_119/while/Identity_2:output:0"?
lstm_119_while_identity_3"lstm_119/while/Identity_3:output:0"?
lstm_119_while_identity_4"lstm_119/while/Identity_4:output:0"?
lstm_119_while_identity_5"lstm_119/while/Identity_5:output:0"T
'lstm_119_while_lstm_119_strided_slice_1)lstm_119_while_lstm_119_strided_slice_1_0"~
<lstm_119_while_lstm_cell_119_biasadd_readvariableop_resource>lstm_119_while_lstm_cell_119_biasadd_readvariableop_resource_0"?
=lstm_119_while_lstm_cell_119_matmul_1_readvariableop_resource?lstm_119_while_lstm_cell_119_matmul_1_readvariableop_resource_0"|
;lstm_119_while_lstm_cell_119_matmul_readvariableop_resource=lstm_119_while_lstm_cell_119_matmul_readvariableop_resource_0"?
clstm_119_while_tensorarrayv2read_tensorlistgetitem_lstm_119_tensorarrayunstack_tensorlistfromtensorelstm_119_while_tensorarrayv2read_tensorlistgetitem_lstm_119_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2j
3lstm_119/while/lstm_cell_119/BiasAdd/ReadVariableOp3lstm_119/while/lstm_cell_119/BiasAdd/ReadVariableOp2h
2lstm_119/while/lstm_cell_119/MatMul/ReadVariableOp2lstm_119/while/lstm_cell_119/MatMul/ReadVariableOp2l
4lstm_119/while/lstm_cell_119/MatMul_1/ReadVariableOp4lstm_119/while/lstm_cell_119/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?
?
)__inference_lstm_118_layer_call_fn_669360

inputs
unknown:	?
	unknown_0:
	unknown_1:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_118_layer_call_and_return_conditional_losses_668528s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?8
?
while_body_668279
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_119_matmul_readvariableop_resource_0:H
6while_lstm_cell_119_matmul_1_readvariableop_resource_0:C
5while_lstm_cell_119_biasadd_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_119_matmul_readvariableop_resource:F
4while_lstm_cell_119_matmul_1_readvariableop_resource:A
3while_lstm_cell_119_biasadd_readvariableop_resource:??*while/lstm_cell_119/BiasAdd/ReadVariableOp?)while/lstm_cell_119/MatMul/ReadVariableOp?+while/lstm_cell_119/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_119/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_119_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0?
while/lstm_cell_119/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_119/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
+while/lstm_cell_119/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_119_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0?
while/lstm_cell_119/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_119/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
while/lstm_cell_119/addAddV2$while/lstm_cell_119/MatMul:product:0&while/lstm_cell_119/MatMul_1:product:0*
T0*'
_output_shapes
:??????????
*while/lstm_cell_119/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_119_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0?
while/lstm_cell_119/BiasAddBiasAddwhile/lstm_cell_119/add:z:02while/lstm_cell_119/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????e
#while/lstm_cell_119/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_119/splitSplit,while/lstm_cell_119/split/split_dim:output:0$while/lstm_cell_119/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split|
while/lstm_cell_119/SigmoidSigmoid"while/lstm_cell_119/split:output:0*
T0*'
_output_shapes
:?????????~
while/lstm_cell_119/Sigmoid_1Sigmoid"while/lstm_cell_119/split:output:1*
T0*'
_output_shapes
:??????????
while/lstm_cell_119/mulMul!while/lstm_cell_119/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????v
while/lstm_cell_119/ReluRelu"while/lstm_cell_119/split:output:2*
T0*'
_output_shapes
:??????????
while/lstm_cell_119/mul_1Mulwhile/lstm_cell_119/Sigmoid:y:0&while/lstm_cell_119/Relu:activations:0*
T0*'
_output_shapes
:??????????
while/lstm_cell_119/add_1AddV2while/lstm_cell_119/mul:z:0while/lstm_cell_119/mul_1:z:0*
T0*'
_output_shapes
:?????????~
while/lstm_cell_119/Sigmoid_2Sigmoid"while/lstm_cell_119/split:output:3*
T0*'
_output_shapes
:?????????s
while/lstm_cell_119/Relu_1Reluwhile/lstm_cell_119/add_1:z:0*
T0*'
_output_shapes
:??????????
while/lstm_cell_119/mul_2Mul!while/lstm_cell_119/Sigmoid_2:y:0(while/lstm_cell_119/Relu_1:activations:0*
T0*'
_output_shapes
:??????????
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_119/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :???z
while/Identity_4Identitywhile/lstm_cell_119/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????z
while/Identity_5Identitywhile/lstm_cell_119/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:??????????

while/NoOpNoOp+^while/lstm_cell_119/BiasAdd/ReadVariableOp*^while/lstm_cell_119/MatMul/ReadVariableOp,^while/lstm_cell_119/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_119_biasadd_readvariableop_resource5while_lstm_cell_119_biasadd_readvariableop_resource_0"n
4while_lstm_cell_119_matmul_1_readvariableop_resource6while_lstm_cell_119_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_119_matmul_readvariableop_resource4while_lstm_cell_119_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2X
*while/lstm_cell_119/BiasAdd/ReadVariableOp*while/lstm_cell_119/BiasAdd/ReadVariableOp2V
)while/lstm_cell_119/MatMul/ReadVariableOp)while/lstm_cell_119/MatMul/ReadVariableOp2Z
+while/lstm_cell_119/MatMul_1/ReadVariableOp+while/lstm_cell_119/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?8
?
while_body_668444
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_118_matmul_readvariableop_resource_0:	?H
6while_lstm_cell_118_matmul_1_readvariableop_resource_0:C
5while_lstm_cell_118_biasadd_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_118_matmul_readvariableop_resource:	?F
4while_lstm_cell_118_matmul_1_readvariableop_resource:A
3while_lstm_cell_118_biasadd_readvariableop_resource:??*while/lstm_cell_118/BiasAdd/ReadVariableOp?)while/lstm_cell_118/MatMul/ReadVariableOp?+while/lstm_cell_118/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
)while/lstm_cell_118/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_118_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_118/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_118/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
+while/lstm_cell_118/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_118_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0?
while/lstm_cell_118/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_118/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
while/lstm_cell_118/addAddV2$while/lstm_cell_118/MatMul:product:0&while/lstm_cell_118/MatMul_1:product:0*
T0*'
_output_shapes
:??????????
*while/lstm_cell_118/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_118_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0?
while/lstm_cell_118/BiasAddBiasAddwhile/lstm_cell_118/add:z:02while/lstm_cell_118/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????e
#while/lstm_cell_118/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_118/splitSplit,while/lstm_cell_118/split/split_dim:output:0$while/lstm_cell_118/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split|
while/lstm_cell_118/SigmoidSigmoid"while/lstm_cell_118/split:output:0*
T0*'
_output_shapes
:?????????~
while/lstm_cell_118/Sigmoid_1Sigmoid"while/lstm_cell_118/split:output:1*
T0*'
_output_shapes
:??????????
while/lstm_cell_118/mulMul!while/lstm_cell_118/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????v
while/lstm_cell_118/ReluRelu"while/lstm_cell_118/split:output:2*
T0*'
_output_shapes
:??????????
while/lstm_cell_118/mul_1Mulwhile/lstm_cell_118/Sigmoid:y:0&while/lstm_cell_118/Relu:activations:0*
T0*'
_output_shapes
:??????????
while/lstm_cell_118/add_1AddV2while/lstm_cell_118/mul:z:0while/lstm_cell_118/mul_1:z:0*
T0*'
_output_shapes
:?????????~
while/lstm_cell_118/Sigmoid_2Sigmoid"while/lstm_cell_118/split:output:3*
T0*'
_output_shapes
:?????????s
while/lstm_cell_118/Relu_1Reluwhile/lstm_cell_118/add_1:z:0*
T0*'
_output_shapes
:??????????
while/lstm_cell_118/mul_2Mul!while/lstm_cell_118/Sigmoid_2:y:0(while/lstm_cell_118/Relu_1:activations:0*
T0*'
_output_shapes
:??????????
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_118/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :???z
while/Identity_4Identitywhile/lstm_cell_118/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????z
while/Identity_5Identitywhile/lstm_cell_118/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:??????????

while/NoOpNoOp+^while/lstm_cell_118/BiasAdd/ReadVariableOp*^while/lstm_cell_118/MatMul/ReadVariableOp,^while/lstm_cell_118/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_118_biasadd_readvariableop_resource5while_lstm_cell_118_biasadd_readvariableop_resource_0"n
4while_lstm_cell_118_matmul_1_readvariableop_resource6while_lstm_cell_118_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_118_matmul_readvariableop_resource4while_lstm_cell_118_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2X
*while/lstm_cell_118/BiasAdd/ReadVariableOp*while/lstm_cell_118/BiasAdd/ReadVariableOp2V
)while/lstm_cell_118/MatMul/ReadVariableOp)while/lstm_cell_118/MatMul/ReadVariableOp2Z
+while/lstm_cell_118/MatMul_1/ReadVariableOp+while/lstm_cell_118/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?	
?
.__inference_sequential_59_layer_call_fn_668623
lstm_118_input
unknown:	?
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:	?
	unknown_6:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_118_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_59_layer_call_and_return_conditional_losses_668583p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
,
_output_shapes
:??????????
(
_user_specified_namelstm_118_input
?8
?
while_body_669705
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_118_matmul_readvariableop_resource_0:	?H
6while_lstm_cell_118_matmul_1_readvariableop_resource_0:C
5while_lstm_cell_118_biasadd_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_118_matmul_readvariableop_resource:	?F
4while_lstm_cell_118_matmul_1_readvariableop_resource:A
3while_lstm_cell_118_biasadd_readvariableop_resource:??*while/lstm_cell_118/BiasAdd/ReadVariableOp?)while/lstm_cell_118/MatMul/ReadVariableOp?+while/lstm_cell_118/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
)while/lstm_cell_118/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_118_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_118/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_118/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
+while/lstm_cell_118/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_118_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0?
while/lstm_cell_118/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_118/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
while/lstm_cell_118/addAddV2$while/lstm_cell_118/MatMul:product:0&while/lstm_cell_118/MatMul_1:product:0*
T0*'
_output_shapes
:??????????
*while/lstm_cell_118/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_118_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0?
while/lstm_cell_118/BiasAddBiasAddwhile/lstm_cell_118/add:z:02while/lstm_cell_118/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????e
#while/lstm_cell_118/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_118/splitSplit,while/lstm_cell_118/split/split_dim:output:0$while/lstm_cell_118/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split|
while/lstm_cell_118/SigmoidSigmoid"while/lstm_cell_118/split:output:0*
T0*'
_output_shapes
:?????????~
while/lstm_cell_118/Sigmoid_1Sigmoid"while/lstm_cell_118/split:output:1*
T0*'
_output_shapes
:??????????
while/lstm_cell_118/mulMul!while/lstm_cell_118/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????v
while/lstm_cell_118/ReluRelu"while/lstm_cell_118/split:output:2*
T0*'
_output_shapes
:??????????
while/lstm_cell_118/mul_1Mulwhile/lstm_cell_118/Sigmoid:y:0&while/lstm_cell_118/Relu:activations:0*
T0*'
_output_shapes
:??????????
while/lstm_cell_118/add_1AddV2while/lstm_cell_118/mul:z:0while/lstm_cell_118/mul_1:z:0*
T0*'
_output_shapes
:?????????~
while/lstm_cell_118/Sigmoid_2Sigmoid"while/lstm_cell_118/split:output:3*
T0*'
_output_shapes
:?????????s
while/lstm_cell_118/Relu_1Reluwhile/lstm_cell_118/add_1:z:0*
T0*'
_output_shapes
:??????????
while/lstm_cell_118/mul_2Mul!while/lstm_cell_118/Sigmoid_2:y:0(while/lstm_cell_118/Relu_1:activations:0*
T0*'
_output_shapes
:??????????
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_118/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :???z
while/Identity_4Identitywhile/lstm_cell_118/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????z
while/Identity_5Identitywhile/lstm_cell_118/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:??????????

while/NoOpNoOp+^while/lstm_cell_118/BiasAdd/ReadVariableOp*^while/lstm_cell_118/MatMul/ReadVariableOp,^while/lstm_cell_118/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_118_biasadd_readvariableop_resource5while_lstm_cell_118_biasadd_readvariableop_resource_0"n
4while_lstm_cell_118_matmul_1_readvariableop_resource6while_lstm_cell_118_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_118_matmul_readvariableop_resource4while_lstm_cell_118_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2X
*while/lstm_cell_118/BiasAdd/ReadVariableOp*while/lstm_cell_118/BiasAdd/ReadVariableOp2V
)while/lstm_cell_118/MatMul/ReadVariableOp)while/lstm_cell_118/MatMul/ReadVariableOp2Z
+while/lstm_cell_118/MatMul_1/ReadVariableOp+while/lstm_cell_118/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?J
?
D__inference_lstm_119_layer_call_and_return_conditional_losses_670405

inputs>
,lstm_cell_119_matmul_readvariableop_resource:@
.lstm_cell_119_matmul_1_readvariableop_resource:;
-lstm_cell_119_biasadd_readvariableop_resource:
identity??$lstm_cell_119/BiasAdd/ReadVariableOp?#lstm_cell_119/MatMul/ReadVariableOp?%lstm_cell_119/MatMul_1/ReadVariableOp?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
#lstm_cell_119/MatMul/ReadVariableOpReadVariableOp,lstm_cell_119_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
lstm_cell_119/MatMulMatMulstrided_slice_2:output:0+lstm_cell_119/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
%lstm_cell_119/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_119_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0?
lstm_cell_119/MatMul_1MatMulzeros:output:0-lstm_cell_119/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
lstm_cell_119/addAddV2lstm_cell_119/MatMul:product:0 lstm_cell_119/MatMul_1:product:0*
T0*'
_output_shapes
:??????????
$lstm_cell_119/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_119_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
lstm_cell_119/BiasAddBiasAddlstm_cell_119/add:z:0,lstm_cell_119/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
lstm_cell_119/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_119/splitSplit&lstm_cell_119/split/split_dim:output:0lstm_cell_119/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_splitp
lstm_cell_119/SigmoidSigmoidlstm_cell_119/split:output:0*
T0*'
_output_shapes
:?????????r
lstm_cell_119/Sigmoid_1Sigmoidlstm_cell_119/split:output:1*
T0*'
_output_shapes
:?????????y
lstm_cell_119/mulMullstm_cell_119/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????j
lstm_cell_119/ReluRelulstm_cell_119/split:output:2*
T0*'
_output_shapes
:??????????
lstm_cell_119/mul_1Mullstm_cell_119/Sigmoid:y:0 lstm_cell_119/Relu:activations:0*
T0*'
_output_shapes
:?????????~
lstm_cell_119/add_1AddV2lstm_cell_119/mul:z:0lstm_cell_119/mul_1:z:0*
T0*'
_output_shapes
:?????????r
lstm_cell_119/Sigmoid_2Sigmoidlstm_cell_119/split:output:3*
T0*'
_output_shapes
:?????????g
lstm_cell_119/Relu_1Relulstm_cell_119/add_1:z:0*
T0*'
_output_shapes
:??????????
lstm_cell_119/mul_2Mullstm_cell_119/Sigmoid_2:y:0"lstm_cell_119/Relu_1:activations:0*
T0*'
_output_shapes
:?????????n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_119_matmul_readvariableop_resource.lstm_cell_119_matmul_1_readvariableop_resource-lstm_cell_119_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_670321*
condR
while_cond_670320*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp%^lstm_cell_119/BiasAdd/ReadVariableOp$^lstm_cell_119/MatMul/ReadVariableOp&^lstm_cell_119/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_119/BiasAdd/ReadVariableOp$lstm_cell_119/BiasAdd/ReadVariableOp2J
#lstm_cell_119/MatMul/ReadVariableOp#lstm_cell_119/MatMul/ReadVariableOp2N
%lstm_cell_119/MatMul_1/ReadVariableOp%lstm_cell_119/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
D__inference_lstm_118_layer_call_and_return_conditional_losses_669789

inputs?
,lstm_cell_118_matmul_readvariableop_resource:	?@
.lstm_cell_118_matmul_1_readvariableop_resource:;
-lstm_cell_118_biasadd_readvariableop_resource:
identity??$lstm_cell_118/BiasAdd/ReadVariableOp?#lstm_cell_118/MatMul/ReadVariableOp?%lstm_cell_118/MatMul_1/ReadVariableOp?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
#lstm_cell_118/MatMul/ReadVariableOpReadVariableOp,lstm_cell_118_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_118/MatMulMatMulstrided_slice_2:output:0+lstm_cell_118/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
%lstm_cell_118/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_118_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0?
lstm_cell_118/MatMul_1MatMulzeros:output:0-lstm_cell_118/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
lstm_cell_118/addAddV2lstm_cell_118/MatMul:product:0 lstm_cell_118/MatMul_1:product:0*
T0*'
_output_shapes
:??????????
$lstm_cell_118/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_118_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
lstm_cell_118/BiasAddBiasAddlstm_cell_118/add:z:0,lstm_cell_118/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
lstm_cell_118/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_118/splitSplit&lstm_cell_118/split/split_dim:output:0lstm_cell_118/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_splitp
lstm_cell_118/SigmoidSigmoidlstm_cell_118/split:output:0*
T0*'
_output_shapes
:?????????r
lstm_cell_118/Sigmoid_1Sigmoidlstm_cell_118/split:output:1*
T0*'
_output_shapes
:?????????y
lstm_cell_118/mulMullstm_cell_118/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????j
lstm_cell_118/ReluRelulstm_cell_118/split:output:2*
T0*'
_output_shapes
:??????????
lstm_cell_118/mul_1Mullstm_cell_118/Sigmoid:y:0 lstm_cell_118/Relu:activations:0*
T0*'
_output_shapes
:?????????~
lstm_cell_118/add_1AddV2lstm_cell_118/mul:z:0lstm_cell_118/mul_1:z:0*
T0*'
_output_shapes
:?????????r
lstm_cell_118/Sigmoid_2Sigmoidlstm_cell_118/split:output:3*
T0*'
_output_shapes
:?????????g
lstm_cell_118/Relu_1Relulstm_cell_118/add_1:z:0*
T0*'
_output_shapes
:??????????
lstm_cell_118/mul_2Mullstm_cell_118/Sigmoid_2:y:0"lstm_cell_118/Relu_1:activations:0*
T0*'
_output_shapes
:?????????n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_118_matmul_readvariableop_resource.lstm_cell_118_matmul_1_readvariableop_resource-lstm_cell_118_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_669705*
condR
while_cond_669704*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp%^lstm_cell_118/BiasAdd/ReadVariableOp$^lstm_cell_118/MatMul/ReadVariableOp&^lstm_cell_118/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 2L
$lstm_cell_118/BiasAdd/ReadVariableOp$lstm_cell_118/BiasAdd/ReadVariableOp2J
#lstm_cell_118/MatMul/ReadVariableOp#lstm_cell_118/MatMul/ReadVariableOp2N
%lstm_cell_118/MatMul_1/ReadVariableOp%lstm_cell_118/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?8
?
while_body_668069
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_119_matmul_readvariableop_resource_0:H
6while_lstm_cell_119_matmul_1_readvariableop_resource_0:C
5while_lstm_cell_119_biasadd_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_119_matmul_readvariableop_resource:F
4while_lstm_cell_119_matmul_1_readvariableop_resource:A
3while_lstm_cell_119_biasadd_readvariableop_resource:??*while/lstm_cell_119/BiasAdd/ReadVariableOp?)while/lstm_cell_119/MatMul/ReadVariableOp?+while/lstm_cell_119/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_119/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_119_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0?
while/lstm_cell_119/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_119/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
+while/lstm_cell_119/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_119_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0?
while/lstm_cell_119/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_119/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
while/lstm_cell_119/addAddV2$while/lstm_cell_119/MatMul:product:0&while/lstm_cell_119/MatMul_1:product:0*
T0*'
_output_shapes
:??????????
*while/lstm_cell_119/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_119_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0?
while/lstm_cell_119/BiasAddBiasAddwhile/lstm_cell_119/add:z:02while/lstm_cell_119/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????e
#while/lstm_cell_119/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_119/splitSplit,while/lstm_cell_119/split/split_dim:output:0$while/lstm_cell_119/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split|
while/lstm_cell_119/SigmoidSigmoid"while/lstm_cell_119/split:output:0*
T0*'
_output_shapes
:?????????~
while/lstm_cell_119/Sigmoid_1Sigmoid"while/lstm_cell_119/split:output:1*
T0*'
_output_shapes
:??????????
while/lstm_cell_119/mulMul!while/lstm_cell_119/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????v
while/lstm_cell_119/ReluRelu"while/lstm_cell_119/split:output:2*
T0*'
_output_shapes
:??????????
while/lstm_cell_119/mul_1Mulwhile/lstm_cell_119/Sigmoid:y:0&while/lstm_cell_119/Relu:activations:0*
T0*'
_output_shapes
:??????????
while/lstm_cell_119/add_1AddV2while/lstm_cell_119/mul:z:0while/lstm_cell_119/mul_1:z:0*
T0*'
_output_shapes
:?????????~
while/lstm_cell_119/Sigmoid_2Sigmoid"while/lstm_cell_119/split:output:3*
T0*'
_output_shapes
:?????????s
while/lstm_cell_119/Relu_1Reluwhile/lstm_cell_119/add_1:z:0*
T0*'
_output_shapes
:??????????
while/lstm_cell_119/mul_2Mul!while/lstm_cell_119/Sigmoid_2:y:0(while/lstm_cell_119/Relu_1:activations:0*
T0*'
_output_shapes
:??????????
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_119/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :???z
while/Identity_4Identitywhile/lstm_cell_119/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????z
while/Identity_5Identitywhile/lstm_cell_119/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:??????????

while/NoOpNoOp+^while/lstm_cell_119/BiasAdd/ReadVariableOp*^while/lstm_cell_119/MatMul/ReadVariableOp,^while/lstm_cell_119/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_119_biasadd_readvariableop_resource5while_lstm_cell_119_biasadd_readvariableop_resource_0"n
4while_lstm_cell_119_matmul_1_readvariableop_resource6while_lstm_cell_119_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_119_matmul_readvariableop_resource4while_lstm_cell_119_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2X
*while/lstm_cell_119/BiasAdd/ReadVariableOp*while/lstm_cell_119/BiasAdd/ReadVariableOp2V
)while/lstm_cell_119/MatMul/ReadVariableOp)while/lstm_cell_119/MatMul/ReadVariableOp2Z
+while/lstm_cell_119/MatMul_1/ReadVariableOp+while/lstm_cell_119/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?J
?
D__inference_lstm_118_layer_call_and_return_conditional_losses_668528

inputs?
,lstm_cell_118_matmul_readvariableop_resource:	?@
.lstm_cell_118_matmul_1_readvariableop_resource:;
-lstm_cell_118_biasadd_readvariableop_resource:
identity??$lstm_cell_118/BiasAdd/ReadVariableOp?#lstm_cell_118/MatMul/ReadVariableOp?%lstm_cell_118/MatMul_1/ReadVariableOp?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
#lstm_cell_118/MatMul/ReadVariableOpReadVariableOp,lstm_cell_118_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_118/MatMulMatMulstrided_slice_2:output:0+lstm_cell_118/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
%lstm_cell_118/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_118_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0?
lstm_cell_118/MatMul_1MatMulzeros:output:0-lstm_cell_118/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
lstm_cell_118/addAddV2lstm_cell_118/MatMul:product:0 lstm_cell_118/MatMul_1:product:0*
T0*'
_output_shapes
:??????????
$lstm_cell_118/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_118_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
lstm_cell_118/BiasAddBiasAddlstm_cell_118/add:z:0,lstm_cell_118/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
lstm_cell_118/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_118/splitSplit&lstm_cell_118/split/split_dim:output:0lstm_cell_118/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_splitp
lstm_cell_118/SigmoidSigmoidlstm_cell_118/split:output:0*
T0*'
_output_shapes
:?????????r
lstm_cell_118/Sigmoid_1Sigmoidlstm_cell_118/split:output:1*
T0*'
_output_shapes
:?????????y
lstm_cell_118/mulMullstm_cell_118/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????j
lstm_cell_118/ReluRelulstm_cell_118/split:output:2*
T0*'
_output_shapes
:??????????
lstm_cell_118/mul_1Mullstm_cell_118/Sigmoid:y:0 lstm_cell_118/Relu:activations:0*
T0*'
_output_shapes
:?????????~
lstm_cell_118/add_1AddV2lstm_cell_118/mul:z:0lstm_cell_118/mul_1:z:0*
T0*'
_output_shapes
:?????????r
lstm_cell_118/Sigmoid_2Sigmoidlstm_cell_118/split:output:3*
T0*'
_output_shapes
:?????????g
lstm_cell_118/Relu_1Relulstm_cell_118/add_1:z:0*
T0*'
_output_shapes
:??????????
lstm_cell_118/mul_2Mullstm_cell_118/Sigmoid_2:y:0"lstm_cell_118/Relu_1:activations:0*
T0*'
_output_shapes
:?????????n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_118_matmul_readvariableop_resource.lstm_cell_118_matmul_1_readvariableop_resource-lstm_cell_118_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_668444*
condR
while_cond_668443*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp%^lstm_cell_118/BiasAdd/ReadVariableOp$^lstm_cell_118/MatMul/ReadVariableOp&^lstm_cell_118/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 2L
$lstm_cell_118/BiasAdd/ReadVariableOp$lstm_cell_118/BiasAdd/ReadVariableOp2J
#lstm_cell_118/MatMul/ReadVariableOp#lstm_cell_118/MatMul/ReadVariableOp2N
%lstm_cell_118/MatMul_1/ReadVariableOp%lstm_cell_118/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
while_cond_668278
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_668278___redundant_placeholder04
0while_while_cond_668278___redundant_placeholder14
0while_while_cond_668278___redundant_placeholder24
0while_while_cond_668278___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?
?
I__inference_lstm_cell_119_layer_call_and_return_conditional_losses_667571

inputs

states
states_10
matmul_readvariableop_resource:2
 matmul_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????N
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????:?????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_namestates:OK
'
_output_shapes
:?????????
 
_user_specified_namestates
?#
?
while_body_667776
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_119_667800_0:.
while_lstm_cell_119_667802_0:*
while_lstm_cell_119_667804_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_119_667800:,
while_lstm_cell_119_667802:(
while_lstm_cell_119_667804:??+while/lstm_cell_119/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_119/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_119_667800_0while_lstm_cell_119_667802_0while_lstm_cell_119_667804_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????:?????????:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_lstm_cell_119_layer_call_and_return_conditional_losses_667717?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_119/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :????
while/Identity_4Identity4while/lstm_cell_119/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:??????????
while/Identity_5Identity4while/lstm_cell_119/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????z

while/NoOpNoOp,^while/lstm_cell_119/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_119_667800while_lstm_cell_119_667800_0":
while_lstm_cell_119_667802while_lstm_cell_119_667802_0":
while_lstm_cell_119_667804while_lstm_cell_119_667804_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2Z
+while/lstm_cell_119/StatefulPartitionedCall+while/lstm_cell_119/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_667918
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_667918___redundant_placeholder04
0while_while_cond_667918___redundant_placeholder14
0while_while_cond_667918___redundant_placeholder24
0while_while_cond_667918___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_669847
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_669847___redundant_placeholder04
0while_while_cond_669847___redundant_placeholder14
0while_while_cond_669847___redundant_placeholder24
0while_while_cond_669847___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?
?
)__inference_lstm_119_layer_call_fn_669954
inputs_0
unknown:
	unknown_0:
	unknown_1:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_119_layer_call_and_return_conditional_losses_667845o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
)__inference_lstm_118_layer_call_fn_669338
inputs_0
unknown:	?
	unknown_0:
	unknown_1:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_118_layer_call_and_return_conditional_losses_667495|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?	
?
.__inference_sequential_59_layer_call_fn_668696

inputs
unknown:	?
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:	?
	unknown_6:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_59_layer_call_and_return_conditional_losses_668178p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
"__inference__traced_restore_670994
file_prefix3
 assignvariableop_dense_59_kernel:	?/
 assignvariableop_1_dense_59_bias:	?&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_118_lstm_cell_118_kernel:	?L
:assignvariableop_8_lstm_118_lstm_cell_118_recurrent_kernel:<
.assignvariableop_9_lstm_118_lstm_cell_118_bias:C
1assignvariableop_10_lstm_119_lstm_cell_119_kernel:M
;assignvariableop_11_lstm_119_lstm_cell_119_recurrent_kernel:=
/assignvariableop_12_lstm_119_lstm_cell_119_bias:#
assignvariableop_13_total: #
assignvariableop_14_count: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: =
*assignvariableop_17_adam_dense_59_kernel_m:	?7
(assignvariableop_18_adam_dense_59_bias_m:	?K
8assignvariableop_19_adam_lstm_118_lstm_cell_118_kernel_m:	?T
Bassignvariableop_20_adam_lstm_118_lstm_cell_118_recurrent_kernel_m:D
6assignvariableop_21_adam_lstm_118_lstm_cell_118_bias_m:J
8assignvariableop_22_adam_lstm_119_lstm_cell_119_kernel_m:T
Bassignvariableop_23_adam_lstm_119_lstm_cell_119_recurrent_kernel_m:D
6assignvariableop_24_adam_lstm_119_lstm_cell_119_bias_m:=
*assignvariableop_25_adam_dense_59_kernel_v:	?7
(assignvariableop_26_adam_dense_59_bias_v:	?K
8assignvariableop_27_adam_lstm_118_lstm_cell_118_kernel_v:	?T
Bassignvariableop_28_adam_lstm_118_lstm_cell_118_recurrent_kernel_v:D
6assignvariableop_29_adam_lstm_118_lstm_cell_118_bias_v:J
8assignvariableop_30_adam_lstm_119_lstm_cell_119_kernel_v:T
Bassignvariableop_31_adam_lstm_119_lstm_cell_119_recurrent_kernel_v:D
6assignvariableop_32_adam_lstm_119_lstm_cell_119_bias_v:
identity_34??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*?
value?B?"B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::*0
dtypes&
$2"	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp assignvariableop_dense_59_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_59_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_118_lstm_cell_118_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_118_lstm_cell_118_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_118_lstm_cell_118_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_119_lstm_cell_119_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_119_lstm_cell_119_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_119_lstm_cell_119_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp*assignvariableop_17_adam_dense_59_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp(assignvariableop_18_adam_dense_59_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp8assignvariableop_19_adam_lstm_118_lstm_cell_118_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOpBassignvariableop_20_adam_lstm_118_lstm_cell_118_recurrent_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp6assignvariableop_21_adam_lstm_118_lstm_cell_118_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp8assignvariableop_22_adam_lstm_119_lstm_cell_119_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOpBassignvariableop_23_adam_lstm_119_lstm_cell_119_recurrent_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp6assignvariableop_24_adam_lstm_119_lstm_cell_119_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_dense_59_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_dense_59_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp8assignvariableop_27_adam_lstm_118_lstm_cell_118_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOpBassignvariableop_28_adam_lstm_118_lstm_cell_118_recurrent_kernel_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp6assignvariableop_29_adam_lstm_118_lstm_cell_118_bias_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp8assignvariableop_30_adam_lstm_119_lstm_cell_119_kernel_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOpBassignvariableop_31_adam_lstm_119_lstm_cell_119_recurrent_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOp6assignvariableop_32_adam_lstm_119_lstm_cell_119_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_33Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_34IdentityIdentity_33:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_34Identity_34:output:0*W
_input_shapesF
D: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
while_cond_668443
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_668443___redundant_placeholder04
0while_while_cond_668443___redundant_placeholder14
0while_while_cond_668443___redundant_placeholder24
0while_while_cond_668443___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?	
?
.__inference_sequential_59_layer_call_fn_668197
lstm_118_input
unknown:	?
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:	?
	unknown_6:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_118_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_59_layer_call_and_return_conditional_losses_668178p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
,
_output_shapes
:??????????
(
_user_specified_namelstm_118_input
?
?
while_cond_669704
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_669704___redundant_placeholder04
0while_while_cond_669704___redundant_placeholder14
0while_while_cond_669704___redundant_placeholder24
0while_while_cond_669704___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?8
?
while_body_670178
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_119_matmul_readvariableop_resource_0:H
6while_lstm_cell_119_matmul_1_readvariableop_resource_0:C
5while_lstm_cell_119_biasadd_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_119_matmul_readvariableop_resource:F
4while_lstm_cell_119_matmul_1_readvariableop_resource:A
3while_lstm_cell_119_biasadd_readvariableop_resource:??*while/lstm_cell_119/BiasAdd/ReadVariableOp?)while/lstm_cell_119/MatMul/ReadVariableOp?+while/lstm_cell_119/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_119/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_119_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0?
while/lstm_cell_119/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_119/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
+while/lstm_cell_119/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_119_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0?
while/lstm_cell_119/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_119/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
while/lstm_cell_119/addAddV2$while/lstm_cell_119/MatMul:product:0&while/lstm_cell_119/MatMul_1:product:0*
T0*'
_output_shapes
:??????????
*while/lstm_cell_119/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_119_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0?
while/lstm_cell_119/BiasAddBiasAddwhile/lstm_cell_119/add:z:02while/lstm_cell_119/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????e
#while/lstm_cell_119/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_119/splitSplit,while/lstm_cell_119/split/split_dim:output:0$while/lstm_cell_119/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split|
while/lstm_cell_119/SigmoidSigmoid"while/lstm_cell_119/split:output:0*
T0*'
_output_shapes
:?????????~
while/lstm_cell_119/Sigmoid_1Sigmoid"while/lstm_cell_119/split:output:1*
T0*'
_output_shapes
:??????????
while/lstm_cell_119/mulMul!while/lstm_cell_119/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????v
while/lstm_cell_119/ReluRelu"while/lstm_cell_119/split:output:2*
T0*'
_output_shapes
:??????????
while/lstm_cell_119/mul_1Mulwhile/lstm_cell_119/Sigmoid:y:0&while/lstm_cell_119/Relu:activations:0*
T0*'
_output_shapes
:??????????
while/lstm_cell_119/add_1AddV2while/lstm_cell_119/mul:z:0while/lstm_cell_119/mul_1:z:0*
T0*'
_output_shapes
:?????????~
while/lstm_cell_119/Sigmoid_2Sigmoid"while/lstm_cell_119/split:output:3*
T0*'
_output_shapes
:?????????s
while/lstm_cell_119/Relu_1Reluwhile/lstm_cell_119/add_1:z:0*
T0*'
_output_shapes
:??????????
while/lstm_cell_119/mul_2Mul!while/lstm_cell_119/Sigmoid_2:y:0(while/lstm_cell_119/Relu_1:activations:0*
T0*'
_output_shapes
:??????????
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_119/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :???z
while/Identity_4Identitywhile/lstm_cell_119/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????z
while/Identity_5Identitywhile/lstm_cell_119/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:??????????

while/NoOpNoOp+^while/lstm_cell_119/BiasAdd/ReadVariableOp*^while/lstm_cell_119/MatMul/ReadVariableOp,^while/lstm_cell_119/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_119_biasadd_readvariableop_resource5while_lstm_cell_119_biasadd_readvariableop_resource_0"n
4while_lstm_cell_119_matmul_1_readvariableop_resource6while_lstm_cell_119_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_119_matmul_readvariableop_resource4while_lstm_cell_119_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2X
*while/lstm_cell_119/BiasAdd/ReadVariableOp*while/lstm_cell_119/BiasAdd/ReadVariableOp2V
)while/lstm_cell_119/MatMul/ReadVariableOp)while/lstm_cell_119/MatMul/ReadVariableOp2Z
+while/lstm_cell_119/MatMul_1/ReadVariableOp+while/lstm_cell_119/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?I
?
__inference__traced_save_670885
file_prefix.
*savev2_dense_59_kernel_read_readvariableop,
(savev2_dense_59_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_118_lstm_cell_118_kernel_read_readvariableopF
Bsavev2_lstm_118_lstm_cell_118_recurrent_kernel_read_readvariableop:
6savev2_lstm_118_lstm_cell_118_bias_read_readvariableop<
8savev2_lstm_119_lstm_cell_119_kernel_read_readvariableopF
Bsavev2_lstm_119_lstm_cell_119_recurrent_kernel_read_readvariableop:
6savev2_lstm_119_lstm_cell_119_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_adam_dense_59_kernel_m_read_readvariableop3
/savev2_adam_dense_59_bias_m_read_readvariableopC
?savev2_adam_lstm_118_lstm_cell_118_kernel_m_read_readvariableopM
Isavev2_adam_lstm_118_lstm_cell_118_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_118_lstm_cell_118_bias_m_read_readvariableopC
?savev2_adam_lstm_119_lstm_cell_119_kernel_m_read_readvariableopM
Isavev2_adam_lstm_119_lstm_cell_119_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_119_lstm_cell_119_bias_m_read_readvariableop5
1savev2_adam_dense_59_kernel_v_read_readvariableop3
/savev2_adam_dense_59_bias_v_read_readvariableopC
?savev2_adam_lstm_118_lstm_cell_118_kernel_v_read_readvariableopM
Isavev2_adam_lstm_118_lstm_cell_118_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_118_lstm_cell_118_bias_v_read_readvariableopC
?savev2_adam_lstm_119_lstm_cell_119_kernel_v_read_readvariableopM
Isavev2_adam_lstm_119_lstm_cell_119_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_119_lstm_cell_119_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*?
value?B?"B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_59_kernel_read_readvariableop(savev2_dense_59_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_118_lstm_cell_118_kernel_read_readvariableopBsavev2_lstm_118_lstm_cell_118_recurrent_kernel_read_readvariableop6savev2_lstm_118_lstm_cell_118_bias_read_readvariableop8savev2_lstm_119_lstm_cell_119_kernel_read_readvariableopBsavev2_lstm_119_lstm_cell_119_recurrent_kernel_read_readvariableop6savev2_lstm_119_lstm_cell_119_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_dense_59_kernel_m_read_readvariableop/savev2_adam_dense_59_bias_m_read_readvariableop?savev2_adam_lstm_118_lstm_cell_118_kernel_m_read_readvariableopIsavev2_adam_lstm_118_lstm_cell_118_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_118_lstm_cell_118_bias_m_read_readvariableop?savev2_adam_lstm_119_lstm_cell_119_kernel_m_read_readvariableopIsavev2_adam_lstm_119_lstm_cell_119_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_119_lstm_cell_119_bias_m_read_readvariableop1savev2_adam_dense_59_kernel_v_read_readvariableop/savev2_adam_dense_59_bias_v_read_readvariableop?savev2_adam_lstm_118_lstm_cell_118_kernel_v_read_readvariableopIsavev2_adam_lstm_118_lstm_cell_118_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_118_lstm_cell_118_bias_v_read_readvariableop?savev2_adam_lstm_119_lstm_cell_119_kernel_v_read_readvariableopIsavev2_adam_lstm_119_lstm_cell_119_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_119_lstm_cell_119_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *0
dtypes&
$2"	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes?
?: :	?:?: : : : : :	?:::::: : : : :	?:?:	?::::::	?:?:	?:::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	?:!

_output_shapes	
:?:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:$	 

_output_shapes

:: 


_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:!

_output_shapes	
:?:%!

_output_shapes
:	?:$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

:: 

_output_shapes
::%!

_output_shapes
:	?:!

_output_shapes	
:?:%!

_output_shapes
:	?:$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

::$  

_output_shapes

:: !

_output_shapes
::"

_output_shapes
: 
?
?
I__inference_lstm_cell_118_layer_call_and_return_conditional_losses_670665

inputs
states_0
states_11
matmul_readvariableop_resource:	?2
 matmul_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????N
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:??????????:?????????:?????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/1
?K
?
D__inference_lstm_119_layer_call_and_return_conditional_losses_670119
inputs_0>
,lstm_cell_119_matmul_readvariableop_resource:@
.lstm_cell_119_matmul_1_readvariableop_resource:;
-lstm_cell_119_biasadd_readvariableop_resource:
identity??$lstm_cell_119/BiasAdd/ReadVariableOp?#lstm_cell_119/MatMul/ReadVariableOp?%lstm_cell_119/MatMul_1/ReadVariableOp?while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
#lstm_cell_119/MatMul/ReadVariableOpReadVariableOp,lstm_cell_119_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
lstm_cell_119/MatMulMatMulstrided_slice_2:output:0+lstm_cell_119/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
%lstm_cell_119/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_119_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0?
lstm_cell_119/MatMul_1MatMulzeros:output:0-lstm_cell_119/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
lstm_cell_119/addAddV2lstm_cell_119/MatMul:product:0 lstm_cell_119/MatMul_1:product:0*
T0*'
_output_shapes
:??????????
$lstm_cell_119/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_119_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
lstm_cell_119/BiasAddBiasAddlstm_cell_119/add:z:0,lstm_cell_119/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
lstm_cell_119/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_119/splitSplit&lstm_cell_119/split/split_dim:output:0lstm_cell_119/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_splitp
lstm_cell_119/SigmoidSigmoidlstm_cell_119/split:output:0*
T0*'
_output_shapes
:?????????r
lstm_cell_119/Sigmoid_1Sigmoidlstm_cell_119/split:output:1*
T0*'
_output_shapes
:?????????y
lstm_cell_119/mulMullstm_cell_119/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????j
lstm_cell_119/ReluRelulstm_cell_119/split:output:2*
T0*'
_output_shapes
:??????????
lstm_cell_119/mul_1Mullstm_cell_119/Sigmoid:y:0 lstm_cell_119/Relu:activations:0*
T0*'
_output_shapes
:?????????~
lstm_cell_119/add_1AddV2lstm_cell_119/mul:z:0lstm_cell_119/mul_1:z:0*
T0*'
_output_shapes
:?????????r
lstm_cell_119/Sigmoid_2Sigmoidlstm_cell_119/split:output:3*
T0*'
_output_shapes
:?????????g
lstm_cell_119/Relu_1Relulstm_cell_119/add_1:z:0*
T0*'
_output_shapes
:??????????
lstm_cell_119/mul_2Mullstm_cell_119/Sigmoid_2:y:0"lstm_cell_119/Relu_1:activations:0*
T0*'
_output_shapes
:?????????n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_119_matmul_readvariableop_resource.lstm_cell_119_matmul_1_readvariableop_resource-lstm_cell_119_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_670035*
condR
while_cond_670034*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp%^lstm_cell_119/BiasAdd/ReadVariableOp$^lstm_cell_119/MatMul/ReadVariableOp&^lstm_cell_119/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_119/BiasAdd/ReadVariableOp$lstm_cell_119/BiasAdd/ReadVariableOp2J
#lstm_cell_119/MatMul/ReadVariableOp#lstm_cell_119/MatMul/ReadVariableOp2N
%lstm_cell_119/MatMul_1/ReadVariableOp%lstm_cell_119/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?J
?
D__inference_lstm_119_layer_call_and_return_conditional_losses_668363

inputs>
,lstm_cell_119_matmul_readvariableop_resource:@
.lstm_cell_119_matmul_1_readvariableop_resource:;
-lstm_cell_119_biasadd_readvariableop_resource:
identity??$lstm_cell_119/BiasAdd/ReadVariableOp?#lstm_cell_119/MatMul/ReadVariableOp?%lstm_cell_119/MatMul_1/ReadVariableOp?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
#lstm_cell_119/MatMul/ReadVariableOpReadVariableOp,lstm_cell_119_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
lstm_cell_119/MatMulMatMulstrided_slice_2:output:0+lstm_cell_119/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
%lstm_cell_119/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_119_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0?
lstm_cell_119/MatMul_1MatMulzeros:output:0-lstm_cell_119/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
lstm_cell_119/addAddV2lstm_cell_119/MatMul:product:0 lstm_cell_119/MatMul_1:product:0*
T0*'
_output_shapes
:??????????
$lstm_cell_119/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_119_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
lstm_cell_119/BiasAddBiasAddlstm_cell_119/add:z:0,lstm_cell_119/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
lstm_cell_119/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_119/splitSplit&lstm_cell_119/split/split_dim:output:0lstm_cell_119/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_splitp
lstm_cell_119/SigmoidSigmoidlstm_cell_119/split:output:0*
T0*'
_output_shapes
:?????????r
lstm_cell_119/Sigmoid_1Sigmoidlstm_cell_119/split:output:1*
T0*'
_output_shapes
:?????????y
lstm_cell_119/mulMullstm_cell_119/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????j
lstm_cell_119/ReluRelulstm_cell_119/split:output:2*
T0*'
_output_shapes
:??????????
lstm_cell_119/mul_1Mullstm_cell_119/Sigmoid:y:0 lstm_cell_119/Relu:activations:0*
T0*'
_output_shapes
:?????????~
lstm_cell_119/add_1AddV2lstm_cell_119/mul:z:0lstm_cell_119/mul_1:z:0*
T0*'
_output_shapes
:?????????r
lstm_cell_119/Sigmoid_2Sigmoidlstm_cell_119/split:output:3*
T0*'
_output_shapes
:?????????g
lstm_cell_119/Relu_1Relulstm_cell_119/add_1:z:0*
T0*'
_output_shapes
:??????????
lstm_cell_119/mul_2Mullstm_cell_119/Sigmoid_2:y:0"lstm_cell_119/Relu_1:activations:0*
T0*'
_output_shapes
:?????????n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_119_matmul_readvariableop_resource.lstm_cell_119_matmul_1_readvariableop_resource-lstm_cell_119_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_668279*
condR
while_cond_668278*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp%^lstm_cell_119/BiasAdd/ReadVariableOp$^lstm_cell_119/MatMul/ReadVariableOp&^lstm_cell_119/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_119/BiasAdd/ReadVariableOp$lstm_cell_119/BiasAdd/ReadVariableOp2J
#lstm_cell_119/MatMul/ReadVariableOp#lstm_cell_119/MatMul/ReadVariableOp2N
%lstm_cell_119/MatMul_1/ReadVariableOp%lstm_cell_119/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_667425
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_667425___redundant_placeholder04
0while_while_cond_667425___redundant_placeholder14
0while_while_cond_667425___redundant_placeholder24
0while_while_cond_667425___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?
?
)__inference_lstm_119_layer_call_fn_669976

inputs
unknown:
	unknown_0:
	unknown_1:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_119_layer_call_and_return_conditional_losses_668363o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?K
?
D__inference_lstm_119_layer_call_and_return_conditional_losses_670262
inputs_0>
,lstm_cell_119_matmul_readvariableop_resource:@
.lstm_cell_119_matmul_1_readvariableop_resource:;
-lstm_cell_119_biasadd_readvariableop_resource:
identity??$lstm_cell_119/BiasAdd/ReadVariableOp?#lstm_cell_119/MatMul/ReadVariableOp?%lstm_cell_119/MatMul_1/ReadVariableOp?while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
#lstm_cell_119/MatMul/ReadVariableOpReadVariableOp,lstm_cell_119_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
lstm_cell_119/MatMulMatMulstrided_slice_2:output:0+lstm_cell_119/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
%lstm_cell_119/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_119_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0?
lstm_cell_119/MatMul_1MatMulzeros:output:0-lstm_cell_119/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
lstm_cell_119/addAddV2lstm_cell_119/MatMul:product:0 lstm_cell_119/MatMul_1:product:0*
T0*'
_output_shapes
:??????????
$lstm_cell_119/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_119_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
lstm_cell_119/BiasAddBiasAddlstm_cell_119/add:z:0,lstm_cell_119/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
lstm_cell_119/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_119/splitSplit&lstm_cell_119/split/split_dim:output:0lstm_cell_119/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_splitp
lstm_cell_119/SigmoidSigmoidlstm_cell_119/split:output:0*
T0*'
_output_shapes
:?????????r
lstm_cell_119/Sigmoid_1Sigmoidlstm_cell_119/split:output:1*
T0*'
_output_shapes
:?????????y
lstm_cell_119/mulMullstm_cell_119/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????j
lstm_cell_119/ReluRelulstm_cell_119/split:output:2*
T0*'
_output_shapes
:??????????
lstm_cell_119/mul_1Mullstm_cell_119/Sigmoid:y:0 lstm_cell_119/Relu:activations:0*
T0*'
_output_shapes
:?????????~
lstm_cell_119/add_1AddV2lstm_cell_119/mul:z:0lstm_cell_119/mul_1:z:0*
T0*'
_output_shapes
:?????????r
lstm_cell_119/Sigmoid_2Sigmoidlstm_cell_119/split:output:3*
T0*'
_output_shapes
:?????????g
lstm_cell_119/Relu_1Relulstm_cell_119/add_1:z:0*
T0*'
_output_shapes
:??????????
lstm_cell_119/mul_2Mullstm_cell_119/Sigmoid_2:y:0"lstm_cell_119/Relu_1:activations:0*
T0*'
_output_shapes
:?????????n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_119_matmul_readvariableop_resource.lstm_cell_119_matmul_1_readvariableop_resource-lstm_cell_119_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_670178*
condR
while_cond_670177*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp%^lstm_cell_119/BiasAdd/ReadVariableOp$^lstm_cell_119/MatMul/ReadVariableOp&^lstm_cell_119/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_119/BiasAdd/ReadVariableOp$lstm_cell_119/BiasAdd/ReadVariableOp2J
#lstm_cell_119/MatMul/ReadVariableOp#lstm_cell_119/MatMul/ReadVariableOp2N
%lstm_cell_119/MatMul_1/ReadVariableOp%lstm_cell_119/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
.__inference_lstm_cell_118_layer_call_fn_670584

inputs
states_0
states_1
unknown:	?
	unknown_0:
	unknown_1:
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????:?????????:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_lstm_cell_118_layer_call_and_return_conditional_losses_667221o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:??????????:?????????:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/1
?
?
)__inference_lstm_119_layer_call_fn_669943
inputs_0
unknown:
	unknown_0:
	unknown_1:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_119_layer_call_and_return_conditional_losses_667654o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
)__inference_lstm_118_layer_call_fn_669349

inputs
unknown:	?
	unknown_0:
	unknown_1:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_118_layer_call_and_return_conditional_losses_668003s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?C
?

lstm_118_while_body_669064.
*lstm_118_while_lstm_118_while_loop_counter4
0lstm_118_while_lstm_118_while_maximum_iterations
lstm_118_while_placeholder 
lstm_118_while_placeholder_1 
lstm_118_while_placeholder_2 
lstm_118_while_placeholder_3-
)lstm_118_while_lstm_118_strided_slice_1_0i
elstm_118_while_tensorarrayv2read_tensorlistgetitem_lstm_118_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_118_while_lstm_cell_118_matmul_readvariableop_resource_0:	?Q
?lstm_118_while_lstm_cell_118_matmul_1_readvariableop_resource_0:L
>lstm_118_while_lstm_cell_118_biasadd_readvariableop_resource_0:
lstm_118_while_identity
lstm_118_while_identity_1
lstm_118_while_identity_2
lstm_118_while_identity_3
lstm_118_while_identity_4
lstm_118_while_identity_5+
'lstm_118_while_lstm_118_strided_slice_1g
clstm_118_while_tensorarrayv2read_tensorlistgetitem_lstm_118_tensorarrayunstack_tensorlistfromtensorN
;lstm_118_while_lstm_cell_118_matmul_readvariableop_resource:	?O
=lstm_118_while_lstm_cell_118_matmul_1_readvariableop_resource:J
<lstm_118_while_lstm_cell_118_biasadd_readvariableop_resource:??3lstm_118/while/lstm_cell_118/BiasAdd/ReadVariableOp?2lstm_118/while/lstm_cell_118/MatMul/ReadVariableOp?4lstm_118/while/lstm_cell_118/MatMul_1/ReadVariableOp?
@lstm_118/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
2lstm_118/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_118_while_tensorarrayv2read_tensorlistgetitem_lstm_118_tensorarrayunstack_tensorlistfromtensor_0lstm_118_while_placeholderIlstm_118/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
2lstm_118/while/lstm_cell_118/MatMul/ReadVariableOpReadVariableOp=lstm_118_while_lstm_cell_118_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_118/while/lstm_cell_118/MatMulMatMul9lstm_118/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_118/while/lstm_cell_118/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
4lstm_118/while/lstm_cell_118/MatMul_1/ReadVariableOpReadVariableOp?lstm_118_while_lstm_cell_118_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0?
%lstm_118/while/lstm_cell_118/MatMul_1MatMullstm_118_while_placeholder_2<lstm_118/while/lstm_cell_118/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 lstm_118/while/lstm_cell_118/addAddV2-lstm_118/while/lstm_cell_118/MatMul:product:0/lstm_118/while/lstm_cell_118/MatMul_1:product:0*
T0*'
_output_shapes
:??????????
3lstm_118/while/lstm_cell_118/BiasAdd/ReadVariableOpReadVariableOp>lstm_118_while_lstm_cell_118_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0?
$lstm_118/while/lstm_cell_118/BiasAddBiasAdd$lstm_118/while/lstm_cell_118/add:z:0;lstm_118/while/lstm_cell_118/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????n
,lstm_118/while/lstm_cell_118/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_118/while/lstm_cell_118/splitSplit5lstm_118/while/lstm_cell_118/split/split_dim:output:0-lstm_118/while/lstm_cell_118/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split?
$lstm_118/while/lstm_cell_118/SigmoidSigmoid+lstm_118/while/lstm_cell_118/split:output:0*
T0*'
_output_shapes
:??????????
&lstm_118/while/lstm_cell_118/Sigmoid_1Sigmoid+lstm_118/while/lstm_cell_118/split:output:1*
T0*'
_output_shapes
:??????????
 lstm_118/while/lstm_cell_118/mulMul*lstm_118/while/lstm_cell_118/Sigmoid_1:y:0lstm_118_while_placeholder_3*
T0*'
_output_shapes
:??????????
!lstm_118/while/lstm_cell_118/ReluRelu+lstm_118/while/lstm_cell_118/split:output:2*
T0*'
_output_shapes
:??????????
"lstm_118/while/lstm_cell_118/mul_1Mul(lstm_118/while/lstm_cell_118/Sigmoid:y:0/lstm_118/while/lstm_cell_118/Relu:activations:0*
T0*'
_output_shapes
:??????????
"lstm_118/while/lstm_cell_118/add_1AddV2$lstm_118/while/lstm_cell_118/mul:z:0&lstm_118/while/lstm_cell_118/mul_1:z:0*
T0*'
_output_shapes
:??????????
&lstm_118/while/lstm_cell_118/Sigmoid_2Sigmoid+lstm_118/while/lstm_cell_118/split:output:3*
T0*'
_output_shapes
:??????????
#lstm_118/while/lstm_cell_118/Relu_1Relu&lstm_118/while/lstm_cell_118/add_1:z:0*
T0*'
_output_shapes
:??????????
"lstm_118/while/lstm_cell_118/mul_2Mul*lstm_118/while/lstm_cell_118/Sigmoid_2:y:01lstm_118/while/lstm_cell_118/Relu_1:activations:0*
T0*'
_output_shapes
:??????????
3lstm_118/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_118_while_placeholder_1lstm_118_while_placeholder&lstm_118/while/lstm_cell_118/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_118/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_118/while/addAddV2lstm_118_while_placeholderlstm_118/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_118/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_118/while/add_1AddV2*lstm_118_while_lstm_118_while_loop_counterlstm_118/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_118/while/IdentityIdentitylstm_118/while/add_1:z:0^lstm_118/while/NoOp*
T0*
_output_shapes
: ?
lstm_118/while/Identity_1Identity0lstm_118_while_lstm_118_while_maximum_iterations^lstm_118/while/NoOp*
T0*
_output_shapes
: t
lstm_118/while/Identity_2Identitylstm_118/while/add:z:0^lstm_118/while/NoOp*
T0*
_output_shapes
: ?
lstm_118/while/Identity_3IdentityClstm_118/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_118/while/NoOp*
T0*
_output_shapes
: :????
lstm_118/while/Identity_4Identity&lstm_118/while/lstm_cell_118/mul_2:z:0^lstm_118/while/NoOp*
T0*'
_output_shapes
:??????????
lstm_118/while/Identity_5Identity&lstm_118/while/lstm_cell_118/add_1:z:0^lstm_118/while/NoOp*
T0*'
_output_shapes
:??????????
lstm_118/while/NoOpNoOp4^lstm_118/while/lstm_cell_118/BiasAdd/ReadVariableOp3^lstm_118/while/lstm_cell_118/MatMul/ReadVariableOp5^lstm_118/while/lstm_cell_118/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_118_while_identity lstm_118/while/Identity:output:0"?
lstm_118_while_identity_1"lstm_118/while/Identity_1:output:0"?
lstm_118_while_identity_2"lstm_118/while/Identity_2:output:0"?
lstm_118_while_identity_3"lstm_118/while/Identity_3:output:0"?
lstm_118_while_identity_4"lstm_118/while/Identity_4:output:0"?
lstm_118_while_identity_5"lstm_118/while/Identity_5:output:0"T
'lstm_118_while_lstm_118_strided_slice_1)lstm_118_while_lstm_118_strided_slice_1_0"~
<lstm_118_while_lstm_cell_118_biasadd_readvariableop_resource>lstm_118_while_lstm_cell_118_biasadd_readvariableop_resource_0"?
=lstm_118_while_lstm_cell_118_matmul_1_readvariableop_resource?lstm_118_while_lstm_cell_118_matmul_1_readvariableop_resource_0"|
;lstm_118_while_lstm_cell_118_matmul_readvariableop_resource=lstm_118_while_lstm_cell_118_matmul_readvariableop_resource_0"?
clstm_118_while_tensorarrayv2read_tensorlistgetitem_lstm_118_tensorarrayunstack_tensorlistfromtensorelstm_118_while_tensorarrayv2read_tensorlistgetitem_lstm_118_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2j
3lstm_118/while/lstm_cell_118/BiasAdd/ReadVariableOp3lstm_118/while/lstm_cell_118/BiasAdd/ReadVariableOp2h
2lstm_118/while/lstm_cell_118/MatMul/ReadVariableOp2lstm_118/while/lstm_cell_118/MatMul/ReadVariableOp2l
4lstm_118/while/lstm_cell_118/MatMul_1/ReadVariableOp4lstm_118/while/lstm_cell_118/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?8
?
D__inference_lstm_119_layer_call_and_return_conditional_losses_667654

inputs&
lstm_cell_119_667572:&
lstm_cell_119_667574:"
lstm_cell_119_667576:
identity??%lstm_cell_119/StatefulPartitionedCall?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
%lstm_cell_119/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_119_667572lstm_cell_119_667574lstm_cell_119_667576*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????:?????????:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_lstm_cell_119_layer_call_and_return_conditional_losses_667571n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_119_667572lstm_cell_119_667574lstm_cell_119_667576*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_667585*
condR
while_cond_667584*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????v
NoOpNoOp&^lstm_cell_119/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_119/StatefulPartitionedCall%lstm_cell_119/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?C
?

lstm_119_while_body_669203.
*lstm_119_while_lstm_119_while_loop_counter4
0lstm_119_while_lstm_119_while_maximum_iterations
lstm_119_while_placeholder 
lstm_119_while_placeholder_1 
lstm_119_while_placeholder_2 
lstm_119_while_placeholder_3-
)lstm_119_while_lstm_119_strided_slice_1_0i
elstm_119_while_tensorarrayv2read_tensorlistgetitem_lstm_119_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_119_while_lstm_cell_119_matmul_readvariableop_resource_0:Q
?lstm_119_while_lstm_cell_119_matmul_1_readvariableop_resource_0:L
>lstm_119_while_lstm_cell_119_biasadd_readvariableop_resource_0:
lstm_119_while_identity
lstm_119_while_identity_1
lstm_119_while_identity_2
lstm_119_while_identity_3
lstm_119_while_identity_4
lstm_119_while_identity_5+
'lstm_119_while_lstm_119_strided_slice_1g
clstm_119_while_tensorarrayv2read_tensorlistgetitem_lstm_119_tensorarrayunstack_tensorlistfromtensorM
;lstm_119_while_lstm_cell_119_matmul_readvariableop_resource:O
=lstm_119_while_lstm_cell_119_matmul_1_readvariableop_resource:J
<lstm_119_while_lstm_cell_119_biasadd_readvariableop_resource:??3lstm_119/while/lstm_cell_119/BiasAdd/ReadVariableOp?2lstm_119/while/lstm_cell_119/MatMul/ReadVariableOp?4lstm_119/while/lstm_cell_119/MatMul_1/ReadVariableOp?
@lstm_119/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_119/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_119_while_tensorarrayv2read_tensorlistgetitem_lstm_119_tensorarrayunstack_tensorlistfromtensor_0lstm_119_while_placeholderIlstm_119/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_119/while/lstm_cell_119/MatMul/ReadVariableOpReadVariableOp=lstm_119_while_lstm_cell_119_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0?
#lstm_119/while/lstm_cell_119/MatMulMatMul9lstm_119/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_119/while/lstm_cell_119/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
4lstm_119/while/lstm_cell_119/MatMul_1/ReadVariableOpReadVariableOp?lstm_119_while_lstm_cell_119_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0?
%lstm_119/while/lstm_cell_119/MatMul_1MatMullstm_119_while_placeholder_2<lstm_119/while/lstm_cell_119/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 lstm_119/while/lstm_cell_119/addAddV2-lstm_119/while/lstm_cell_119/MatMul:product:0/lstm_119/while/lstm_cell_119/MatMul_1:product:0*
T0*'
_output_shapes
:??????????
3lstm_119/while/lstm_cell_119/BiasAdd/ReadVariableOpReadVariableOp>lstm_119_while_lstm_cell_119_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0?
$lstm_119/while/lstm_cell_119/BiasAddBiasAdd$lstm_119/while/lstm_cell_119/add:z:0;lstm_119/while/lstm_cell_119/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????n
,lstm_119/while/lstm_cell_119/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_119/while/lstm_cell_119/splitSplit5lstm_119/while/lstm_cell_119/split/split_dim:output:0-lstm_119/while/lstm_cell_119/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split?
$lstm_119/while/lstm_cell_119/SigmoidSigmoid+lstm_119/while/lstm_cell_119/split:output:0*
T0*'
_output_shapes
:??????????
&lstm_119/while/lstm_cell_119/Sigmoid_1Sigmoid+lstm_119/while/lstm_cell_119/split:output:1*
T0*'
_output_shapes
:??????????
 lstm_119/while/lstm_cell_119/mulMul*lstm_119/while/lstm_cell_119/Sigmoid_1:y:0lstm_119_while_placeholder_3*
T0*'
_output_shapes
:??????????
!lstm_119/while/lstm_cell_119/ReluRelu+lstm_119/while/lstm_cell_119/split:output:2*
T0*'
_output_shapes
:??????????
"lstm_119/while/lstm_cell_119/mul_1Mul(lstm_119/while/lstm_cell_119/Sigmoid:y:0/lstm_119/while/lstm_cell_119/Relu:activations:0*
T0*'
_output_shapes
:??????????
"lstm_119/while/lstm_cell_119/add_1AddV2$lstm_119/while/lstm_cell_119/mul:z:0&lstm_119/while/lstm_cell_119/mul_1:z:0*
T0*'
_output_shapes
:??????????
&lstm_119/while/lstm_cell_119/Sigmoid_2Sigmoid+lstm_119/while/lstm_cell_119/split:output:3*
T0*'
_output_shapes
:??????????
#lstm_119/while/lstm_cell_119/Relu_1Relu&lstm_119/while/lstm_cell_119/add_1:z:0*
T0*'
_output_shapes
:??????????
"lstm_119/while/lstm_cell_119/mul_2Mul*lstm_119/while/lstm_cell_119/Sigmoid_2:y:01lstm_119/while/lstm_cell_119/Relu_1:activations:0*
T0*'
_output_shapes
:??????????
3lstm_119/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_119_while_placeholder_1lstm_119_while_placeholder&lstm_119/while/lstm_cell_119/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_119/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_119/while/addAddV2lstm_119_while_placeholderlstm_119/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_119/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_119/while/add_1AddV2*lstm_119_while_lstm_119_while_loop_counterlstm_119/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_119/while/IdentityIdentitylstm_119/while/add_1:z:0^lstm_119/while/NoOp*
T0*
_output_shapes
: ?
lstm_119/while/Identity_1Identity0lstm_119_while_lstm_119_while_maximum_iterations^lstm_119/while/NoOp*
T0*
_output_shapes
: t
lstm_119/while/Identity_2Identitylstm_119/while/add:z:0^lstm_119/while/NoOp*
T0*
_output_shapes
: ?
lstm_119/while/Identity_3IdentityClstm_119/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_119/while/NoOp*
T0*
_output_shapes
: :????
lstm_119/while/Identity_4Identity&lstm_119/while/lstm_cell_119/mul_2:z:0^lstm_119/while/NoOp*
T0*'
_output_shapes
:??????????
lstm_119/while/Identity_5Identity&lstm_119/while/lstm_cell_119/add_1:z:0^lstm_119/while/NoOp*
T0*'
_output_shapes
:??????????
lstm_119/while/NoOpNoOp4^lstm_119/while/lstm_cell_119/BiasAdd/ReadVariableOp3^lstm_119/while/lstm_cell_119/MatMul/ReadVariableOp5^lstm_119/while/lstm_cell_119/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_119_while_identity lstm_119/while/Identity:output:0"?
lstm_119_while_identity_1"lstm_119/while/Identity_1:output:0"?
lstm_119_while_identity_2"lstm_119/while/Identity_2:output:0"?
lstm_119_while_identity_3"lstm_119/while/Identity_3:output:0"?
lstm_119_while_identity_4"lstm_119/while/Identity_4:output:0"?
lstm_119_while_identity_5"lstm_119/while/Identity_5:output:0"T
'lstm_119_while_lstm_119_strided_slice_1)lstm_119_while_lstm_119_strided_slice_1_0"~
<lstm_119_while_lstm_cell_119_biasadd_readvariableop_resource>lstm_119_while_lstm_cell_119_biasadd_readvariableop_resource_0"?
=lstm_119_while_lstm_cell_119_matmul_1_readvariableop_resource?lstm_119_while_lstm_cell_119_matmul_1_readvariableop_resource_0"|
;lstm_119_while_lstm_cell_119_matmul_readvariableop_resource=lstm_119_while_lstm_cell_119_matmul_readvariableop_resource_0"?
clstm_119_while_tensorarrayv2read_tensorlistgetitem_lstm_119_tensorarrayunstack_tensorlistfromtensorelstm_119_while_tensorarrayv2read_tensorlistgetitem_lstm_119_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2j
3lstm_119/while/lstm_cell_119/BiasAdd/ReadVariableOp3lstm_119/while/lstm_cell_119/BiasAdd/ReadVariableOp2h
2lstm_119/while/lstm_cell_119/MatMul/ReadVariableOp2lstm_119/while/lstm_cell_119/MatMul/ReadVariableOp2l
4lstm_119/while/lstm_cell_119/MatMul_1/ReadVariableOp4lstm_119/while/lstm_cell_119/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?K
?
D__inference_lstm_118_layer_call_and_return_conditional_losses_669646
inputs_0?
,lstm_cell_118_matmul_readvariableop_resource:	?@
.lstm_cell_118_matmul_1_readvariableop_resource:;
-lstm_cell_118_biasadd_readvariableop_resource:
identity??$lstm_cell_118/BiasAdd/ReadVariableOp?#lstm_cell_118/MatMul/ReadVariableOp?%lstm_cell_118/MatMul_1/ReadVariableOp?while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
#lstm_cell_118/MatMul/ReadVariableOpReadVariableOp,lstm_cell_118_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_118/MatMulMatMulstrided_slice_2:output:0+lstm_cell_118/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
%lstm_cell_118/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_118_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0?
lstm_cell_118/MatMul_1MatMulzeros:output:0-lstm_cell_118/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
lstm_cell_118/addAddV2lstm_cell_118/MatMul:product:0 lstm_cell_118/MatMul_1:product:0*
T0*'
_output_shapes
:??????????
$lstm_cell_118/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_118_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
lstm_cell_118/BiasAddBiasAddlstm_cell_118/add:z:0,lstm_cell_118/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
lstm_cell_118/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_118/splitSplit&lstm_cell_118/split/split_dim:output:0lstm_cell_118/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_splitp
lstm_cell_118/SigmoidSigmoidlstm_cell_118/split:output:0*
T0*'
_output_shapes
:?????????r
lstm_cell_118/Sigmoid_1Sigmoidlstm_cell_118/split:output:1*
T0*'
_output_shapes
:?????????y
lstm_cell_118/mulMullstm_cell_118/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????j
lstm_cell_118/ReluRelulstm_cell_118/split:output:2*
T0*'
_output_shapes
:??????????
lstm_cell_118/mul_1Mullstm_cell_118/Sigmoid:y:0 lstm_cell_118/Relu:activations:0*
T0*'
_output_shapes
:?????????~
lstm_cell_118/add_1AddV2lstm_cell_118/mul:z:0lstm_cell_118/mul_1:z:0*
T0*'
_output_shapes
:?????????r
lstm_cell_118/Sigmoid_2Sigmoidlstm_cell_118/split:output:3*
T0*'
_output_shapes
:?????????g
lstm_cell_118/Relu_1Relulstm_cell_118/add_1:z:0*
T0*'
_output_shapes
:??????????
lstm_cell_118/mul_2Mullstm_cell_118/Sigmoid_2:y:0"lstm_cell_118/Relu_1:activations:0*
T0*'
_output_shapes
:?????????n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_118_matmul_readvariableop_resource.lstm_cell_118_matmul_1_readvariableop_resource-lstm_cell_118_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_669562*
condR
while_cond_669561*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :???????????????????
NoOpNoOp%^lstm_cell_118/BiasAdd/ReadVariableOp$^lstm_cell_118/MatMul/ReadVariableOp&^lstm_cell_118/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 2L
$lstm_cell_118/BiasAdd/ReadVariableOp$lstm_cell_118/BiasAdd/ReadVariableOp2J
#lstm_cell_118/MatMul/ReadVariableOp#lstm_cell_118/MatMul/ReadVariableOp2N
%lstm_cell_118/MatMul_1/ReadVariableOp%lstm_cell_118/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_670463
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_670463___redundant_placeholder04
0while_while_cond_670463___redundant_placeholder14
0while_while_cond_670463___redundant_placeholder24
0while_while_cond_670463___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?

?
lstm_119_while_cond_668914.
*lstm_119_while_lstm_119_while_loop_counter4
0lstm_119_while_lstm_119_while_maximum_iterations
lstm_119_while_placeholder 
lstm_119_while_placeholder_1 
lstm_119_while_placeholder_2 
lstm_119_while_placeholder_30
,lstm_119_while_less_lstm_119_strided_slice_1F
Blstm_119_while_lstm_119_while_cond_668914___redundant_placeholder0F
Blstm_119_while_lstm_119_while_cond_668914___redundant_placeholder1F
Blstm_119_while_lstm_119_while_cond_668914___redundant_placeholder2F
Blstm_119_while_lstm_119_while_cond_668914___redundant_placeholder3
lstm_119_while_identity
?
lstm_119/while/LessLesslstm_119_while_placeholder,lstm_119_while_less_lstm_119_strided_slice_1*
T0*
_output_shapes
: ]
lstm_119/while/IdentityIdentitylstm_119/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_119_while_identity lstm_119/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?
?
I__inference_sequential_59_layer_call_and_return_conditional_losses_668583

inputs"
lstm_118_668563:	?!
lstm_118_668565:
lstm_118_668567:!
lstm_119_668570:!
lstm_119_668572:
lstm_119_668574:"
dense_59_668577:	?
dense_59_668579:	?
identity?? dense_59/StatefulPartitionedCall? lstm_118/StatefulPartitionedCall? lstm_119/StatefulPartitionedCall?
 lstm_118/StatefulPartitionedCallStatefulPartitionedCallinputslstm_118_668563lstm_118_668565lstm_118_668567*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_118_layer_call_and_return_conditional_losses_668528?
 lstm_119/StatefulPartitionedCallStatefulPartitionedCall)lstm_118/StatefulPartitionedCall:output:0lstm_119_668570lstm_119_668572lstm_119_668574*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_119_layer_call_and_return_conditional_losses_668363?
 dense_59/StatefulPartitionedCallStatefulPartitionedCall)lstm_119/StatefulPartitionedCall:output:0dense_59_668577dense_59_668579*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_59_layer_call_and_return_conditional_losses_668171y
IdentityIdentity)dense_59/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp!^dense_59/StatefulPartitionedCall!^lstm_118/StatefulPartitionedCall!^lstm_119/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : 2D
 dense_59/StatefulPartitionedCall dense_59/StatefulPartitionedCall2D
 lstm_118/StatefulPartitionedCall lstm_118/StatefulPartitionedCall2D
 lstm_119/StatefulPartitionedCall lstm_119/StatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?#
?
while_body_667426
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_118_667450_0:	?.
while_lstm_cell_118_667452_0:*
while_lstm_cell_118_667454_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_118_667450:	?,
while_lstm_cell_118_667452:(
while_lstm_cell_118_667454:??+while/lstm_cell_118/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
+while/lstm_cell_118/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_118_667450_0while_lstm_cell_118_667452_0while_lstm_cell_118_667454_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????:?????????:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_lstm_cell_118_layer_call_and_return_conditional_losses_667367?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_118/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :????
while/Identity_4Identity4while/lstm_cell_118/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:??????????
while/Identity_5Identity4while/lstm_cell_118/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????z

while/NoOpNoOp,^while/lstm_cell_118/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_118_667450while_lstm_cell_118_667450_0":
while_lstm_cell_118_667452while_lstm_cell_118_667452_0":
while_lstm_cell_118_667454while_lstm_cell_118_667454_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2Z
+while/lstm_cell_118/StatefulPartitionedCall+while/lstm_cell_118/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?8
?
while_body_669848
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_118_matmul_readvariableop_resource_0:	?H
6while_lstm_cell_118_matmul_1_readvariableop_resource_0:C
5while_lstm_cell_118_biasadd_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_118_matmul_readvariableop_resource:	?F
4while_lstm_cell_118_matmul_1_readvariableop_resource:A
3while_lstm_cell_118_biasadd_readvariableop_resource:??*while/lstm_cell_118/BiasAdd/ReadVariableOp?)while/lstm_cell_118/MatMul/ReadVariableOp?+while/lstm_cell_118/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
)while/lstm_cell_118/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_118_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_118/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_118/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
+while/lstm_cell_118/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_118_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0?
while/lstm_cell_118/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_118/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
while/lstm_cell_118/addAddV2$while/lstm_cell_118/MatMul:product:0&while/lstm_cell_118/MatMul_1:product:0*
T0*'
_output_shapes
:??????????
*while/lstm_cell_118/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_118_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0?
while/lstm_cell_118/BiasAddBiasAddwhile/lstm_cell_118/add:z:02while/lstm_cell_118/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????e
#while/lstm_cell_118/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_118/splitSplit,while/lstm_cell_118/split/split_dim:output:0$while/lstm_cell_118/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split|
while/lstm_cell_118/SigmoidSigmoid"while/lstm_cell_118/split:output:0*
T0*'
_output_shapes
:?????????~
while/lstm_cell_118/Sigmoid_1Sigmoid"while/lstm_cell_118/split:output:1*
T0*'
_output_shapes
:??????????
while/lstm_cell_118/mulMul!while/lstm_cell_118/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????v
while/lstm_cell_118/ReluRelu"while/lstm_cell_118/split:output:2*
T0*'
_output_shapes
:??????????
while/lstm_cell_118/mul_1Mulwhile/lstm_cell_118/Sigmoid:y:0&while/lstm_cell_118/Relu:activations:0*
T0*'
_output_shapes
:??????????
while/lstm_cell_118/add_1AddV2while/lstm_cell_118/mul:z:0while/lstm_cell_118/mul_1:z:0*
T0*'
_output_shapes
:?????????~
while/lstm_cell_118/Sigmoid_2Sigmoid"while/lstm_cell_118/split:output:3*
T0*'
_output_shapes
:?????????s
while/lstm_cell_118/Relu_1Reluwhile/lstm_cell_118/add_1:z:0*
T0*'
_output_shapes
:??????????
while/lstm_cell_118/mul_2Mul!while/lstm_cell_118/Sigmoid_2:y:0(while/lstm_cell_118/Relu_1:activations:0*
T0*'
_output_shapes
:??????????
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_118/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :???z
while/Identity_4Identitywhile/lstm_cell_118/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????z
while/Identity_5Identitywhile/lstm_cell_118/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:??????????

while/NoOpNoOp+^while/lstm_cell_118/BiasAdd/ReadVariableOp*^while/lstm_cell_118/MatMul/ReadVariableOp,^while/lstm_cell_118/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_118_biasadd_readvariableop_resource5while_lstm_cell_118_biasadd_readvariableop_resource_0"n
4while_lstm_cell_118_matmul_1_readvariableop_resource6while_lstm_cell_118_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_118_matmul_readvariableop_resource4while_lstm_cell_118_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2X
*while/lstm_cell_118/BiasAdd/ReadVariableOp*while/lstm_cell_118/BiasAdd/ReadVariableOp2V
)while/lstm_cell_118/MatMul/ReadVariableOp)while/lstm_cell_118/MatMul/ReadVariableOp2Z
+while/lstm_cell_118/MatMul_1/ReadVariableOp+while/lstm_cell_118/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?
?
I__inference_sequential_59_layer_call_and_return_conditional_losses_668178

inputs"
lstm_118_668004:	?!
lstm_118_668006:
lstm_118_668008:!
lstm_119_668154:!
lstm_119_668156:
lstm_119_668158:"
dense_59_668172:	?
dense_59_668174:	?
identity?? dense_59/StatefulPartitionedCall? lstm_118/StatefulPartitionedCall? lstm_119/StatefulPartitionedCall?
 lstm_118/StatefulPartitionedCallStatefulPartitionedCallinputslstm_118_668004lstm_118_668006lstm_118_668008*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_118_layer_call_and_return_conditional_losses_668003?
 lstm_119/StatefulPartitionedCallStatefulPartitionedCall)lstm_118/StatefulPartitionedCall:output:0lstm_119_668154lstm_119_668156lstm_119_668158*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_119_layer_call_and_return_conditional_losses_668153?
 dense_59/StatefulPartitionedCallStatefulPartitionedCall)lstm_119/StatefulPartitionedCall:output:0dense_59_668172dense_59_668174*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_59_layer_call_and_return_conditional_losses_668171y
IdentityIdentity)dense_59/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp!^dense_59/StatefulPartitionedCall!^lstm_118/StatefulPartitionedCall!^lstm_119/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????: : : : : : : : 2D
 dense_59/StatefulPartitionedCall dense_59/StatefulPartitionedCall2D
 lstm_118/StatefulPartitionedCall lstm_118/StatefulPartitionedCall2D
 lstm_119/StatefulPartitionedCall lstm_119/StatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
N
lstm_118_input<
 serving_default_lstm_118_input:0??????????=
dense_591
StatefulPartitionedCall:0??????????tensorflow/serving/predict:??
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
?
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
?
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
?

kernel
 bias
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses"
_tf_keras_layer
?
'iter

(beta_1

)beta_2
	*decay
+learning_ratemn mo,mp-mq.mr/ms0mt1muvv vw,vx-vy.vz/v{0v|1v}"
	optimizer
X
,0
-1
.2
/3
04
15
6
 7"
trackable_list_wrapper
X
,0
-1
.2
/3
04
15
6
 7"
trackable_list_wrapper
 "
trackable_list_wrapper
?
2non_trainable_variables

3layers
4metrics
5layer_regularization_losses
6layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses"
_generic_user_object
?2?
.__inference_sequential_59_layer_call_fn_668197
.__inference_sequential_59_layer_call_fn_668696
.__inference_sequential_59_layer_call_fn_668717
.__inference_sequential_59_layer_call_fn_668623?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
I__inference_sequential_59_layer_call_and_return_conditional_losses_669005
I__inference_sequential_59_layer_call_and_return_conditional_losses_669293
I__inference_sequential_59_layer_call_and_return_conditional_losses_668646
I__inference_sequential_59_layer_call_and_return_conditional_losses_668669?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
!__inference__wrapped_model_667154lstm_118_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
,
7serving_default"
signature_map
?
8
state_size

,kernel
-recurrent_kernel
.bias
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=_random_generator
>__call__
*?&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
,0
-1
.2"
trackable_list_wrapper
5
,0
-1
.2"
trackable_list_wrapper
 "
trackable_list_wrapper
?

@states
Anon_trainable_variables

Blayers
Cmetrics
Dlayer_regularization_losses
Elayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
)__inference_lstm_118_layer_call_fn_669327
)__inference_lstm_118_layer_call_fn_669338
)__inference_lstm_118_layer_call_fn_669349
)__inference_lstm_118_layer_call_fn_669360?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_lstm_118_layer_call_and_return_conditional_losses_669503
D__inference_lstm_118_layer_call_and_return_conditional_losses_669646
D__inference_lstm_118_layer_call_and_return_conditional_losses_669789
D__inference_lstm_118_layer_call_and_return_conditional_losses_669932?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?
F
state_size

/kernel
0recurrent_kernel
1bias
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K_random_generator
L__call__
*M&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
/0
01
12"
trackable_list_wrapper
5
/0
01
12"
trackable_list_wrapper
 "
trackable_list_wrapper
?

Nstates
Onon_trainable_variables

Players
Qmetrics
Rlayer_regularization_losses
Slayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
)__inference_lstm_119_layer_call_fn_669943
)__inference_lstm_119_layer_call_fn_669954
)__inference_lstm_119_layer_call_fn_669965
)__inference_lstm_119_layer_call_fn_669976?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_lstm_119_layer_call_and_return_conditional_losses_670119
D__inference_lstm_119_layer_call_and_return_conditional_losses_670262
D__inference_lstm_119_layer_call_and_return_conditional_losses_670405
D__inference_lstm_119_layer_call_and_return_conditional_losses_670548?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
": 	?2dense_59/kernel
:?2dense_59/bias
.
0
 1"
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Tnon_trainable_variables

Ulayers
Vmetrics
Wlayer_regularization_losses
Xlayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_dense_59_layer_call_fn_670557?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_59_layer_call_and_return_conditional_losses_670567?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
0:.	?2lstm_118/lstm_cell_118/kernel
9:72'lstm_118/lstm_cell_118/recurrent_kernel
):'2lstm_118/lstm_cell_118/bias
/:-2lstm_119/lstm_cell_119/kernel
9:72'lstm_119/lstm_cell_119/recurrent_kernel
):'2lstm_119/lstm_cell_119/bias
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
.
Y0
Z1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
$__inference_signature_wrapper_669316lstm_118_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
5
,0
-1
.2"
trackable_list_wrapper
5
,0
-1
.2"
trackable_list_wrapper
 "
trackable_list_wrapper
?
[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics
9	variables
:trainable_variables
;regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
.__inference_lstm_cell_118_layer_call_fn_670584
.__inference_lstm_cell_118_layer_call_fn_670601?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
I__inference_lstm_cell_118_layer_call_and_return_conditional_losses_670633
I__inference_lstm_cell_118_layer_call_and_return_conditional_losses_670665?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
/0
01
12"
trackable_list_wrapper
5
/0
01
12"
trackable_list_wrapper
 "
trackable_list_wrapper
?
`non_trainable_variables

alayers
bmetrics
clayer_regularization_losses
dlayer_metrics
G	variables
Htrainable_variables
Iregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
.__inference_lstm_cell_119_layer_call_fn_670682
.__inference_lstm_cell_119_layer_call_fn_670699?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
I__inference_lstm_cell_119_layer_call_and_return_conditional_losses_670731
I__inference_lstm_cell_119_layer_call_and_return_conditional_losses_670763?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	etotal
	fcount
g	variables
h	keras_api"
_tf_keras_metric
^
	itotal
	jcount
k
_fn_kwargs
l	variables
m	keras_api"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:  (2total
:  (2count
.
e0
f1"
trackable_list_wrapper
-
g	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
i0
j1"
trackable_list_wrapper
-
l	variables"
_generic_user_object
':%	?2Adam/dense_59/kernel/m
!:?2Adam/dense_59/bias/m
5:3	?2$Adam/lstm_118/lstm_cell_118/kernel/m
>:<2.Adam/lstm_118/lstm_cell_118/recurrent_kernel/m
.:,2"Adam/lstm_118/lstm_cell_118/bias/m
4:22$Adam/lstm_119/lstm_cell_119/kernel/m
>:<2.Adam/lstm_119/lstm_cell_119/recurrent_kernel/m
.:,2"Adam/lstm_119/lstm_cell_119/bias/m
':%	?2Adam/dense_59/kernel/v
!:?2Adam/dense_59/bias/v
5:3	?2$Adam/lstm_118/lstm_cell_118/kernel/v
>:<2.Adam/lstm_118/lstm_cell_118/recurrent_kernel/v
.:,2"Adam/lstm_118/lstm_cell_118/bias/v
4:22$Adam/lstm_119/lstm_cell_119/kernel/v
>:<2.Adam/lstm_119/lstm_cell_119/recurrent_kernel/v
.:,2"Adam/lstm_119/lstm_cell_119/bias/v?
!__inference__wrapped_model_667154~,-./01 <?9
2?/
-?*
lstm_118_input??????????
? "4?1
/
dense_59#? 
dense_59???????????
D__inference_dense_59_layer_call_and_return_conditional_losses_670567] /?,
%?"
 ?
inputs?????????
? "&?#
?
0??????????
? }
)__inference_dense_59_layer_call_fn_670557P /?,
%?"
 ?
inputs?????????
? "????????????
D__inference_lstm_118_layer_call_and_return_conditional_losses_669503?,-.P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p 

 
? "2?/
(?%
0??????????????????
? ?
D__inference_lstm_118_layer_call_and_return_conditional_losses_669646?,-.P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p

 
? "2?/
(?%
0??????????????????
? ?
D__inference_lstm_118_layer_call_and_return_conditional_losses_669789r,-.@?=
6?3
%?"
inputs??????????

 
p 

 
? ")?&
?
0?????????
? ?
D__inference_lstm_118_layer_call_and_return_conditional_losses_669932r,-.@?=
6?3
%?"
inputs??????????

 
p

 
? ")?&
?
0?????????
? ?
)__inference_lstm_118_layer_call_fn_669327~,-.P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p 

 
? "%?"???????????????????
)__inference_lstm_118_layer_call_fn_669338~,-.P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p

 
? "%?"???????????????????
)__inference_lstm_118_layer_call_fn_669349e,-.@?=
6?3
%?"
inputs??????????

 
p 

 
? "???????????
)__inference_lstm_118_layer_call_fn_669360e,-.@?=
6?3
%?"
inputs??????????

 
p

 
? "???????????
D__inference_lstm_119_layer_call_and_return_conditional_losses_670119}/01O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "%?"
?
0?????????
? ?
D__inference_lstm_119_layer_call_and_return_conditional_losses_670262}/01O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "%?"
?
0?????????
? ?
D__inference_lstm_119_layer_call_and_return_conditional_losses_670405m/01??<
5?2
$?!
inputs?????????

 
p 

 
? "%?"
?
0?????????
? ?
D__inference_lstm_119_layer_call_and_return_conditional_losses_670548m/01??<
5?2
$?!
inputs?????????

 
p

 
? "%?"
?
0?????????
? ?
)__inference_lstm_119_layer_call_fn_669943p/01O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "???????????
)__inference_lstm_119_layer_call_fn_669954p/01O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "???????????
)__inference_lstm_119_layer_call_fn_669965`/01??<
5?2
$?!
inputs?????????

 
p 

 
? "???????????
)__inference_lstm_119_layer_call_fn_669976`/01??<
5?2
$?!
inputs?????????

 
p

 
? "???????????
I__inference_lstm_cell_118_layer_call_and_return_conditional_losses_670633?,-.??~
w?t
!?
inputs??????????
K?H
"?
states/0?????????
"?
states/1?????????
p 
? "s?p
i?f
?
0/0?????????
E?B
?
0/1/0?????????
?
0/1/1?????????
? ?
I__inference_lstm_cell_118_layer_call_and_return_conditional_losses_670665?,-.??~
w?t
!?
inputs??????????
K?H
"?
states/0?????????
"?
states/1?????????
p
? "s?p
i?f
?
0/0?????????
E?B
?
0/1/0?????????
?
0/1/1?????????
? ?
.__inference_lstm_cell_118_layer_call_fn_670584?,-.??~
w?t
!?
inputs??????????
K?H
"?
states/0?????????
"?
states/1?????????
p 
? "c?`
?
0?????????
A?>
?
1/0?????????
?
1/1??????????
.__inference_lstm_cell_118_layer_call_fn_670601?,-.??~
w?t
!?
inputs??????????
K?H
"?
states/0?????????
"?
states/1?????????
p
? "c?`
?
0?????????
A?>
?
1/0?????????
?
1/1??????????
I__inference_lstm_cell_119_layer_call_and_return_conditional_losses_670731?/01??}
v?s
 ?
inputs?????????
K?H
"?
states/0?????????
"?
states/1?????????
p 
? "s?p
i?f
?
0/0?????????
E?B
?
0/1/0?????????
?
0/1/1?????????
? ?
I__inference_lstm_cell_119_layer_call_and_return_conditional_losses_670763?/01??}
v?s
 ?
inputs?????????
K?H
"?
states/0?????????
"?
states/1?????????
p
? "s?p
i?f
?
0/0?????????
E?B
?
0/1/0?????????
?
0/1/1?????????
? ?
.__inference_lstm_cell_119_layer_call_fn_670682?/01??}
v?s
 ?
inputs?????????
K?H
"?
states/0?????????
"?
states/1?????????
p 
? "c?`
?
0?????????
A?>
?
1/0?????????
?
1/1??????????
.__inference_lstm_cell_119_layer_call_fn_670699?/01??}
v?s
 ?
inputs?????????
K?H
"?
states/0?????????
"?
states/1?????????
p
? "c?`
?
0?????????
A?>
?
1/0?????????
?
1/1??????????
I__inference_sequential_59_layer_call_and_return_conditional_losses_668646x,-./01 D?A
:?7
-?*
lstm_118_input??????????
p 

 
? "&?#
?
0??????????
? ?
I__inference_sequential_59_layer_call_and_return_conditional_losses_668669x,-./01 D?A
:?7
-?*
lstm_118_input??????????
p

 
? "&?#
?
0??????????
? ?
I__inference_sequential_59_layer_call_and_return_conditional_losses_669005p,-./01 <?9
2?/
%?"
inputs??????????
p 

 
? "&?#
?
0??????????
? ?
I__inference_sequential_59_layer_call_and_return_conditional_losses_669293p,-./01 <?9
2?/
%?"
inputs??????????
p

 
? "&?#
?
0??????????
? ?
.__inference_sequential_59_layer_call_fn_668197k,-./01 D?A
:?7
-?*
lstm_118_input??????????
p 

 
? "????????????
.__inference_sequential_59_layer_call_fn_668623k,-./01 D?A
:?7
-?*
lstm_118_input??????????
p

 
? "????????????
.__inference_sequential_59_layer_call_fn_668696c,-./01 <?9
2?/
%?"
inputs??????????
p 

 
? "????????????
.__inference_sequential_59_layer_call_fn_668717c,-./01 <?9
2?/
%?"
inputs??????????
p

 
? "????????????
$__inference_signature_wrapper_669316?,-./01 N?K
? 
D?A
?
lstm_118_input-?*
lstm_118_input??????????"4?1
/
dense_59#? 
dense_59??????????