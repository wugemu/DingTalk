.class public final enum Lcom/j256/ormlite/field/DataType;
.super Ljava/lang/Enum;
.source "DataType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/j256/ormlite/field/DataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/j256/ormlite/field/DataType;

.field public static final enum BIG_DECIMAL:Lcom/j256/ormlite/field/DataType;

.field public static final enum BIG_DECIMAL_NUMERIC:Lcom/j256/ormlite/field/DataType;

.field public static final enum BIG_INTEGER:Lcom/j256/ormlite/field/DataType;

.field public static final enum BOOLEAN:Lcom/j256/ormlite/field/DataType;

.field public static final enum BOOLEAN_CHAR:Lcom/j256/ormlite/field/DataType;

.field public static final enum BOOLEAN_INTEGER:Lcom/j256/ormlite/field/DataType;

.field public static final enum BOOLEAN_OBJ:Lcom/j256/ormlite/field/DataType;

.field public static final enum BYTE:Lcom/j256/ormlite/field/DataType;

.field public static final enum BYTE_ARRAY:Lcom/j256/ormlite/field/DataType;

.field public static final enum BYTE_OBJ:Lcom/j256/ormlite/field/DataType;

.field public static final enum CHAR:Lcom/j256/ormlite/field/DataType;

.field public static final enum CHAR_OBJ:Lcom/j256/ormlite/field/DataType;

.field public static final enum DATE:Lcom/j256/ormlite/field/DataType;

.field public static final enum DATE_LONG:Lcom/j256/ormlite/field/DataType;

.field public static final enum DATE_STRING:Lcom/j256/ormlite/field/DataType;

.field public static final enum DATE_TIME:Lcom/j256/ormlite/field/DataType;

.field public static final enum DOUBLE:Lcom/j256/ormlite/field/DataType;

.field public static final enum DOUBLE_OBJ:Lcom/j256/ormlite/field/DataType;

.field public static final enum ENUM_INTEGER:Lcom/j256/ormlite/field/DataType;

.field public static final enum ENUM_STRING:Lcom/j256/ormlite/field/DataType;

.field public static final enum ENUM_TO_STRING:Lcom/j256/ormlite/field/DataType;

.field public static final enum FLOAT:Lcom/j256/ormlite/field/DataType;

.field public static final enum FLOAT_OBJ:Lcom/j256/ormlite/field/DataType;

.field public static final enum INTEGER:Lcom/j256/ormlite/field/DataType;

.field public static final enum INTEGER_OBJ:Lcom/j256/ormlite/field/DataType;

.field public static final enum LONG:Lcom/j256/ormlite/field/DataType;

.field public static final enum LONG_OBJ:Lcom/j256/ormlite/field/DataType;

.field public static final enum LONG_STRING:Lcom/j256/ormlite/field/DataType;

.field public static final enum SERIALIZABLE:Lcom/j256/ormlite/field/DataType;

.field public static final enum SHORT:Lcom/j256/ormlite/field/DataType;

.field public static final enum SHORT_OBJ:Lcom/j256/ormlite/field/DataType;

.field public static final enum SQL_DATE:Lcom/j256/ormlite/field/DataType;

.field public static final enum STRING:Lcom/j256/ormlite/field/DataType;

.field public static final enum STRING_BYTES:Lcom/j256/ormlite/field/DataType;

.field public static final enum TIME_STAMP:Lcom/j256/ormlite/field/DataType;

.field public static final enum UNKNOWN:Lcom/j256/ormlite/field/DataType;

.field public static final enum UUID:Lcom/j256/ormlite/field/DataType;

.field public static final enum UUID_NATIVE:Lcom/j256/ormlite/field/DataType;


# instance fields
.field private final dataPersister:Lcom/j256/ormlite/field/DataPersister;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 53
    new-instance v0, Lcom/j256/ormlite/field/DataType;

    const-string/jumbo v1, "STRING"

    invoke-static {}, Lcom/j256/ormlite/field/types/StringType;->r()Lcom/j256/ormlite/field/types/StringType;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    sput-object v0, Lcom/j256/ormlite/field/DataType;->STRING:Lcom/j256/ormlite/field/DataType;

    .line 57
    new-instance v0, Lcom/j256/ormlite/field/DataType;

    const-string/jumbo v1, "LONG_STRING"

    invoke-static {}, Lcom/j256/ormlite/field/types/LongStringType;->q()Lcom/j256/ormlite/field/types/LongStringType;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    sput-object v0, Lcom/j256/ormlite/field/DataType;->LONG_STRING:Lcom/j256/ormlite/field/DataType;

    .line 62
    new-instance v0, Lcom/j256/ormlite/field/DataType;

    const-string/jumbo v1, "STRING_BYTES"

    invoke-static {}, Lcom/j256/ormlite/field/types/StringBytesType;->q()Lcom/j256/ormlite/field/types/StringBytesType;

    move-result-object v2

    invoke-direct {v0, v1, v6, v2}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    sput-object v0, Lcom/j256/ormlite/field/DataType;->STRING_BYTES:Lcom/j256/ormlite/field/DataType;

    .line 66
    new-instance v0, Lcom/j256/ormlite/field/DataType;

    const-string/jumbo v1, "BOOLEAN"

    invoke-static {}, Lcom/j256/ormlite/field/types/BooleanType;->s()Lcom/j256/ormlite/field/types/BooleanType;

    move-result-object v2

    invoke-direct {v0, v1, v7, v2}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    sput-object v0, Lcom/j256/ormlite/field/DataType;->BOOLEAN:Lcom/j256/ormlite/field/DataType;

    .line 70
    new-instance v0, Lcom/j256/ormlite/field/DataType;

    const-string/jumbo v1, "BOOLEAN_OBJ"

    invoke-static {}, Lcom/j256/ormlite/field/types/BooleanObjectType;->r()Lcom/j256/ormlite/field/types/BooleanObjectType;

    move-result-object v2

    invoke-direct {v0, v1, v8, v2}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    sput-object v0, Lcom/j256/ormlite/field/DataType;->BOOLEAN_OBJ:Lcom/j256/ormlite/field/DataType;

    .line 74
    new-instance v0, Lcom/j256/ormlite/field/DataType;

    const-string/jumbo v1, "BOOLEAN_CHAR"

    const/4 v2, 0x5

    invoke-static {}, Lcom/j256/ormlite/field/types/BooleanCharType;->q()Lcom/j256/ormlite/field/types/BooleanCharType;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    sput-object v0, Lcom/j256/ormlite/field/DataType;->BOOLEAN_CHAR:Lcom/j256/ormlite/field/DataType;

    .line 78
    new-instance v0, Lcom/j256/ormlite/field/DataType;

    const-string/jumbo v1, "BOOLEAN_INTEGER"

    const/4 v2, 0x6

    invoke-static {}, Lcom/j256/ormlite/field/types/BooleanIntegerType;->q()Lcom/j256/ormlite/field/types/BooleanIntegerType;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    sput-object v0, Lcom/j256/ormlite/field/DataType;->BOOLEAN_INTEGER:Lcom/j256/ormlite/field/DataType;

    .line 86
    new-instance v0, Lcom/j256/ormlite/field/DataType;

    const-string/jumbo v1, "DATE"

    const/4 v2, 0x7

    invoke-static {}, Lcom/j256/ormlite/field/types/DateType;->q()Lcom/j256/ormlite/field/types/DateType;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    sput-object v0, Lcom/j256/ormlite/field/DataType;->DATE:Lcom/j256/ormlite/field/DataType;

    .line 96
    new-instance v0, Lcom/j256/ormlite/field/DataType;

    const-string/jumbo v1, "DATE_LONG"

    const/16 v2, 0x8

    invoke-static {}, Lcom/j256/ormlite/field/types/DateLongType;->q()Lcom/j256/ormlite/field/types/DateLongType;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    sput-object v0, Lcom/j256/ormlite/field/DataType;->DATE_LONG:Lcom/j256/ormlite/field/DataType;

    .line 110
    new-instance v0, Lcom/j256/ormlite/field/DataType;

    const-string/jumbo v1, "DATE_STRING"

    const/16 v2, 0x9

    invoke-static {}, Lcom/j256/ormlite/field/types/DateStringType;->q()Lcom/j256/ormlite/field/types/DateStringType;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    sput-object v0, Lcom/j256/ormlite/field/DataType;->DATE_STRING:Lcom/j256/ormlite/field/DataType;

    .line 114
    new-instance v0, Lcom/j256/ormlite/field/DataType;

    const-string/jumbo v1, "CHAR"

    const/16 v2, 0xa

    invoke-static {}, Lcom/j256/ormlite/field/types/CharType;->q()Lcom/j256/ormlite/field/types/CharType;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    sput-object v0, Lcom/j256/ormlite/field/DataType;->CHAR:Lcom/j256/ormlite/field/DataType;

    .line 118
    new-instance v0, Lcom/j256/ormlite/field/DataType;

    const-string/jumbo v1, "CHAR_OBJ"

    const/16 v2, 0xb

    invoke-static {}, Lcom/j256/ormlite/field/types/CharacterObjectType;->r()Lcom/j256/ormlite/field/types/CharacterObjectType;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    sput-object v0, Lcom/j256/ormlite/field/DataType;->CHAR_OBJ:Lcom/j256/ormlite/field/DataType;

    .line 122
    new-instance v0, Lcom/j256/ormlite/field/DataType;

    const-string/jumbo v1, "BYTE"

    const/16 v2, 0xc

    invoke-static {}, Lcom/j256/ormlite/field/types/ByteType;->r()Lcom/j256/ormlite/field/types/ByteType;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    sput-object v0, Lcom/j256/ormlite/field/DataType;->BYTE:Lcom/j256/ormlite/field/DataType;

    .line 127
    new-instance v0, Lcom/j256/ormlite/field/DataType;

    const-string/jumbo v1, "BYTE_ARRAY"

    const/16 v2, 0xd

    invoke-static {}, Lcom/j256/ormlite/field/types/ByteArrayType;->q()Lcom/j256/ormlite/field/types/ByteArrayType;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    sput-object v0, Lcom/j256/ormlite/field/DataType;->BYTE_ARRAY:Lcom/j256/ormlite/field/DataType;

    .line 131
    new-instance v0, Lcom/j256/ormlite/field/DataType;

    const-string/jumbo v1, "BYTE_OBJ"

    const/16 v2, 0xe

    invoke-static {}, Lcom/j256/ormlite/field/types/ByteObjectType;->q()Lcom/j256/ormlite/field/types/ByteObjectType;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    sput-object v0, Lcom/j256/ormlite/field/DataType;->BYTE_OBJ:Lcom/j256/ormlite/field/DataType;

    .line 135
    new-instance v0, Lcom/j256/ormlite/field/DataType;

    const-string/jumbo v1, "SHORT"

    const/16 v2, 0xf

    invoke-static {}, Lcom/j256/ormlite/field/types/ShortType;->r()Lcom/j256/ormlite/field/types/ShortType;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    sput-object v0, Lcom/j256/ormlite/field/DataType;->SHORT:Lcom/j256/ormlite/field/DataType;

    .line 139
    new-instance v0, Lcom/j256/ormlite/field/DataType;

    const-string/jumbo v1, "SHORT_OBJ"

    const/16 v2, 0x10

    invoke-static {}, Lcom/j256/ormlite/field/types/ShortObjectType;->q()Lcom/j256/ormlite/field/types/ShortObjectType;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    sput-object v0, Lcom/j256/ormlite/field/DataType;->SHORT_OBJ:Lcom/j256/ormlite/field/DataType;

    .line 143
    new-instance v0, Lcom/j256/ormlite/field/DataType;

    const-string/jumbo v1, "INTEGER"

    const/16 v2, 0x11

    invoke-static {}, Lcom/j256/ormlite/field/types/IntType;->q()Lcom/j256/ormlite/field/types/IntType;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    sput-object v0, Lcom/j256/ormlite/field/DataType;->INTEGER:Lcom/j256/ormlite/field/DataType;

    .line 147
    new-instance v0, Lcom/j256/ormlite/field/DataType;

    const-string/jumbo v1, "INTEGER_OBJ"

    const/16 v2, 0x12

    invoke-static {}, Lcom/j256/ormlite/field/types/IntegerObjectType;->r()Lcom/j256/ormlite/field/types/IntegerObjectType;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    sput-object v0, Lcom/j256/ormlite/field/DataType;->INTEGER_OBJ:Lcom/j256/ormlite/field/DataType;

    .line 151
    new-instance v0, Lcom/j256/ormlite/field/DataType;

    const-string/jumbo v1, "LONG"

    const/16 v2, 0x13

    invoke-static {}, Lcom/j256/ormlite/field/types/LongType;->r()Lcom/j256/ormlite/field/types/LongType;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    sput-object v0, Lcom/j256/ormlite/field/DataType;->LONG:Lcom/j256/ormlite/field/DataType;

    .line 155
    new-instance v0, Lcom/j256/ormlite/field/DataType;

    const-string/jumbo v1, "LONG_OBJ"

    const/16 v2, 0x14

    invoke-static {}, Lcom/j256/ormlite/field/types/LongObjectType;->q()Lcom/j256/ormlite/field/types/LongObjectType;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    sput-object v0, Lcom/j256/ormlite/field/DataType;->LONG_OBJ:Lcom/j256/ormlite/field/DataType;

    .line 159
    new-instance v0, Lcom/j256/ormlite/field/DataType;

    const-string/jumbo v1, "FLOAT"

    const/16 v2, 0x15

    invoke-static {}, Lcom/j256/ormlite/field/types/FloatType;->r()Lcom/j256/ormlite/field/types/FloatType;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    sput-object v0, Lcom/j256/ormlite/field/DataType;->FLOAT:Lcom/j256/ormlite/field/DataType;

    .line 163
    new-instance v0, Lcom/j256/ormlite/field/DataType;

    const-string/jumbo v1, "FLOAT_OBJ"

    const/16 v2, 0x16

    invoke-static {}, Lcom/j256/ormlite/field/types/FloatObjectType;->q()Lcom/j256/ormlite/field/types/FloatObjectType;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    sput-object v0, Lcom/j256/ormlite/field/DataType;->FLOAT_OBJ:Lcom/j256/ormlite/field/DataType;

    .line 167
    new-instance v0, Lcom/j256/ormlite/field/DataType;

    const-string/jumbo v1, "DOUBLE"

    const/16 v2, 0x17

    invoke-static {}, Lcom/j256/ormlite/field/types/DoubleType;->r()Lcom/j256/ormlite/field/types/DoubleType;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    sput-object v0, Lcom/j256/ormlite/field/DataType;->DOUBLE:Lcom/j256/ormlite/field/DataType;

    .line 171
    new-instance v0, Lcom/j256/ormlite/field/DataType;

    const-string/jumbo v1, "DOUBLE_OBJ"

    const/16 v2, 0x18

    invoke-static {}, Lcom/j256/ormlite/field/types/DoubleObjectType;->q()Lcom/j256/ormlite/field/types/DoubleObjectType;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    sput-object v0, Lcom/j256/ormlite/field/DataType;->DOUBLE_OBJ:Lcom/j256/ormlite/field/DataType;

    .line 177
    new-instance v0, Lcom/j256/ormlite/field/DataType;

    const-string/jumbo v1, "SERIALIZABLE"

    const/16 v2, 0x19

    invoke-static {}, Lcom/j256/ormlite/field/types/SerializableType;->q()Lcom/j256/ormlite/field/types/SerializableType;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    sput-object v0, Lcom/j256/ormlite/field/DataType;->SERIALIZABLE:Lcom/j256/ormlite/field/DataType;

    .line 182
    new-instance v0, Lcom/j256/ormlite/field/DataType;

    const-string/jumbo v1, "ENUM_STRING"

    const/16 v2, 0x1a

    invoke-static {}, Lcom/j256/ormlite/field/types/EnumStringType;->q()Lcom/j256/ormlite/field/types/EnumStringType;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    sput-object v0, Lcom/j256/ormlite/field/DataType;->ENUM_STRING:Lcom/j256/ormlite/field/DataType;

    .line 187
    new-instance v0, Lcom/j256/ormlite/field/DataType;

    const-string/jumbo v1, "ENUM_TO_STRING"

    const/16 v2, 0x1b

    invoke-static {}, Lcom/j256/ormlite/field/types/EnumToStringType;->r()Lcom/j256/ormlite/field/types/EnumToStringType;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    sput-object v0, Lcom/j256/ormlite/field/DataType;->ENUM_TO_STRING:Lcom/j256/ormlite/field/DataType;

    .line 192
    new-instance v0, Lcom/j256/ormlite/field/DataType;

    const-string/jumbo v1, "ENUM_INTEGER"

    const/16 v2, 0x1c

    invoke-static {}, Lcom/j256/ormlite/field/types/EnumIntegerType;->q()Lcom/j256/ormlite/field/types/EnumIntegerType;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    sput-object v0, Lcom/j256/ormlite/field/DataType;->ENUM_INTEGER:Lcom/j256/ormlite/field/DataType;

    .line 196
    new-instance v0, Lcom/j256/ormlite/field/DataType;

    const-string/jumbo v1, "UUID"

    const/16 v2, 0x1d

    invoke-static {}, Lcom/j256/ormlite/field/types/UuidType;->q()Lcom/j256/ormlite/field/types/UuidType;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    sput-object v0, Lcom/j256/ormlite/field/DataType;->UUID:Lcom/j256/ormlite/field/DataType;

    .line 201
    new-instance v0, Lcom/j256/ormlite/field/DataType;

    const-string/jumbo v1, "UUID_NATIVE"

    const/16 v2, 0x1e

    invoke-static {}, Lcom/j256/ormlite/field/types/UuidType;->q()Lcom/j256/ormlite/field/types/UuidType;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    sput-object v0, Lcom/j256/ormlite/field/DataType;->UUID_NATIVE:Lcom/j256/ormlite/field/DataType;

    .line 205
    new-instance v0, Lcom/j256/ormlite/field/DataType;

    const-string/jumbo v1, "BIG_INTEGER"

    const/16 v2, 0x1f

    invoke-static {}, Lcom/j256/ormlite/field/types/BigIntegerType;->q()Lcom/j256/ormlite/field/types/BigIntegerType;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    sput-object v0, Lcom/j256/ormlite/field/DataType;->BIG_INTEGER:Lcom/j256/ormlite/field/DataType;

    .line 209
    new-instance v0, Lcom/j256/ormlite/field/DataType;

    const-string/jumbo v1, "BIG_DECIMAL"

    const/16 v2, 0x20

    invoke-static {}, Lcom/j256/ormlite/field/types/BigDecimalStringType;->q()Lcom/j256/ormlite/field/types/BigDecimalStringType;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    sput-object v0, Lcom/j256/ormlite/field/DataType;->BIG_DECIMAL:Lcom/j256/ormlite/field/DataType;

    .line 213
    new-instance v0, Lcom/j256/ormlite/field/DataType;

    const-string/jumbo v1, "BIG_DECIMAL_NUMERIC"

    const/16 v2, 0x21

    invoke-static {}, Lcom/j256/ormlite/field/types/BigDecimalNumericType;->q()Lcom/j256/ormlite/field/types/BigDecimalNumericType;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    sput-object v0, Lcom/j256/ormlite/field/DataType;->BIG_DECIMAL_NUMERIC:Lcom/j256/ormlite/field/DataType;

    .line 219
    new-instance v0, Lcom/j256/ormlite/field/DataType;

    const-string/jumbo v1, "DATE_TIME"

    const/16 v2, 0x22

    invoke-static {}, Lcom/j256/ormlite/field/types/DateTimeType;->q()Lcom/j256/ormlite/field/types/DateTimeType;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    sput-object v0, Lcom/j256/ormlite/field/DataType;->DATE_TIME:Lcom/j256/ormlite/field/DataType;

    .line 227
    new-instance v0, Lcom/j256/ormlite/field/DataType;

    const-string/jumbo v1, "SQL_DATE"

    const/16 v2, 0x23

    invoke-static {}, Lcom/j256/ormlite/field/types/SqlDateType;->s()Lcom/j256/ormlite/field/types/SqlDateType;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    sput-object v0, Lcom/j256/ormlite/field/DataType;->SQL_DATE:Lcom/j256/ormlite/field/DataType;

    .line 231
    new-instance v0, Lcom/j256/ormlite/field/DataType;

    const-string/jumbo v1, "TIME_STAMP"

    const/16 v2, 0x24

    invoke-static {}, Lcom/j256/ormlite/field/types/TimeStampType;->s()Lcom/j256/ormlite/field/types/TimeStampType;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    sput-object v0, Lcom/j256/ormlite/field/DataType;->TIME_STAMP:Lcom/j256/ormlite/field/DataType;

    .line 235
    new-instance v0, Lcom/j256/ormlite/field/DataType;

    const-string/jumbo v1, "UNKNOWN"

    const/16 v2, 0x25

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/j256/ormlite/field/DataType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V

    sput-object v0, Lcom/j256/ormlite/field/DataType;->UNKNOWN:Lcom/j256/ormlite/field/DataType;

    .line 48
    const/16 v0, 0x26

    new-array v0, v0, [Lcom/j256/ormlite/field/DataType;

    sget-object v1, Lcom/j256/ormlite/field/DataType;->STRING:Lcom/j256/ormlite/field/DataType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/j256/ormlite/field/DataType;->LONG_STRING:Lcom/j256/ormlite/field/DataType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/j256/ormlite/field/DataType;->STRING_BYTES:Lcom/j256/ormlite/field/DataType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/j256/ormlite/field/DataType;->BOOLEAN:Lcom/j256/ormlite/field/DataType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/j256/ormlite/field/DataType;->BOOLEAN_OBJ:Lcom/j256/ormlite/field/DataType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/j256/ormlite/field/DataType;->BOOLEAN_CHAR:Lcom/j256/ormlite/field/DataType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/j256/ormlite/field/DataType;->BOOLEAN_INTEGER:Lcom/j256/ormlite/field/DataType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/j256/ormlite/field/DataType;->DATE:Lcom/j256/ormlite/field/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/j256/ormlite/field/DataType;->DATE_LONG:Lcom/j256/ormlite/field/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/j256/ormlite/field/DataType;->DATE_STRING:Lcom/j256/ormlite/field/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/j256/ormlite/field/DataType;->CHAR:Lcom/j256/ormlite/field/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/j256/ormlite/field/DataType;->CHAR_OBJ:Lcom/j256/ormlite/field/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/j256/ormlite/field/DataType;->BYTE:Lcom/j256/ormlite/field/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/j256/ormlite/field/DataType;->BYTE_ARRAY:Lcom/j256/ormlite/field/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/j256/ormlite/field/DataType;->BYTE_OBJ:Lcom/j256/ormlite/field/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/j256/ormlite/field/DataType;->SHORT:Lcom/j256/ormlite/field/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/j256/ormlite/field/DataType;->SHORT_OBJ:Lcom/j256/ormlite/field/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/j256/ormlite/field/DataType;->INTEGER:Lcom/j256/ormlite/field/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/j256/ormlite/field/DataType;->INTEGER_OBJ:Lcom/j256/ormlite/field/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/j256/ormlite/field/DataType;->LONG:Lcom/j256/ormlite/field/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/j256/ormlite/field/DataType;->LONG_OBJ:Lcom/j256/ormlite/field/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/j256/ormlite/field/DataType;->FLOAT:Lcom/j256/ormlite/field/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/j256/ormlite/field/DataType;->FLOAT_OBJ:Lcom/j256/ormlite/field/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/j256/ormlite/field/DataType;->DOUBLE:Lcom/j256/ormlite/field/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/j256/ormlite/field/DataType;->DOUBLE_OBJ:Lcom/j256/ormlite/field/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/j256/ormlite/field/DataType;->SERIALIZABLE:Lcom/j256/ormlite/field/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/j256/ormlite/field/DataType;->ENUM_STRING:Lcom/j256/ormlite/field/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/j256/ormlite/field/DataType;->ENUM_TO_STRING:Lcom/j256/ormlite/field/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/j256/ormlite/field/DataType;->ENUM_INTEGER:Lcom/j256/ormlite/field/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/j256/ormlite/field/DataType;->UUID:Lcom/j256/ormlite/field/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/j256/ormlite/field/DataType;->UUID_NATIVE:Lcom/j256/ormlite/field/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/j256/ormlite/field/DataType;->BIG_INTEGER:Lcom/j256/ormlite/field/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/j256/ormlite/field/DataType;->BIG_DECIMAL:Lcom/j256/ormlite/field/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/j256/ormlite/field/DataType;->BIG_DECIMAL_NUMERIC:Lcom/j256/ormlite/field/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/j256/ormlite/field/DataType;->DATE_TIME:Lcom/j256/ormlite/field/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/j256/ormlite/field/DataType;->SQL_DATE:Lcom/j256/ormlite/field/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/j256/ormlite/field/DataType;->TIME_STAMP:Lcom/j256/ormlite/field/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/j256/ormlite/field/DataType;->UNKNOWN:Lcom/j256/ormlite/field/DataType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/j256/ormlite/field/DataType;->$VALUES:[Lcom/j256/ormlite/field/DataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/j256/ormlite/field/DataPersister;)V
    .locals 0
    .param p3, "dataPersister"    # Lcom/j256/ormlite/field/DataPersister;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/field/DataPersister;",
            ")V"
        }
    .end annotation

    .prologue
    .line 241
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 242
    iput-object p3, p0, Lcom/j256/ormlite/field/DataType;->dataPersister:Lcom/j256/ormlite/field/DataPersister;

    .line 243
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/j256/ormlite/field/DataType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 48
    const-class v0, Lcom/j256/ormlite/field/DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/field/DataType;

    return-object v0
.end method

.method public static values()[Lcom/j256/ormlite/field/DataType;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/j256/ormlite/field/DataType;->$VALUES:[Lcom/j256/ormlite/field/DataType;

    invoke-virtual {v0}, [Lcom/j256/ormlite/field/DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/j256/ormlite/field/DataType;

    return-object v0
.end method


# virtual methods
.method public final getDataPersister()Lcom/j256/ormlite/field/DataPersister;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/j256/ormlite/field/DataType;->dataPersister:Lcom/j256/ormlite/field/DataPersister;

    return-object v0
.end method
