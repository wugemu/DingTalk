.class public final enum Lcom/laiwang/idl/msgpacklite/ValueType;
.super Ljava/lang/Enum;
.source "ValueType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/laiwang/idl/msgpacklite/ValueType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/laiwang/idl/msgpacklite/ValueType;

.field public static final enum ARRAY:Lcom/laiwang/idl/msgpacklite/ValueType;

.field public static final enum BOOLEAN:Lcom/laiwang/idl/msgpacklite/ValueType;

.field public static final enum DATE:Lcom/laiwang/idl/msgpacklite/ValueType;

.field public static final enum FLOAT:Lcom/laiwang/idl/msgpacklite/ValueType;

.field public static final enum INTEGER:Lcom/laiwang/idl/msgpacklite/ValueType;

.field public static final enum MAP:Lcom/laiwang/idl/msgpacklite/ValueType;

.field public static final enum NIL:Lcom/laiwang/idl/msgpacklite/ValueType;

.field public static final enum RAW:Lcom/laiwang/idl/msgpacklite/ValueType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5
    new-instance v0, Lcom/laiwang/idl/msgpacklite/ValueType;

    const-string/jumbo v1, "NIL"

    invoke-direct {v0, v1, v3}, Lcom/laiwang/idl/msgpacklite/ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laiwang/idl/msgpacklite/ValueType;->NIL:Lcom/laiwang/idl/msgpacklite/ValueType;

    new-instance v0, Lcom/laiwang/idl/msgpacklite/ValueType;

    const-string/jumbo v1, "BOOLEAN"

    invoke-direct {v0, v1, v4}, Lcom/laiwang/idl/msgpacklite/ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laiwang/idl/msgpacklite/ValueType;->BOOLEAN:Lcom/laiwang/idl/msgpacklite/ValueType;

    new-instance v0, Lcom/laiwang/idl/msgpacklite/ValueType;

    const-string/jumbo v1, "INTEGER"

    invoke-direct {v0, v1, v5}, Lcom/laiwang/idl/msgpacklite/ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laiwang/idl/msgpacklite/ValueType;->INTEGER:Lcom/laiwang/idl/msgpacklite/ValueType;

    new-instance v0, Lcom/laiwang/idl/msgpacklite/ValueType;

    const-string/jumbo v1, "FLOAT"

    invoke-direct {v0, v1, v6}, Lcom/laiwang/idl/msgpacklite/ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laiwang/idl/msgpacklite/ValueType;->FLOAT:Lcom/laiwang/idl/msgpacklite/ValueType;

    new-instance v0, Lcom/laiwang/idl/msgpacklite/ValueType;

    const-string/jumbo v1, "ARRAY"

    invoke-direct {v0, v1, v7}, Lcom/laiwang/idl/msgpacklite/ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laiwang/idl/msgpacklite/ValueType;->ARRAY:Lcom/laiwang/idl/msgpacklite/ValueType;

    new-instance v0, Lcom/laiwang/idl/msgpacklite/ValueType;

    const-string/jumbo v1, "MAP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/laiwang/idl/msgpacklite/ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laiwang/idl/msgpacklite/ValueType;->MAP:Lcom/laiwang/idl/msgpacklite/ValueType;

    new-instance v0, Lcom/laiwang/idl/msgpacklite/ValueType;

    const-string/jumbo v1, "DATE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/laiwang/idl/msgpacklite/ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laiwang/idl/msgpacklite/ValueType;->DATE:Lcom/laiwang/idl/msgpacklite/ValueType;

    new-instance v0, Lcom/laiwang/idl/msgpacklite/ValueType;

    const-string/jumbo v1, "RAW"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/laiwang/idl/msgpacklite/ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laiwang/idl/msgpacklite/ValueType;->RAW:Lcom/laiwang/idl/msgpacklite/ValueType;

    .line 4
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/laiwang/idl/msgpacklite/ValueType;

    sget-object v1, Lcom/laiwang/idl/msgpacklite/ValueType;->NIL:Lcom/laiwang/idl/msgpacklite/ValueType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/laiwang/idl/msgpacklite/ValueType;->BOOLEAN:Lcom/laiwang/idl/msgpacklite/ValueType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/laiwang/idl/msgpacklite/ValueType;->INTEGER:Lcom/laiwang/idl/msgpacklite/ValueType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/laiwang/idl/msgpacklite/ValueType;->FLOAT:Lcom/laiwang/idl/msgpacklite/ValueType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/laiwang/idl/msgpacklite/ValueType;->ARRAY:Lcom/laiwang/idl/msgpacklite/ValueType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/laiwang/idl/msgpacklite/ValueType;->MAP:Lcom/laiwang/idl/msgpacklite/ValueType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/laiwang/idl/msgpacklite/ValueType;->DATE:Lcom/laiwang/idl/msgpacklite/ValueType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/laiwang/idl/msgpacklite/ValueType;->RAW:Lcom/laiwang/idl/msgpacklite/ValueType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/laiwang/idl/msgpacklite/ValueType;->$VALUES:[Lcom/laiwang/idl/msgpacklite/ValueType;

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
    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/laiwang/idl/msgpacklite/ValueType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 4
    const-class v0, Lcom/laiwang/idl/msgpacklite/ValueType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/laiwang/idl/msgpacklite/ValueType;

    return-object v0
.end method

.method public static values()[Lcom/laiwang/idl/msgpacklite/ValueType;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/laiwang/idl/msgpacklite/ValueType;->$VALUES:[Lcom/laiwang/idl/msgpacklite/ValueType;

    invoke-virtual {v0}, [Lcom/laiwang/idl/msgpacklite/ValueType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/laiwang/idl/msgpacklite/ValueType;

    return-object v0
.end method
