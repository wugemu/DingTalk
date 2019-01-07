.class public final enum Lcom/laiwang/msgpack/DataType;
.super Ljava/lang/Enum;
.source "DataType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/laiwang/msgpack/DataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/laiwang/msgpack/DataType;

.field public static final enum ARRAY:Lcom/laiwang/msgpack/DataType;

.field public static final enum BOOLEAN:Lcom/laiwang/msgpack/DataType;

.field public static final enum BYTE:Lcom/laiwang/msgpack/DataType;

.field public static final enum DOUBLE:Lcom/laiwang/msgpack/DataType;

.field public static final enum FLOAT:Lcom/laiwang/msgpack/DataType;

.field public static final enum INTEGER:Lcom/laiwang/msgpack/DataType;

.field public static final enum LONG:Lcom/laiwang/msgpack/DataType;

.field public static final enum MAP:Lcom/laiwang/msgpack/DataType;

.field public static final enum NIL:Lcom/laiwang/msgpack/DataType;

.field public static final enum RAW:Lcom/laiwang/msgpack/DataType;

.field public static final enum SHORT:Lcom/laiwang/msgpack/DataType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/laiwang/msgpack/DataType;

    const-string/jumbo v1, "NIL"

    invoke-direct {v0, v1, v3}, Lcom/laiwang/msgpack/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laiwang/msgpack/DataType;->NIL:Lcom/laiwang/msgpack/DataType;

    .line 5
    new-instance v0, Lcom/laiwang/msgpack/DataType;

    const-string/jumbo v1, "BOOLEAN"

    invoke-direct {v0, v1, v4}, Lcom/laiwang/msgpack/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laiwang/msgpack/DataType;->BOOLEAN:Lcom/laiwang/msgpack/DataType;

    .line 6
    new-instance v0, Lcom/laiwang/msgpack/DataType;

    const-string/jumbo v1, "BYTE"

    invoke-direct {v0, v1, v5}, Lcom/laiwang/msgpack/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laiwang/msgpack/DataType;->BYTE:Lcom/laiwang/msgpack/DataType;

    new-instance v0, Lcom/laiwang/msgpack/DataType;

    const-string/jumbo v1, "SHORT"

    invoke-direct {v0, v1, v6}, Lcom/laiwang/msgpack/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laiwang/msgpack/DataType;->SHORT:Lcom/laiwang/msgpack/DataType;

    new-instance v0, Lcom/laiwang/msgpack/DataType;

    const-string/jumbo v1, "INTEGER"

    invoke-direct {v0, v1, v7}, Lcom/laiwang/msgpack/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laiwang/msgpack/DataType;->INTEGER:Lcom/laiwang/msgpack/DataType;

    new-instance v0, Lcom/laiwang/msgpack/DataType;

    const-string/jumbo v1, "LONG"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/laiwang/msgpack/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laiwang/msgpack/DataType;->LONG:Lcom/laiwang/msgpack/DataType;

    new-instance v0, Lcom/laiwang/msgpack/DataType;

    const-string/jumbo v1, "FLOAT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/laiwang/msgpack/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laiwang/msgpack/DataType;->FLOAT:Lcom/laiwang/msgpack/DataType;

    new-instance v0, Lcom/laiwang/msgpack/DataType;

    const-string/jumbo v1, "DOUBLE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/laiwang/msgpack/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laiwang/msgpack/DataType;->DOUBLE:Lcom/laiwang/msgpack/DataType;

    .line 7
    new-instance v0, Lcom/laiwang/msgpack/DataType;

    const-string/jumbo v1, "ARRAY"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/laiwang/msgpack/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laiwang/msgpack/DataType;->ARRAY:Lcom/laiwang/msgpack/DataType;

    .line 8
    new-instance v0, Lcom/laiwang/msgpack/DataType;

    const-string/jumbo v1, "MAP"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/laiwang/msgpack/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laiwang/msgpack/DataType;->MAP:Lcom/laiwang/msgpack/DataType;

    .line 9
    new-instance v0, Lcom/laiwang/msgpack/DataType;

    const-string/jumbo v1, "RAW"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/laiwang/msgpack/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laiwang/msgpack/DataType;->RAW:Lcom/laiwang/msgpack/DataType;

    .line 3
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/laiwang/msgpack/DataType;

    sget-object v1, Lcom/laiwang/msgpack/DataType;->NIL:Lcom/laiwang/msgpack/DataType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/laiwang/msgpack/DataType;->BOOLEAN:Lcom/laiwang/msgpack/DataType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/laiwang/msgpack/DataType;->BYTE:Lcom/laiwang/msgpack/DataType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/laiwang/msgpack/DataType;->SHORT:Lcom/laiwang/msgpack/DataType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/laiwang/msgpack/DataType;->INTEGER:Lcom/laiwang/msgpack/DataType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/laiwang/msgpack/DataType;->LONG:Lcom/laiwang/msgpack/DataType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/laiwang/msgpack/DataType;->FLOAT:Lcom/laiwang/msgpack/DataType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/laiwang/msgpack/DataType;->DOUBLE:Lcom/laiwang/msgpack/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/laiwang/msgpack/DataType;->ARRAY:Lcom/laiwang/msgpack/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/laiwang/msgpack/DataType;->MAP:Lcom/laiwang/msgpack/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/laiwang/msgpack/DataType;->RAW:Lcom/laiwang/msgpack/DataType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/laiwang/msgpack/DataType;->$VALUES:[Lcom/laiwang/msgpack/DataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/laiwang/msgpack/DataType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/laiwang/msgpack/DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/laiwang/msgpack/DataType;

    return-object v0
.end method

.method public static values()[Lcom/laiwang/msgpack/DataType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/laiwang/msgpack/DataType;->$VALUES:[Lcom/laiwang/msgpack/DataType;

    invoke-virtual {v0}, [Lcom/laiwang/msgpack/DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/laiwang/msgpack/DataType;

    return-object v0
.end method
