«« 
Ö¬
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
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
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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
dtypetype
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
Á
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
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
ö
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
°
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleéèelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements(
handleéèelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintÿÿÿÿÿÿÿÿÿ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

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
"serve*2.8.22v2.8.2-0-g2ea19cbb5758¥ô
{
dense_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	* 
shared_namedense_23/kernel
t
#dense_23/kernel/Read/ReadVariableOpReadVariableOpdense_23/kernel*
_output_shapes
:	*
dtype0
s
dense_23/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_23/bias
l
!dense_23/bias/Read/ReadVariableOpReadVariableOpdense_23/bias*
_output_shapes	
:*
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

lstm_46/lstm_cell_46/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*,
shared_namelstm_46/lstm_cell_46/kernel

/lstm_46/lstm_cell_46/kernel/Read/ReadVariableOpReadVariableOplstm_46/lstm_cell_46/kernel*
_output_shapes
:	@*
dtype0
¦
%lstm_46/lstm_cell_46/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*6
shared_name'%lstm_46/lstm_cell_46/recurrent_kernel

9lstm_46/lstm_cell_46/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_46/lstm_cell_46/recurrent_kernel*
_output_shapes

:@*
dtype0

lstm_46/lstm_cell_46/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_namelstm_46/lstm_cell_46/bias

-lstm_46/lstm_cell_46/bias/Read/ReadVariableOpReadVariableOplstm_46/lstm_cell_46/bias*
_output_shapes
:@*
dtype0

lstm_47/lstm_cell_47/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*,
shared_namelstm_47/lstm_cell_47/kernel

/lstm_47/lstm_cell_47/kernel/Read/ReadVariableOpReadVariableOplstm_47/lstm_cell_47/kernel*
_output_shapes

:@*
dtype0
¦
%lstm_47/lstm_cell_47/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*6
shared_name'%lstm_47/lstm_cell_47/recurrent_kernel

9lstm_47/lstm_cell_47/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_47/lstm_cell_47/recurrent_kernel*
_output_shapes

:@*
dtype0

lstm_47/lstm_cell_47/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_namelstm_47/lstm_cell_47/bias

-lstm_47/lstm_cell_47/bias/Read/ReadVariableOpReadVariableOplstm_47/lstm_cell_47/bias*
_output_shapes
:@*
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

Adam/dense_23/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*'
shared_nameAdam/dense_23/kernel/m

*Adam/dense_23/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_23/kernel/m*
_output_shapes
:	*
dtype0

Adam/dense_23/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_23/bias/m
z
(Adam/dense_23/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_23/bias/m*
_output_shapes	
:*
dtype0
¡
"Adam/lstm_46/lstm_cell_46/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*3
shared_name$"Adam/lstm_46/lstm_cell_46/kernel/m

6Adam/lstm_46/lstm_cell_46/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_46/lstm_cell_46/kernel/m*
_output_shapes
:	@*
dtype0
´
,Adam/lstm_46/lstm_cell_46/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*=
shared_name.,Adam/lstm_46/lstm_cell_46/recurrent_kernel/m
­
@Adam/lstm_46/lstm_cell_46/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_46/lstm_cell_46/recurrent_kernel/m*
_output_shapes

:@*
dtype0

 Adam/lstm_46/lstm_cell_46/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Adam/lstm_46/lstm_cell_46/bias/m

4Adam/lstm_46/lstm_cell_46/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_46/lstm_cell_46/bias/m*
_output_shapes
:@*
dtype0
 
"Adam/lstm_47/lstm_cell_47/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*3
shared_name$"Adam/lstm_47/lstm_cell_47/kernel/m

6Adam/lstm_47/lstm_cell_47/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_47/lstm_cell_47/kernel/m*
_output_shapes

:@*
dtype0
´
,Adam/lstm_47/lstm_cell_47/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*=
shared_name.,Adam/lstm_47/lstm_cell_47/recurrent_kernel/m
­
@Adam/lstm_47/lstm_cell_47/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_47/lstm_cell_47/recurrent_kernel/m*
_output_shapes

:@*
dtype0

 Adam/lstm_47/lstm_cell_47/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Adam/lstm_47/lstm_cell_47/bias/m

4Adam/lstm_47/lstm_cell_47/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_47/lstm_cell_47/bias/m*
_output_shapes
:@*
dtype0

Adam/dense_23/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*'
shared_nameAdam/dense_23/kernel/v

*Adam/dense_23/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_23/kernel/v*
_output_shapes
:	*
dtype0

Adam/dense_23/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_23/bias/v
z
(Adam/dense_23/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_23/bias/v*
_output_shapes	
:*
dtype0
¡
"Adam/lstm_46/lstm_cell_46/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*3
shared_name$"Adam/lstm_46/lstm_cell_46/kernel/v

6Adam/lstm_46/lstm_cell_46/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_46/lstm_cell_46/kernel/v*
_output_shapes
:	@*
dtype0
´
,Adam/lstm_46/lstm_cell_46/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*=
shared_name.,Adam/lstm_46/lstm_cell_46/recurrent_kernel/v
­
@Adam/lstm_46/lstm_cell_46/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_46/lstm_cell_46/recurrent_kernel/v*
_output_shapes

:@*
dtype0

 Adam/lstm_46/lstm_cell_46/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Adam/lstm_46/lstm_cell_46/bias/v

4Adam/lstm_46/lstm_cell_46/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_46/lstm_cell_46/bias/v*
_output_shapes
:@*
dtype0
 
"Adam/lstm_47/lstm_cell_47/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*3
shared_name$"Adam/lstm_47/lstm_cell_47/kernel/v

6Adam/lstm_47/lstm_cell_47/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_47/lstm_cell_47/kernel/v*
_output_shapes

:@*
dtype0
´
,Adam/lstm_47/lstm_cell_47/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*=
shared_name.,Adam/lstm_47/lstm_cell_47/recurrent_kernel/v
­
@Adam/lstm_47/lstm_cell_47/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_47/lstm_cell_47/recurrent_kernel/v*
_output_shapes

:@*
dtype0

 Adam/lstm_47/lstm_cell_47/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Adam/lstm_47/lstm_cell_47/bias/v

4Adam/lstm_47/lstm_cell_47/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_47/lstm_cell_47/bias/v*
_output_shapes
:@*
dtype0

NoOpNoOp
ê=
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*¥=
value=B= B=
Á
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
Á
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
Á
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
¦

kernel
 bias
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses*
Ô
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
°
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
ã
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


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
ã
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


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
VARIABLE_VALUEdense_23/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_23/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
 1*

0
 1*
* 

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
[U
VARIABLE_VALUElstm_46/lstm_cell_46/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%lstm_46/lstm_cell_46/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElstm_46/lstm_cell_46/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUElstm_47/lstm_cell_47/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%lstm_47/lstm_cell_47/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElstm_47/lstm_cell_47/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
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

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

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
|
VARIABLE_VALUEAdam/dense_23/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_23/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/lstm_46/lstm_cell_46/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE,Adam/lstm_46/lstm_cell_46/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/lstm_46/lstm_cell_46/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/lstm_47/lstm_cell_47/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE,Adam/lstm_47/lstm_cell_47/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/lstm_47/lstm_cell_47/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_23/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_23/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/lstm_46/lstm_cell_46/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE,Adam/lstm_46/lstm_cell_46/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/lstm_46/lstm_cell_46/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/lstm_47/lstm_cell_47/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE,Adam/lstm_47/lstm_cell_47/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/lstm_47/lstm_cell_47/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_lstm_46_inputPlaceholder*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*!
shape:ÿÿÿÿÿÿÿÿÿ
§
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_46_inputlstm_46/lstm_cell_46/kernel%lstm_46/lstm_cell_46/recurrent_kernellstm_46/lstm_cell_46/biaslstm_47/lstm_cell_47/kernel%lstm_47/lstm_cell_47/recurrent_kernellstm_47/lstm_cell_47/biasdense_23/kerneldense_23/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_234621
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
¿
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_23/kernel/Read/ReadVariableOp!dense_23/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_46/lstm_cell_46/kernel/Read/ReadVariableOp9lstm_46/lstm_cell_46/recurrent_kernel/Read/ReadVariableOp-lstm_46/lstm_cell_46/bias/Read/ReadVariableOp/lstm_47/lstm_cell_47/kernel/Read/ReadVariableOp9lstm_47/lstm_cell_47/recurrent_kernel/Read/ReadVariableOp-lstm_47/lstm_cell_47/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/dense_23/kernel/m/Read/ReadVariableOp(Adam/dense_23/bias/m/Read/ReadVariableOp6Adam/lstm_46/lstm_cell_46/kernel/m/Read/ReadVariableOp@Adam/lstm_46/lstm_cell_46/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_46/lstm_cell_46/bias/m/Read/ReadVariableOp6Adam/lstm_47/lstm_cell_47/kernel/m/Read/ReadVariableOp@Adam/lstm_47/lstm_cell_47/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_47/lstm_cell_47/bias/m/Read/ReadVariableOp*Adam/dense_23/kernel/v/Read/ReadVariableOp(Adam/dense_23/bias/v/Read/ReadVariableOp6Adam/lstm_46/lstm_cell_46/kernel/v/Read/ReadVariableOp@Adam/lstm_46/lstm_cell_46/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_46/lstm_cell_46/bias/v/Read/ReadVariableOp6Adam/lstm_47/lstm_cell_47/kernel/v/Read/ReadVariableOp@Adam/lstm_47/lstm_cell_47/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_47/lstm_cell_47/bias/v/Read/ReadVariableOpConst*.
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
GPU 2J 8 *(
f#R!
__inference__traced_save_236190
¦	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_23/kerneldense_23/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_46/lstm_cell_46/kernel%lstm_46/lstm_cell_46/recurrent_kernellstm_46/lstm_cell_46/biaslstm_47/lstm_cell_47/kernel%lstm_47/lstm_cell_47/recurrent_kernellstm_47/lstm_cell_47/biastotalcounttotal_1count_1Adam/dense_23/kernel/mAdam/dense_23/bias/m"Adam/lstm_46/lstm_cell_46/kernel/m,Adam/lstm_46/lstm_cell_46/recurrent_kernel/m Adam/lstm_46/lstm_cell_46/bias/m"Adam/lstm_47/lstm_cell_47/kernel/m,Adam/lstm_47/lstm_cell_47/recurrent_kernel/m Adam/lstm_47/lstm_cell_47/bias/mAdam/dense_23/kernel/vAdam/dense_23/bias/v"Adam/lstm_46/lstm_cell_46/kernel/v,Adam/lstm_46/lstm_cell_46/recurrent_kernel/v Adam/lstm_46/lstm_cell_46/bias/v"Adam/lstm_47/lstm_cell_47/kernel/v,Adam/lstm_47/lstm_cell_47/recurrent_kernel/v Adam/lstm_47/lstm_cell_47/bias/v*-
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
GPU 2J 8 *+
f&R$
"__inference__traced_restore_236299¿Ñ
8

C__inference_lstm_47_layer_call_and_return_conditional_losses_232959

inputs%
lstm_cell_47_232877:@%
lstm_cell_47_232879:@!
lstm_cell_47_232881:@
identity¢$lstm_cell_47/StatefulPartitionedCall¢while;
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
valueB:Ñ
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
value	B :s
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
:ÿÿÿÿÿÿÿÿÿR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
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
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
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
valueB:Û
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskõ
$lstm_cell_47/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_47_232877lstm_cell_47_232879lstm_cell_47_232881*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_232876n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ·
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_47_232877lstm_cell_47_232879lstm_cell_47_232881*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_232890*
condR
while_cond_232889*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
NoOpNoOp%^lstm_cell_47/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_47/StatefulPartitionedCall$lstm_cell_47/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
©
µ
(__inference_lstm_46_layer_call_fn_234632
inputs_0
unknown:	@
	unknown_0:@
	unknown_1:@
identity¢StatefulPartitionedCallô
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_46_layer_call_and_return_conditional_losses_232609|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
ö"
ß
while_body_232731
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_46_232755_0:	@-
while_lstm_cell_46_232757_0:@)
while_lstm_cell_46_232759_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_46_232755:	@+
while_lstm_cell_46_232757:@'
while_lstm_cell_46_232759:@¢*while/lstm_cell_46/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0³
*while/lstm_cell_46/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_46_232755_0while_lstm_cell_46_232757_0while_lstm_cell_46_232759_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_46_layer_call_and_return_conditional_losses_232672Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_46/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ
while/Identity_4Identity3while/lstm_cell_46/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/Identity_5Identity3while/lstm_cell_46/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy

while/NoOpNoOp+^while/lstm_cell_46/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_46_232755while_lstm_cell_46_232755_0"8
while_lstm_cell_46_232757while_lstm_cell_46_232757_0"8
while_lstm_cell_46_232759while_lstm_cell_46_232759_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2X
*while/lstm_cell_46/StatefulPartitionedCall*while/lstm_cell_46/StatefulPartitionedCall: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
µ
Ã
while_cond_235768
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_235768___redundant_placeholder04
0while_while_cond_235768___redundant_placeholder14
0while_while_cond_235768___redundant_placeholder24
0while_while_cond_235768___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
µ
Ã
while_cond_233080
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_233080___redundant_placeholder04
0while_while_cond_233080___redundant_placeholder14
0while_while_cond_233080___redundant_placeholder24
0while_while_cond_233080___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
ÓJ

C__inference_lstm_47_layer_call_and_return_conditional_losses_235424
inputs_0=
+lstm_cell_47_matmul_readvariableop_resource:@?
-lstm_cell_47_matmul_1_readvariableop_resource:@:
,lstm_cell_47_biasadd_readvariableop_resource:@
identity¢#lstm_cell_47/BiasAdd/ReadVariableOp¢"lstm_cell_47/MatMul/ReadVariableOp¢$lstm_cell_47/MatMul_1/ReadVariableOp¢while=
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
valueB:Ñ
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
value	B :s
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
:ÿÿÿÿÿÿÿÿÿR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
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
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
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
valueB:Û
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
"lstm_cell_47/MatMul/ReadVariableOpReadVariableOp+lstm_cell_47_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0
lstm_cell_47/MatMulMatMulstrided_slice_2:output:0*lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
$lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_47_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0
lstm_cell_47/MatMul_1MatMulzeros:output:0,lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_47/addAddV2lstm_cell_47/MatMul:product:0lstm_cell_47/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_47_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
lstm_cell_47/BiasAddBiasAddlstm_cell_47/add:z:0+lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@^
lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_47/splitSplit%lstm_cell_47/split/split_dim:output:0lstm_cell_47/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitn
lstm_cell_47/SigmoidSigmoidlstm_cell_47/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
lstm_cell_47/Sigmoid_1Sigmoidlstm_cell_47/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
lstm_cell_47/mulMullstm_cell_47/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
lstm_cell_47/ReluRelulstm_cell_47/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_47/mul_1Mullstm_cell_47/Sigmoid:y:0lstm_cell_47/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
lstm_cell_47/add_1AddV2lstm_cell_47/mul:z:0lstm_cell_47/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
lstm_cell_47/Sigmoid_2Sigmoidlstm_cell_47/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
lstm_cell_47/Relu_1Relulstm_cell_47/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_47/mul_2Mullstm_cell_47/Sigmoid_2:y:0!lstm_cell_47/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_47_matmul_readvariableop_resource-lstm_cell_47_matmul_1_readvariableop_resource,lstm_cell_47_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_235340*
condR
while_cond_235339*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
NoOpNoOp$^lstm_cell_47/BiasAdd/ReadVariableOp#^lstm_cell_47/MatMul/ReadVariableOp%^lstm_cell_47/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_47/BiasAdd/ReadVariableOp#lstm_cell_47/BiasAdd/ReadVariableOp2H
"lstm_cell_47/MatMul/ReadVariableOp"lstm_cell_47/MatMul/ReadVariableOp2L
$lstm_cell_47/MatMul_1/ReadVariableOp$lstm_cell_47/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
×

H__inference_lstm_cell_46_layer_call_and_return_conditional_losses_235938

inputs
states_0
states_11
matmul_readvariableop_resource:	@2
 matmul_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿN
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
Û	
Ä
.__inference_sequential_23_layer_call_fn_234022

inputs
unknown:	@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@
	unknown_5:	
	unknown_6:	
identity¢StatefulPartitionedCall­
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_23_layer_call_and_return_conditional_losses_233888p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
J

C__inference_lstm_47_layer_call_and_return_conditional_losses_235710

inputs=
+lstm_cell_47_matmul_readvariableop_resource:@?
-lstm_cell_47_matmul_1_readvariableop_resource:@:
,lstm_cell_47_biasadd_readvariableop_resource:@
identity¢#lstm_cell_47/BiasAdd/ReadVariableOp¢"lstm_cell_47/MatMul/ReadVariableOp¢$lstm_cell_47/MatMul_1/ReadVariableOp¢while;
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
valueB:Ñ
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
value	B :s
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
:ÿÿÿÿÿÿÿÿÿR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
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
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
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
valueB:Û
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
"lstm_cell_47/MatMul/ReadVariableOpReadVariableOp+lstm_cell_47_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0
lstm_cell_47/MatMulMatMulstrided_slice_2:output:0*lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
$lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_47_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0
lstm_cell_47/MatMul_1MatMulzeros:output:0,lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_47/addAddV2lstm_cell_47/MatMul:product:0lstm_cell_47/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_47_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
lstm_cell_47/BiasAddBiasAddlstm_cell_47/add:z:0+lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@^
lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_47/splitSplit%lstm_cell_47/split/split_dim:output:0lstm_cell_47/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitn
lstm_cell_47/SigmoidSigmoidlstm_cell_47/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
lstm_cell_47/Sigmoid_1Sigmoidlstm_cell_47/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
lstm_cell_47/mulMullstm_cell_47/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
lstm_cell_47/ReluRelulstm_cell_47/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_47/mul_1Mullstm_cell_47/Sigmoid:y:0lstm_cell_47/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
lstm_cell_47/add_1AddV2lstm_cell_47/mul:z:0lstm_cell_47/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
lstm_cell_47/Sigmoid_2Sigmoidlstm_cell_47/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
lstm_cell_47/Relu_1Relulstm_cell_47/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_47/mul_2Mullstm_cell_47/Sigmoid_2:y:0!lstm_cell_47/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_47_matmul_readvariableop_resource-lstm_cell_47_matmul_1_readvariableop_resource,lstm_cell_47_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_235626*
condR
while_cond_235625*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
NoOpNoOp$^lstm_cell_47/BiasAdd/ReadVariableOp#^lstm_cell_47/MatMul/ReadVariableOp%^lstm_cell_47/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_47/BiasAdd/ReadVariableOp#lstm_cell_47/BiasAdd/ReadVariableOp2H
"lstm_cell_47/MatMul/ReadVariableOp"lstm_cell_47/MatMul/ReadVariableOp2L
$lstm_cell_47/MatMul_1/ReadVariableOp$lstm_cell_47/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Æ

)__inference_dense_23_layer_call_fn_235862

inputs
unknown:	
	unknown_0:	
identity¢StatefulPartitionedCallÚ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_23_layer_call_and_return_conditional_losses_233476p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
è
ó
-__inference_lstm_cell_47_layer_call_fn_235987

inputs
states_0
states_1
unknown:@
	unknown_0:@
	unknown_1:@
identity

identity_1

identity_2¢StatefulPartitionedCall¨
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_232876o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
µ
Ã
while_cond_232730
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_232730___redundant_placeholder04
0while_while_cond_232730___redundant_placeholder14
0while_while_cond_232730___redundant_placeholder24
0while_while_cond_232730___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
ÒH
Ú
__inference__traced_save_236190
file_prefix.
*savev2_dense_23_kernel_read_readvariableop,
(savev2_dense_23_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_46_lstm_cell_46_kernel_read_readvariableopD
@savev2_lstm_46_lstm_cell_46_recurrent_kernel_read_readvariableop8
4savev2_lstm_46_lstm_cell_46_bias_read_readvariableop:
6savev2_lstm_47_lstm_cell_47_kernel_read_readvariableopD
@savev2_lstm_47_lstm_cell_47_recurrent_kernel_read_readvariableop8
4savev2_lstm_47_lstm_cell_47_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_adam_dense_23_kernel_m_read_readvariableop3
/savev2_adam_dense_23_bias_m_read_readvariableopA
=savev2_adam_lstm_46_lstm_cell_46_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_46_lstm_cell_46_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_46_lstm_cell_46_bias_m_read_readvariableopA
=savev2_adam_lstm_47_lstm_cell_47_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_47_lstm_cell_47_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_47_lstm_cell_47_bias_m_read_readvariableop5
1savev2_adam_dense_23_kernel_v_read_readvariableop3
/savev2_adam_dense_23_bias_v_read_readvariableopA
=savev2_adam_lstm_46_lstm_cell_46_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_46_lstm_cell_46_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_46_lstm_cell_46_bias_v_read_readvariableopA
=savev2_adam_lstm_47_lstm_cell_47_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_47_lstm_cell_47_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_47_lstm_cell_47_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ¡
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*Ê
valueÀB½"B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH±
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B »
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_23_kernel_read_readvariableop(savev2_dense_23_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_46_lstm_cell_46_kernel_read_readvariableop@savev2_lstm_46_lstm_cell_46_recurrent_kernel_read_readvariableop4savev2_lstm_46_lstm_cell_46_bias_read_readvariableop6savev2_lstm_47_lstm_cell_47_kernel_read_readvariableop@savev2_lstm_47_lstm_cell_47_recurrent_kernel_read_readvariableop4savev2_lstm_47_lstm_cell_47_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_dense_23_kernel_m_read_readvariableop/savev2_adam_dense_23_bias_m_read_readvariableop=savev2_adam_lstm_46_lstm_cell_46_kernel_m_read_readvariableopGsavev2_adam_lstm_46_lstm_cell_46_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_46_lstm_cell_46_bias_m_read_readvariableop=savev2_adam_lstm_47_lstm_cell_47_kernel_m_read_readvariableopGsavev2_adam_lstm_47_lstm_cell_47_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_47_lstm_cell_47_bias_m_read_readvariableop1savev2_adam_dense_23_kernel_v_read_readvariableop/savev2_adam_dense_23_bias_v_read_readvariableop=savev2_adam_lstm_46_lstm_cell_46_kernel_v_read_readvariableopGsavev2_adam_lstm_46_lstm_cell_46_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_46_lstm_cell_46_bias_v_read_readvariableop=savev2_adam_lstm_47_lstm_cell_47_kernel_v_read_readvariableopGsavev2_adam_lstm_47_lstm_cell_47_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_47_lstm_cell_47_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *0
dtypes&
$2"	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
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

identity_1Identity_1:output:0*
_input_shapesî
ë: :	:: : : : : :	@:@:@:@:@:@: : : : :	::	@:@:@:@:@:@:	::	@:@:@:@:@:@: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	:!

_output_shapes	
::
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
:	@:$	 

_output_shapes

:@: 


_output_shapes
:@:$ 

_output_shapes

:@:$ 

_output_shapes

:@: 

_output_shapes
:@:
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
:	:!

_output_shapes	
::%!

_output_shapes
:	@:$ 

_output_shapes

:@: 

_output_shapes
:@:$ 

_output_shapes

:@:$ 

_output_shapes

:@: 

_output_shapes
:@:%!

_output_shapes
:	:!

_output_shapes	
::%!

_output_shapes
:	@:$ 

_output_shapes

:@: 

_output_shapes
:@:$ 

_output_shapes

:@:$  

_output_shapes

:@: !

_output_shapes
:@:"

_output_shapes
: 
ÏA
Ì

lstm_46_while_body_234081,
(lstm_46_while_lstm_46_while_loop_counter2
.lstm_46_while_lstm_46_while_maximum_iterations
lstm_46_while_placeholder
lstm_46_while_placeholder_1
lstm_46_while_placeholder_2
lstm_46_while_placeholder_3+
'lstm_46_while_lstm_46_strided_slice_1_0g
clstm_46_while_tensorarrayv2read_tensorlistgetitem_lstm_46_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_46_while_lstm_cell_46_matmul_readvariableop_resource_0:	@O
=lstm_46_while_lstm_cell_46_matmul_1_readvariableop_resource_0:@J
<lstm_46_while_lstm_cell_46_biasadd_readvariableop_resource_0:@
lstm_46_while_identity
lstm_46_while_identity_1
lstm_46_while_identity_2
lstm_46_while_identity_3
lstm_46_while_identity_4
lstm_46_while_identity_5)
%lstm_46_while_lstm_46_strided_slice_1e
alstm_46_while_tensorarrayv2read_tensorlistgetitem_lstm_46_tensorarrayunstack_tensorlistfromtensorL
9lstm_46_while_lstm_cell_46_matmul_readvariableop_resource:	@M
;lstm_46_while_lstm_cell_46_matmul_1_readvariableop_resource:@H
:lstm_46_while_lstm_cell_46_biasadd_readvariableop_resource:@¢1lstm_46/while/lstm_cell_46/BiasAdd/ReadVariableOp¢0lstm_46/while/lstm_cell_46/MatMul/ReadVariableOp¢2lstm_46/while/lstm_cell_46/MatMul_1/ReadVariableOp
?lstm_46/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  Ï
1lstm_46/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_46_while_tensorarrayv2read_tensorlistgetitem_lstm_46_tensorarrayunstack_tensorlistfromtensor_0lstm_46_while_placeholderHlstm_46/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0­
0lstm_46/while/lstm_cell_46/MatMul/ReadVariableOpReadVariableOp;lstm_46_while_lstm_cell_46_matmul_readvariableop_resource_0*
_output_shapes
:	@*
dtype0Ñ
!lstm_46/while/lstm_cell_46/MatMulMatMul8lstm_46/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_46/while/lstm_cell_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@°
2lstm_46/while/lstm_cell_46/MatMul_1/ReadVariableOpReadVariableOp=lstm_46_while_lstm_cell_46_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0¸
#lstm_46/while/lstm_cell_46/MatMul_1MatMullstm_46_while_placeholder_2:lstm_46/while/lstm_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@µ
lstm_46/while/lstm_cell_46/addAddV2+lstm_46/while/lstm_cell_46/MatMul:product:0-lstm_46/while/lstm_cell_46/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ª
1lstm_46/while/lstm_cell_46/BiasAdd/ReadVariableOpReadVariableOp<lstm_46_while_lstm_cell_46_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0¾
"lstm_46/while/lstm_cell_46/BiasAddBiasAdd"lstm_46/while/lstm_cell_46/add:z:09lstm_46/while/lstm_cell_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@l
*lstm_46/while/lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
 lstm_46/while/lstm_cell_46/splitSplit3lstm_46/while/lstm_cell_46/split/split_dim:output:0+lstm_46/while/lstm_cell_46/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split
"lstm_46/while/lstm_cell_46/SigmoidSigmoid)lstm_46/while/lstm_cell_46/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_46/while/lstm_cell_46/Sigmoid_1Sigmoid)lstm_46/while/lstm_cell_46/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_46/while/lstm_cell_46/mulMul(lstm_46/while/lstm_cell_46/Sigmoid_1:y:0lstm_46_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_46/while/lstm_cell_46/ReluRelu)lstm_46/while/lstm_cell_46/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
 lstm_46/while/lstm_cell_46/mul_1Mul&lstm_46/while/lstm_cell_46/Sigmoid:y:0-lstm_46/while/lstm_cell_46/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
 lstm_46/while/lstm_cell_46/add_1AddV2"lstm_46/while/lstm_cell_46/mul:z:0$lstm_46/while/lstm_cell_46/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_46/while/lstm_cell_46/Sigmoid_2Sigmoid)lstm_46/while/lstm_cell_46/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!lstm_46/while/lstm_cell_46/Relu_1Relu$lstm_46/while/lstm_cell_46/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
 lstm_46/while/lstm_cell_46/mul_2Mul(lstm_46/while/lstm_cell_46/Sigmoid_2:y:0/lstm_46/while/lstm_cell_46/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿå
2lstm_46/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_46_while_placeholder_1lstm_46_while_placeholder$lstm_46/while/lstm_cell_46/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒU
lstm_46/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_46/while/addAddV2lstm_46_while_placeholderlstm_46/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_46/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_46/while/add_1AddV2(lstm_46_while_lstm_46_while_loop_counterlstm_46/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_46/while/IdentityIdentitylstm_46/while/add_1:z:0^lstm_46/while/NoOp*
T0*
_output_shapes
: 
lstm_46/while/Identity_1Identity.lstm_46_while_lstm_46_while_maximum_iterations^lstm_46/while/NoOp*
T0*
_output_shapes
: q
lstm_46/while/Identity_2Identitylstm_46/while/add:z:0^lstm_46/while/NoOp*
T0*
_output_shapes
: ±
lstm_46/while/Identity_3IdentityBlstm_46/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_46/while/NoOp*
T0*
_output_shapes
: :éèÒ
lstm_46/while/Identity_4Identity$lstm_46/while/lstm_cell_46/mul_2:z:0^lstm_46/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_46/while/Identity_5Identity$lstm_46/while/lstm_cell_46/add_1:z:0^lstm_46/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
lstm_46/while/NoOpNoOp2^lstm_46/while/lstm_cell_46/BiasAdd/ReadVariableOp1^lstm_46/while/lstm_cell_46/MatMul/ReadVariableOp3^lstm_46/while/lstm_cell_46/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_46_while_identitylstm_46/while/Identity:output:0"=
lstm_46_while_identity_1!lstm_46/while/Identity_1:output:0"=
lstm_46_while_identity_2!lstm_46/while/Identity_2:output:0"=
lstm_46_while_identity_3!lstm_46/while/Identity_3:output:0"=
lstm_46_while_identity_4!lstm_46/while/Identity_4:output:0"=
lstm_46_while_identity_5!lstm_46/while/Identity_5:output:0"P
%lstm_46_while_lstm_46_strided_slice_1'lstm_46_while_lstm_46_strided_slice_1_0"z
:lstm_46_while_lstm_cell_46_biasadd_readvariableop_resource<lstm_46_while_lstm_cell_46_biasadd_readvariableop_resource_0"|
;lstm_46_while_lstm_cell_46_matmul_1_readvariableop_resource=lstm_46_while_lstm_cell_46_matmul_1_readvariableop_resource_0"x
9lstm_46_while_lstm_cell_46_matmul_readvariableop_resource;lstm_46_while_lstm_cell_46_matmul_readvariableop_resource_0"È
alstm_46_while_tensorarrayv2read_tensorlistgetitem_lstm_46_tensorarrayunstack_tensorlistfromtensorclstm_46_while_tensorarrayv2read_tensorlistgetitem_lstm_46_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2f
1lstm_46/while/lstm_cell_46/BiasAdd/ReadVariableOp1lstm_46/while/lstm_cell_46/BiasAdd/ReadVariableOp2d
0lstm_46/while/lstm_cell_46/MatMul/ReadVariableOp0lstm_46/while/lstm_cell_46/MatMul/ReadVariableOp2h
2lstm_46/while/lstm_cell_46/MatMul_1/ReadVariableOp2lstm_46/while/lstm_cell_46/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
8

C__inference_lstm_47_layer_call_and_return_conditional_losses_233150

inputs%
lstm_cell_47_233068:@%
lstm_cell_47_233070:@!
lstm_cell_47_233072:@
identity¢$lstm_cell_47/StatefulPartitionedCall¢while;
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
valueB:Ñ
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
value	B :s
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
:ÿÿÿÿÿÿÿÿÿR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
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
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
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
valueB:Û
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskõ
$lstm_cell_47/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_47_233068lstm_cell_47_233070lstm_cell_47_233072*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_233022n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ·
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_47_233068lstm_cell_47_233070lstm_cell_47_233072*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_233081*
condR
while_cond_233080*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
NoOpNoOp%^lstm_cell_47/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_47/StatefulPartitionedCall$lstm_cell_47/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Û	
Ä
.__inference_sequential_23_layer_call_fn_234001

inputs
unknown:	@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@
	unknown_5:	
	unknown_6:	
identity¢StatefulPartitionedCall­
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_23_layer_call_and_return_conditional_losses_233483p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

û
'sequential_23_lstm_47_while_cond_232368H
Dsequential_23_lstm_47_while_sequential_23_lstm_47_while_loop_counterN
Jsequential_23_lstm_47_while_sequential_23_lstm_47_while_maximum_iterations+
'sequential_23_lstm_47_while_placeholder-
)sequential_23_lstm_47_while_placeholder_1-
)sequential_23_lstm_47_while_placeholder_2-
)sequential_23_lstm_47_while_placeholder_3J
Fsequential_23_lstm_47_while_less_sequential_23_lstm_47_strided_slice_1`
\sequential_23_lstm_47_while_sequential_23_lstm_47_while_cond_232368___redundant_placeholder0`
\sequential_23_lstm_47_while_sequential_23_lstm_47_while_cond_232368___redundant_placeholder1`
\sequential_23_lstm_47_while_sequential_23_lstm_47_while_cond_232368___redundant_placeholder2`
\sequential_23_lstm_47_while_sequential_23_lstm_47_while_cond_232368___redundant_placeholder3(
$sequential_23_lstm_47_while_identity
º
 sequential_23/lstm_47/while/LessLess'sequential_23_lstm_47_while_placeholderFsequential_23_lstm_47_while_less_sequential_23_lstm_47_strided_slice_1*
T0*
_output_shapes
: w
$sequential_23/lstm_47/while/IdentityIdentity$sequential_23/lstm_47/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_23_lstm_47_while_identity-sequential_23/lstm_47/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:

û
'sequential_23_lstm_46_while_cond_232229H
Dsequential_23_lstm_46_while_sequential_23_lstm_46_while_loop_counterN
Jsequential_23_lstm_46_while_sequential_23_lstm_46_while_maximum_iterations+
'sequential_23_lstm_46_while_placeholder-
)sequential_23_lstm_46_while_placeholder_1-
)sequential_23_lstm_46_while_placeholder_2-
)sequential_23_lstm_46_while_placeholder_3J
Fsequential_23_lstm_46_while_less_sequential_23_lstm_46_strided_slice_1`
\sequential_23_lstm_46_while_sequential_23_lstm_46_while_cond_232229___redundant_placeholder0`
\sequential_23_lstm_46_while_sequential_23_lstm_46_while_cond_232229___redundant_placeholder1`
\sequential_23_lstm_46_while_sequential_23_lstm_46_while_cond_232229___redundant_placeholder2`
\sequential_23_lstm_46_while_sequential_23_lstm_46_while_cond_232229___redundant_placeholder3(
$sequential_23_lstm_46_while_identity
º
 sequential_23/lstm_46/while/LessLess'sequential_23_lstm_46_while_placeholderFsequential_23_lstm_46_while_less_sequential_23_lstm_46_strided_slice_1*
T0*
_output_shapes
: w
$sequential_23/lstm_46/while/IdentityIdentity$sequential_23/lstm_46/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_23_lstm_46_while_identity-sequential_23/lstm_46/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
¾	
Á
$__inference_signature_wrapper_234621
lstm_46_input
unknown:	@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@
	unknown_5:	
	unknown_6:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalllstm_46_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_232459p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_46_input
ËA
Ê

lstm_47_while_body_234508,
(lstm_47_while_lstm_47_while_loop_counter2
.lstm_47_while_lstm_47_while_maximum_iterations
lstm_47_while_placeholder
lstm_47_while_placeholder_1
lstm_47_while_placeholder_2
lstm_47_while_placeholder_3+
'lstm_47_while_lstm_47_strided_slice_1_0g
clstm_47_while_tensorarrayv2read_tensorlistgetitem_lstm_47_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_47_while_lstm_cell_47_matmul_readvariableop_resource_0:@O
=lstm_47_while_lstm_cell_47_matmul_1_readvariableop_resource_0:@J
<lstm_47_while_lstm_cell_47_biasadd_readvariableop_resource_0:@
lstm_47_while_identity
lstm_47_while_identity_1
lstm_47_while_identity_2
lstm_47_while_identity_3
lstm_47_while_identity_4
lstm_47_while_identity_5)
%lstm_47_while_lstm_47_strided_slice_1e
alstm_47_while_tensorarrayv2read_tensorlistgetitem_lstm_47_tensorarrayunstack_tensorlistfromtensorK
9lstm_47_while_lstm_cell_47_matmul_readvariableop_resource:@M
;lstm_47_while_lstm_cell_47_matmul_1_readvariableop_resource:@H
:lstm_47_while_lstm_cell_47_biasadd_readvariableop_resource:@¢1lstm_47/while/lstm_cell_47/BiasAdd/ReadVariableOp¢0lstm_47/while/lstm_cell_47/MatMul/ReadVariableOp¢2lstm_47/while/lstm_cell_47/MatMul_1/ReadVariableOp
?lstm_47/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Î
1lstm_47/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_47_while_tensorarrayv2read_tensorlistgetitem_lstm_47_tensorarrayunstack_tensorlistfromtensor_0lstm_47_while_placeholderHlstm_47/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¬
0lstm_47/while/lstm_cell_47/MatMul/ReadVariableOpReadVariableOp;lstm_47_while_lstm_cell_47_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0Ñ
!lstm_47/while/lstm_cell_47/MatMulMatMul8lstm_47/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_47/while/lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@°
2lstm_47/while/lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp=lstm_47_while_lstm_cell_47_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0¸
#lstm_47/while/lstm_cell_47/MatMul_1MatMullstm_47_while_placeholder_2:lstm_47/while/lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@µ
lstm_47/while/lstm_cell_47/addAddV2+lstm_47/while/lstm_cell_47/MatMul:product:0-lstm_47/while/lstm_cell_47/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ª
1lstm_47/while/lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp<lstm_47_while_lstm_cell_47_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0¾
"lstm_47/while/lstm_cell_47/BiasAddBiasAdd"lstm_47/while/lstm_cell_47/add:z:09lstm_47/while/lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@l
*lstm_47/while/lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
 lstm_47/while/lstm_cell_47/splitSplit3lstm_47/while/lstm_cell_47/split/split_dim:output:0+lstm_47/while/lstm_cell_47/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split
"lstm_47/while/lstm_cell_47/SigmoidSigmoid)lstm_47/while/lstm_cell_47/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_47/while/lstm_cell_47/Sigmoid_1Sigmoid)lstm_47/while/lstm_cell_47/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_47/while/lstm_cell_47/mulMul(lstm_47/while/lstm_cell_47/Sigmoid_1:y:0lstm_47_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_47/while/lstm_cell_47/ReluRelu)lstm_47/while/lstm_cell_47/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
 lstm_47/while/lstm_cell_47/mul_1Mul&lstm_47/while/lstm_cell_47/Sigmoid:y:0-lstm_47/while/lstm_cell_47/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
 lstm_47/while/lstm_cell_47/add_1AddV2"lstm_47/while/lstm_cell_47/mul:z:0$lstm_47/while/lstm_cell_47/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_47/while/lstm_cell_47/Sigmoid_2Sigmoid)lstm_47/while/lstm_cell_47/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!lstm_47/while/lstm_cell_47/Relu_1Relu$lstm_47/while/lstm_cell_47/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
 lstm_47/while/lstm_cell_47/mul_2Mul(lstm_47/while/lstm_cell_47/Sigmoid_2:y:0/lstm_47/while/lstm_cell_47/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿå
2lstm_47/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_47_while_placeholder_1lstm_47_while_placeholder$lstm_47/while/lstm_cell_47/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒU
lstm_47/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_47/while/addAddV2lstm_47_while_placeholderlstm_47/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_47/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_47/while/add_1AddV2(lstm_47_while_lstm_47_while_loop_counterlstm_47/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_47/while/IdentityIdentitylstm_47/while/add_1:z:0^lstm_47/while/NoOp*
T0*
_output_shapes
: 
lstm_47/while/Identity_1Identity.lstm_47_while_lstm_47_while_maximum_iterations^lstm_47/while/NoOp*
T0*
_output_shapes
: q
lstm_47/while/Identity_2Identitylstm_47/while/add:z:0^lstm_47/while/NoOp*
T0*
_output_shapes
: ±
lstm_47/while/Identity_3IdentityBlstm_47/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_47/while/NoOp*
T0*
_output_shapes
: :éèÒ
lstm_47/while/Identity_4Identity$lstm_47/while/lstm_cell_47/mul_2:z:0^lstm_47/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_47/while/Identity_5Identity$lstm_47/while/lstm_cell_47/add_1:z:0^lstm_47/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
lstm_47/while/NoOpNoOp2^lstm_47/while/lstm_cell_47/BiasAdd/ReadVariableOp1^lstm_47/while/lstm_cell_47/MatMul/ReadVariableOp3^lstm_47/while/lstm_cell_47/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_47_while_identitylstm_47/while/Identity:output:0"=
lstm_47_while_identity_1!lstm_47/while/Identity_1:output:0"=
lstm_47_while_identity_2!lstm_47/while/Identity_2:output:0"=
lstm_47_while_identity_3!lstm_47/while/Identity_3:output:0"=
lstm_47_while_identity_4!lstm_47/while/Identity_4:output:0"=
lstm_47_while_identity_5!lstm_47/while/Identity_5:output:0"P
%lstm_47_while_lstm_47_strided_slice_1'lstm_47_while_lstm_47_strided_slice_1_0"z
:lstm_47_while_lstm_cell_47_biasadd_readvariableop_resource<lstm_47_while_lstm_cell_47_biasadd_readvariableop_resource_0"|
;lstm_47_while_lstm_cell_47_matmul_1_readvariableop_resource=lstm_47_while_lstm_cell_47_matmul_1_readvariableop_resource_0"x
9lstm_47_while_lstm_cell_47_matmul_readvariableop_resource;lstm_47_while_lstm_cell_47_matmul_readvariableop_resource_0"È
alstm_47_while_tensorarrayv2read_tensorlistgetitem_lstm_47_tensorarrayunstack_tensorlistfromtensorclstm_47_while_tensorarrayv2read_tensorlistgetitem_lstm_47_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2f
1lstm_47/while/lstm_cell_47/BiasAdd/ReadVariableOp1lstm_47/while/lstm_cell_47/BiasAdd/ReadVariableOp2d
0lstm_47/while/lstm_cell_47/MatMul/ReadVariableOp0lstm_47/while/lstm_cell_47/MatMul/ReadVariableOp2h
2lstm_47/while/lstm_cell_47/MatMul_1/ReadVariableOp2lstm_47/while/lstm_cell_47/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
J

C__inference_lstm_46_layer_call_and_return_conditional_losses_235094

inputs>
+lstm_cell_46_matmul_readvariableop_resource:	@?
-lstm_cell_46_matmul_1_readvariableop_resource:@:
,lstm_cell_46_biasadd_readvariableop_resource:@
identity¢#lstm_cell_46/BiasAdd/ReadVariableOp¢"lstm_cell_46/MatMul/ReadVariableOp¢$lstm_cell_46/MatMul_1/ReadVariableOp¢while;
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
valueB:Ñ
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
value	B :s
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
:ÿÿÿÿÿÿÿÿÿR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
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
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
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
valueB:Û
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
"lstm_cell_46/MatMul/ReadVariableOpReadVariableOp+lstm_cell_46_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0
lstm_cell_46/MatMulMatMulstrided_slice_2:output:0*lstm_cell_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
$lstm_cell_46/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_46_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0
lstm_cell_46/MatMul_1MatMulzeros:output:0,lstm_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_46/addAddV2lstm_cell_46/MatMul:product:0lstm_cell_46/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#lstm_cell_46/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_46_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
lstm_cell_46/BiasAddBiasAddlstm_cell_46/add:z:0+lstm_cell_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@^
lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_46/splitSplit%lstm_cell_46/split/split_dim:output:0lstm_cell_46/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitn
lstm_cell_46/SigmoidSigmoidlstm_cell_46/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
lstm_cell_46/Sigmoid_1Sigmoidlstm_cell_46/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
lstm_cell_46/mulMullstm_cell_46/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
lstm_cell_46/ReluRelulstm_cell_46/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_46/mul_1Mullstm_cell_46/Sigmoid:y:0lstm_cell_46/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
lstm_cell_46/add_1AddV2lstm_cell_46/mul:z:0lstm_cell_46/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
lstm_cell_46/Sigmoid_2Sigmoidlstm_cell_46/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
lstm_cell_46/Relu_1Relulstm_cell_46/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_46/mul_2Mullstm_cell_46/Sigmoid_2:y:0!lstm_cell_46/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_46_matmul_readvariableop_resource-lstm_cell_46_matmul_1_readvariableop_resource,lstm_cell_46_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_235010*
condR
while_cond_235009*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
NoOpNoOp$^lstm_cell_46/BiasAdd/ReadVariableOp#^lstm_cell_46/MatMul/ReadVariableOp%^lstm_cell_46/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_46/BiasAdd/ReadVariableOp#lstm_cell_46/BiasAdd/ReadVariableOp2H
"lstm_cell_46/MatMul/ReadVariableOp"lstm_cell_46/MatMul/ReadVariableOp2L
$lstm_cell_46/MatMul_1/ReadVariableOp$lstm_cell_46/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÿ
³
(__inference_lstm_46_layer_call_fn_234654

inputs
unknown:	@
	unknown_0:@
	unknown_1:@
identity¢StatefulPartitionedCallé
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_46_layer_call_and_return_conditional_losses_233308s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
8
Ì
while_body_234867
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_46_matmul_readvariableop_resource_0:	@G
5while_lstm_cell_46_matmul_1_readvariableop_resource_0:@B
4while_lstm_cell_46_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_46_matmul_readvariableop_resource:	@E
3while_lstm_cell_46_matmul_1_readvariableop_resource:@@
2while_lstm_cell_46_biasadd_readvariableop_resource:@¢)while/lstm_cell_46/BiasAdd/ReadVariableOp¢(while/lstm_cell_46/MatMul/ReadVariableOp¢*while/lstm_cell_46/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
(while/lstm_cell_46/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_46_matmul_readvariableop_resource_0*
_output_shapes
:	@*
dtype0¹
while/lstm_cell_46/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ 
*while/lstm_cell_46/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_46_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0 
while/lstm_cell_46/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_46/addAddV2#while/lstm_cell_46/MatMul:product:0%while/lstm_cell_46/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
)while/lstm_cell_46/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_46_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0¦
while/lstm_cell_46/BiasAddBiasAddwhile/lstm_cell_46/add:z:01while/lstm_cell_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
"while/lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_46/splitSplit+while/lstm_cell_46/split/split_dim:output:0#while/lstm_cell_46/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitz
while/lstm_cell_46/SigmoidSigmoid!while/lstm_cell_46/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
while/lstm_cell_46/Sigmoid_1Sigmoid!while/lstm_cell_46/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_46/mulMul while/lstm_cell_46/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
while/lstm_cell_46/ReluRelu!while/lstm_cell_46/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_46/mul_1Mulwhile/lstm_cell_46/Sigmoid:y:0%while/lstm_cell_46/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_46/add_1AddV2while/lstm_cell_46/mul:z:0while/lstm_cell_46/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
while/lstm_cell_46/Sigmoid_2Sigmoid!while/lstm_cell_46/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
while/lstm_cell_46/Relu_1Reluwhile/lstm_cell_46/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_46/mul_2Mul while/lstm_cell_46/Sigmoid_2:y:0'while/lstm_cell_46/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_46/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒy
while/Identity_4Identitywhile/lstm_cell_46/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
while/Identity_5Identitywhile/lstm_cell_46/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ

while/NoOpNoOp*^while/lstm_cell_46/BiasAdd/ReadVariableOp)^while/lstm_cell_46/MatMul/ReadVariableOp+^while/lstm_cell_46/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_46_biasadd_readvariableop_resource4while_lstm_cell_46_biasadd_readvariableop_resource_0"l
3while_lstm_cell_46_matmul_1_readvariableop_resource5while_lstm_cell_46_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_46_matmul_readvariableop_resource3while_lstm_cell_46_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_46/BiasAdd/ReadVariableOp)while/lstm_cell_46/BiasAdd/ReadVariableOp2T
(while/lstm_cell_46/MatMul/ReadVariableOp(while/lstm_cell_46/MatMul/ReadVariableOp2X
*while/lstm_cell_46/MatMul_1/ReadVariableOp*while/lstm_cell_46/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
µ
Ã
while_cond_232889
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_232889___redundant_placeholder04
0while_while_cond_232889___redundant_placeholder14
0while_while_cond_232889___redundant_placeholder24
0while_while_cond_232889___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
ÏA
Ì

lstm_46_while_body_234369,
(lstm_46_while_lstm_46_while_loop_counter2
.lstm_46_while_lstm_46_while_maximum_iterations
lstm_46_while_placeholder
lstm_46_while_placeholder_1
lstm_46_while_placeholder_2
lstm_46_while_placeholder_3+
'lstm_46_while_lstm_46_strided_slice_1_0g
clstm_46_while_tensorarrayv2read_tensorlistgetitem_lstm_46_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_46_while_lstm_cell_46_matmul_readvariableop_resource_0:	@O
=lstm_46_while_lstm_cell_46_matmul_1_readvariableop_resource_0:@J
<lstm_46_while_lstm_cell_46_biasadd_readvariableop_resource_0:@
lstm_46_while_identity
lstm_46_while_identity_1
lstm_46_while_identity_2
lstm_46_while_identity_3
lstm_46_while_identity_4
lstm_46_while_identity_5)
%lstm_46_while_lstm_46_strided_slice_1e
alstm_46_while_tensorarrayv2read_tensorlistgetitem_lstm_46_tensorarrayunstack_tensorlistfromtensorL
9lstm_46_while_lstm_cell_46_matmul_readvariableop_resource:	@M
;lstm_46_while_lstm_cell_46_matmul_1_readvariableop_resource:@H
:lstm_46_while_lstm_cell_46_biasadd_readvariableop_resource:@¢1lstm_46/while/lstm_cell_46/BiasAdd/ReadVariableOp¢0lstm_46/while/lstm_cell_46/MatMul/ReadVariableOp¢2lstm_46/while/lstm_cell_46/MatMul_1/ReadVariableOp
?lstm_46/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  Ï
1lstm_46/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_46_while_tensorarrayv2read_tensorlistgetitem_lstm_46_tensorarrayunstack_tensorlistfromtensor_0lstm_46_while_placeholderHlstm_46/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0­
0lstm_46/while/lstm_cell_46/MatMul/ReadVariableOpReadVariableOp;lstm_46_while_lstm_cell_46_matmul_readvariableop_resource_0*
_output_shapes
:	@*
dtype0Ñ
!lstm_46/while/lstm_cell_46/MatMulMatMul8lstm_46/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_46/while/lstm_cell_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@°
2lstm_46/while/lstm_cell_46/MatMul_1/ReadVariableOpReadVariableOp=lstm_46_while_lstm_cell_46_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0¸
#lstm_46/while/lstm_cell_46/MatMul_1MatMullstm_46_while_placeholder_2:lstm_46/while/lstm_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@µ
lstm_46/while/lstm_cell_46/addAddV2+lstm_46/while/lstm_cell_46/MatMul:product:0-lstm_46/while/lstm_cell_46/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ª
1lstm_46/while/lstm_cell_46/BiasAdd/ReadVariableOpReadVariableOp<lstm_46_while_lstm_cell_46_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0¾
"lstm_46/while/lstm_cell_46/BiasAddBiasAdd"lstm_46/while/lstm_cell_46/add:z:09lstm_46/while/lstm_cell_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@l
*lstm_46/while/lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
 lstm_46/while/lstm_cell_46/splitSplit3lstm_46/while/lstm_cell_46/split/split_dim:output:0+lstm_46/while/lstm_cell_46/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split
"lstm_46/while/lstm_cell_46/SigmoidSigmoid)lstm_46/while/lstm_cell_46/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_46/while/lstm_cell_46/Sigmoid_1Sigmoid)lstm_46/while/lstm_cell_46/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_46/while/lstm_cell_46/mulMul(lstm_46/while/lstm_cell_46/Sigmoid_1:y:0lstm_46_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_46/while/lstm_cell_46/ReluRelu)lstm_46/while/lstm_cell_46/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
 lstm_46/while/lstm_cell_46/mul_1Mul&lstm_46/while/lstm_cell_46/Sigmoid:y:0-lstm_46/while/lstm_cell_46/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
 lstm_46/while/lstm_cell_46/add_1AddV2"lstm_46/while/lstm_cell_46/mul:z:0$lstm_46/while/lstm_cell_46/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_46/while/lstm_cell_46/Sigmoid_2Sigmoid)lstm_46/while/lstm_cell_46/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!lstm_46/while/lstm_cell_46/Relu_1Relu$lstm_46/while/lstm_cell_46/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
 lstm_46/while/lstm_cell_46/mul_2Mul(lstm_46/while/lstm_cell_46/Sigmoid_2:y:0/lstm_46/while/lstm_cell_46/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿå
2lstm_46/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_46_while_placeholder_1lstm_46_while_placeholder$lstm_46/while/lstm_cell_46/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒU
lstm_46/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_46/while/addAddV2lstm_46_while_placeholderlstm_46/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_46/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_46/while/add_1AddV2(lstm_46_while_lstm_46_while_loop_counterlstm_46/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_46/while/IdentityIdentitylstm_46/while/add_1:z:0^lstm_46/while/NoOp*
T0*
_output_shapes
: 
lstm_46/while/Identity_1Identity.lstm_46_while_lstm_46_while_maximum_iterations^lstm_46/while/NoOp*
T0*
_output_shapes
: q
lstm_46/while/Identity_2Identitylstm_46/while/add:z:0^lstm_46/while/NoOp*
T0*
_output_shapes
: ±
lstm_46/while/Identity_3IdentityBlstm_46/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_46/while/NoOp*
T0*
_output_shapes
: :éèÒ
lstm_46/while/Identity_4Identity$lstm_46/while/lstm_cell_46/mul_2:z:0^lstm_46/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_46/while/Identity_5Identity$lstm_46/while/lstm_cell_46/add_1:z:0^lstm_46/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
lstm_46/while/NoOpNoOp2^lstm_46/while/lstm_cell_46/BiasAdd/ReadVariableOp1^lstm_46/while/lstm_cell_46/MatMul/ReadVariableOp3^lstm_46/while/lstm_cell_46/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_46_while_identitylstm_46/while/Identity:output:0"=
lstm_46_while_identity_1!lstm_46/while/Identity_1:output:0"=
lstm_46_while_identity_2!lstm_46/while/Identity_2:output:0"=
lstm_46_while_identity_3!lstm_46/while/Identity_3:output:0"=
lstm_46_while_identity_4!lstm_46/while/Identity_4:output:0"=
lstm_46_while_identity_5!lstm_46/while/Identity_5:output:0"P
%lstm_46_while_lstm_46_strided_slice_1'lstm_46_while_lstm_46_strided_slice_1_0"z
:lstm_46_while_lstm_cell_46_biasadd_readvariableop_resource<lstm_46_while_lstm_cell_46_biasadd_readvariableop_resource_0"|
;lstm_46_while_lstm_cell_46_matmul_1_readvariableop_resource=lstm_46_while_lstm_cell_46_matmul_1_readvariableop_resource_0"x
9lstm_46_while_lstm_cell_46_matmul_readvariableop_resource;lstm_46_while_lstm_cell_46_matmul_readvariableop_resource_0"È
alstm_46_while_tensorarrayv2read_tensorlistgetitem_lstm_46_tensorarrayunstack_tensorlistfromtensorclstm_46_while_tensorarrayv2read_tensorlistgetitem_lstm_46_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2f
1lstm_46/while/lstm_cell_46/BiasAdd/ReadVariableOp1lstm_46/while/lstm_cell_46/BiasAdd/ReadVariableOp2d
0lstm_46/while/lstm_cell_46/MatMul/ReadVariableOp0lstm_46/while/lstm_cell_46/MatMul/ReadVariableOp2h
2lstm_46/while/lstm_cell_46/MatMul_1/ReadVariableOp2lstm_46/while/lstm_cell_46/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
8
Ê
while_body_233584
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_47_matmul_readvariableop_resource_0:@G
5while_lstm_cell_47_matmul_1_readvariableop_resource_0:@B
4while_lstm_cell_47_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_47_matmul_readvariableop_resource:@E
3while_lstm_cell_47_matmul_1_readvariableop_resource:@@
2while_lstm_cell_47_biasadd_readvariableop_resource:@¢)while/lstm_cell_47/BiasAdd/ReadVariableOp¢(while/lstm_cell_47/MatMul/ReadVariableOp¢*while/lstm_cell_47/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
(while/lstm_cell_47/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_47_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0¹
while/lstm_cell_47/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ 
*while/lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_47_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0 
while/lstm_cell_47/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_47/addAddV2#while/lstm_cell_47/MatMul:product:0%while/lstm_cell_47/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
)while/lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_47_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0¦
while/lstm_cell_47/BiasAddBiasAddwhile/lstm_cell_47/add:z:01while/lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
"while/lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_47/splitSplit+while/lstm_cell_47/split/split_dim:output:0#while/lstm_cell_47/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitz
while/lstm_cell_47/SigmoidSigmoid!while/lstm_cell_47/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
while/lstm_cell_47/Sigmoid_1Sigmoid!while/lstm_cell_47/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_47/mulMul while/lstm_cell_47/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
while/lstm_cell_47/ReluRelu!while/lstm_cell_47/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_47/mul_1Mulwhile/lstm_cell_47/Sigmoid:y:0%while/lstm_cell_47/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_47/add_1AddV2while/lstm_cell_47/mul:z:0while/lstm_cell_47/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
while/lstm_cell_47/Sigmoid_2Sigmoid!while/lstm_cell_47/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
while/lstm_cell_47/Relu_1Reluwhile/lstm_cell_47/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_47/mul_2Mul while/lstm_cell_47/Sigmoid_2:y:0'while/lstm_cell_47/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_47/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒy
while/Identity_4Identitywhile/lstm_cell_47/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
while/Identity_5Identitywhile/lstm_cell_47/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ

while/NoOpNoOp*^while/lstm_cell_47/BiasAdd/ReadVariableOp)^while/lstm_cell_47/MatMul/ReadVariableOp+^while/lstm_cell_47/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_47_biasadd_readvariableop_resource4while_lstm_cell_47_biasadd_readvariableop_resource_0"l
3while_lstm_cell_47_matmul_1_readvariableop_resource5while_lstm_cell_47_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_47_matmul_readvariableop_resource3while_lstm_cell_47_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_47/BiasAdd/ReadVariableOp)while/lstm_cell_47/BiasAdd/ReadVariableOp2T
(while/lstm_cell_47/MatMul/ReadVariableOp(while/lstm_cell_47/MatMul/ReadVariableOp2X
*while/lstm_cell_47/MatMul_1/ReadVariableOp*while/lstm_cell_47/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ÝJ

C__inference_lstm_46_layer_call_and_return_conditional_losses_234808
inputs_0>
+lstm_cell_46_matmul_readvariableop_resource:	@?
-lstm_cell_46_matmul_1_readvariableop_resource:@:
,lstm_cell_46_biasadd_readvariableop_resource:@
identity¢#lstm_cell_46/BiasAdd/ReadVariableOp¢"lstm_cell_46/MatMul/ReadVariableOp¢$lstm_cell_46/MatMul_1/ReadVariableOp¢while=
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
valueB:Ñ
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
value	B :s
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
:ÿÿÿÿÿÿÿÿÿR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
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
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
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
valueB:Û
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
"lstm_cell_46/MatMul/ReadVariableOpReadVariableOp+lstm_cell_46_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0
lstm_cell_46/MatMulMatMulstrided_slice_2:output:0*lstm_cell_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
$lstm_cell_46/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_46_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0
lstm_cell_46/MatMul_1MatMulzeros:output:0,lstm_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_46/addAddV2lstm_cell_46/MatMul:product:0lstm_cell_46/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#lstm_cell_46/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_46_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
lstm_cell_46/BiasAddBiasAddlstm_cell_46/add:z:0+lstm_cell_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@^
lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_46/splitSplit%lstm_cell_46/split/split_dim:output:0lstm_cell_46/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitn
lstm_cell_46/SigmoidSigmoidlstm_cell_46/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
lstm_cell_46/Sigmoid_1Sigmoidlstm_cell_46/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
lstm_cell_46/mulMullstm_cell_46/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
lstm_cell_46/ReluRelulstm_cell_46/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_46/mul_1Mullstm_cell_46/Sigmoid:y:0lstm_cell_46/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
lstm_cell_46/add_1AddV2lstm_cell_46/mul:z:0lstm_cell_46/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
lstm_cell_46/Sigmoid_2Sigmoidlstm_cell_46/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
lstm_cell_46/Relu_1Relulstm_cell_46/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_46/mul_2Mullstm_cell_46/Sigmoid_2:y:0!lstm_cell_46/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_46_matmul_readvariableop_resource-lstm_cell_46_matmul_1_readvariableop_resource,lstm_cell_46_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_234724*
condR
while_cond_234723*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÀ
NoOpNoOp$^lstm_cell_46/BiasAdd/ReadVariableOp#^lstm_cell_46/MatMul/ReadVariableOp%^lstm_cell_46/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_46/BiasAdd/ReadVariableOp#lstm_cell_46/BiasAdd/ReadVariableOp2H
"lstm_cell_46/MatMul/ReadVariableOp"lstm_cell_46/MatMul/ReadVariableOp2L
$lstm_cell_46/MatMul_1/ReadVariableOp$lstm_cell_46/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
8
Ì
while_body_233224
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_46_matmul_readvariableop_resource_0:	@G
5while_lstm_cell_46_matmul_1_readvariableop_resource_0:@B
4while_lstm_cell_46_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_46_matmul_readvariableop_resource:	@E
3while_lstm_cell_46_matmul_1_readvariableop_resource:@@
2while_lstm_cell_46_biasadd_readvariableop_resource:@¢)while/lstm_cell_46/BiasAdd/ReadVariableOp¢(while/lstm_cell_46/MatMul/ReadVariableOp¢*while/lstm_cell_46/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
(while/lstm_cell_46/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_46_matmul_readvariableop_resource_0*
_output_shapes
:	@*
dtype0¹
while/lstm_cell_46/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ 
*while/lstm_cell_46/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_46_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0 
while/lstm_cell_46/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_46/addAddV2#while/lstm_cell_46/MatMul:product:0%while/lstm_cell_46/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
)while/lstm_cell_46/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_46_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0¦
while/lstm_cell_46/BiasAddBiasAddwhile/lstm_cell_46/add:z:01while/lstm_cell_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
"while/lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_46/splitSplit+while/lstm_cell_46/split/split_dim:output:0#while/lstm_cell_46/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitz
while/lstm_cell_46/SigmoidSigmoid!while/lstm_cell_46/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
while/lstm_cell_46/Sigmoid_1Sigmoid!while/lstm_cell_46/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_46/mulMul while/lstm_cell_46/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
while/lstm_cell_46/ReluRelu!while/lstm_cell_46/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_46/mul_1Mulwhile/lstm_cell_46/Sigmoid:y:0%while/lstm_cell_46/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_46/add_1AddV2while/lstm_cell_46/mul:z:0while/lstm_cell_46/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
while/lstm_cell_46/Sigmoid_2Sigmoid!while/lstm_cell_46/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
while/lstm_cell_46/Relu_1Reluwhile/lstm_cell_46/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_46/mul_2Mul while/lstm_cell_46/Sigmoid_2:y:0'while/lstm_cell_46/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_46/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒy
while/Identity_4Identitywhile/lstm_cell_46/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
while/Identity_5Identitywhile/lstm_cell_46/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ

while/NoOpNoOp*^while/lstm_cell_46/BiasAdd/ReadVariableOp)^while/lstm_cell_46/MatMul/ReadVariableOp+^while/lstm_cell_46/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_46_biasadd_readvariableop_resource4while_lstm_cell_46_biasadd_readvariableop_resource_0"l
3while_lstm_cell_46_matmul_1_readvariableop_resource5while_lstm_cell_46_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_46_matmul_readvariableop_resource3while_lstm_cell_46_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_46/BiasAdd/ReadVariableOp)while/lstm_cell_46/BiasAdd/ReadVariableOp2T
(while/lstm_cell_46/MatMul/ReadVariableOp(while/lstm_cell_46/MatMul/ReadVariableOp2X
*while/lstm_cell_46/MatMul_1/ReadVariableOp*while/lstm_cell_46/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
µ
Ã
while_cond_235152
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_235152___redundant_placeholder04
0while_while_cond_235152___redundant_placeholder14
0while_while_cond_235152___redundant_placeholder24
0while_while_cond_235152___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
µ
Ã
while_cond_235339
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_235339___redundant_placeholder04
0while_while_cond_235339___redundant_placeholder14
0while_while_cond_235339___redundant_placeholder24
0while_while_cond_235339___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
J

C__inference_lstm_47_layer_call_and_return_conditional_losses_235853

inputs=
+lstm_cell_47_matmul_readvariableop_resource:@?
-lstm_cell_47_matmul_1_readvariableop_resource:@:
,lstm_cell_47_biasadd_readvariableop_resource:@
identity¢#lstm_cell_47/BiasAdd/ReadVariableOp¢"lstm_cell_47/MatMul/ReadVariableOp¢$lstm_cell_47/MatMul_1/ReadVariableOp¢while;
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
valueB:Ñ
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
value	B :s
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
:ÿÿÿÿÿÿÿÿÿR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
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
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
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
valueB:Û
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
"lstm_cell_47/MatMul/ReadVariableOpReadVariableOp+lstm_cell_47_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0
lstm_cell_47/MatMulMatMulstrided_slice_2:output:0*lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
$lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_47_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0
lstm_cell_47/MatMul_1MatMulzeros:output:0,lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_47/addAddV2lstm_cell_47/MatMul:product:0lstm_cell_47/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_47_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
lstm_cell_47/BiasAddBiasAddlstm_cell_47/add:z:0+lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@^
lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_47/splitSplit%lstm_cell_47/split/split_dim:output:0lstm_cell_47/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitn
lstm_cell_47/SigmoidSigmoidlstm_cell_47/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
lstm_cell_47/Sigmoid_1Sigmoidlstm_cell_47/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
lstm_cell_47/mulMullstm_cell_47/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
lstm_cell_47/ReluRelulstm_cell_47/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_47/mul_1Mullstm_cell_47/Sigmoid:y:0lstm_cell_47/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
lstm_cell_47/add_1AddV2lstm_cell_47/mul:z:0lstm_cell_47/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
lstm_cell_47/Sigmoid_2Sigmoidlstm_cell_47/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
lstm_cell_47/Relu_1Relulstm_cell_47/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_47/mul_2Mullstm_cell_47/Sigmoid_2:y:0!lstm_cell_47/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_47_matmul_readvariableop_resource-lstm_cell_47_matmul_1_readvariableop_resource,lstm_cell_47_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_235769*
condR
while_cond_235768*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
NoOpNoOp$^lstm_cell_47/BiasAdd/ReadVariableOp#^lstm_cell_47/MatMul/ReadVariableOp%^lstm_cell_47/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_47/BiasAdd/ReadVariableOp#lstm_cell_47/BiasAdd/ReadVariableOp2H
"lstm_cell_47/MatMul/ReadVariableOp"lstm_cell_47/MatMul/ReadVariableOp2L
$lstm_cell_47/MatMul_1/ReadVariableOp$lstm_cell_47/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó"
Ý
while_body_233081
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_47_233105_0:@-
while_lstm_cell_47_233107_0:@)
while_lstm_cell_47_233109_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_47_233105:@+
while_lstm_cell_47_233107:@'
while_lstm_cell_47_233109:@¢*while/lstm_cell_47/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0³
*while/lstm_cell_47/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_47_233105_0while_lstm_cell_47_233107_0while_lstm_cell_47_233109_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_233022Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_47/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ
while/Identity_4Identity3while/lstm_cell_47/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/Identity_5Identity3while/lstm_cell_47/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy

while/NoOpNoOp+^while/lstm_cell_47/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_47_233105while_lstm_cell_47_233105_0"8
while_lstm_cell_47_233107while_lstm_cell_47_233107_0"8
while_lstm_cell_47_233109while_lstm_cell_47_233109_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2X
*while/lstm_cell_47/StatefulPartitionedCall*while/lstm_cell_47/StatefulPartitionedCall: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
µ
Ã
while_cond_233373
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_233373___redundant_placeholder04
0while_while_cond_233373___redundant_placeholder14
0while_while_cond_233373___redundant_placeholder24
0while_while_cond_233373___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
8
Ì
while_body_234724
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_46_matmul_readvariableop_resource_0:	@G
5while_lstm_cell_46_matmul_1_readvariableop_resource_0:@B
4while_lstm_cell_46_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_46_matmul_readvariableop_resource:	@E
3while_lstm_cell_46_matmul_1_readvariableop_resource:@@
2while_lstm_cell_46_biasadd_readvariableop_resource:@¢)while/lstm_cell_46/BiasAdd/ReadVariableOp¢(while/lstm_cell_46/MatMul/ReadVariableOp¢*while/lstm_cell_46/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
(while/lstm_cell_46/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_46_matmul_readvariableop_resource_0*
_output_shapes
:	@*
dtype0¹
while/lstm_cell_46/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ 
*while/lstm_cell_46/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_46_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0 
while/lstm_cell_46/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_46/addAddV2#while/lstm_cell_46/MatMul:product:0%while/lstm_cell_46/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
)while/lstm_cell_46/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_46_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0¦
while/lstm_cell_46/BiasAddBiasAddwhile/lstm_cell_46/add:z:01while/lstm_cell_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
"while/lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_46/splitSplit+while/lstm_cell_46/split/split_dim:output:0#while/lstm_cell_46/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitz
while/lstm_cell_46/SigmoidSigmoid!while/lstm_cell_46/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
while/lstm_cell_46/Sigmoid_1Sigmoid!while/lstm_cell_46/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_46/mulMul while/lstm_cell_46/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
while/lstm_cell_46/ReluRelu!while/lstm_cell_46/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_46/mul_1Mulwhile/lstm_cell_46/Sigmoid:y:0%while/lstm_cell_46/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_46/add_1AddV2while/lstm_cell_46/mul:z:0while/lstm_cell_46/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
while/lstm_cell_46/Sigmoid_2Sigmoid!while/lstm_cell_46/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
while/lstm_cell_46/Relu_1Reluwhile/lstm_cell_46/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_46/mul_2Mul while/lstm_cell_46/Sigmoid_2:y:0'while/lstm_cell_46/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_46/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒy
while/Identity_4Identitywhile/lstm_cell_46/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
while/Identity_5Identitywhile/lstm_cell_46/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ

while/NoOpNoOp*^while/lstm_cell_46/BiasAdd/ReadVariableOp)^while/lstm_cell_46/MatMul/ReadVariableOp+^while/lstm_cell_46/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_46_biasadd_readvariableop_resource4while_lstm_cell_46_biasadd_readvariableop_resource_0"l
3while_lstm_cell_46_matmul_1_readvariableop_resource5while_lstm_cell_46_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_46_matmul_readvariableop_resource3while_lstm_cell_46_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_46/BiasAdd/ReadVariableOp)while/lstm_cell_46/BiasAdd/ReadVariableOp2T
(while/lstm_cell_46/MatMul/ReadVariableOp(while/lstm_cell_46/MatMul/ReadVariableOp2X
*while/lstm_cell_46/MatMul_1/ReadVariableOp*while/lstm_cell_46/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ë
ô
-__inference_lstm_cell_46_layer_call_fn_235889

inputs
states_0
states_1
unknown:	@
	unknown_0:@
	unknown_1:@
identity

identity_1

identity_2¢StatefulPartitionedCall¨
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_46_layer_call_and_return_conditional_losses_232526o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
Ë

H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_233022

inputs

states
states_10
matmul_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿN
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates
ð	
Ë
.__inference_sequential_23_layer_call_fn_233928
lstm_46_input
unknown:	@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@
	unknown_5:	
	unknown_6:	
identity¢StatefulPartitionedCall´
StatefulPartitionedCallStatefulPartitionedCalllstm_46_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_23_layer_call_and_return_conditional_losses_233888p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_46_input
ô
²
(__inference_lstm_47_layer_call_fn_235281

inputs
unknown:@
	unknown_0:@
	unknown_1:@
identity¢StatefulPartitionedCallå
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_47_layer_call_and_return_conditional_losses_233668o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
J

C__inference_lstm_46_layer_call_and_return_conditional_losses_233308

inputs>
+lstm_cell_46_matmul_readvariableop_resource:	@?
-lstm_cell_46_matmul_1_readvariableop_resource:@:
,lstm_cell_46_biasadd_readvariableop_resource:@
identity¢#lstm_cell_46/BiasAdd/ReadVariableOp¢"lstm_cell_46/MatMul/ReadVariableOp¢$lstm_cell_46/MatMul_1/ReadVariableOp¢while;
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
valueB:Ñ
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
value	B :s
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
:ÿÿÿÿÿÿÿÿÿR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
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
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
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
valueB:Û
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
"lstm_cell_46/MatMul/ReadVariableOpReadVariableOp+lstm_cell_46_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0
lstm_cell_46/MatMulMatMulstrided_slice_2:output:0*lstm_cell_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
$lstm_cell_46/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_46_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0
lstm_cell_46/MatMul_1MatMulzeros:output:0,lstm_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_46/addAddV2lstm_cell_46/MatMul:product:0lstm_cell_46/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#lstm_cell_46/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_46_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
lstm_cell_46/BiasAddBiasAddlstm_cell_46/add:z:0+lstm_cell_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@^
lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_46/splitSplit%lstm_cell_46/split/split_dim:output:0lstm_cell_46/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitn
lstm_cell_46/SigmoidSigmoidlstm_cell_46/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
lstm_cell_46/Sigmoid_1Sigmoidlstm_cell_46/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
lstm_cell_46/mulMullstm_cell_46/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
lstm_cell_46/ReluRelulstm_cell_46/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_46/mul_1Mullstm_cell_46/Sigmoid:y:0lstm_cell_46/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
lstm_cell_46/add_1AddV2lstm_cell_46/mul:z:0lstm_cell_46/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
lstm_cell_46/Sigmoid_2Sigmoidlstm_cell_46/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
lstm_cell_46/Relu_1Relulstm_cell_46/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_46/mul_2Mullstm_cell_46/Sigmoid_2:y:0!lstm_cell_46/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_46_matmul_readvariableop_resource-lstm_cell_46_matmul_1_readvariableop_resource,lstm_cell_46_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_233224*
condR
while_cond_233223*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
NoOpNoOp$^lstm_cell_46/BiasAdd/ReadVariableOp#^lstm_cell_46/MatMul/ReadVariableOp%^lstm_cell_46/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_46/BiasAdd/ReadVariableOp#lstm_cell_46/BiasAdd/ReadVariableOp2H
"lstm_cell_46/MatMul/ReadVariableOp"lstm_cell_46/MatMul/ReadVariableOp2L
$lstm_cell_46/MatMul_1/ReadVariableOp$lstm_cell_46/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

´
(__inference_lstm_47_layer_call_fn_235259
inputs_0
unknown:@
	unknown_0:@
	unknown_1:@
identity¢StatefulPartitionedCallç
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_47_layer_call_and_return_conditional_losses_233150o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
î
Ø
I__inference_sequential_23_layer_call_and_return_conditional_losses_233483

inputs!
lstm_46_233309:	@ 
lstm_46_233311:@
lstm_46_233313:@ 
lstm_47_233459:@ 
lstm_47_233461:@
lstm_47_233463:@"
dense_23_233477:	
dense_23_233479:	
identity¢ dense_23/StatefulPartitionedCall¢lstm_46/StatefulPartitionedCall¢lstm_47/StatefulPartitionedCall
lstm_46/StatefulPartitionedCallStatefulPartitionedCallinputslstm_46_233309lstm_46_233311lstm_46_233313*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_46_layer_call_and_return_conditional_losses_233308 
lstm_47/StatefulPartitionedCallStatefulPartitionedCall(lstm_46/StatefulPartitionedCall:output:0lstm_47_233459lstm_47_233461lstm_47_233463*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_47_layer_call_and_return_conditional_losses_233458
 dense_23/StatefulPartitionedCallStatefulPartitionedCall(lstm_47/StatefulPartitionedCall:output:0dense_23_233477dense_23_233479*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_23_layer_call_and_return_conditional_losses_233476y
IdentityIdentity)dense_23/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ­
NoOpNoOp!^dense_23/StatefulPartitionedCall ^lstm_46/StatefulPartitionedCall ^lstm_47/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2B
lstm_46/StatefulPartitionedCalllstm_46/StatefulPartitionedCall2B
lstm_47/StatefulPartitionedCalllstm_47/StatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ß
I__inference_sequential_23_layer_call_and_return_conditional_losses_233974
lstm_46_input!
lstm_46_233954:	@ 
lstm_46_233956:@
lstm_46_233958:@ 
lstm_47_233961:@ 
lstm_47_233963:@
lstm_47_233965:@"
dense_23_233968:	
dense_23_233970:	
identity¢ dense_23/StatefulPartitionedCall¢lstm_46/StatefulPartitionedCall¢lstm_47/StatefulPartitionedCall
lstm_46/StatefulPartitionedCallStatefulPartitionedCalllstm_46_inputlstm_46_233954lstm_46_233956lstm_46_233958*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_46_layer_call_and_return_conditional_losses_233833 
lstm_47/StatefulPartitionedCallStatefulPartitionedCall(lstm_46/StatefulPartitionedCall:output:0lstm_47_233961lstm_47_233963lstm_47_233965*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_47_layer_call_and_return_conditional_losses_233668
 dense_23/StatefulPartitionedCallStatefulPartitionedCall(lstm_47/StatefulPartitionedCall:output:0dense_23_233968dense_23_233970*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_23_layer_call_and_return_conditional_losses_233476y
IdentityIdentity)dense_23/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ­
NoOpNoOp!^dense_23/StatefulPartitionedCall ^lstm_46/StatefulPartitionedCall ^lstm_47/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2B
lstm_46/StatefulPartitionedCalllstm_46/StatefulPartitionedCall2B
lstm_47/StatefulPartitionedCalllstm_47/StatefulPartitionedCall:[ W
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_46_input
8

C__inference_lstm_46_layer_call_and_return_conditional_losses_232609

inputs&
lstm_cell_46_232527:	@%
lstm_cell_46_232529:@!
lstm_cell_46_232531:@
identity¢$lstm_cell_46/StatefulPartitionedCall¢while;
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
valueB:Ñ
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
value	B :s
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
:ÿÿÿÿÿÿÿÿÿR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
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
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
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
valueB:Û
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskõ
$lstm_cell_46/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_46_232527lstm_cell_46_232529lstm_cell_46_232531*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_46_layer_call_and_return_conditional_losses_232526n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ·
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_46_232527lstm_cell_46_232529lstm_cell_46_232531*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_232540*
condR
while_cond_232539*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿu
NoOpNoOp%^lstm_cell_46/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_46/StatefulPartitionedCall$lstm_cell_46/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
R

'sequential_23_lstm_47_while_body_232369H
Dsequential_23_lstm_47_while_sequential_23_lstm_47_while_loop_counterN
Jsequential_23_lstm_47_while_sequential_23_lstm_47_while_maximum_iterations+
'sequential_23_lstm_47_while_placeholder-
)sequential_23_lstm_47_while_placeholder_1-
)sequential_23_lstm_47_while_placeholder_2-
)sequential_23_lstm_47_while_placeholder_3G
Csequential_23_lstm_47_while_sequential_23_lstm_47_strided_slice_1_0
sequential_23_lstm_47_while_tensorarrayv2read_tensorlistgetitem_sequential_23_lstm_47_tensorarrayunstack_tensorlistfromtensor_0[
Isequential_23_lstm_47_while_lstm_cell_47_matmul_readvariableop_resource_0:@]
Ksequential_23_lstm_47_while_lstm_cell_47_matmul_1_readvariableop_resource_0:@X
Jsequential_23_lstm_47_while_lstm_cell_47_biasadd_readvariableop_resource_0:@(
$sequential_23_lstm_47_while_identity*
&sequential_23_lstm_47_while_identity_1*
&sequential_23_lstm_47_while_identity_2*
&sequential_23_lstm_47_while_identity_3*
&sequential_23_lstm_47_while_identity_4*
&sequential_23_lstm_47_while_identity_5E
Asequential_23_lstm_47_while_sequential_23_lstm_47_strided_slice_1
}sequential_23_lstm_47_while_tensorarrayv2read_tensorlistgetitem_sequential_23_lstm_47_tensorarrayunstack_tensorlistfromtensorY
Gsequential_23_lstm_47_while_lstm_cell_47_matmul_readvariableop_resource:@[
Isequential_23_lstm_47_while_lstm_cell_47_matmul_1_readvariableop_resource:@V
Hsequential_23_lstm_47_while_lstm_cell_47_biasadd_readvariableop_resource:@¢?sequential_23/lstm_47/while/lstm_cell_47/BiasAdd/ReadVariableOp¢>sequential_23/lstm_47/while/lstm_cell_47/MatMul/ReadVariableOp¢@sequential_23/lstm_47/while/lstm_cell_47/MatMul_1/ReadVariableOp
Msequential_23/lstm_47/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
?sequential_23/lstm_47/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_23_lstm_47_while_tensorarrayv2read_tensorlistgetitem_sequential_23_lstm_47_tensorarrayunstack_tensorlistfromtensor_0'sequential_23_lstm_47_while_placeholderVsequential_23/lstm_47/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0È
>sequential_23/lstm_47/while/lstm_cell_47/MatMul/ReadVariableOpReadVariableOpIsequential_23_lstm_47_while_lstm_cell_47_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0û
/sequential_23/lstm_47/while/lstm_cell_47/MatMulMatMulFsequential_23/lstm_47/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_23/lstm_47/while/lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ì
@sequential_23/lstm_47/while/lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOpKsequential_23_lstm_47_while_lstm_cell_47_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0â
1sequential_23/lstm_47/while/lstm_cell_47/MatMul_1MatMul)sequential_23_lstm_47_while_placeholder_2Hsequential_23/lstm_47/while/lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ß
,sequential_23/lstm_47/while/lstm_cell_47/addAddV29sequential_23/lstm_47/while/lstm_cell_47/MatMul:product:0;sequential_23/lstm_47/while/lstm_cell_47/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Æ
?sequential_23/lstm_47/while/lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOpJsequential_23_lstm_47_while_lstm_cell_47_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0è
0sequential_23/lstm_47/while/lstm_cell_47/BiasAddBiasAdd0sequential_23/lstm_47/while/lstm_cell_47/add:z:0Gsequential_23/lstm_47/while/lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@z
8sequential_23/lstm_47/while/lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :±
.sequential_23/lstm_47/while/lstm_cell_47/splitSplitAsequential_23/lstm_47/while/lstm_cell_47/split/split_dim:output:09sequential_23/lstm_47/while/lstm_cell_47/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split¦
0sequential_23/lstm_47/while/lstm_cell_47/SigmoidSigmoid7sequential_23/lstm_47/while/lstm_cell_47/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
2sequential_23/lstm_47/while/lstm_cell_47/Sigmoid_1Sigmoid7sequential_23/lstm_47/while/lstm_cell_47/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
,sequential_23/lstm_47/while/lstm_cell_47/mulMul6sequential_23/lstm_47/while/lstm_cell_47/Sigmoid_1:y:0)sequential_23_lstm_47_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
-sequential_23/lstm_47/while/lstm_cell_47/ReluRelu7sequential_23/lstm_47/while/lstm_cell_47/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ
.sequential_23/lstm_47/while/lstm_cell_47/mul_1Mul4sequential_23/lstm_47/while/lstm_cell_47/Sigmoid:y:0;sequential_23/lstm_47/while/lstm_cell_47/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
.sequential_23/lstm_47/while/lstm_cell_47/add_1AddV20sequential_23/lstm_47/while/lstm_cell_47/mul:z:02sequential_23/lstm_47/while/lstm_cell_47/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
2sequential_23/lstm_47/while/lstm_cell_47/Sigmoid_2Sigmoid7sequential_23/lstm_47/while/lstm_cell_47/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/sequential_23/lstm_47/while/lstm_cell_47/Relu_1Relu2sequential_23/lstm_47/while/lstm_cell_47/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
.sequential_23/lstm_47/while/lstm_cell_47/mul_2Mul6sequential_23/lstm_47/while/lstm_cell_47/Sigmoid_2:y:0=sequential_23/lstm_47/while/lstm_cell_47/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@sequential_23/lstm_47/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_23_lstm_47_while_placeholder_1'sequential_23_lstm_47_while_placeholder2sequential_23/lstm_47/while/lstm_cell_47/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒc
!sequential_23/lstm_47/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_23/lstm_47/while/addAddV2'sequential_23_lstm_47_while_placeholder*sequential_23/lstm_47/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_23/lstm_47/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :¿
!sequential_23/lstm_47/while/add_1AddV2Dsequential_23_lstm_47_while_sequential_23_lstm_47_while_loop_counter,sequential_23/lstm_47/while/add_1/y:output:0*
T0*
_output_shapes
: 
$sequential_23/lstm_47/while/IdentityIdentity%sequential_23/lstm_47/while/add_1:z:0!^sequential_23/lstm_47/while/NoOp*
T0*
_output_shapes
: Â
&sequential_23/lstm_47/while/Identity_1IdentityJsequential_23_lstm_47_while_sequential_23_lstm_47_while_maximum_iterations!^sequential_23/lstm_47/while/NoOp*
T0*
_output_shapes
: 
&sequential_23/lstm_47/while/Identity_2Identity#sequential_23/lstm_47/while/add:z:0!^sequential_23/lstm_47/while/NoOp*
T0*
_output_shapes
: Û
&sequential_23/lstm_47/while/Identity_3IdentityPsequential_23/lstm_47/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_23/lstm_47/while/NoOp*
T0*
_output_shapes
: :éèÒ»
&sequential_23/lstm_47/while/Identity_4Identity2sequential_23/lstm_47/while/lstm_cell_47/mul_2:z:0!^sequential_23/lstm_47/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
&sequential_23/lstm_47/while/Identity_5Identity2sequential_23/lstm_47/while/lstm_cell_47/add_1:z:0!^sequential_23/lstm_47/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
 sequential_23/lstm_47/while/NoOpNoOp@^sequential_23/lstm_47/while/lstm_cell_47/BiasAdd/ReadVariableOp?^sequential_23/lstm_47/while/lstm_cell_47/MatMul/ReadVariableOpA^sequential_23/lstm_47/while/lstm_cell_47/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_23_lstm_47_while_identity-sequential_23/lstm_47/while/Identity:output:0"Y
&sequential_23_lstm_47_while_identity_1/sequential_23/lstm_47/while/Identity_1:output:0"Y
&sequential_23_lstm_47_while_identity_2/sequential_23/lstm_47/while/Identity_2:output:0"Y
&sequential_23_lstm_47_while_identity_3/sequential_23/lstm_47/while/Identity_3:output:0"Y
&sequential_23_lstm_47_while_identity_4/sequential_23/lstm_47/while/Identity_4:output:0"Y
&sequential_23_lstm_47_while_identity_5/sequential_23/lstm_47/while/Identity_5:output:0"
Hsequential_23_lstm_47_while_lstm_cell_47_biasadd_readvariableop_resourceJsequential_23_lstm_47_while_lstm_cell_47_biasadd_readvariableop_resource_0"
Isequential_23_lstm_47_while_lstm_cell_47_matmul_1_readvariableop_resourceKsequential_23_lstm_47_while_lstm_cell_47_matmul_1_readvariableop_resource_0"
Gsequential_23_lstm_47_while_lstm_cell_47_matmul_readvariableop_resourceIsequential_23_lstm_47_while_lstm_cell_47_matmul_readvariableop_resource_0"
Asequential_23_lstm_47_while_sequential_23_lstm_47_strided_slice_1Csequential_23_lstm_47_while_sequential_23_lstm_47_strided_slice_1_0"
}sequential_23_lstm_47_while_tensorarrayv2read_tensorlistgetitem_sequential_23_lstm_47_tensorarrayunstack_tensorlistfromtensorsequential_23_lstm_47_while_tensorarrayv2read_tensorlistgetitem_sequential_23_lstm_47_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2
?sequential_23/lstm_47/while/lstm_cell_47/BiasAdd/ReadVariableOp?sequential_23/lstm_47/while/lstm_cell_47/BiasAdd/ReadVariableOp2
>sequential_23/lstm_47/while/lstm_cell_47/MatMul/ReadVariableOp>sequential_23/lstm_47/while/lstm_cell_47/MatMul/ReadVariableOp2
@sequential_23/lstm_47/while/lstm_cell_47/MatMul_1/ReadVariableOp@sequential_23/lstm_47/while/lstm_cell_47/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
8
Ê
while_body_235340
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_47_matmul_readvariableop_resource_0:@G
5while_lstm_cell_47_matmul_1_readvariableop_resource_0:@B
4while_lstm_cell_47_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_47_matmul_readvariableop_resource:@E
3while_lstm_cell_47_matmul_1_readvariableop_resource:@@
2while_lstm_cell_47_biasadd_readvariableop_resource:@¢)while/lstm_cell_47/BiasAdd/ReadVariableOp¢(while/lstm_cell_47/MatMul/ReadVariableOp¢*while/lstm_cell_47/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
(while/lstm_cell_47/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_47_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0¹
while/lstm_cell_47/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ 
*while/lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_47_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0 
while/lstm_cell_47/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_47/addAddV2#while/lstm_cell_47/MatMul:product:0%while/lstm_cell_47/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
)while/lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_47_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0¦
while/lstm_cell_47/BiasAddBiasAddwhile/lstm_cell_47/add:z:01while/lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
"while/lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_47/splitSplit+while/lstm_cell_47/split/split_dim:output:0#while/lstm_cell_47/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitz
while/lstm_cell_47/SigmoidSigmoid!while/lstm_cell_47/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
while/lstm_cell_47/Sigmoid_1Sigmoid!while/lstm_cell_47/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_47/mulMul while/lstm_cell_47/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
while/lstm_cell_47/ReluRelu!while/lstm_cell_47/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_47/mul_1Mulwhile/lstm_cell_47/Sigmoid:y:0%while/lstm_cell_47/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_47/add_1AddV2while/lstm_cell_47/mul:z:0while/lstm_cell_47/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
while/lstm_cell_47/Sigmoid_2Sigmoid!while/lstm_cell_47/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
while/lstm_cell_47/Relu_1Reluwhile/lstm_cell_47/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_47/mul_2Mul while/lstm_cell_47/Sigmoid_2:y:0'while/lstm_cell_47/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_47/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒy
while/Identity_4Identitywhile/lstm_cell_47/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
while/Identity_5Identitywhile/lstm_cell_47/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ

while/NoOpNoOp*^while/lstm_cell_47/BiasAdd/ReadVariableOp)^while/lstm_cell_47/MatMul/ReadVariableOp+^while/lstm_cell_47/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_47_biasadd_readvariableop_resource4while_lstm_cell_47_biasadd_readvariableop_resource_0"l
3while_lstm_cell_47_matmul_1_readvariableop_resource5while_lstm_cell_47_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_47_matmul_readvariableop_resource3while_lstm_cell_47_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_47/BiasAdd/ReadVariableOp)while/lstm_cell_47/BiasAdd/ReadVariableOp2T
(while/lstm_cell_47/MatMul/ReadVariableOp(while/lstm_cell_47/MatMul/ReadVariableOp2X
*while/lstm_cell_47/MatMul_1/ReadVariableOp*while/lstm_cell_47/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
¬
ý
I__inference_sequential_23_layer_call_and_return_conditional_losses_234598

inputsF
3lstm_46_lstm_cell_46_matmul_readvariableop_resource:	@G
5lstm_46_lstm_cell_46_matmul_1_readvariableop_resource:@B
4lstm_46_lstm_cell_46_biasadd_readvariableop_resource:@E
3lstm_47_lstm_cell_47_matmul_readvariableop_resource:@G
5lstm_47_lstm_cell_47_matmul_1_readvariableop_resource:@B
4lstm_47_lstm_cell_47_biasadd_readvariableop_resource:@:
'dense_23_matmul_readvariableop_resource:	7
(dense_23_biasadd_readvariableop_resource:	
identity¢dense_23/BiasAdd/ReadVariableOp¢dense_23/MatMul/ReadVariableOp¢+lstm_46/lstm_cell_46/BiasAdd/ReadVariableOp¢*lstm_46/lstm_cell_46/MatMul/ReadVariableOp¢,lstm_46/lstm_cell_46/MatMul_1/ReadVariableOp¢lstm_46/while¢+lstm_47/lstm_cell_47/BiasAdd/ReadVariableOp¢*lstm_47/lstm_cell_47/MatMul/ReadVariableOp¢,lstm_47/lstm_cell_47/MatMul_1/ReadVariableOp¢lstm_47/whileC
lstm_46/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_46/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_46/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_46/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
lstm_46/strided_sliceStridedSlicelstm_46/Shape:output:0$lstm_46/strided_slice/stack:output:0&lstm_46/strided_slice/stack_1:output:0&lstm_46/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_46/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
lstm_46/zeros/packedPacklstm_46/strided_slice:output:0lstm_46/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_46/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_46/zerosFilllstm_46/zeros/packed:output:0lstm_46/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
lstm_46/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
lstm_46/zeros_1/packedPacklstm_46/strided_slice:output:0!lstm_46/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_46/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_46/zeros_1Filllstm_46/zeros_1/packed:output:0lstm_46/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
lstm_46/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ~
lstm_46/transpose	Transposeinputslstm_46/transpose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
lstm_46/Shape_1Shapelstm_46/transpose:y:0*
T0*
_output_shapes
:g
lstm_46/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_46/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_46/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_46/strided_slice_1StridedSlicelstm_46/Shape_1:output:0&lstm_46/strided_slice_1/stack:output:0(lstm_46/strided_slice_1/stack_1:output:0(lstm_46/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_46/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÌ
lstm_46/TensorArrayV2TensorListReserve,lstm_46/TensorArrayV2/element_shape:output:0 lstm_46/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
=lstm_46/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  ø
/lstm_46/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_46/transpose:y:0Flstm_46/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒg
lstm_46/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_46/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_46/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_46/strided_slice_2StridedSlicelstm_46/transpose:y:0&lstm_46/strided_slice_2/stack:output:0(lstm_46/strided_slice_2/stack_1:output:0(lstm_46/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
*lstm_46/lstm_cell_46/MatMul/ReadVariableOpReadVariableOp3lstm_46_lstm_cell_46_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0­
lstm_46/lstm_cell_46/MatMulMatMul lstm_46/strided_slice_2:output:02lstm_46/lstm_cell_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¢
,lstm_46/lstm_cell_46/MatMul_1/ReadVariableOpReadVariableOp5lstm_46_lstm_cell_46_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0§
lstm_46/lstm_cell_46/MatMul_1MatMullstm_46/zeros:output:04lstm_46/lstm_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@£
lstm_46/lstm_cell_46/addAddV2%lstm_46/lstm_cell_46/MatMul:product:0'lstm_46/lstm_cell_46/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
+lstm_46/lstm_cell_46/BiasAdd/ReadVariableOpReadVariableOp4lstm_46_lstm_cell_46_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¬
lstm_46/lstm_cell_46/BiasAddBiasAddlstm_46/lstm_cell_46/add:z:03lstm_46/lstm_cell_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f
$lstm_46/lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :õ
lstm_46/lstm_cell_46/splitSplit-lstm_46/lstm_cell_46/split/split_dim:output:0%lstm_46/lstm_cell_46/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split~
lstm_46/lstm_cell_46/SigmoidSigmoid#lstm_46/lstm_cell_46/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_46/lstm_cell_46/Sigmoid_1Sigmoid#lstm_46/lstm_cell_46/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_46/lstm_cell_46/mulMul"lstm_46/lstm_cell_46/Sigmoid_1:y:0lstm_46/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
lstm_46/lstm_cell_46/ReluRelu#lstm_46/lstm_cell_46/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_46/lstm_cell_46/mul_1Mul lstm_46/lstm_cell_46/Sigmoid:y:0'lstm_46/lstm_cell_46/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_46/lstm_cell_46/add_1AddV2lstm_46/lstm_cell_46/mul:z:0lstm_46/lstm_cell_46/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_46/lstm_cell_46/Sigmoid_2Sigmoid#lstm_46/lstm_cell_46/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
lstm_46/lstm_cell_46/Relu_1Relulstm_46/lstm_cell_46/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
lstm_46/lstm_cell_46/mul_2Mul"lstm_46/lstm_cell_46/Sigmoid_2:y:0)lstm_46/lstm_cell_46/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
%lstm_46/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ð
lstm_46/TensorArrayV2_1TensorListReserve.lstm_46/TensorArrayV2_1/element_shape:output:0 lstm_46/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒN
lstm_46/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_46/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ\
lstm_46/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ò
lstm_46/whileWhile#lstm_46/while/loop_counter:output:0)lstm_46/while/maximum_iterations:output:0lstm_46/time:output:0 lstm_46/TensorArrayV2_1:handle:0lstm_46/zeros:output:0lstm_46/zeros_1:output:0 lstm_46/strided_slice_1:output:0?lstm_46/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_46_lstm_cell_46_matmul_readvariableop_resource5lstm_46_lstm_cell_46_matmul_1_readvariableop_resource4lstm_46_lstm_cell_46_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_46_while_body_234369*%
condR
lstm_46_while_cond_234368*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
8lstm_46/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ú
*lstm_46/TensorArrayV2Stack/TensorListStackTensorListStacklstm_46/while:output:3Alstm_46/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0p
lstm_46/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿi
lstm_46/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_46/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
lstm_46/strided_slice_3StridedSlice3lstm_46/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_46/strided_slice_3/stack:output:0(lstm_46/strided_slice_3/stack_1:output:0(lstm_46/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskm
lstm_46/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
lstm_46/transpose_1	Transpose3lstm_46/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_46/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
lstm_46/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_47/ShapeShapelstm_46/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_47/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_47/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_47/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
lstm_47/strided_sliceStridedSlicelstm_47/Shape:output:0$lstm_47/strided_slice/stack:output:0&lstm_47/strided_slice/stack_1:output:0&lstm_47/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_47/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
lstm_47/zeros/packedPacklstm_47/strided_slice:output:0lstm_47/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_47/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_47/zerosFilllstm_47/zeros/packed:output:0lstm_47/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
lstm_47/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
lstm_47/zeros_1/packedPacklstm_47/strided_slice:output:0!lstm_47/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_47/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_47/zeros_1Filllstm_47/zeros_1/packed:output:0lstm_47/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
lstm_47/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_47/transpose	Transposelstm_46/transpose_1:y:0lstm_47/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
lstm_47/Shape_1Shapelstm_47/transpose:y:0*
T0*
_output_shapes
:g
lstm_47/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_47/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_47/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_47/strided_slice_1StridedSlicelstm_47/Shape_1:output:0&lstm_47/strided_slice_1/stack:output:0(lstm_47/strided_slice_1/stack_1:output:0(lstm_47/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_47/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÌ
lstm_47/TensorArrayV2TensorListReserve,lstm_47/TensorArrayV2/element_shape:output:0 lstm_47/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
=lstm_47/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ø
/lstm_47/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_47/transpose:y:0Flstm_47/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒg
lstm_47/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_47/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_47/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_47/strided_slice_2StridedSlicelstm_47/transpose:y:0&lstm_47/strided_slice_2/stack:output:0(lstm_47/strided_slice_2/stack_1:output:0(lstm_47/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
*lstm_47/lstm_cell_47/MatMul/ReadVariableOpReadVariableOp3lstm_47_lstm_cell_47_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0­
lstm_47/lstm_cell_47/MatMulMatMul lstm_47/strided_slice_2:output:02lstm_47/lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¢
,lstm_47/lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp5lstm_47_lstm_cell_47_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0§
lstm_47/lstm_cell_47/MatMul_1MatMullstm_47/zeros:output:04lstm_47/lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@£
lstm_47/lstm_cell_47/addAddV2%lstm_47/lstm_cell_47/MatMul:product:0'lstm_47/lstm_cell_47/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
+lstm_47/lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp4lstm_47_lstm_cell_47_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¬
lstm_47/lstm_cell_47/BiasAddBiasAddlstm_47/lstm_cell_47/add:z:03lstm_47/lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f
$lstm_47/lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :õ
lstm_47/lstm_cell_47/splitSplit-lstm_47/lstm_cell_47/split/split_dim:output:0%lstm_47/lstm_cell_47/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split~
lstm_47/lstm_cell_47/SigmoidSigmoid#lstm_47/lstm_cell_47/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_47/lstm_cell_47/Sigmoid_1Sigmoid#lstm_47/lstm_cell_47/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_47/lstm_cell_47/mulMul"lstm_47/lstm_cell_47/Sigmoid_1:y:0lstm_47/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
lstm_47/lstm_cell_47/ReluRelu#lstm_47/lstm_cell_47/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_47/lstm_cell_47/mul_1Mul lstm_47/lstm_cell_47/Sigmoid:y:0'lstm_47/lstm_cell_47/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_47/lstm_cell_47/add_1AddV2lstm_47/lstm_cell_47/mul:z:0lstm_47/lstm_cell_47/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_47/lstm_cell_47/Sigmoid_2Sigmoid#lstm_47/lstm_cell_47/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
lstm_47/lstm_cell_47/Relu_1Relulstm_47/lstm_cell_47/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
lstm_47/lstm_cell_47/mul_2Mul"lstm_47/lstm_cell_47/Sigmoid_2:y:0)lstm_47/lstm_cell_47/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
%lstm_47/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ð
lstm_47/TensorArrayV2_1TensorListReserve.lstm_47/TensorArrayV2_1/element_shape:output:0 lstm_47/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒN
lstm_47/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_47/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ\
lstm_47/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ò
lstm_47/whileWhile#lstm_47/while/loop_counter:output:0)lstm_47/while/maximum_iterations:output:0lstm_47/time:output:0 lstm_47/TensorArrayV2_1:handle:0lstm_47/zeros:output:0lstm_47/zeros_1:output:0 lstm_47/strided_slice_1:output:0?lstm_47/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_47_lstm_cell_47_matmul_readvariableop_resource5lstm_47_lstm_cell_47_matmul_1_readvariableop_resource4lstm_47_lstm_cell_47_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_47_while_body_234508*%
condR
lstm_47_while_cond_234507*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
8lstm_47/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ú
*lstm_47/TensorArrayV2Stack/TensorListStackTensorListStacklstm_47/while:output:3Alstm_47/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0p
lstm_47/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿi
lstm_47/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_47/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
lstm_47/strided_slice_3StridedSlice3lstm_47/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_47/strided_slice_3/stack:output:0(lstm_47/strided_slice_3/stack_1:output:0(lstm_47/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskm
lstm_47/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
lstm_47/transpose_1	Transpose3lstm_47/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_47/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
lstm_47/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_23/MatMul/ReadVariableOpReadVariableOp'dense_23_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense_23/MatMulMatMul lstm_47/strided_slice_3:output:0&dense_23/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_23/BiasAdd/ReadVariableOpReadVariableOp(dense_23_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_23/BiasAddBiasAdddense_23/MatMul:product:0'dense_23/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
IdentityIdentitydense_23/BiasAdd:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ½
NoOpNoOp ^dense_23/BiasAdd/ReadVariableOp^dense_23/MatMul/ReadVariableOp,^lstm_46/lstm_cell_46/BiasAdd/ReadVariableOp+^lstm_46/lstm_cell_46/MatMul/ReadVariableOp-^lstm_46/lstm_cell_46/MatMul_1/ReadVariableOp^lstm_46/while,^lstm_47/lstm_cell_47/BiasAdd/ReadVariableOp+^lstm_47/lstm_cell_47/MatMul/ReadVariableOp-^lstm_47/lstm_cell_47/MatMul_1/ReadVariableOp^lstm_47/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2B
dense_23/BiasAdd/ReadVariableOpdense_23/BiasAdd/ReadVariableOp2@
dense_23/MatMul/ReadVariableOpdense_23/MatMul/ReadVariableOp2Z
+lstm_46/lstm_cell_46/BiasAdd/ReadVariableOp+lstm_46/lstm_cell_46/BiasAdd/ReadVariableOp2X
*lstm_46/lstm_cell_46/MatMul/ReadVariableOp*lstm_46/lstm_cell_46/MatMul/ReadVariableOp2\
,lstm_46/lstm_cell_46/MatMul_1/ReadVariableOp,lstm_46/lstm_cell_46/MatMul_1/ReadVariableOp2
lstm_46/whilelstm_46/while2Z
+lstm_47/lstm_cell_47/BiasAdd/ReadVariableOp+lstm_47/lstm_cell_47/BiasAdd/ReadVariableOp2X
*lstm_47/lstm_cell_47/MatMul/ReadVariableOp*lstm_47/lstm_cell_47/MatMul/ReadVariableOp2\
,lstm_47/lstm_cell_47/MatMul_1/ReadVariableOp,lstm_47/lstm_cell_47/MatMul_1/ReadVariableOp2
lstm_47/whilelstm_47/while:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÝJ

C__inference_lstm_46_layer_call_and_return_conditional_losses_234951
inputs_0>
+lstm_cell_46_matmul_readvariableop_resource:	@?
-lstm_cell_46_matmul_1_readvariableop_resource:@:
,lstm_cell_46_biasadd_readvariableop_resource:@
identity¢#lstm_cell_46/BiasAdd/ReadVariableOp¢"lstm_cell_46/MatMul/ReadVariableOp¢$lstm_cell_46/MatMul_1/ReadVariableOp¢while=
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
valueB:Ñ
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
value	B :s
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
:ÿÿÿÿÿÿÿÿÿR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
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
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
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
valueB:Û
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
"lstm_cell_46/MatMul/ReadVariableOpReadVariableOp+lstm_cell_46_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0
lstm_cell_46/MatMulMatMulstrided_slice_2:output:0*lstm_cell_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
$lstm_cell_46/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_46_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0
lstm_cell_46/MatMul_1MatMulzeros:output:0,lstm_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_46/addAddV2lstm_cell_46/MatMul:product:0lstm_cell_46/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#lstm_cell_46/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_46_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
lstm_cell_46/BiasAddBiasAddlstm_cell_46/add:z:0+lstm_cell_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@^
lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_46/splitSplit%lstm_cell_46/split/split_dim:output:0lstm_cell_46/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitn
lstm_cell_46/SigmoidSigmoidlstm_cell_46/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
lstm_cell_46/Sigmoid_1Sigmoidlstm_cell_46/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
lstm_cell_46/mulMullstm_cell_46/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
lstm_cell_46/ReluRelulstm_cell_46/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_46/mul_1Mullstm_cell_46/Sigmoid:y:0lstm_cell_46/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
lstm_cell_46/add_1AddV2lstm_cell_46/mul:z:0lstm_cell_46/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
lstm_cell_46/Sigmoid_2Sigmoidlstm_cell_46/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
lstm_cell_46/Relu_1Relulstm_cell_46/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_46/mul_2Mullstm_cell_46/Sigmoid_2:y:0!lstm_cell_46/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_46_matmul_readvariableop_resource-lstm_cell_46_matmul_1_readvariableop_resource,lstm_cell_46_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_234867*
condR
while_cond_234866*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÀ
NoOpNoOp$^lstm_cell_46/BiasAdd/ReadVariableOp#^lstm_cell_46/MatMul/ReadVariableOp%^lstm_cell_46/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_46/BiasAdd/ReadVariableOp#lstm_cell_46/BiasAdd/ReadVariableOp2H
"lstm_cell_46/MatMul/ReadVariableOp"lstm_cell_46/MatMul/ReadVariableOp2L
$lstm_cell_46/MatMul_1/ReadVariableOp$lstm_cell_46/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
¬
ý
I__inference_sequential_23_layer_call_and_return_conditional_losses_234310

inputsF
3lstm_46_lstm_cell_46_matmul_readvariableop_resource:	@G
5lstm_46_lstm_cell_46_matmul_1_readvariableop_resource:@B
4lstm_46_lstm_cell_46_biasadd_readvariableop_resource:@E
3lstm_47_lstm_cell_47_matmul_readvariableop_resource:@G
5lstm_47_lstm_cell_47_matmul_1_readvariableop_resource:@B
4lstm_47_lstm_cell_47_biasadd_readvariableop_resource:@:
'dense_23_matmul_readvariableop_resource:	7
(dense_23_biasadd_readvariableop_resource:	
identity¢dense_23/BiasAdd/ReadVariableOp¢dense_23/MatMul/ReadVariableOp¢+lstm_46/lstm_cell_46/BiasAdd/ReadVariableOp¢*lstm_46/lstm_cell_46/MatMul/ReadVariableOp¢,lstm_46/lstm_cell_46/MatMul_1/ReadVariableOp¢lstm_46/while¢+lstm_47/lstm_cell_47/BiasAdd/ReadVariableOp¢*lstm_47/lstm_cell_47/MatMul/ReadVariableOp¢,lstm_47/lstm_cell_47/MatMul_1/ReadVariableOp¢lstm_47/whileC
lstm_46/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_46/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_46/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_46/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
lstm_46/strided_sliceStridedSlicelstm_46/Shape:output:0$lstm_46/strided_slice/stack:output:0&lstm_46/strided_slice/stack_1:output:0&lstm_46/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_46/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
lstm_46/zeros/packedPacklstm_46/strided_slice:output:0lstm_46/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_46/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_46/zerosFilllstm_46/zeros/packed:output:0lstm_46/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
lstm_46/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
lstm_46/zeros_1/packedPacklstm_46/strided_slice:output:0!lstm_46/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_46/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_46/zeros_1Filllstm_46/zeros_1/packed:output:0lstm_46/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
lstm_46/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ~
lstm_46/transpose	Transposeinputslstm_46/transpose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
lstm_46/Shape_1Shapelstm_46/transpose:y:0*
T0*
_output_shapes
:g
lstm_46/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_46/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_46/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_46/strided_slice_1StridedSlicelstm_46/Shape_1:output:0&lstm_46/strided_slice_1/stack:output:0(lstm_46/strided_slice_1/stack_1:output:0(lstm_46/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_46/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÌ
lstm_46/TensorArrayV2TensorListReserve,lstm_46/TensorArrayV2/element_shape:output:0 lstm_46/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
=lstm_46/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  ø
/lstm_46/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_46/transpose:y:0Flstm_46/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒg
lstm_46/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_46/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_46/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_46/strided_slice_2StridedSlicelstm_46/transpose:y:0&lstm_46/strided_slice_2/stack:output:0(lstm_46/strided_slice_2/stack_1:output:0(lstm_46/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
*lstm_46/lstm_cell_46/MatMul/ReadVariableOpReadVariableOp3lstm_46_lstm_cell_46_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0­
lstm_46/lstm_cell_46/MatMulMatMul lstm_46/strided_slice_2:output:02lstm_46/lstm_cell_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¢
,lstm_46/lstm_cell_46/MatMul_1/ReadVariableOpReadVariableOp5lstm_46_lstm_cell_46_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0§
lstm_46/lstm_cell_46/MatMul_1MatMullstm_46/zeros:output:04lstm_46/lstm_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@£
lstm_46/lstm_cell_46/addAddV2%lstm_46/lstm_cell_46/MatMul:product:0'lstm_46/lstm_cell_46/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
+lstm_46/lstm_cell_46/BiasAdd/ReadVariableOpReadVariableOp4lstm_46_lstm_cell_46_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¬
lstm_46/lstm_cell_46/BiasAddBiasAddlstm_46/lstm_cell_46/add:z:03lstm_46/lstm_cell_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f
$lstm_46/lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :õ
lstm_46/lstm_cell_46/splitSplit-lstm_46/lstm_cell_46/split/split_dim:output:0%lstm_46/lstm_cell_46/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split~
lstm_46/lstm_cell_46/SigmoidSigmoid#lstm_46/lstm_cell_46/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_46/lstm_cell_46/Sigmoid_1Sigmoid#lstm_46/lstm_cell_46/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_46/lstm_cell_46/mulMul"lstm_46/lstm_cell_46/Sigmoid_1:y:0lstm_46/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
lstm_46/lstm_cell_46/ReluRelu#lstm_46/lstm_cell_46/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_46/lstm_cell_46/mul_1Mul lstm_46/lstm_cell_46/Sigmoid:y:0'lstm_46/lstm_cell_46/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_46/lstm_cell_46/add_1AddV2lstm_46/lstm_cell_46/mul:z:0lstm_46/lstm_cell_46/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_46/lstm_cell_46/Sigmoid_2Sigmoid#lstm_46/lstm_cell_46/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
lstm_46/lstm_cell_46/Relu_1Relulstm_46/lstm_cell_46/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
lstm_46/lstm_cell_46/mul_2Mul"lstm_46/lstm_cell_46/Sigmoid_2:y:0)lstm_46/lstm_cell_46/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
%lstm_46/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ð
lstm_46/TensorArrayV2_1TensorListReserve.lstm_46/TensorArrayV2_1/element_shape:output:0 lstm_46/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒN
lstm_46/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_46/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ\
lstm_46/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ò
lstm_46/whileWhile#lstm_46/while/loop_counter:output:0)lstm_46/while/maximum_iterations:output:0lstm_46/time:output:0 lstm_46/TensorArrayV2_1:handle:0lstm_46/zeros:output:0lstm_46/zeros_1:output:0 lstm_46/strided_slice_1:output:0?lstm_46/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_46_lstm_cell_46_matmul_readvariableop_resource5lstm_46_lstm_cell_46_matmul_1_readvariableop_resource4lstm_46_lstm_cell_46_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_46_while_body_234081*%
condR
lstm_46_while_cond_234080*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
8lstm_46/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ú
*lstm_46/TensorArrayV2Stack/TensorListStackTensorListStacklstm_46/while:output:3Alstm_46/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0p
lstm_46/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿi
lstm_46/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_46/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
lstm_46/strided_slice_3StridedSlice3lstm_46/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_46/strided_slice_3/stack:output:0(lstm_46/strided_slice_3/stack_1:output:0(lstm_46/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskm
lstm_46/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
lstm_46/transpose_1	Transpose3lstm_46/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_46/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
lstm_46/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_47/ShapeShapelstm_46/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_47/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_47/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_47/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
lstm_47/strided_sliceStridedSlicelstm_47/Shape:output:0$lstm_47/strided_slice/stack:output:0&lstm_47/strided_slice/stack_1:output:0&lstm_47/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_47/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
lstm_47/zeros/packedPacklstm_47/strided_slice:output:0lstm_47/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_47/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_47/zerosFilllstm_47/zeros/packed:output:0lstm_47/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
lstm_47/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
lstm_47/zeros_1/packedPacklstm_47/strided_slice:output:0!lstm_47/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_47/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_47/zeros_1Filllstm_47/zeros_1/packed:output:0lstm_47/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
lstm_47/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_47/transpose	Transposelstm_46/transpose_1:y:0lstm_47/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
lstm_47/Shape_1Shapelstm_47/transpose:y:0*
T0*
_output_shapes
:g
lstm_47/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_47/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_47/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_47/strided_slice_1StridedSlicelstm_47/Shape_1:output:0&lstm_47/strided_slice_1/stack:output:0(lstm_47/strided_slice_1/stack_1:output:0(lstm_47/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_47/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÌ
lstm_47/TensorArrayV2TensorListReserve,lstm_47/TensorArrayV2/element_shape:output:0 lstm_47/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
=lstm_47/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ø
/lstm_47/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_47/transpose:y:0Flstm_47/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒg
lstm_47/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_47/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_47/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_47/strided_slice_2StridedSlicelstm_47/transpose:y:0&lstm_47/strided_slice_2/stack:output:0(lstm_47/strided_slice_2/stack_1:output:0(lstm_47/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
*lstm_47/lstm_cell_47/MatMul/ReadVariableOpReadVariableOp3lstm_47_lstm_cell_47_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0­
lstm_47/lstm_cell_47/MatMulMatMul lstm_47/strided_slice_2:output:02lstm_47/lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¢
,lstm_47/lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp5lstm_47_lstm_cell_47_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0§
lstm_47/lstm_cell_47/MatMul_1MatMullstm_47/zeros:output:04lstm_47/lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@£
lstm_47/lstm_cell_47/addAddV2%lstm_47/lstm_cell_47/MatMul:product:0'lstm_47/lstm_cell_47/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
+lstm_47/lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp4lstm_47_lstm_cell_47_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¬
lstm_47/lstm_cell_47/BiasAddBiasAddlstm_47/lstm_cell_47/add:z:03lstm_47/lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f
$lstm_47/lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :õ
lstm_47/lstm_cell_47/splitSplit-lstm_47/lstm_cell_47/split/split_dim:output:0%lstm_47/lstm_cell_47/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split~
lstm_47/lstm_cell_47/SigmoidSigmoid#lstm_47/lstm_cell_47/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_47/lstm_cell_47/Sigmoid_1Sigmoid#lstm_47/lstm_cell_47/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_47/lstm_cell_47/mulMul"lstm_47/lstm_cell_47/Sigmoid_1:y:0lstm_47/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
lstm_47/lstm_cell_47/ReluRelu#lstm_47/lstm_cell_47/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_47/lstm_cell_47/mul_1Mul lstm_47/lstm_cell_47/Sigmoid:y:0'lstm_47/lstm_cell_47/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_47/lstm_cell_47/add_1AddV2lstm_47/lstm_cell_47/mul:z:0lstm_47/lstm_cell_47/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_47/lstm_cell_47/Sigmoid_2Sigmoid#lstm_47/lstm_cell_47/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
lstm_47/lstm_cell_47/Relu_1Relulstm_47/lstm_cell_47/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
lstm_47/lstm_cell_47/mul_2Mul"lstm_47/lstm_cell_47/Sigmoid_2:y:0)lstm_47/lstm_cell_47/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
%lstm_47/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ð
lstm_47/TensorArrayV2_1TensorListReserve.lstm_47/TensorArrayV2_1/element_shape:output:0 lstm_47/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒN
lstm_47/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_47/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ\
lstm_47/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ò
lstm_47/whileWhile#lstm_47/while/loop_counter:output:0)lstm_47/while/maximum_iterations:output:0lstm_47/time:output:0 lstm_47/TensorArrayV2_1:handle:0lstm_47/zeros:output:0lstm_47/zeros_1:output:0 lstm_47/strided_slice_1:output:0?lstm_47/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_47_lstm_cell_47_matmul_readvariableop_resource5lstm_47_lstm_cell_47_matmul_1_readvariableop_resource4lstm_47_lstm_cell_47_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_47_while_body_234220*%
condR
lstm_47_while_cond_234219*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
8lstm_47/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ú
*lstm_47/TensorArrayV2Stack/TensorListStackTensorListStacklstm_47/while:output:3Alstm_47/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0p
lstm_47/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿi
lstm_47/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_47/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
lstm_47/strided_slice_3StridedSlice3lstm_47/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_47/strided_slice_3/stack:output:0(lstm_47/strided_slice_3/stack_1:output:0(lstm_47/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskm
lstm_47/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
lstm_47/transpose_1	Transpose3lstm_47/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_47/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
lstm_47/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_23/MatMul/ReadVariableOpReadVariableOp'dense_23_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense_23/MatMulMatMul lstm_47/strided_slice_3:output:0&dense_23/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_23/BiasAdd/ReadVariableOpReadVariableOp(dense_23_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_23/BiasAddBiasAdddense_23/MatMul:product:0'dense_23/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
IdentityIdentitydense_23/BiasAdd:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ½
NoOpNoOp ^dense_23/BiasAdd/ReadVariableOp^dense_23/MatMul/ReadVariableOp,^lstm_46/lstm_cell_46/BiasAdd/ReadVariableOp+^lstm_46/lstm_cell_46/MatMul/ReadVariableOp-^lstm_46/lstm_cell_46/MatMul_1/ReadVariableOp^lstm_46/while,^lstm_47/lstm_cell_47/BiasAdd/ReadVariableOp+^lstm_47/lstm_cell_47/MatMul/ReadVariableOp-^lstm_47/lstm_cell_47/MatMul_1/ReadVariableOp^lstm_47/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2B
dense_23/BiasAdd/ReadVariableOpdense_23/BiasAdd/ReadVariableOp2@
dense_23/MatMul/ReadVariableOpdense_23/MatMul/ReadVariableOp2Z
+lstm_46/lstm_cell_46/BiasAdd/ReadVariableOp+lstm_46/lstm_cell_46/BiasAdd/ReadVariableOp2X
*lstm_46/lstm_cell_46/MatMul/ReadVariableOp*lstm_46/lstm_cell_46/MatMul/ReadVariableOp2\
,lstm_46/lstm_cell_46/MatMul_1/ReadVariableOp,lstm_46/lstm_cell_46/MatMul_1/ReadVariableOp2
lstm_46/whilelstm_46/while2Z
+lstm_47/lstm_cell_47/BiasAdd/ReadVariableOp+lstm_47/lstm_cell_47/BiasAdd/ReadVariableOp2X
*lstm_47/lstm_cell_47/MatMul/ReadVariableOp*lstm_47/lstm_cell_47/MatMul/ReadVariableOp2\
,lstm_47/lstm_cell_47/MatMul_1/ReadVariableOp,lstm_47/lstm_cell_47/MatMul_1/ReadVariableOp2
lstm_47/whilelstm_47/while:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Î	
÷
D__inference_dense_23_layer_call_and_return_conditional_losses_235872

inputs1
matmul_readvariableop_resource:	.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÿ
³
(__inference_lstm_46_layer_call_fn_234665

inputs
unknown:	@
	unknown_0:@
	unknown_1:@
identity¢StatefulPartitionedCallé
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_46_layer_call_and_return_conditional_losses_233833s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
8
Ê
while_body_235483
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_47_matmul_readvariableop_resource_0:@G
5while_lstm_cell_47_matmul_1_readvariableop_resource_0:@B
4while_lstm_cell_47_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_47_matmul_readvariableop_resource:@E
3while_lstm_cell_47_matmul_1_readvariableop_resource:@@
2while_lstm_cell_47_biasadd_readvariableop_resource:@¢)while/lstm_cell_47/BiasAdd/ReadVariableOp¢(while/lstm_cell_47/MatMul/ReadVariableOp¢*while/lstm_cell_47/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
(while/lstm_cell_47/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_47_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0¹
while/lstm_cell_47/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ 
*while/lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_47_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0 
while/lstm_cell_47/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_47/addAddV2#while/lstm_cell_47/MatMul:product:0%while/lstm_cell_47/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
)while/lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_47_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0¦
while/lstm_cell_47/BiasAddBiasAddwhile/lstm_cell_47/add:z:01while/lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
"while/lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_47/splitSplit+while/lstm_cell_47/split/split_dim:output:0#while/lstm_cell_47/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitz
while/lstm_cell_47/SigmoidSigmoid!while/lstm_cell_47/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
while/lstm_cell_47/Sigmoid_1Sigmoid!while/lstm_cell_47/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_47/mulMul while/lstm_cell_47/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
while/lstm_cell_47/ReluRelu!while/lstm_cell_47/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_47/mul_1Mulwhile/lstm_cell_47/Sigmoid:y:0%while/lstm_cell_47/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_47/add_1AddV2while/lstm_cell_47/mul:z:0while/lstm_cell_47/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
while/lstm_cell_47/Sigmoid_2Sigmoid!while/lstm_cell_47/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
while/lstm_cell_47/Relu_1Reluwhile/lstm_cell_47/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_47/mul_2Mul while/lstm_cell_47/Sigmoid_2:y:0'while/lstm_cell_47/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_47/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒy
while/Identity_4Identitywhile/lstm_cell_47/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
while/Identity_5Identitywhile/lstm_cell_47/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ

while/NoOpNoOp*^while/lstm_cell_47/BiasAdd/ReadVariableOp)^while/lstm_cell_47/MatMul/ReadVariableOp+^while/lstm_cell_47/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_47_biasadd_readvariableop_resource4while_lstm_cell_47_biasadd_readvariableop_resource_0"l
3while_lstm_cell_47_matmul_1_readvariableop_resource5while_lstm_cell_47_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_47_matmul_readvariableop_resource3while_lstm_cell_47_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_47/BiasAdd/ReadVariableOp)while/lstm_cell_47/BiasAdd/ReadVariableOp2T
(while/lstm_cell_47/MatMul/ReadVariableOp(while/lstm_cell_47/MatMul/ReadVariableOp2X
*while/lstm_cell_47/MatMul_1/ReadVariableOp*while/lstm_cell_47/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ë
ô
-__inference_lstm_cell_46_layer_call_fn_235906

inputs
states_0
states_1
unknown:	@
	unknown_0:@
	unknown_1:@
identity

identity_1

identity_2¢StatefulPartitionedCall¨
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_46_layer_call_and_return_conditional_losses_232672o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1

´
(__inference_lstm_47_layer_call_fn_235248
inputs_0
unknown:@
	unknown_0:@
	unknown_1:@
identity¢StatefulPartitionedCallç
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_47_layer_call_and_return_conditional_losses_232959o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
Î	
÷
D__inference_dense_23_layer_call_and_return_conditional_losses_233476

inputs1
matmul_readvariableop_resource:	.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


ã
lstm_46_while_cond_234368,
(lstm_46_while_lstm_46_while_loop_counter2
.lstm_46_while_lstm_46_while_maximum_iterations
lstm_46_while_placeholder
lstm_46_while_placeholder_1
lstm_46_while_placeholder_2
lstm_46_while_placeholder_3.
*lstm_46_while_less_lstm_46_strided_slice_1D
@lstm_46_while_lstm_46_while_cond_234368___redundant_placeholder0D
@lstm_46_while_lstm_46_while_cond_234368___redundant_placeholder1D
@lstm_46_while_lstm_46_while_cond_234368___redundant_placeholder2D
@lstm_46_while_lstm_46_while_cond_234368___redundant_placeholder3
lstm_46_while_identity

lstm_46/while/LessLesslstm_46_while_placeholder*lstm_46_while_less_lstm_46_strided_slice_1*
T0*
_output_shapes
: [
lstm_46/while/IdentityIdentitylstm_46/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_46_while_identitylstm_46/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
8
Ì
while_body_233749
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_46_matmul_readvariableop_resource_0:	@G
5while_lstm_cell_46_matmul_1_readvariableop_resource_0:@B
4while_lstm_cell_46_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_46_matmul_readvariableop_resource:	@E
3while_lstm_cell_46_matmul_1_readvariableop_resource:@@
2while_lstm_cell_46_biasadd_readvariableop_resource:@¢)while/lstm_cell_46/BiasAdd/ReadVariableOp¢(while/lstm_cell_46/MatMul/ReadVariableOp¢*while/lstm_cell_46/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
(while/lstm_cell_46/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_46_matmul_readvariableop_resource_0*
_output_shapes
:	@*
dtype0¹
while/lstm_cell_46/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ 
*while/lstm_cell_46/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_46_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0 
while/lstm_cell_46/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_46/addAddV2#while/lstm_cell_46/MatMul:product:0%while/lstm_cell_46/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
)while/lstm_cell_46/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_46_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0¦
while/lstm_cell_46/BiasAddBiasAddwhile/lstm_cell_46/add:z:01while/lstm_cell_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
"while/lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_46/splitSplit+while/lstm_cell_46/split/split_dim:output:0#while/lstm_cell_46/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitz
while/lstm_cell_46/SigmoidSigmoid!while/lstm_cell_46/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
while/lstm_cell_46/Sigmoid_1Sigmoid!while/lstm_cell_46/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_46/mulMul while/lstm_cell_46/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
while/lstm_cell_46/ReluRelu!while/lstm_cell_46/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_46/mul_1Mulwhile/lstm_cell_46/Sigmoid:y:0%while/lstm_cell_46/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_46/add_1AddV2while/lstm_cell_46/mul:z:0while/lstm_cell_46/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
while/lstm_cell_46/Sigmoid_2Sigmoid!while/lstm_cell_46/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
while/lstm_cell_46/Relu_1Reluwhile/lstm_cell_46/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_46/mul_2Mul while/lstm_cell_46/Sigmoid_2:y:0'while/lstm_cell_46/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_46/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒy
while/Identity_4Identitywhile/lstm_cell_46/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
while/Identity_5Identitywhile/lstm_cell_46/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ

while/NoOpNoOp*^while/lstm_cell_46/BiasAdd/ReadVariableOp)^while/lstm_cell_46/MatMul/ReadVariableOp+^while/lstm_cell_46/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_46_biasadd_readvariableop_resource4while_lstm_cell_46_biasadd_readvariableop_resource_0"l
3while_lstm_cell_46_matmul_1_readvariableop_resource5while_lstm_cell_46_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_46_matmul_readvariableop_resource3while_lstm_cell_46_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_46/BiasAdd/ReadVariableOp)while/lstm_cell_46/BiasAdd/ReadVariableOp2T
(while/lstm_cell_46/MatMul/ReadVariableOp(while/lstm_cell_46/MatMul/ReadVariableOp2X
*while/lstm_cell_46/MatMul_1/ReadVariableOp*while/lstm_cell_46/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
µ
Ã
while_cond_233583
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_233583___redundant_placeholder04
0while_while_cond_233583___redundant_placeholder14
0while_while_cond_233583___redundant_placeholder24
0while_while_cond_233583___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:


ã
lstm_47_while_cond_234507,
(lstm_47_while_lstm_47_while_loop_counter2
.lstm_47_while_lstm_47_while_maximum_iterations
lstm_47_while_placeholder
lstm_47_while_placeholder_1
lstm_47_while_placeholder_2
lstm_47_while_placeholder_3.
*lstm_47_while_less_lstm_47_strided_slice_1D
@lstm_47_while_lstm_47_while_cond_234507___redundant_placeholder0D
@lstm_47_while_lstm_47_while_cond_234507___redundant_placeholder1D
@lstm_47_while_lstm_47_while_cond_234507___redundant_placeholder2D
@lstm_47_while_lstm_47_while_cond_234507___redundant_placeholder3
lstm_47_while_identity

lstm_47/while/LessLesslstm_47_while_placeholder*lstm_47_while_less_lstm_47_strided_slice_1*
T0*
_output_shapes
: [
lstm_47/while/IdentityIdentitylstm_47/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_47_while_identitylstm_47/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
ö"
ß
while_body_232540
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_46_232564_0:	@-
while_lstm_cell_46_232566_0:@)
while_lstm_cell_46_232568_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_46_232564:	@+
while_lstm_cell_46_232566:@'
while_lstm_cell_46_232568:@¢*while/lstm_cell_46/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0³
*while/lstm_cell_46/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_46_232564_0while_lstm_cell_46_232566_0while_lstm_cell_46_232568_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_46_layer_call_and_return_conditional_losses_232526Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_46/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ
while/Identity_4Identity3while/lstm_cell_46/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/Identity_5Identity3while/lstm_cell_46/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy

while/NoOpNoOp+^while/lstm_cell_46/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_46_232564while_lstm_cell_46_232564_0"8
while_lstm_cell_46_232566while_lstm_cell_46_232566_0"8
while_lstm_cell_46_232568while_lstm_cell_46_232568_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2X
*while/lstm_cell_46/StatefulPartitionedCall*while/lstm_cell_46/StatefulPartitionedCall: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
µ
Ã
while_cond_235482
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_235482___redundant_placeholder04
0while_while_cond_235482___redundant_placeholder14
0while_while_cond_235482___redundant_placeholder24
0while_while_cond_235482___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
ô
²
(__inference_lstm_47_layer_call_fn_235270

inputs
unknown:@
	unknown_0:@
	unknown_1:@
identity¢StatefulPartitionedCallå
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_47_layer_call_and_return_conditional_losses_233458o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
µ
Ã
while_cond_235009
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_235009___redundant_placeholder04
0while_while_cond_235009___redundant_placeholder14
0while_while_cond_235009___redundant_placeholder24
0while_while_cond_235009___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Ä
ù
"__inference__traced_restore_236299
file_prefix3
 assignvariableop_dense_23_kernel:	/
 assignvariableop_1_dense_23_bias:	&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: A
.assignvariableop_7_lstm_46_lstm_cell_46_kernel:	@J
8assignvariableop_8_lstm_46_lstm_cell_46_recurrent_kernel:@:
,assignvariableop_9_lstm_46_lstm_cell_46_bias:@A
/assignvariableop_10_lstm_47_lstm_cell_47_kernel:@K
9assignvariableop_11_lstm_47_lstm_cell_47_recurrent_kernel:@;
-assignvariableop_12_lstm_47_lstm_cell_47_bias:@#
assignvariableop_13_total: #
assignvariableop_14_count: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: =
*assignvariableop_17_adam_dense_23_kernel_m:	7
(assignvariableop_18_adam_dense_23_bias_m:	I
6assignvariableop_19_adam_lstm_46_lstm_cell_46_kernel_m:	@R
@assignvariableop_20_adam_lstm_46_lstm_cell_46_recurrent_kernel_m:@B
4assignvariableop_21_adam_lstm_46_lstm_cell_46_bias_m:@H
6assignvariableop_22_adam_lstm_47_lstm_cell_47_kernel_m:@R
@assignvariableop_23_adam_lstm_47_lstm_cell_47_recurrent_kernel_m:@B
4assignvariableop_24_adam_lstm_47_lstm_cell_47_bias_m:@=
*assignvariableop_25_adam_dense_23_kernel_v:	7
(assignvariableop_26_adam_dense_23_bias_v:	I
6assignvariableop_27_adam_lstm_46_lstm_cell_46_kernel_v:	@R
@assignvariableop_28_adam_lstm_46_lstm_cell_46_recurrent_kernel_v:@B
4assignvariableop_29_adam_lstm_46_lstm_cell_46_bias_v:@H
6assignvariableop_30_adam_lstm_47_lstm_cell_47_kernel_v:@R
@assignvariableop_31_adam_lstm_47_lstm_cell_47_recurrent_kernel_v:@B
4assignvariableop_32_adam_lstm_47_lstm_cell_47_bias_v:@
identity_34¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9¤
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*Ê
valueÀB½"B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH´
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ë
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes
::::::::::::::::::::::::::::::::::*0
dtypes&
$2"	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp assignvariableop_dense_23_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_23_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp.assignvariableop_7_lstm_46_lstm_cell_46_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_8AssignVariableOp8assignvariableop_8_lstm_46_lstm_cell_46_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp,assignvariableop_9_lstm_46_lstm_cell_46_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_10AssignVariableOp/assignvariableop_10_lstm_47_lstm_cell_47_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:ª
AssignVariableOp_11AssignVariableOp9assignvariableop_11_lstm_47_lstm_cell_47_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp-assignvariableop_12_lstm_47_lstm_cell_47_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp*assignvariableop_17_adam_dense_23_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp(assignvariableop_18_adam_dense_23_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_19AssignVariableOp6assignvariableop_19_adam_lstm_46_lstm_cell_46_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_20AssignVariableOp@assignvariableop_20_adam_lstm_46_lstm_cell_46_recurrent_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_21AssignVariableOp4assignvariableop_21_adam_lstm_46_lstm_cell_46_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_47_lstm_cell_47_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_23AssignVariableOp@assignvariableop_23_adam_lstm_47_lstm_cell_47_recurrent_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_24AssignVariableOp4assignvariableop_24_adam_lstm_47_lstm_cell_47_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_dense_23_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_dense_23_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_27AssignVariableOp6assignvariableop_27_adam_lstm_46_lstm_cell_46_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_28AssignVariableOp@assignvariableop_28_adam_lstm_46_lstm_cell_46_recurrent_kernel_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_29AssignVariableOp4assignvariableop_29_adam_lstm_46_lstm_cell_46_bias_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_30AssignVariableOp6assignvariableop_30_adam_lstm_47_lstm_cell_47_kernel_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_31AssignVariableOp@assignvariableop_31_adam_lstm_47_lstm_cell_47_recurrent_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_32AssignVariableOp4assignvariableop_32_adam_lstm_47_lstm_cell_47_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ¥
Identity_33Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_34IdentityIdentity_33:output:0^NoOp_1*
T0*
_output_shapes
: 
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
ð	
Ë
.__inference_sequential_23_layer_call_fn_233502
lstm_46_input
unknown:	@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@
	unknown_5:	
	unknown_6:	
identity¢StatefulPartitionedCall´
StatefulPartitionedCallStatefulPartitionedCalllstm_46_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_23_layer_call_and_return_conditional_losses_233483p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_46_input
8
Ì
while_body_235153
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_46_matmul_readvariableop_resource_0:	@G
5while_lstm_cell_46_matmul_1_readvariableop_resource_0:@B
4while_lstm_cell_46_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_46_matmul_readvariableop_resource:	@E
3while_lstm_cell_46_matmul_1_readvariableop_resource:@@
2while_lstm_cell_46_biasadd_readvariableop_resource:@¢)while/lstm_cell_46/BiasAdd/ReadVariableOp¢(while/lstm_cell_46/MatMul/ReadVariableOp¢*while/lstm_cell_46/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
(while/lstm_cell_46/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_46_matmul_readvariableop_resource_0*
_output_shapes
:	@*
dtype0¹
while/lstm_cell_46/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ 
*while/lstm_cell_46/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_46_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0 
while/lstm_cell_46/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_46/addAddV2#while/lstm_cell_46/MatMul:product:0%while/lstm_cell_46/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
)while/lstm_cell_46/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_46_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0¦
while/lstm_cell_46/BiasAddBiasAddwhile/lstm_cell_46/add:z:01while/lstm_cell_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
"while/lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_46/splitSplit+while/lstm_cell_46/split/split_dim:output:0#while/lstm_cell_46/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitz
while/lstm_cell_46/SigmoidSigmoid!while/lstm_cell_46/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
while/lstm_cell_46/Sigmoid_1Sigmoid!while/lstm_cell_46/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_46/mulMul while/lstm_cell_46/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
while/lstm_cell_46/ReluRelu!while/lstm_cell_46/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_46/mul_1Mulwhile/lstm_cell_46/Sigmoid:y:0%while/lstm_cell_46/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_46/add_1AddV2while/lstm_cell_46/mul:z:0while/lstm_cell_46/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
while/lstm_cell_46/Sigmoid_2Sigmoid!while/lstm_cell_46/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
while/lstm_cell_46/Relu_1Reluwhile/lstm_cell_46/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_46/mul_2Mul while/lstm_cell_46/Sigmoid_2:y:0'while/lstm_cell_46/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_46/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒy
while/Identity_4Identitywhile/lstm_cell_46/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
while/Identity_5Identitywhile/lstm_cell_46/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ

while/NoOpNoOp*^while/lstm_cell_46/BiasAdd/ReadVariableOp)^while/lstm_cell_46/MatMul/ReadVariableOp+^while/lstm_cell_46/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_46_biasadd_readvariableop_resource4while_lstm_cell_46_biasadd_readvariableop_resource_0"l
3while_lstm_cell_46_matmul_1_readvariableop_resource5while_lstm_cell_46_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_46_matmul_readvariableop_resource3while_lstm_cell_46_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_46/BiasAdd/ReadVariableOp)while/lstm_cell_46/BiasAdd/ReadVariableOp2T
(while/lstm_cell_46/MatMul/ReadVariableOp(while/lstm_cell_46/MatMul/ReadVariableOp2X
*while/lstm_cell_46/MatMul_1/ReadVariableOp*while/lstm_cell_46/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
8

C__inference_lstm_46_layer_call_and_return_conditional_losses_232800

inputs&
lstm_cell_46_232718:	@%
lstm_cell_46_232720:@!
lstm_cell_46_232722:@
identity¢$lstm_cell_46/StatefulPartitionedCall¢while;
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
valueB:Ñ
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
value	B :s
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
:ÿÿÿÿÿÿÿÿÿR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
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
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
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
valueB:Û
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskõ
$lstm_cell_46/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_46_232718lstm_cell_46_232720lstm_cell_46_232722*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_46_layer_call_and_return_conditional_losses_232672n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ·
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_46_232718lstm_cell_46_232720lstm_cell_46_232722*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_232731*
condR
while_cond_232730*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿu
NoOpNoOp%^lstm_cell_46/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_46/StatefulPartitionedCall$lstm_cell_46/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÄÐ
Ø	
!__inference__wrapped_model_232459
lstm_46_inputT
Asequential_23_lstm_46_lstm_cell_46_matmul_readvariableop_resource:	@U
Csequential_23_lstm_46_lstm_cell_46_matmul_1_readvariableop_resource:@P
Bsequential_23_lstm_46_lstm_cell_46_biasadd_readvariableop_resource:@S
Asequential_23_lstm_47_lstm_cell_47_matmul_readvariableop_resource:@U
Csequential_23_lstm_47_lstm_cell_47_matmul_1_readvariableop_resource:@P
Bsequential_23_lstm_47_lstm_cell_47_biasadd_readvariableop_resource:@H
5sequential_23_dense_23_matmul_readvariableop_resource:	E
6sequential_23_dense_23_biasadd_readvariableop_resource:	
identity¢-sequential_23/dense_23/BiasAdd/ReadVariableOp¢,sequential_23/dense_23/MatMul/ReadVariableOp¢9sequential_23/lstm_46/lstm_cell_46/BiasAdd/ReadVariableOp¢8sequential_23/lstm_46/lstm_cell_46/MatMul/ReadVariableOp¢:sequential_23/lstm_46/lstm_cell_46/MatMul_1/ReadVariableOp¢sequential_23/lstm_46/while¢9sequential_23/lstm_47/lstm_cell_47/BiasAdd/ReadVariableOp¢8sequential_23/lstm_47/lstm_cell_47/MatMul/ReadVariableOp¢:sequential_23/lstm_47/lstm_cell_47/MatMul_1/ReadVariableOp¢sequential_23/lstm_47/whileX
sequential_23/lstm_46/ShapeShapelstm_46_input*
T0*
_output_shapes
:s
)sequential_23/lstm_46/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_23/lstm_46/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_23/lstm_46/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¿
#sequential_23/lstm_46/strided_sliceStridedSlice$sequential_23/lstm_46/Shape:output:02sequential_23/lstm_46/strided_slice/stack:output:04sequential_23/lstm_46/strided_slice/stack_1:output:04sequential_23/lstm_46/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_23/lstm_46/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :µ
"sequential_23/lstm_46/zeros/packedPack,sequential_23/lstm_46/strided_slice:output:0-sequential_23/lstm_46/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_23/lstm_46/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ®
sequential_23/lstm_46/zerosFill+sequential_23/lstm_46/zeros/packed:output:0*sequential_23/lstm_46/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
&sequential_23/lstm_46/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :¹
$sequential_23/lstm_46/zeros_1/packedPack,sequential_23/lstm_46/strided_slice:output:0/sequential_23/lstm_46/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_23/lstm_46/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ´
sequential_23/lstm_46/zeros_1Fill-sequential_23/lstm_46/zeros_1/packed:output:0,sequential_23/lstm_46/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
$sequential_23/lstm_46/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¡
sequential_23/lstm_46/transpose	Transposelstm_46_input-sequential_23/lstm_46/transpose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
sequential_23/lstm_46/Shape_1Shape#sequential_23/lstm_46/transpose:y:0*
T0*
_output_shapes
:u
+sequential_23/lstm_46/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_23/lstm_46/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_23/lstm_46/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%sequential_23/lstm_46/strided_slice_1StridedSlice&sequential_23/lstm_46/Shape_1:output:04sequential_23/lstm_46/strided_slice_1/stack:output:06sequential_23/lstm_46/strided_slice_1/stack_1:output:06sequential_23/lstm_46/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_23/lstm_46/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿö
#sequential_23/lstm_46/TensorArrayV2TensorListReserve:sequential_23/lstm_46/TensorArrayV2/element_shape:output:0.sequential_23/lstm_46/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Ksequential_23/lstm_46/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  ¢
=sequential_23/lstm_46/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_23/lstm_46/transpose:y:0Tsequential_23/lstm_46/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒu
+sequential_23/lstm_46/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_23/lstm_46/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_23/lstm_46/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ø
%sequential_23/lstm_46/strided_slice_2StridedSlice#sequential_23/lstm_46/transpose:y:04sequential_23/lstm_46/strided_slice_2/stack:output:06sequential_23/lstm_46/strided_slice_2/stack_1:output:06sequential_23/lstm_46/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask»
8sequential_23/lstm_46/lstm_cell_46/MatMul/ReadVariableOpReadVariableOpAsequential_23_lstm_46_lstm_cell_46_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0×
)sequential_23/lstm_46/lstm_cell_46/MatMulMatMul.sequential_23/lstm_46/strided_slice_2:output:0@sequential_23/lstm_46/lstm_cell_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¾
:sequential_23/lstm_46/lstm_cell_46/MatMul_1/ReadVariableOpReadVariableOpCsequential_23_lstm_46_lstm_cell_46_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0Ñ
+sequential_23/lstm_46/lstm_cell_46/MatMul_1MatMul$sequential_23/lstm_46/zeros:output:0Bsequential_23/lstm_46/lstm_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Í
&sequential_23/lstm_46/lstm_cell_46/addAddV23sequential_23/lstm_46/lstm_cell_46/MatMul:product:05sequential_23/lstm_46/lstm_cell_46/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¸
9sequential_23/lstm_46/lstm_cell_46/BiasAdd/ReadVariableOpReadVariableOpBsequential_23_lstm_46_lstm_cell_46_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ö
*sequential_23/lstm_46/lstm_cell_46/BiasAddBiasAdd*sequential_23/lstm_46/lstm_cell_46/add:z:0Asequential_23/lstm_46/lstm_cell_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@t
2sequential_23/lstm_46/lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
(sequential_23/lstm_46/lstm_cell_46/splitSplit;sequential_23/lstm_46/lstm_cell_46/split/split_dim:output:03sequential_23/lstm_46/lstm_cell_46/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split
*sequential_23/lstm_46/lstm_cell_46/SigmoidSigmoid1sequential_23/lstm_46/lstm_cell_46/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,sequential_23/lstm_46/lstm_cell_46/Sigmoid_1Sigmoid1sequential_23/lstm_46/lstm_cell_46/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¹
&sequential_23/lstm_46/lstm_cell_46/mulMul0sequential_23/lstm_46/lstm_cell_46/Sigmoid_1:y:0&sequential_23/lstm_46/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'sequential_23/lstm_46/lstm_cell_46/ReluRelu1sequential_23/lstm_46/lstm_cell_46/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
(sequential_23/lstm_46/lstm_cell_46/mul_1Mul.sequential_23/lstm_46/lstm_cell_46/Sigmoid:y:05sequential_23/lstm_46/lstm_cell_46/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ½
(sequential_23/lstm_46/lstm_cell_46/add_1AddV2*sequential_23/lstm_46/lstm_cell_46/mul:z:0,sequential_23/lstm_46/lstm_cell_46/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,sequential_23/lstm_46/lstm_cell_46/Sigmoid_2Sigmoid1sequential_23/lstm_46/lstm_cell_46/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)sequential_23/lstm_46/lstm_cell_46/Relu_1Relu,sequential_23/lstm_46/lstm_cell_46/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÌ
(sequential_23/lstm_46/lstm_cell_46/mul_2Mul0sequential_23/lstm_46/lstm_cell_46/Sigmoid_2:y:07sequential_23/lstm_46/lstm_cell_46/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
3sequential_23/lstm_46/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ú
%sequential_23/lstm_46/TensorArrayV2_1TensorListReserve<sequential_23/lstm_46/TensorArrayV2_1/element_shape:output:0.sequential_23/lstm_46/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ\
sequential_23/lstm_46/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_23/lstm_46/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿj
(sequential_23/lstm_46/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¶
sequential_23/lstm_46/whileWhile1sequential_23/lstm_46/while/loop_counter:output:07sequential_23/lstm_46/while/maximum_iterations:output:0#sequential_23/lstm_46/time:output:0.sequential_23/lstm_46/TensorArrayV2_1:handle:0$sequential_23/lstm_46/zeros:output:0&sequential_23/lstm_46/zeros_1:output:0.sequential_23/lstm_46/strided_slice_1:output:0Msequential_23/lstm_46/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_23_lstm_46_lstm_cell_46_matmul_readvariableop_resourceCsequential_23_lstm_46_lstm_cell_46_matmul_1_readvariableop_resourceBsequential_23_lstm_46_lstm_cell_46_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *3
body+R)
'sequential_23_lstm_46_while_body_232230*3
cond+R)
'sequential_23_lstm_46_while_cond_232229*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
Fsequential_23/lstm_46/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
8sequential_23/lstm_46/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_23/lstm_46/while:output:3Osequential_23/lstm_46/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0~
+sequential_23/lstm_46/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿw
-sequential_23/lstm_46/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_23/lstm_46/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:õ
%sequential_23/lstm_46/strided_slice_3StridedSliceAsequential_23/lstm_46/TensorArrayV2Stack/TensorListStack:tensor:04sequential_23/lstm_46/strided_slice_3/stack:output:06sequential_23/lstm_46/strided_slice_3/stack_1:output:06sequential_23/lstm_46/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask{
&sequential_23/lstm_46/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ø
!sequential_23/lstm_46/transpose_1	TransposeAsequential_23/lstm_46/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_23/lstm_46/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
sequential_23/lstm_46/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    p
sequential_23/lstm_47/ShapeShape%sequential_23/lstm_46/transpose_1:y:0*
T0*
_output_shapes
:s
)sequential_23/lstm_47/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_23/lstm_47/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_23/lstm_47/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¿
#sequential_23/lstm_47/strided_sliceStridedSlice$sequential_23/lstm_47/Shape:output:02sequential_23/lstm_47/strided_slice/stack:output:04sequential_23/lstm_47/strided_slice/stack_1:output:04sequential_23/lstm_47/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_23/lstm_47/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :µ
"sequential_23/lstm_47/zeros/packedPack,sequential_23/lstm_47/strided_slice:output:0-sequential_23/lstm_47/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_23/lstm_47/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ®
sequential_23/lstm_47/zerosFill+sequential_23/lstm_47/zeros/packed:output:0*sequential_23/lstm_47/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
&sequential_23/lstm_47/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :¹
$sequential_23/lstm_47/zeros_1/packedPack,sequential_23/lstm_47/strided_slice:output:0/sequential_23/lstm_47/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_23/lstm_47/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ´
sequential_23/lstm_47/zeros_1Fill-sequential_23/lstm_47/zeros_1/packed:output:0,sequential_23/lstm_47/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
$sequential_23/lstm_47/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¸
sequential_23/lstm_47/transpose	Transpose%sequential_23/lstm_46/transpose_1:y:0-sequential_23/lstm_47/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
sequential_23/lstm_47/Shape_1Shape#sequential_23/lstm_47/transpose:y:0*
T0*
_output_shapes
:u
+sequential_23/lstm_47/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_23/lstm_47/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_23/lstm_47/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%sequential_23/lstm_47/strided_slice_1StridedSlice&sequential_23/lstm_47/Shape_1:output:04sequential_23/lstm_47/strided_slice_1/stack:output:06sequential_23/lstm_47/strided_slice_1/stack_1:output:06sequential_23/lstm_47/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_23/lstm_47/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿö
#sequential_23/lstm_47/TensorArrayV2TensorListReserve:sequential_23/lstm_47/TensorArrayV2/element_shape:output:0.sequential_23/lstm_47/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Ksequential_23/lstm_47/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¢
=sequential_23/lstm_47/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_23/lstm_47/transpose:y:0Tsequential_23/lstm_47/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒu
+sequential_23/lstm_47/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_23/lstm_47/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_23/lstm_47/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:×
%sequential_23/lstm_47/strided_slice_2StridedSlice#sequential_23/lstm_47/transpose:y:04sequential_23/lstm_47/strided_slice_2/stack:output:06sequential_23/lstm_47/strided_slice_2/stack_1:output:06sequential_23/lstm_47/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskº
8sequential_23/lstm_47/lstm_cell_47/MatMul/ReadVariableOpReadVariableOpAsequential_23_lstm_47_lstm_cell_47_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0×
)sequential_23/lstm_47/lstm_cell_47/MatMulMatMul.sequential_23/lstm_47/strided_slice_2:output:0@sequential_23/lstm_47/lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¾
:sequential_23/lstm_47/lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOpCsequential_23_lstm_47_lstm_cell_47_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0Ñ
+sequential_23/lstm_47/lstm_cell_47/MatMul_1MatMul$sequential_23/lstm_47/zeros:output:0Bsequential_23/lstm_47/lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Í
&sequential_23/lstm_47/lstm_cell_47/addAddV23sequential_23/lstm_47/lstm_cell_47/MatMul:product:05sequential_23/lstm_47/lstm_cell_47/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¸
9sequential_23/lstm_47/lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOpBsequential_23_lstm_47_lstm_cell_47_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ö
*sequential_23/lstm_47/lstm_cell_47/BiasAddBiasAdd*sequential_23/lstm_47/lstm_cell_47/add:z:0Asequential_23/lstm_47/lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@t
2sequential_23/lstm_47/lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
(sequential_23/lstm_47/lstm_cell_47/splitSplit;sequential_23/lstm_47/lstm_cell_47/split/split_dim:output:03sequential_23/lstm_47/lstm_cell_47/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split
*sequential_23/lstm_47/lstm_cell_47/SigmoidSigmoid1sequential_23/lstm_47/lstm_cell_47/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,sequential_23/lstm_47/lstm_cell_47/Sigmoid_1Sigmoid1sequential_23/lstm_47/lstm_cell_47/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¹
&sequential_23/lstm_47/lstm_cell_47/mulMul0sequential_23/lstm_47/lstm_cell_47/Sigmoid_1:y:0&sequential_23/lstm_47/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'sequential_23/lstm_47/lstm_cell_47/ReluRelu1sequential_23/lstm_47/lstm_cell_47/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
(sequential_23/lstm_47/lstm_cell_47/mul_1Mul.sequential_23/lstm_47/lstm_cell_47/Sigmoid:y:05sequential_23/lstm_47/lstm_cell_47/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ½
(sequential_23/lstm_47/lstm_cell_47/add_1AddV2*sequential_23/lstm_47/lstm_cell_47/mul:z:0,sequential_23/lstm_47/lstm_cell_47/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,sequential_23/lstm_47/lstm_cell_47/Sigmoid_2Sigmoid1sequential_23/lstm_47/lstm_cell_47/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)sequential_23/lstm_47/lstm_cell_47/Relu_1Relu,sequential_23/lstm_47/lstm_cell_47/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÌ
(sequential_23/lstm_47/lstm_cell_47/mul_2Mul0sequential_23/lstm_47/lstm_cell_47/Sigmoid_2:y:07sequential_23/lstm_47/lstm_cell_47/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
3sequential_23/lstm_47/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ú
%sequential_23/lstm_47/TensorArrayV2_1TensorListReserve<sequential_23/lstm_47/TensorArrayV2_1/element_shape:output:0.sequential_23/lstm_47/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ\
sequential_23/lstm_47/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_23/lstm_47/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿj
(sequential_23/lstm_47/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¶
sequential_23/lstm_47/whileWhile1sequential_23/lstm_47/while/loop_counter:output:07sequential_23/lstm_47/while/maximum_iterations:output:0#sequential_23/lstm_47/time:output:0.sequential_23/lstm_47/TensorArrayV2_1:handle:0$sequential_23/lstm_47/zeros:output:0&sequential_23/lstm_47/zeros_1:output:0.sequential_23/lstm_47/strided_slice_1:output:0Msequential_23/lstm_47/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_23_lstm_47_lstm_cell_47_matmul_readvariableop_resourceCsequential_23_lstm_47_lstm_cell_47_matmul_1_readvariableop_resourceBsequential_23_lstm_47_lstm_cell_47_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *3
body+R)
'sequential_23_lstm_47_while_body_232369*3
cond+R)
'sequential_23_lstm_47_while_cond_232368*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
Fsequential_23/lstm_47/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
8sequential_23/lstm_47/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_23/lstm_47/while:output:3Osequential_23/lstm_47/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0~
+sequential_23/lstm_47/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿw
-sequential_23/lstm_47/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_23/lstm_47/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:õ
%sequential_23/lstm_47/strided_slice_3StridedSliceAsequential_23/lstm_47/TensorArrayV2Stack/TensorListStack:tensor:04sequential_23/lstm_47/strided_slice_3/stack:output:06sequential_23/lstm_47/strided_slice_3/stack_1:output:06sequential_23/lstm_47/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask{
&sequential_23/lstm_47/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ø
!sequential_23/lstm_47/transpose_1	TransposeAsequential_23/lstm_47/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_23/lstm_47/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
sequential_23/lstm_47/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    £
,sequential_23/dense_23/MatMul/ReadVariableOpReadVariableOp5sequential_23_dense_23_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0À
sequential_23/dense_23/MatMulMatMul.sequential_23/lstm_47/strided_slice_3:output:04sequential_23/dense_23/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
-sequential_23/dense_23/BiasAdd/ReadVariableOpReadVariableOp6sequential_23_dense_23_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¼
sequential_23/dense_23/BiasAddBiasAdd'sequential_23/dense_23/MatMul:product:05sequential_23/dense_23/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
IdentityIdentity'sequential_23/dense_23/BiasAdd:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÉ
NoOpNoOp.^sequential_23/dense_23/BiasAdd/ReadVariableOp-^sequential_23/dense_23/MatMul/ReadVariableOp:^sequential_23/lstm_46/lstm_cell_46/BiasAdd/ReadVariableOp9^sequential_23/lstm_46/lstm_cell_46/MatMul/ReadVariableOp;^sequential_23/lstm_46/lstm_cell_46/MatMul_1/ReadVariableOp^sequential_23/lstm_46/while:^sequential_23/lstm_47/lstm_cell_47/BiasAdd/ReadVariableOp9^sequential_23/lstm_47/lstm_cell_47/MatMul/ReadVariableOp;^sequential_23/lstm_47/lstm_cell_47/MatMul_1/ReadVariableOp^sequential_23/lstm_47/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2^
-sequential_23/dense_23/BiasAdd/ReadVariableOp-sequential_23/dense_23/BiasAdd/ReadVariableOp2\
,sequential_23/dense_23/MatMul/ReadVariableOp,sequential_23/dense_23/MatMul/ReadVariableOp2v
9sequential_23/lstm_46/lstm_cell_46/BiasAdd/ReadVariableOp9sequential_23/lstm_46/lstm_cell_46/BiasAdd/ReadVariableOp2t
8sequential_23/lstm_46/lstm_cell_46/MatMul/ReadVariableOp8sequential_23/lstm_46/lstm_cell_46/MatMul/ReadVariableOp2x
:sequential_23/lstm_46/lstm_cell_46/MatMul_1/ReadVariableOp:sequential_23/lstm_46/lstm_cell_46/MatMul_1/ReadVariableOp2:
sequential_23/lstm_46/whilesequential_23/lstm_46/while2v
9sequential_23/lstm_47/lstm_cell_47/BiasAdd/ReadVariableOp9sequential_23/lstm_47/lstm_cell_47/BiasAdd/ReadVariableOp2t
8sequential_23/lstm_47/lstm_cell_47/MatMul/ReadVariableOp8sequential_23/lstm_47/lstm_cell_47/MatMul/ReadVariableOp2x
:sequential_23/lstm_47/lstm_cell_47/MatMul_1/ReadVariableOp:sequential_23/lstm_47/lstm_cell_47/MatMul_1/ReadVariableOp2:
sequential_23/lstm_47/whilesequential_23/lstm_47/while:[ W
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_46_input
R

'sequential_23_lstm_46_while_body_232230H
Dsequential_23_lstm_46_while_sequential_23_lstm_46_while_loop_counterN
Jsequential_23_lstm_46_while_sequential_23_lstm_46_while_maximum_iterations+
'sequential_23_lstm_46_while_placeholder-
)sequential_23_lstm_46_while_placeholder_1-
)sequential_23_lstm_46_while_placeholder_2-
)sequential_23_lstm_46_while_placeholder_3G
Csequential_23_lstm_46_while_sequential_23_lstm_46_strided_slice_1_0
sequential_23_lstm_46_while_tensorarrayv2read_tensorlistgetitem_sequential_23_lstm_46_tensorarrayunstack_tensorlistfromtensor_0\
Isequential_23_lstm_46_while_lstm_cell_46_matmul_readvariableop_resource_0:	@]
Ksequential_23_lstm_46_while_lstm_cell_46_matmul_1_readvariableop_resource_0:@X
Jsequential_23_lstm_46_while_lstm_cell_46_biasadd_readvariableop_resource_0:@(
$sequential_23_lstm_46_while_identity*
&sequential_23_lstm_46_while_identity_1*
&sequential_23_lstm_46_while_identity_2*
&sequential_23_lstm_46_while_identity_3*
&sequential_23_lstm_46_while_identity_4*
&sequential_23_lstm_46_while_identity_5E
Asequential_23_lstm_46_while_sequential_23_lstm_46_strided_slice_1
}sequential_23_lstm_46_while_tensorarrayv2read_tensorlistgetitem_sequential_23_lstm_46_tensorarrayunstack_tensorlistfromtensorZ
Gsequential_23_lstm_46_while_lstm_cell_46_matmul_readvariableop_resource:	@[
Isequential_23_lstm_46_while_lstm_cell_46_matmul_1_readvariableop_resource:@V
Hsequential_23_lstm_46_while_lstm_cell_46_biasadd_readvariableop_resource:@¢?sequential_23/lstm_46/while/lstm_cell_46/BiasAdd/ReadVariableOp¢>sequential_23/lstm_46/while/lstm_cell_46/MatMul/ReadVariableOp¢@sequential_23/lstm_46/while/lstm_cell_46/MatMul_1/ReadVariableOp
Msequential_23/lstm_46/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  
?sequential_23/lstm_46/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_23_lstm_46_while_tensorarrayv2read_tensorlistgetitem_sequential_23_lstm_46_tensorarrayunstack_tensorlistfromtensor_0'sequential_23_lstm_46_while_placeholderVsequential_23/lstm_46/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0É
>sequential_23/lstm_46/while/lstm_cell_46/MatMul/ReadVariableOpReadVariableOpIsequential_23_lstm_46_while_lstm_cell_46_matmul_readvariableop_resource_0*
_output_shapes
:	@*
dtype0û
/sequential_23/lstm_46/while/lstm_cell_46/MatMulMatMulFsequential_23/lstm_46/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_23/lstm_46/while/lstm_cell_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ì
@sequential_23/lstm_46/while/lstm_cell_46/MatMul_1/ReadVariableOpReadVariableOpKsequential_23_lstm_46_while_lstm_cell_46_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0â
1sequential_23/lstm_46/while/lstm_cell_46/MatMul_1MatMul)sequential_23_lstm_46_while_placeholder_2Hsequential_23/lstm_46/while/lstm_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ß
,sequential_23/lstm_46/while/lstm_cell_46/addAddV29sequential_23/lstm_46/while/lstm_cell_46/MatMul:product:0;sequential_23/lstm_46/while/lstm_cell_46/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Æ
?sequential_23/lstm_46/while/lstm_cell_46/BiasAdd/ReadVariableOpReadVariableOpJsequential_23_lstm_46_while_lstm_cell_46_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0è
0sequential_23/lstm_46/while/lstm_cell_46/BiasAddBiasAdd0sequential_23/lstm_46/while/lstm_cell_46/add:z:0Gsequential_23/lstm_46/while/lstm_cell_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@z
8sequential_23/lstm_46/while/lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :±
.sequential_23/lstm_46/while/lstm_cell_46/splitSplitAsequential_23/lstm_46/while/lstm_cell_46/split/split_dim:output:09sequential_23/lstm_46/while/lstm_cell_46/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split¦
0sequential_23/lstm_46/while/lstm_cell_46/SigmoidSigmoid7sequential_23/lstm_46/while/lstm_cell_46/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
2sequential_23/lstm_46/while/lstm_cell_46/Sigmoid_1Sigmoid7sequential_23/lstm_46/while/lstm_cell_46/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
,sequential_23/lstm_46/while/lstm_cell_46/mulMul6sequential_23/lstm_46/while/lstm_cell_46/Sigmoid_1:y:0)sequential_23_lstm_46_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
-sequential_23/lstm_46/while/lstm_cell_46/ReluRelu7sequential_23/lstm_46/while/lstm_cell_46/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ
.sequential_23/lstm_46/while/lstm_cell_46/mul_1Mul4sequential_23/lstm_46/while/lstm_cell_46/Sigmoid:y:0;sequential_23/lstm_46/while/lstm_cell_46/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
.sequential_23/lstm_46/while/lstm_cell_46/add_1AddV20sequential_23/lstm_46/while/lstm_cell_46/mul:z:02sequential_23/lstm_46/while/lstm_cell_46/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
2sequential_23/lstm_46/while/lstm_cell_46/Sigmoid_2Sigmoid7sequential_23/lstm_46/while/lstm_cell_46/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/sequential_23/lstm_46/while/lstm_cell_46/Relu_1Relu2sequential_23/lstm_46/while/lstm_cell_46/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
.sequential_23/lstm_46/while/lstm_cell_46/mul_2Mul6sequential_23/lstm_46/while/lstm_cell_46/Sigmoid_2:y:0=sequential_23/lstm_46/while/lstm_cell_46/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@sequential_23/lstm_46/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_23_lstm_46_while_placeholder_1'sequential_23_lstm_46_while_placeholder2sequential_23/lstm_46/while/lstm_cell_46/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒc
!sequential_23/lstm_46/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_23/lstm_46/while/addAddV2'sequential_23_lstm_46_while_placeholder*sequential_23/lstm_46/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_23/lstm_46/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :¿
!sequential_23/lstm_46/while/add_1AddV2Dsequential_23_lstm_46_while_sequential_23_lstm_46_while_loop_counter,sequential_23/lstm_46/while/add_1/y:output:0*
T0*
_output_shapes
: 
$sequential_23/lstm_46/while/IdentityIdentity%sequential_23/lstm_46/while/add_1:z:0!^sequential_23/lstm_46/while/NoOp*
T0*
_output_shapes
: Â
&sequential_23/lstm_46/while/Identity_1IdentityJsequential_23_lstm_46_while_sequential_23_lstm_46_while_maximum_iterations!^sequential_23/lstm_46/while/NoOp*
T0*
_output_shapes
: 
&sequential_23/lstm_46/while/Identity_2Identity#sequential_23/lstm_46/while/add:z:0!^sequential_23/lstm_46/while/NoOp*
T0*
_output_shapes
: Û
&sequential_23/lstm_46/while/Identity_3IdentityPsequential_23/lstm_46/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_23/lstm_46/while/NoOp*
T0*
_output_shapes
: :éèÒ»
&sequential_23/lstm_46/while/Identity_4Identity2sequential_23/lstm_46/while/lstm_cell_46/mul_2:z:0!^sequential_23/lstm_46/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
&sequential_23/lstm_46/while/Identity_5Identity2sequential_23/lstm_46/while/lstm_cell_46/add_1:z:0!^sequential_23/lstm_46/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
 sequential_23/lstm_46/while/NoOpNoOp@^sequential_23/lstm_46/while/lstm_cell_46/BiasAdd/ReadVariableOp?^sequential_23/lstm_46/while/lstm_cell_46/MatMul/ReadVariableOpA^sequential_23/lstm_46/while/lstm_cell_46/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_23_lstm_46_while_identity-sequential_23/lstm_46/while/Identity:output:0"Y
&sequential_23_lstm_46_while_identity_1/sequential_23/lstm_46/while/Identity_1:output:0"Y
&sequential_23_lstm_46_while_identity_2/sequential_23/lstm_46/while/Identity_2:output:0"Y
&sequential_23_lstm_46_while_identity_3/sequential_23/lstm_46/while/Identity_3:output:0"Y
&sequential_23_lstm_46_while_identity_4/sequential_23/lstm_46/while/Identity_4:output:0"Y
&sequential_23_lstm_46_while_identity_5/sequential_23/lstm_46/while/Identity_5:output:0"
Hsequential_23_lstm_46_while_lstm_cell_46_biasadd_readvariableop_resourceJsequential_23_lstm_46_while_lstm_cell_46_biasadd_readvariableop_resource_0"
Isequential_23_lstm_46_while_lstm_cell_46_matmul_1_readvariableop_resourceKsequential_23_lstm_46_while_lstm_cell_46_matmul_1_readvariableop_resource_0"
Gsequential_23_lstm_46_while_lstm_cell_46_matmul_readvariableop_resourceIsequential_23_lstm_46_while_lstm_cell_46_matmul_readvariableop_resource_0"
Asequential_23_lstm_46_while_sequential_23_lstm_46_strided_slice_1Csequential_23_lstm_46_while_sequential_23_lstm_46_strided_slice_1_0"
}sequential_23_lstm_46_while_tensorarrayv2read_tensorlistgetitem_sequential_23_lstm_46_tensorarrayunstack_tensorlistfromtensorsequential_23_lstm_46_while_tensorarrayv2read_tensorlistgetitem_sequential_23_lstm_46_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2
?sequential_23/lstm_46/while/lstm_cell_46/BiasAdd/ReadVariableOp?sequential_23/lstm_46/while/lstm_cell_46/BiasAdd/ReadVariableOp2
>sequential_23/lstm_46/while/lstm_cell_46/MatMul/ReadVariableOp>sequential_23/lstm_46/while/lstm_cell_46/MatMul/ReadVariableOp2
@sequential_23/lstm_46/while/lstm_cell_46/MatMul_1/ReadVariableOp@sequential_23/lstm_46/while/lstm_cell_46/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ÓJ

C__inference_lstm_47_layer_call_and_return_conditional_losses_235567
inputs_0=
+lstm_cell_47_matmul_readvariableop_resource:@?
-lstm_cell_47_matmul_1_readvariableop_resource:@:
,lstm_cell_47_biasadd_readvariableop_resource:@
identity¢#lstm_cell_47/BiasAdd/ReadVariableOp¢"lstm_cell_47/MatMul/ReadVariableOp¢$lstm_cell_47/MatMul_1/ReadVariableOp¢while=
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
valueB:Ñ
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
value	B :s
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
:ÿÿÿÿÿÿÿÿÿR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
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
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
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
valueB:Û
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
"lstm_cell_47/MatMul/ReadVariableOpReadVariableOp+lstm_cell_47_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0
lstm_cell_47/MatMulMatMulstrided_slice_2:output:0*lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
$lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_47_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0
lstm_cell_47/MatMul_1MatMulzeros:output:0,lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_47/addAddV2lstm_cell_47/MatMul:product:0lstm_cell_47/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_47_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
lstm_cell_47/BiasAddBiasAddlstm_cell_47/add:z:0+lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@^
lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_47/splitSplit%lstm_cell_47/split/split_dim:output:0lstm_cell_47/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitn
lstm_cell_47/SigmoidSigmoidlstm_cell_47/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
lstm_cell_47/Sigmoid_1Sigmoidlstm_cell_47/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
lstm_cell_47/mulMullstm_cell_47/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
lstm_cell_47/ReluRelulstm_cell_47/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_47/mul_1Mullstm_cell_47/Sigmoid:y:0lstm_cell_47/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
lstm_cell_47/add_1AddV2lstm_cell_47/mul:z:0lstm_cell_47/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
lstm_cell_47/Sigmoid_2Sigmoidlstm_cell_47/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
lstm_cell_47/Relu_1Relulstm_cell_47/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_47/mul_2Mullstm_cell_47/Sigmoid_2:y:0!lstm_cell_47/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_47_matmul_readvariableop_resource-lstm_cell_47_matmul_1_readvariableop_resource,lstm_cell_47_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_235483*
condR
while_cond_235482*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
NoOpNoOp$^lstm_cell_47/BiasAdd/ReadVariableOp#^lstm_cell_47/MatMul/ReadVariableOp%^lstm_cell_47/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_47/BiasAdd/ReadVariableOp#lstm_cell_47/BiasAdd/ReadVariableOp2H
"lstm_cell_47/MatMul/ReadVariableOp"lstm_cell_47/MatMul/ReadVariableOp2L
$lstm_cell_47/MatMul_1/ReadVariableOp$lstm_cell_47/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
Ï

H__inference_lstm_cell_46_layer_call_and_return_conditional_losses_232526

inputs

states
states_11
matmul_readvariableop_resource:	@2
 matmul_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿN
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates
8
Ê
while_body_235769
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_47_matmul_readvariableop_resource_0:@G
5while_lstm_cell_47_matmul_1_readvariableop_resource_0:@B
4while_lstm_cell_47_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_47_matmul_readvariableop_resource:@E
3while_lstm_cell_47_matmul_1_readvariableop_resource:@@
2while_lstm_cell_47_biasadd_readvariableop_resource:@¢)while/lstm_cell_47/BiasAdd/ReadVariableOp¢(while/lstm_cell_47/MatMul/ReadVariableOp¢*while/lstm_cell_47/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
(while/lstm_cell_47/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_47_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0¹
while/lstm_cell_47/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ 
*while/lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_47_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0 
while/lstm_cell_47/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_47/addAddV2#while/lstm_cell_47/MatMul:product:0%while/lstm_cell_47/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
)while/lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_47_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0¦
while/lstm_cell_47/BiasAddBiasAddwhile/lstm_cell_47/add:z:01while/lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
"while/lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_47/splitSplit+while/lstm_cell_47/split/split_dim:output:0#while/lstm_cell_47/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitz
while/lstm_cell_47/SigmoidSigmoid!while/lstm_cell_47/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
while/lstm_cell_47/Sigmoid_1Sigmoid!while/lstm_cell_47/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_47/mulMul while/lstm_cell_47/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
while/lstm_cell_47/ReluRelu!while/lstm_cell_47/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_47/mul_1Mulwhile/lstm_cell_47/Sigmoid:y:0%while/lstm_cell_47/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_47/add_1AddV2while/lstm_cell_47/mul:z:0while/lstm_cell_47/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
while/lstm_cell_47/Sigmoid_2Sigmoid!while/lstm_cell_47/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
while/lstm_cell_47/Relu_1Reluwhile/lstm_cell_47/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_47/mul_2Mul while/lstm_cell_47/Sigmoid_2:y:0'while/lstm_cell_47/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_47/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒy
while/Identity_4Identitywhile/lstm_cell_47/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
while/Identity_5Identitywhile/lstm_cell_47/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ

while/NoOpNoOp*^while/lstm_cell_47/BiasAdd/ReadVariableOp)^while/lstm_cell_47/MatMul/ReadVariableOp+^while/lstm_cell_47/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_47_biasadd_readvariableop_resource4while_lstm_cell_47_biasadd_readvariableop_resource_0"l
3while_lstm_cell_47_matmul_1_readvariableop_resource5while_lstm_cell_47_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_47_matmul_readvariableop_resource3while_lstm_cell_47_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_47/BiasAdd/ReadVariableOp)while/lstm_cell_47/BiasAdd/ReadVariableOp2T
(while/lstm_cell_47/MatMul/ReadVariableOp(while/lstm_cell_47/MatMul/ReadVariableOp2X
*while/lstm_cell_47/MatMul_1/ReadVariableOp*while/lstm_cell_47/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
8
Ê
while_body_235626
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_47_matmul_readvariableop_resource_0:@G
5while_lstm_cell_47_matmul_1_readvariableop_resource_0:@B
4while_lstm_cell_47_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_47_matmul_readvariableop_resource:@E
3while_lstm_cell_47_matmul_1_readvariableop_resource:@@
2while_lstm_cell_47_biasadd_readvariableop_resource:@¢)while/lstm_cell_47/BiasAdd/ReadVariableOp¢(while/lstm_cell_47/MatMul/ReadVariableOp¢*while/lstm_cell_47/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
(while/lstm_cell_47/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_47_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0¹
while/lstm_cell_47/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ 
*while/lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_47_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0 
while/lstm_cell_47/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_47/addAddV2#while/lstm_cell_47/MatMul:product:0%while/lstm_cell_47/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
)while/lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_47_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0¦
while/lstm_cell_47/BiasAddBiasAddwhile/lstm_cell_47/add:z:01while/lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
"while/lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_47/splitSplit+while/lstm_cell_47/split/split_dim:output:0#while/lstm_cell_47/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitz
while/lstm_cell_47/SigmoidSigmoid!while/lstm_cell_47/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
while/lstm_cell_47/Sigmoid_1Sigmoid!while/lstm_cell_47/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_47/mulMul while/lstm_cell_47/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
while/lstm_cell_47/ReluRelu!while/lstm_cell_47/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_47/mul_1Mulwhile/lstm_cell_47/Sigmoid:y:0%while/lstm_cell_47/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_47/add_1AddV2while/lstm_cell_47/mul:z:0while/lstm_cell_47/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
while/lstm_cell_47/Sigmoid_2Sigmoid!while/lstm_cell_47/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
while/lstm_cell_47/Relu_1Reluwhile/lstm_cell_47/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_47/mul_2Mul while/lstm_cell_47/Sigmoid_2:y:0'while/lstm_cell_47/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_47/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒy
while/Identity_4Identitywhile/lstm_cell_47/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
while/Identity_5Identitywhile/lstm_cell_47/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ

while/NoOpNoOp*^while/lstm_cell_47/BiasAdd/ReadVariableOp)^while/lstm_cell_47/MatMul/ReadVariableOp+^while/lstm_cell_47/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_47_biasadd_readvariableop_resource4while_lstm_cell_47_biasadd_readvariableop_resource_0"l
3while_lstm_cell_47_matmul_1_readvariableop_resource5while_lstm_cell_47_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_47_matmul_readvariableop_resource3while_lstm_cell_47_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_47/BiasAdd/ReadVariableOp)while/lstm_cell_47/BiasAdd/ReadVariableOp2T
(while/lstm_cell_47/MatMul/ReadVariableOp(while/lstm_cell_47/MatMul/ReadVariableOp2X
*while/lstm_cell_47/MatMul_1/ReadVariableOp*while/lstm_cell_47/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
µ
Ã
while_cond_234723
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_234723___redundant_placeholder04
0while_while_cond_234723___redundant_placeholder14
0while_while_cond_234723___redundant_placeholder24
0while_while_cond_234723___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
J

C__inference_lstm_47_layer_call_and_return_conditional_losses_233668

inputs=
+lstm_cell_47_matmul_readvariableop_resource:@?
-lstm_cell_47_matmul_1_readvariableop_resource:@:
,lstm_cell_47_biasadd_readvariableop_resource:@
identity¢#lstm_cell_47/BiasAdd/ReadVariableOp¢"lstm_cell_47/MatMul/ReadVariableOp¢$lstm_cell_47/MatMul_1/ReadVariableOp¢while;
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
valueB:Ñ
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
value	B :s
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
:ÿÿÿÿÿÿÿÿÿR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
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
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
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
valueB:Û
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
"lstm_cell_47/MatMul/ReadVariableOpReadVariableOp+lstm_cell_47_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0
lstm_cell_47/MatMulMatMulstrided_slice_2:output:0*lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
$lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_47_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0
lstm_cell_47/MatMul_1MatMulzeros:output:0,lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_47/addAddV2lstm_cell_47/MatMul:product:0lstm_cell_47/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_47_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
lstm_cell_47/BiasAddBiasAddlstm_cell_47/add:z:0+lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@^
lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_47/splitSplit%lstm_cell_47/split/split_dim:output:0lstm_cell_47/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitn
lstm_cell_47/SigmoidSigmoidlstm_cell_47/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
lstm_cell_47/Sigmoid_1Sigmoidlstm_cell_47/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
lstm_cell_47/mulMullstm_cell_47/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
lstm_cell_47/ReluRelulstm_cell_47/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_47/mul_1Mullstm_cell_47/Sigmoid:y:0lstm_cell_47/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
lstm_cell_47/add_1AddV2lstm_cell_47/mul:z:0lstm_cell_47/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
lstm_cell_47/Sigmoid_2Sigmoidlstm_cell_47/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
lstm_cell_47/Relu_1Relulstm_cell_47/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_47/mul_2Mullstm_cell_47/Sigmoid_2:y:0!lstm_cell_47/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_47_matmul_readvariableop_resource-lstm_cell_47_matmul_1_readvariableop_resource,lstm_cell_47_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_233584*
condR
while_cond_233583*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
NoOpNoOp$^lstm_cell_47/BiasAdd/ReadVariableOp#^lstm_cell_47/MatMul/ReadVariableOp%^lstm_cell_47/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_47/BiasAdd/ReadVariableOp#lstm_cell_47/BiasAdd/ReadVariableOp2H
"lstm_cell_47/MatMul/ReadVariableOp"lstm_cell_47/MatMul/ReadVariableOp2L
$lstm_cell_47/MatMul_1/ReadVariableOp$lstm_cell_47/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó"
Ý
while_body_232890
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_47_232914_0:@-
while_lstm_cell_47_232916_0:@)
while_lstm_cell_47_232918_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_47_232914:@+
while_lstm_cell_47_232916:@'
while_lstm_cell_47_232918:@¢*while/lstm_cell_47/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0³
*while/lstm_cell_47/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_47_232914_0while_lstm_cell_47_232916_0while_lstm_cell_47_232918_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_232876Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_47/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ
while/Identity_4Identity3while/lstm_cell_47/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/Identity_5Identity3while/lstm_cell_47/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy

while/NoOpNoOp+^while/lstm_cell_47/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_47_232914while_lstm_cell_47_232914_0"8
while_lstm_cell_47_232916while_lstm_cell_47_232916_0"8
while_lstm_cell_47_232918while_lstm_cell_47_232918_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2X
*while/lstm_cell_47/StatefulPartitionedCall*while/lstm_cell_47/StatefulPartitionedCall: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Ë

H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_232876

inputs

states
states_10
matmul_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿN
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates
Ó

H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_236036

inputs
states_0
states_10
matmul_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿN
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
µ
Ã
while_cond_233223
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_233223___redundant_placeholder04
0while_while_cond_233223___redundant_placeholder14
0while_while_cond_233223___redundant_placeholder24
0while_while_cond_233223___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
8
Ê
while_body_233374
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_47_matmul_readvariableop_resource_0:@G
5while_lstm_cell_47_matmul_1_readvariableop_resource_0:@B
4while_lstm_cell_47_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_47_matmul_readvariableop_resource:@E
3while_lstm_cell_47_matmul_1_readvariableop_resource:@@
2while_lstm_cell_47_biasadd_readvariableop_resource:@¢)while/lstm_cell_47/BiasAdd/ReadVariableOp¢(while/lstm_cell_47/MatMul/ReadVariableOp¢*while/lstm_cell_47/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
(while/lstm_cell_47/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_47_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0¹
while/lstm_cell_47/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ 
*while/lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_47_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0 
while/lstm_cell_47/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_47/addAddV2#while/lstm_cell_47/MatMul:product:0%while/lstm_cell_47/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
)while/lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_47_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0¦
while/lstm_cell_47/BiasAddBiasAddwhile/lstm_cell_47/add:z:01while/lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
"while/lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_47/splitSplit+while/lstm_cell_47/split/split_dim:output:0#while/lstm_cell_47/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitz
while/lstm_cell_47/SigmoidSigmoid!while/lstm_cell_47/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
while/lstm_cell_47/Sigmoid_1Sigmoid!while/lstm_cell_47/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_47/mulMul while/lstm_cell_47/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
while/lstm_cell_47/ReluRelu!while/lstm_cell_47/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_47/mul_1Mulwhile/lstm_cell_47/Sigmoid:y:0%while/lstm_cell_47/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_47/add_1AddV2while/lstm_cell_47/mul:z:0while/lstm_cell_47/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
while/lstm_cell_47/Sigmoid_2Sigmoid!while/lstm_cell_47/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
while/lstm_cell_47/Relu_1Reluwhile/lstm_cell_47/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_47/mul_2Mul while/lstm_cell_47/Sigmoid_2:y:0'while/lstm_cell_47/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_47/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒy
while/Identity_4Identitywhile/lstm_cell_47/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
while/Identity_5Identitywhile/lstm_cell_47/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ

while/NoOpNoOp*^while/lstm_cell_47/BiasAdd/ReadVariableOp)^while/lstm_cell_47/MatMul/ReadVariableOp+^while/lstm_cell_47/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_47_biasadd_readvariableop_resource4while_lstm_cell_47_biasadd_readvariableop_resource_0"l
3while_lstm_cell_47_matmul_1_readvariableop_resource5while_lstm_cell_47_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_47_matmul_readvariableop_resource3while_lstm_cell_47_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_47/BiasAdd/ReadVariableOp)while/lstm_cell_47/BiasAdd/ReadVariableOp2T
(while/lstm_cell_47/MatMul/ReadVariableOp(while/lstm_cell_47/MatMul/ReadVariableOp2X
*while/lstm_cell_47/MatMul_1/ReadVariableOp*while/lstm_cell_47/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 


ã
lstm_46_while_cond_234080,
(lstm_46_while_lstm_46_while_loop_counter2
.lstm_46_while_lstm_46_while_maximum_iterations
lstm_46_while_placeholder
lstm_46_while_placeholder_1
lstm_46_while_placeholder_2
lstm_46_while_placeholder_3.
*lstm_46_while_less_lstm_46_strided_slice_1D
@lstm_46_while_lstm_46_while_cond_234080___redundant_placeholder0D
@lstm_46_while_lstm_46_while_cond_234080___redundant_placeholder1D
@lstm_46_while_lstm_46_while_cond_234080___redundant_placeholder2D
@lstm_46_while_lstm_46_while_cond_234080___redundant_placeholder3
lstm_46_while_identity

lstm_46/while/LessLesslstm_46_while_placeholder*lstm_46_while_less_lstm_46_strided_slice_1*
T0*
_output_shapes
: [
lstm_46/while/IdentityIdentitylstm_46/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_46_while_identitylstm_46/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
î
Ø
I__inference_sequential_23_layer_call_and_return_conditional_losses_233888

inputs!
lstm_46_233868:	@ 
lstm_46_233870:@
lstm_46_233872:@ 
lstm_47_233875:@ 
lstm_47_233877:@
lstm_47_233879:@"
dense_23_233882:	
dense_23_233884:	
identity¢ dense_23/StatefulPartitionedCall¢lstm_46/StatefulPartitionedCall¢lstm_47/StatefulPartitionedCall
lstm_46/StatefulPartitionedCallStatefulPartitionedCallinputslstm_46_233868lstm_46_233870lstm_46_233872*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_46_layer_call_and_return_conditional_losses_233833 
lstm_47/StatefulPartitionedCallStatefulPartitionedCall(lstm_46/StatefulPartitionedCall:output:0lstm_47_233875lstm_47_233877lstm_47_233879*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_47_layer_call_and_return_conditional_losses_233668
 dense_23/StatefulPartitionedCallStatefulPartitionedCall(lstm_47/StatefulPartitionedCall:output:0dense_23_233882dense_23_233884*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_23_layer_call_and_return_conditional_losses_233476y
IdentityIdentity)dense_23/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ­
NoOpNoOp!^dense_23/StatefulPartitionedCall ^lstm_46/StatefulPartitionedCall ^lstm_47/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2B
lstm_46/StatefulPartitionedCalllstm_46/StatefulPartitionedCall2B
lstm_47/StatefulPartitionedCalllstm_47/StatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
µ
Ã
while_cond_234866
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_234866___redundant_placeholder04
0while_while_cond_234866___redundant_placeholder14
0while_while_cond_234866___redundant_placeholder24
0while_while_cond_234866___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
J

C__inference_lstm_47_layer_call_and_return_conditional_losses_233458

inputs=
+lstm_cell_47_matmul_readvariableop_resource:@?
-lstm_cell_47_matmul_1_readvariableop_resource:@:
,lstm_cell_47_biasadd_readvariableop_resource:@
identity¢#lstm_cell_47/BiasAdd/ReadVariableOp¢"lstm_cell_47/MatMul/ReadVariableOp¢$lstm_cell_47/MatMul_1/ReadVariableOp¢while;
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
valueB:Ñ
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
value	B :s
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
:ÿÿÿÿÿÿÿÿÿR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
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
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
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
valueB:Û
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
"lstm_cell_47/MatMul/ReadVariableOpReadVariableOp+lstm_cell_47_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0
lstm_cell_47/MatMulMatMulstrided_slice_2:output:0*lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
$lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_47_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0
lstm_cell_47/MatMul_1MatMulzeros:output:0,lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_47/addAddV2lstm_cell_47/MatMul:product:0lstm_cell_47/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_47_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
lstm_cell_47/BiasAddBiasAddlstm_cell_47/add:z:0+lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@^
lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_47/splitSplit%lstm_cell_47/split/split_dim:output:0lstm_cell_47/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitn
lstm_cell_47/SigmoidSigmoidlstm_cell_47/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
lstm_cell_47/Sigmoid_1Sigmoidlstm_cell_47/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
lstm_cell_47/mulMullstm_cell_47/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
lstm_cell_47/ReluRelulstm_cell_47/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_47/mul_1Mullstm_cell_47/Sigmoid:y:0lstm_cell_47/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
lstm_cell_47/add_1AddV2lstm_cell_47/mul:z:0lstm_cell_47/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
lstm_cell_47/Sigmoid_2Sigmoidlstm_cell_47/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
lstm_cell_47/Relu_1Relulstm_cell_47/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_47/mul_2Mullstm_cell_47/Sigmoid_2:y:0!lstm_cell_47/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_47_matmul_readvariableop_resource-lstm_cell_47_matmul_1_readvariableop_resource,lstm_cell_47_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_233374*
condR
while_cond_233373*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
NoOpNoOp$^lstm_cell_47/BiasAdd/ReadVariableOp#^lstm_cell_47/MatMul/ReadVariableOp%^lstm_cell_47/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_47/BiasAdd/ReadVariableOp#lstm_cell_47/BiasAdd/ReadVariableOp2H
"lstm_cell_47/MatMul/ReadVariableOp"lstm_cell_47/MatMul/ReadVariableOp2L
$lstm_cell_47/MatMul_1/ReadVariableOp$lstm_cell_47/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ß
I__inference_sequential_23_layer_call_and_return_conditional_losses_233951
lstm_46_input!
lstm_46_233931:	@ 
lstm_46_233933:@
lstm_46_233935:@ 
lstm_47_233938:@ 
lstm_47_233940:@
lstm_47_233942:@"
dense_23_233945:	
dense_23_233947:	
identity¢ dense_23/StatefulPartitionedCall¢lstm_46/StatefulPartitionedCall¢lstm_47/StatefulPartitionedCall
lstm_46/StatefulPartitionedCallStatefulPartitionedCalllstm_46_inputlstm_46_233931lstm_46_233933lstm_46_233935*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_46_layer_call_and_return_conditional_losses_233308 
lstm_47/StatefulPartitionedCallStatefulPartitionedCall(lstm_46/StatefulPartitionedCall:output:0lstm_47_233938lstm_47_233940lstm_47_233942*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_47_layer_call_and_return_conditional_losses_233458
 dense_23/StatefulPartitionedCallStatefulPartitionedCall(lstm_47/StatefulPartitionedCall:output:0dense_23_233945dense_23_233947*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_23_layer_call_and_return_conditional_losses_233476y
IdentityIdentity)dense_23/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ­
NoOpNoOp!^dense_23/StatefulPartitionedCall ^lstm_46/StatefulPartitionedCall ^lstm_47/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2B
lstm_46/StatefulPartitionedCalllstm_46/StatefulPartitionedCall2B
lstm_47/StatefulPartitionedCalllstm_47/StatefulPartitionedCall:[ W
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_46_input
µ
Ã
while_cond_232539
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_232539___redundant_placeholder04
0while_while_cond_232539___redundant_placeholder14
0while_while_cond_232539___redundant_placeholder24
0while_while_cond_232539___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
©
µ
(__inference_lstm_46_layer_call_fn_234643
inputs_0
unknown:	@
	unknown_0:@
	unknown_1:@
identity¢StatefulPartitionedCallô
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_46_layer_call_and_return_conditional_losses_232800|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
J

C__inference_lstm_46_layer_call_and_return_conditional_losses_233833

inputs>
+lstm_cell_46_matmul_readvariableop_resource:	@?
-lstm_cell_46_matmul_1_readvariableop_resource:@:
,lstm_cell_46_biasadd_readvariableop_resource:@
identity¢#lstm_cell_46/BiasAdd/ReadVariableOp¢"lstm_cell_46/MatMul/ReadVariableOp¢$lstm_cell_46/MatMul_1/ReadVariableOp¢while;
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
valueB:Ñ
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
value	B :s
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
:ÿÿÿÿÿÿÿÿÿR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
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
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
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
valueB:Û
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
"lstm_cell_46/MatMul/ReadVariableOpReadVariableOp+lstm_cell_46_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0
lstm_cell_46/MatMulMatMulstrided_slice_2:output:0*lstm_cell_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
$lstm_cell_46/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_46_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0
lstm_cell_46/MatMul_1MatMulzeros:output:0,lstm_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_46/addAddV2lstm_cell_46/MatMul:product:0lstm_cell_46/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#lstm_cell_46/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_46_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
lstm_cell_46/BiasAddBiasAddlstm_cell_46/add:z:0+lstm_cell_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@^
lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_46/splitSplit%lstm_cell_46/split/split_dim:output:0lstm_cell_46/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitn
lstm_cell_46/SigmoidSigmoidlstm_cell_46/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
lstm_cell_46/Sigmoid_1Sigmoidlstm_cell_46/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
lstm_cell_46/mulMullstm_cell_46/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
lstm_cell_46/ReluRelulstm_cell_46/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_46/mul_1Mullstm_cell_46/Sigmoid:y:0lstm_cell_46/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
lstm_cell_46/add_1AddV2lstm_cell_46/mul:z:0lstm_cell_46/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
lstm_cell_46/Sigmoid_2Sigmoidlstm_cell_46/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
lstm_cell_46/Relu_1Relulstm_cell_46/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_46/mul_2Mullstm_cell_46/Sigmoid_2:y:0!lstm_cell_46/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_46_matmul_readvariableop_resource-lstm_cell_46_matmul_1_readvariableop_resource,lstm_cell_46_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_233749*
condR
while_cond_233748*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
NoOpNoOp$^lstm_cell_46/BiasAdd/ReadVariableOp#^lstm_cell_46/MatMul/ReadVariableOp%^lstm_cell_46/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_46/BiasAdd/ReadVariableOp#lstm_cell_46/BiasAdd/ReadVariableOp2H
"lstm_cell_46/MatMul/ReadVariableOp"lstm_cell_46/MatMul/ReadVariableOp2L
$lstm_cell_46/MatMul_1/ReadVariableOp$lstm_cell_46/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ï

H__inference_lstm_cell_46_layer_call_and_return_conditional_losses_232672

inputs

states
states_11
matmul_readvariableop_resource:	@2
 matmul_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿN
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates
µ
Ã
while_cond_235625
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_235625___redundant_placeholder04
0while_while_cond_235625___redundant_placeholder14
0while_while_cond_235625___redundant_placeholder24
0while_while_cond_235625___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:


ã
lstm_47_while_cond_234219,
(lstm_47_while_lstm_47_while_loop_counter2
.lstm_47_while_lstm_47_while_maximum_iterations
lstm_47_while_placeholder
lstm_47_while_placeholder_1
lstm_47_while_placeholder_2
lstm_47_while_placeholder_3.
*lstm_47_while_less_lstm_47_strided_slice_1D
@lstm_47_while_lstm_47_while_cond_234219___redundant_placeholder0D
@lstm_47_while_lstm_47_while_cond_234219___redundant_placeholder1D
@lstm_47_while_lstm_47_while_cond_234219___redundant_placeholder2D
@lstm_47_while_lstm_47_while_cond_234219___redundant_placeholder3
lstm_47_while_identity

lstm_47/while/LessLesslstm_47_while_placeholder*lstm_47_while_less_lstm_47_strided_slice_1*
T0*
_output_shapes
: [
lstm_47/while/IdentityIdentitylstm_47/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_47_while_identitylstm_47/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
è
ó
-__inference_lstm_cell_47_layer_call_fn_236004

inputs
states_0
states_1
unknown:@
	unknown_0:@
	unknown_1:@
identity

identity_1

identity_2¢StatefulPartitionedCall¨
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_233022o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
J

C__inference_lstm_46_layer_call_and_return_conditional_losses_235237

inputs>
+lstm_cell_46_matmul_readvariableop_resource:	@?
-lstm_cell_46_matmul_1_readvariableop_resource:@:
,lstm_cell_46_biasadd_readvariableop_resource:@
identity¢#lstm_cell_46/BiasAdd/ReadVariableOp¢"lstm_cell_46/MatMul/ReadVariableOp¢$lstm_cell_46/MatMul_1/ReadVariableOp¢while;
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
valueB:Ñ
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
value	B :s
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
:ÿÿÿÿÿÿÿÿÿR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
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
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
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
valueB:Û
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
"lstm_cell_46/MatMul/ReadVariableOpReadVariableOp+lstm_cell_46_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0
lstm_cell_46/MatMulMatMulstrided_slice_2:output:0*lstm_cell_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
$lstm_cell_46/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_46_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0
lstm_cell_46/MatMul_1MatMulzeros:output:0,lstm_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_46/addAddV2lstm_cell_46/MatMul:product:0lstm_cell_46/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#lstm_cell_46/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_46_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
lstm_cell_46/BiasAddBiasAddlstm_cell_46/add:z:0+lstm_cell_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@^
lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_46/splitSplit%lstm_cell_46/split/split_dim:output:0lstm_cell_46/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitn
lstm_cell_46/SigmoidSigmoidlstm_cell_46/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
lstm_cell_46/Sigmoid_1Sigmoidlstm_cell_46/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
lstm_cell_46/mulMullstm_cell_46/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
lstm_cell_46/ReluRelulstm_cell_46/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_46/mul_1Mullstm_cell_46/Sigmoid:y:0lstm_cell_46/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
lstm_cell_46/add_1AddV2lstm_cell_46/mul:z:0lstm_cell_46/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
lstm_cell_46/Sigmoid_2Sigmoidlstm_cell_46/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
lstm_cell_46/Relu_1Relulstm_cell_46/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_46/mul_2Mullstm_cell_46/Sigmoid_2:y:0!lstm_cell_46/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_46_matmul_readvariableop_resource-lstm_cell_46_matmul_1_readvariableop_resource,lstm_cell_46_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_235153*
condR
while_cond_235152*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
NoOpNoOp$^lstm_cell_46/BiasAdd/ReadVariableOp#^lstm_cell_46/MatMul/ReadVariableOp%^lstm_cell_46/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_46/BiasAdd/ReadVariableOp#lstm_cell_46/BiasAdd/ReadVariableOp2H
"lstm_cell_46/MatMul/ReadVariableOp"lstm_cell_46/MatMul/ReadVariableOp2L
$lstm_cell_46/MatMul_1/ReadVariableOp$lstm_cell_46/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
×

H__inference_lstm_cell_46_layer_call_and_return_conditional_losses_235970

inputs
states_0
states_11
matmul_readvariableop_resource:	@2
 matmul_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿN
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
µ
Ã
while_cond_233748
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_233748___redundant_placeholder04
0while_while_cond_233748___redundant_placeholder14
0while_while_cond_233748___redundant_placeholder24
0while_while_cond_233748___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Ó

H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_236068

inputs
states_0
states_10
matmul_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿN
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
8
Ì
while_body_235010
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_46_matmul_readvariableop_resource_0:	@G
5while_lstm_cell_46_matmul_1_readvariableop_resource_0:@B
4while_lstm_cell_46_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_46_matmul_readvariableop_resource:	@E
3while_lstm_cell_46_matmul_1_readvariableop_resource:@@
2while_lstm_cell_46_biasadd_readvariableop_resource:@¢)while/lstm_cell_46/BiasAdd/ReadVariableOp¢(while/lstm_cell_46/MatMul/ReadVariableOp¢*while/lstm_cell_46/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
(while/lstm_cell_46/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_46_matmul_readvariableop_resource_0*
_output_shapes
:	@*
dtype0¹
while/lstm_cell_46/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ 
*while/lstm_cell_46/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_46_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0 
while/lstm_cell_46/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_46/addAddV2#while/lstm_cell_46/MatMul:product:0%while/lstm_cell_46/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
)while/lstm_cell_46/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_46_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0¦
while/lstm_cell_46/BiasAddBiasAddwhile/lstm_cell_46/add:z:01while/lstm_cell_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
"while/lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_46/splitSplit+while/lstm_cell_46/split/split_dim:output:0#while/lstm_cell_46/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitz
while/lstm_cell_46/SigmoidSigmoid!while/lstm_cell_46/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
while/lstm_cell_46/Sigmoid_1Sigmoid!while/lstm_cell_46/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_46/mulMul while/lstm_cell_46/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
while/lstm_cell_46/ReluRelu!while/lstm_cell_46/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_46/mul_1Mulwhile/lstm_cell_46/Sigmoid:y:0%while/lstm_cell_46/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_46/add_1AddV2while/lstm_cell_46/mul:z:0while/lstm_cell_46/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
while/lstm_cell_46/Sigmoid_2Sigmoid!while/lstm_cell_46/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
while/lstm_cell_46/Relu_1Reluwhile/lstm_cell_46/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_46/mul_2Mul while/lstm_cell_46/Sigmoid_2:y:0'while/lstm_cell_46/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_46/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒy
while/Identity_4Identitywhile/lstm_cell_46/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
while/Identity_5Identitywhile/lstm_cell_46/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ

while/NoOpNoOp*^while/lstm_cell_46/BiasAdd/ReadVariableOp)^while/lstm_cell_46/MatMul/ReadVariableOp+^while/lstm_cell_46/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_46_biasadd_readvariableop_resource4while_lstm_cell_46_biasadd_readvariableop_resource_0"l
3while_lstm_cell_46_matmul_1_readvariableop_resource5while_lstm_cell_46_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_46_matmul_readvariableop_resource3while_lstm_cell_46_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_46/BiasAdd/ReadVariableOp)while/lstm_cell_46/BiasAdd/ReadVariableOp2T
(while/lstm_cell_46/MatMul/ReadVariableOp(while/lstm_cell_46/MatMul/ReadVariableOp2X
*while/lstm_cell_46/MatMul_1/ReadVariableOp*while/lstm_cell_46/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ËA
Ê

lstm_47_while_body_234220,
(lstm_47_while_lstm_47_while_loop_counter2
.lstm_47_while_lstm_47_while_maximum_iterations
lstm_47_while_placeholder
lstm_47_while_placeholder_1
lstm_47_while_placeholder_2
lstm_47_while_placeholder_3+
'lstm_47_while_lstm_47_strided_slice_1_0g
clstm_47_while_tensorarrayv2read_tensorlistgetitem_lstm_47_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_47_while_lstm_cell_47_matmul_readvariableop_resource_0:@O
=lstm_47_while_lstm_cell_47_matmul_1_readvariableop_resource_0:@J
<lstm_47_while_lstm_cell_47_biasadd_readvariableop_resource_0:@
lstm_47_while_identity
lstm_47_while_identity_1
lstm_47_while_identity_2
lstm_47_while_identity_3
lstm_47_while_identity_4
lstm_47_while_identity_5)
%lstm_47_while_lstm_47_strided_slice_1e
alstm_47_while_tensorarrayv2read_tensorlistgetitem_lstm_47_tensorarrayunstack_tensorlistfromtensorK
9lstm_47_while_lstm_cell_47_matmul_readvariableop_resource:@M
;lstm_47_while_lstm_cell_47_matmul_1_readvariableop_resource:@H
:lstm_47_while_lstm_cell_47_biasadd_readvariableop_resource:@¢1lstm_47/while/lstm_cell_47/BiasAdd/ReadVariableOp¢0lstm_47/while/lstm_cell_47/MatMul/ReadVariableOp¢2lstm_47/while/lstm_cell_47/MatMul_1/ReadVariableOp
?lstm_47/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Î
1lstm_47/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_47_while_tensorarrayv2read_tensorlistgetitem_lstm_47_tensorarrayunstack_tensorlistfromtensor_0lstm_47_while_placeholderHlstm_47/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¬
0lstm_47/while/lstm_cell_47/MatMul/ReadVariableOpReadVariableOp;lstm_47_while_lstm_cell_47_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0Ñ
!lstm_47/while/lstm_cell_47/MatMulMatMul8lstm_47/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_47/while/lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@°
2lstm_47/while/lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp=lstm_47_while_lstm_cell_47_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0¸
#lstm_47/while/lstm_cell_47/MatMul_1MatMullstm_47_while_placeholder_2:lstm_47/while/lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@µ
lstm_47/while/lstm_cell_47/addAddV2+lstm_47/while/lstm_cell_47/MatMul:product:0-lstm_47/while/lstm_cell_47/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ª
1lstm_47/while/lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp<lstm_47_while_lstm_cell_47_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0¾
"lstm_47/while/lstm_cell_47/BiasAddBiasAdd"lstm_47/while/lstm_cell_47/add:z:09lstm_47/while/lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@l
*lstm_47/while/lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
 lstm_47/while/lstm_cell_47/splitSplit3lstm_47/while/lstm_cell_47/split/split_dim:output:0+lstm_47/while/lstm_cell_47/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split
"lstm_47/while/lstm_cell_47/SigmoidSigmoid)lstm_47/while/lstm_cell_47/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_47/while/lstm_cell_47/Sigmoid_1Sigmoid)lstm_47/while/lstm_cell_47/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_47/while/lstm_cell_47/mulMul(lstm_47/while/lstm_cell_47/Sigmoid_1:y:0lstm_47_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_47/while/lstm_cell_47/ReluRelu)lstm_47/while/lstm_cell_47/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
 lstm_47/while/lstm_cell_47/mul_1Mul&lstm_47/while/lstm_cell_47/Sigmoid:y:0-lstm_47/while/lstm_cell_47/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
 lstm_47/while/lstm_cell_47/add_1AddV2"lstm_47/while/lstm_cell_47/mul:z:0$lstm_47/while/lstm_cell_47/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_47/while/lstm_cell_47/Sigmoid_2Sigmoid)lstm_47/while/lstm_cell_47/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!lstm_47/while/lstm_cell_47/Relu_1Relu$lstm_47/while/lstm_cell_47/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
 lstm_47/while/lstm_cell_47/mul_2Mul(lstm_47/while/lstm_cell_47/Sigmoid_2:y:0/lstm_47/while/lstm_cell_47/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿå
2lstm_47/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_47_while_placeholder_1lstm_47_while_placeholder$lstm_47/while/lstm_cell_47/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒU
lstm_47/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_47/while/addAddV2lstm_47_while_placeholderlstm_47/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_47/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_47/while/add_1AddV2(lstm_47_while_lstm_47_while_loop_counterlstm_47/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_47/while/IdentityIdentitylstm_47/while/add_1:z:0^lstm_47/while/NoOp*
T0*
_output_shapes
: 
lstm_47/while/Identity_1Identity.lstm_47_while_lstm_47_while_maximum_iterations^lstm_47/while/NoOp*
T0*
_output_shapes
: q
lstm_47/while/Identity_2Identitylstm_47/while/add:z:0^lstm_47/while/NoOp*
T0*
_output_shapes
: ±
lstm_47/while/Identity_3IdentityBlstm_47/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_47/while/NoOp*
T0*
_output_shapes
: :éèÒ
lstm_47/while/Identity_4Identity$lstm_47/while/lstm_cell_47/mul_2:z:0^lstm_47/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_47/while/Identity_5Identity$lstm_47/while/lstm_cell_47/add_1:z:0^lstm_47/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
lstm_47/while/NoOpNoOp2^lstm_47/while/lstm_cell_47/BiasAdd/ReadVariableOp1^lstm_47/while/lstm_cell_47/MatMul/ReadVariableOp3^lstm_47/while/lstm_cell_47/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_47_while_identitylstm_47/while/Identity:output:0"=
lstm_47_while_identity_1!lstm_47/while/Identity_1:output:0"=
lstm_47_while_identity_2!lstm_47/while/Identity_2:output:0"=
lstm_47_while_identity_3!lstm_47/while/Identity_3:output:0"=
lstm_47_while_identity_4!lstm_47/while/Identity_4:output:0"=
lstm_47_while_identity_5!lstm_47/while/Identity_5:output:0"P
%lstm_47_while_lstm_47_strided_slice_1'lstm_47_while_lstm_47_strided_slice_1_0"z
:lstm_47_while_lstm_cell_47_biasadd_readvariableop_resource<lstm_47_while_lstm_cell_47_biasadd_readvariableop_resource_0"|
;lstm_47_while_lstm_cell_47_matmul_1_readvariableop_resource=lstm_47_while_lstm_cell_47_matmul_1_readvariableop_resource_0"x
9lstm_47_while_lstm_cell_47_matmul_readvariableop_resource;lstm_47_while_lstm_cell_47_matmul_readvariableop_resource_0"È
alstm_47_while_tensorarrayv2read_tensorlistgetitem_lstm_47_tensorarrayunstack_tensorlistfromtensorclstm_47_while_tensorarrayv2read_tensorlistgetitem_lstm_47_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2f
1lstm_47/while/lstm_cell_47/BiasAdd/ReadVariableOp1lstm_47/while/lstm_cell_47/BiasAdd/ReadVariableOp2d
0lstm_47/while/lstm_cell_47/MatMul/ReadVariableOp0lstm_47/while/lstm_cell_47/MatMul/ReadVariableOp2h
2lstm_47/while/lstm_cell_47/MatMul_1/ReadVariableOp2lstm_47/while/lstm_cell_47/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: "ÛL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*½
serving_default©
L
lstm_46_input;
serving_default_lstm_46_input:0ÿÿÿÿÿÿÿÿÿ=
dense_231
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:¶
Û
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
Ú
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
Ú
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
»

kernel
 bias
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses"
_tf_keras_layer
ã
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
Ê
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
2
.__inference_sequential_23_layer_call_fn_233502
.__inference_sequential_23_layer_call_fn_234001
.__inference_sequential_23_layer_call_fn_234022
.__inference_sequential_23_layer_call_fn_233928À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ò2ï
I__inference_sequential_23_layer_call_and_return_conditional_losses_234310
I__inference_sequential_23_layer_call_and_return_conditional_losses_234598
I__inference_sequential_23_layer_call_and_return_conditional_losses_233951
I__inference_sequential_23_layer_call_and_return_conditional_losses_233974À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ÒBÏ
!__inference__wrapped_model_232459lstm_46_input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
,
7serving_default"
signature_map
ø
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
¹

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
2
(__inference_lstm_46_layer_call_fn_234632
(__inference_lstm_46_layer_call_fn_234643
(__inference_lstm_46_layer_call_fn_234654
(__inference_lstm_46_layer_call_fn_234665Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ï2ì
C__inference_lstm_46_layer_call_and_return_conditional_losses_234808
C__inference_lstm_46_layer_call_and_return_conditional_losses_234951
C__inference_lstm_46_layer_call_and_return_conditional_losses_235094
C__inference_lstm_46_layer_call_and_return_conditional_losses_235237Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ø
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
¹

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
2
(__inference_lstm_47_layer_call_fn_235248
(__inference_lstm_47_layer_call_fn_235259
(__inference_lstm_47_layer_call_fn_235270
(__inference_lstm_47_layer_call_fn_235281Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ï2ì
C__inference_lstm_47_layer_call_and_return_conditional_losses_235424
C__inference_lstm_47_layer_call_and_return_conditional_losses_235567
C__inference_lstm_47_layer_call_and_return_conditional_losses_235710
C__inference_lstm_47_layer_call_and_return_conditional_losses_235853Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
": 	2dense_23/kernel
:2dense_23/bias
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
­
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
Ó2Ð
)__inference_dense_23_layer_call_fn_235862¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_dense_23_layer_call_and_return_conditional_losses_235872¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
.:,	@2lstm_46/lstm_cell_46/kernel
7:5@2%lstm_46/lstm_cell_46/recurrent_kernel
':%@2lstm_46/lstm_cell_46/bias
-:+@2lstm_47/lstm_cell_47/kernel
7:5@2%lstm_47/lstm_cell_47/recurrent_kernel
':%@2lstm_47/lstm_cell_47/bias
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
ÑBÎ
$__inference_signature_wrapper_234621lstm_46_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
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
­
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
¢2
-__inference_lstm_cell_46_layer_call_fn_235889
-__inference_lstm_cell_46_layer_call_fn_235906¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ø2Õ
H__inference_lstm_cell_46_layer_call_and_return_conditional_losses_235938
H__inference_lstm_cell_46_layer_call_and_return_conditional_losses_235970¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
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
­
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
¢2
-__inference_lstm_cell_47_layer_call_fn_235987
-__inference_lstm_cell_47_layer_call_fn_236004¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ø2Õ
H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_236036
H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_236068¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
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
':%	2Adam/dense_23/kernel/m
!:2Adam/dense_23/bias/m
3:1	@2"Adam/lstm_46/lstm_cell_46/kernel/m
<::@2,Adam/lstm_46/lstm_cell_46/recurrent_kernel/m
,:*@2 Adam/lstm_46/lstm_cell_46/bias/m
2:0@2"Adam/lstm_47/lstm_cell_47/kernel/m
<::@2,Adam/lstm_47/lstm_cell_47/recurrent_kernel/m
,:*@2 Adam/lstm_47/lstm_cell_47/bias/m
':%	2Adam/dense_23/kernel/v
!:2Adam/dense_23/bias/v
3:1	@2"Adam/lstm_46/lstm_cell_46/kernel/v
<::@2,Adam/lstm_46/lstm_cell_46/recurrent_kernel/v
,:*@2 Adam/lstm_46/lstm_cell_46/bias/v
2:0@2"Adam/lstm_47/lstm_cell_47/kernel/v
<::@2,Adam/lstm_47/lstm_cell_47/recurrent_kernel/v
,:*@2 Adam/lstm_47/lstm_cell_47/bias/v¢
!__inference__wrapped_model_232459},-./01 ;¢8
1¢.
,)
lstm_46_inputÿÿÿÿÿÿÿÿÿ
ª "4ª1
/
dense_23# 
dense_23ÿÿÿÿÿÿÿÿÿ¥
D__inference_dense_23_layer_call_and_return_conditional_losses_235872] /¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 }
)__inference_dense_23_layer_call_fn_235862P /¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿÓ
C__inference_lstm_46_layer_call_and_return_conditional_losses_234808,-.P¢M
F¢C
52
0-
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ó
C__inference_lstm_46_layer_call_and_return_conditional_losses_234951,-.P¢M
F¢C
52
0-
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ¹
C__inference_lstm_46_layer_call_and_return_conditional_losses_235094r,-.@¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 ¹
C__inference_lstm_46_layer_call_and_return_conditional_losses_235237r,-.@¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 ª
(__inference_lstm_46_layer_call_fn_234632~,-.P¢M
F¢C
52
0-
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿª
(__inference_lstm_46_layer_call_fn_234643~,-.P¢M
F¢C
52
0-
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
(__inference_lstm_46_layer_call_fn_234654e,-.@¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
(__inference_lstm_46_layer_call_fn_234665e,-.@¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿÄ
C__inference_lstm_47_layer_call_and_return_conditional_losses_235424}/01O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Ä
C__inference_lstm_47_layer_call_and_return_conditional_losses_235567}/01O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ´
C__inference_lstm_47_layer_call_and_return_conditional_losses_235710m/01?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ´
C__inference_lstm_47_layer_call_and_return_conditional_losses_235853m/01?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
(__inference_lstm_47_layer_call_fn_235248p/01O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
(__inference_lstm_47_layer_call_fn_235259p/01O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ
(__inference_lstm_47_layer_call_fn_235270`/01?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
(__inference_lstm_47_layer_call_fn_235281`/01?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿË
H__inference_lstm_cell_46_layer_call_and_return_conditional_losses_235938þ,-.¢~
w¢t
!
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ
"
states/1ÿÿÿÿÿÿÿÿÿ
p 
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ
EB

0/1/0ÿÿÿÿÿÿÿÿÿ

0/1/1ÿÿÿÿÿÿÿÿÿ
 Ë
H__inference_lstm_cell_46_layer_call_and_return_conditional_losses_235970þ,-.¢~
w¢t
!
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ
"
states/1ÿÿÿÿÿÿÿÿÿ
p
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ
EB

0/1/0ÿÿÿÿÿÿÿÿÿ

0/1/1ÿÿÿÿÿÿÿÿÿ
  
-__inference_lstm_cell_46_layer_call_fn_235889î,-.¢~
w¢t
!
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ
"
states/1ÿÿÿÿÿÿÿÿÿ
p 
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ
A>

1/0ÿÿÿÿÿÿÿÿÿ

1/1ÿÿÿÿÿÿÿÿÿ 
-__inference_lstm_cell_46_layer_call_fn_235906î,-.¢~
w¢t
!
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ
"
states/1ÿÿÿÿÿÿÿÿÿ
p
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ
A>

1/0ÿÿÿÿÿÿÿÿÿ

1/1ÿÿÿÿÿÿÿÿÿÊ
H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_236036ý/01¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ
"
states/1ÿÿÿÿÿÿÿÿÿ
p 
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ
EB

0/1/0ÿÿÿÿÿÿÿÿÿ

0/1/1ÿÿÿÿÿÿÿÿÿ
 Ê
H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_236068ý/01¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ
"
states/1ÿÿÿÿÿÿÿÿÿ
p
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ
EB

0/1/0ÿÿÿÿÿÿÿÿÿ

0/1/1ÿÿÿÿÿÿÿÿÿ
 
-__inference_lstm_cell_47_layer_call_fn_235987í/01¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ
"
states/1ÿÿÿÿÿÿÿÿÿ
p 
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ
A>

1/0ÿÿÿÿÿÿÿÿÿ

1/1ÿÿÿÿÿÿÿÿÿ
-__inference_lstm_cell_47_layer_call_fn_236004í/01¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ
"
states/1ÿÿÿÿÿÿÿÿÿ
p
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ
A>

1/0ÿÿÿÿÿÿÿÿÿ

1/1ÿÿÿÿÿÿÿÿÿÄ
I__inference_sequential_23_layer_call_and_return_conditional_losses_233951w,-./01 C¢@
9¢6
,)
lstm_46_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 Ä
I__inference_sequential_23_layer_call_and_return_conditional_losses_233974w,-./01 C¢@
9¢6
,)
lstm_46_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ½
I__inference_sequential_23_layer_call_and_return_conditional_losses_234310p,-./01 <¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ½
I__inference_sequential_23_layer_call_and_return_conditional_losses_234598p,-./01 <¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
.__inference_sequential_23_layer_call_fn_233502j,-./01 C¢@
9¢6
,)
lstm_46_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
.__inference_sequential_23_layer_call_fn_233928j,-./01 C¢@
9¢6
,)
lstm_46_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
.__inference_sequential_23_layer_call_fn_234001c,-./01 <¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
.__inference_sequential_23_layer_call_fn_234022c,-./01 <¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ·
$__inference_signature_wrapper_234621,-./01 L¢I
¢ 
Bª?
=
lstm_46_input,)
lstm_46_inputÿÿÿÿÿÿÿÿÿ"4ª1
/
dense_23# 
dense_23ÿÿÿÿÿÿÿÿÿ