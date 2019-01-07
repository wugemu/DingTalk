.class public final enum Lcom/j256/ormlite/field/SqlType;
.super Ljava/lang/Enum;
.source "SqlType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/j256/ormlite/field/SqlType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/j256/ormlite/field/SqlType;

.field public static final enum BIG_DECIMAL:Lcom/j256/ormlite/field/SqlType;

.field public static final enum BLOB:Lcom/j256/ormlite/field/SqlType;

.field public static final enum BOOLEAN:Lcom/j256/ormlite/field/SqlType;

.field public static final enum BYTE:Lcom/j256/ormlite/field/SqlType;

.field public static final enum BYTE_ARRAY:Lcom/j256/ormlite/field/SqlType;

.field public static final enum CHAR:Lcom/j256/ormlite/field/SqlType;

.field public static final enum DATE:Lcom/j256/ormlite/field/SqlType;

.field public static final enum DOUBLE:Lcom/j256/ormlite/field/SqlType;

.field public static final enum FLOAT:Lcom/j256/ormlite/field/SqlType;

.field public static final enum INTEGER:Lcom/j256/ormlite/field/SqlType;

.field public static final enum LONG:Lcom/j256/ormlite/field/SqlType;

.field public static final enum LONG_STRING:Lcom/j256/ormlite/field/SqlType;

.field public static final enum OTHER:Lcom/j256/ormlite/field/SqlType;

.field public static final enum SERIALIZABLE:Lcom/j256/ormlite/field/SqlType;

.field public static final enum SHORT:Lcom/j256/ormlite/field/SqlType;

.field public static final enum STRING:Lcom/j256/ormlite/field/SqlType;

.field public static final enum UNKNOWN:Lcom/j256/ormlite/field/SqlType;

.field public static final enum UUID:Lcom/j256/ormlite/field/SqlType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    new-instance v0, Lcom/j256/ormlite/field/SqlType;

    const-string/jumbo v1, "STRING"

    invoke-direct {v0, v1, v3}, Lcom/j256/ormlite/field/SqlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/j256/ormlite/field/SqlType;->STRING:Lcom/j256/ormlite/field/SqlType;

    .line 16
    new-instance v0, Lcom/j256/ormlite/field/SqlType;

    const-string/jumbo v1, "LONG_STRING"

    invoke-direct {v0, v1, v4}, Lcom/j256/ormlite/field/SqlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/j256/ormlite/field/SqlType;->LONG_STRING:Lcom/j256/ormlite/field/SqlType;

    .line 17
    new-instance v0, Lcom/j256/ormlite/field/SqlType;

    const-string/jumbo v1, "DATE"

    invoke-direct {v0, v1, v5}, Lcom/j256/ormlite/field/SqlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/j256/ormlite/field/SqlType;->DATE:Lcom/j256/ormlite/field/SqlType;

    .line 18
    new-instance v0, Lcom/j256/ormlite/field/SqlType;

    const-string/jumbo v1, "BOOLEAN"

    invoke-direct {v0, v1, v6}, Lcom/j256/ormlite/field/SqlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/j256/ormlite/field/SqlType;->BOOLEAN:Lcom/j256/ormlite/field/SqlType;

    .line 19
    new-instance v0, Lcom/j256/ormlite/field/SqlType;

    const-string/jumbo v1, "CHAR"

    invoke-direct {v0, v1, v7}, Lcom/j256/ormlite/field/SqlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/j256/ormlite/field/SqlType;->CHAR:Lcom/j256/ormlite/field/SqlType;

    .line 20
    new-instance v0, Lcom/j256/ormlite/field/SqlType;

    const-string/jumbo v1, "BYTE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/j256/ormlite/field/SqlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/j256/ormlite/field/SqlType;->BYTE:Lcom/j256/ormlite/field/SqlType;

    .line 21
    new-instance v0, Lcom/j256/ormlite/field/SqlType;

    const-string/jumbo v1, "BYTE_ARRAY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/j256/ormlite/field/SqlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/j256/ormlite/field/SqlType;->BYTE_ARRAY:Lcom/j256/ormlite/field/SqlType;

    .line 22
    new-instance v0, Lcom/j256/ormlite/field/SqlType;

    const-string/jumbo v1, "SHORT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/j256/ormlite/field/SqlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/j256/ormlite/field/SqlType;->SHORT:Lcom/j256/ormlite/field/SqlType;

    .line 23
    new-instance v0, Lcom/j256/ormlite/field/SqlType;

    const-string/jumbo v1, "INTEGER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/j256/ormlite/field/SqlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/j256/ormlite/field/SqlType;->INTEGER:Lcom/j256/ormlite/field/SqlType;

    .line 24
    new-instance v0, Lcom/j256/ormlite/field/SqlType;

    const-string/jumbo v1, "LONG"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/j256/ormlite/field/SqlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/j256/ormlite/field/SqlType;->LONG:Lcom/j256/ormlite/field/SqlType;

    .line 25
    new-instance v0, Lcom/j256/ormlite/field/SqlType;

    const-string/jumbo v1, "FLOAT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/j256/ormlite/field/SqlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/j256/ormlite/field/SqlType;->FLOAT:Lcom/j256/ormlite/field/SqlType;

    .line 26
    new-instance v0, Lcom/j256/ormlite/field/SqlType;

    const-string/jumbo v1, "DOUBLE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/j256/ormlite/field/SqlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/j256/ormlite/field/SqlType;->DOUBLE:Lcom/j256/ormlite/field/SqlType;

    .line 27
    new-instance v0, Lcom/j256/ormlite/field/SqlType;

    const-string/jumbo v1, "SERIALIZABLE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/j256/ormlite/field/SqlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/j256/ormlite/field/SqlType;->SERIALIZABLE:Lcom/j256/ormlite/field/SqlType;

    .line 28
    new-instance v0, Lcom/j256/ormlite/field/SqlType;

    const-string/jumbo v1, "BLOB"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/j256/ormlite/field/SqlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/j256/ormlite/field/SqlType;->BLOB:Lcom/j256/ormlite/field/SqlType;

    .line 29
    new-instance v0, Lcom/j256/ormlite/field/SqlType;

    const-string/jumbo v1, "BIG_DECIMAL"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/j256/ormlite/field/SqlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/j256/ormlite/field/SqlType;->BIG_DECIMAL:Lcom/j256/ormlite/field/SqlType;

    .line 31
    new-instance v0, Lcom/j256/ormlite/field/SqlType;

    const-string/jumbo v1, "UUID"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/j256/ormlite/field/SqlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/j256/ormlite/field/SqlType;->UUID:Lcom/j256/ormlite/field/SqlType;

    .line 33
    new-instance v0, Lcom/j256/ormlite/field/SqlType;

    const-string/jumbo v1, "OTHER"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/j256/ormlite/field/SqlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/j256/ormlite/field/SqlType;->OTHER:Lcom/j256/ormlite/field/SqlType;

    .line 34
    new-instance v0, Lcom/j256/ormlite/field/SqlType;

    const-string/jumbo v1, "UNKNOWN"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/j256/ormlite/field/SqlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/j256/ormlite/field/SqlType;->UNKNOWN:Lcom/j256/ormlite/field/SqlType;

    .line 13
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/j256/ormlite/field/SqlType;

    sget-object v1, Lcom/j256/ormlite/field/SqlType;->STRING:Lcom/j256/ormlite/field/SqlType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/j256/ormlite/field/SqlType;->LONG_STRING:Lcom/j256/ormlite/field/SqlType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/j256/ormlite/field/SqlType;->DATE:Lcom/j256/ormlite/field/SqlType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/j256/ormlite/field/SqlType;->BOOLEAN:Lcom/j256/ormlite/field/SqlType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/j256/ormlite/field/SqlType;->CHAR:Lcom/j256/ormlite/field/SqlType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/j256/ormlite/field/SqlType;->BYTE:Lcom/j256/ormlite/field/SqlType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/j256/ormlite/field/SqlType;->BYTE_ARRAY:Lcom/j256/ormlite/field/SqlType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/j256/ormlite/field/SqlType;->SHORT:Lcom/j256/ormlite/field/SqlType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/j256/ormlite/field/SqlType;->INTEGER:Lcom/j256/ormlite/field/SqlType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/j256/ormlite/field/SqlType;->LONG:Lcom/j256/ormlite/field/SqlType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/j256/ormlite/field/SqlType;->FLOAT:Lcom/j256/ormlite/field/SqlType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/j256/ormlite/field/SqlType;->DOUBLE:Lcom/j256/ormlite/field/SqlType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/j256/ormlite/field/SqlType;->SERIALIZABLE:Lcom/j256/ormlite/field/SqlType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/j256/ormlite/field/SqlType;->BLOB:Lcom/j256/ormlite/field/SqlType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/j256/ormlite/field/SqlType;->BIG_DECIMAL:Lcom/j256/ormlite/field/SqlType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/j256/ormlite/field/SqlType;->UUID:Lcom/j256/ormlite/field/SqlType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/j256/ormlite/field/SqlType;->OTHER:Lcom/j256/ormlite/field/SqlType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/j256/ormlite/field/SqlType;->UNKNOWN:Lcom/j256/ormlite/field/SqlType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/j256/ormlite/field/SqlType;->$VALUES:[Lcom/j256/ormlite/field/SqlType;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/j256/ormlite/field/SqlType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    const-class v0, Lcom/j256/ormlite/field/SqlType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/field/SqlType;

    return-object v0
.end method

.method public static values()[Lcom/j256/ormlite/field/SqlType;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/j256/ormlite/field/SqlType;->$VALUES:[Lcom/j256/ormlite/field/SqlType;

    invoke-virtual {v0}, [Lcom/j256/ormlite/field/SqlType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/j256/ormlite/field/SqlType;

    return-object v0
.end method
