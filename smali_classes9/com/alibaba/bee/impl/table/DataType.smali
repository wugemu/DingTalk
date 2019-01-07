.class public final enum Lcom/alibaba/bee/impl/table/DataType;
.super Ljava/lang/Enum;
.source "DataType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/bee/impl/table/DataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/bee/impl/table/DataType;

.field public static final enum BLOB:Lcom/alibaba/bee/impl/table/DataType;

.field public static final enum INTEGER:Lcom/alibaba/bee/impl/table/DataType;

.field public static final enum NULL:Lcom/alibaba/bee/impl/table/DataType;

.field public static final enum REAL:Lcom/alibaba/bee/impl/table/DataType;

.field public static final enum TEXT:Lcom/alibaba/bee/impl/table/DataType;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/alibaba/bee/impl/table/DataType;

    const-string/jumbo v1, "TEXT"

    const-string/jumbo v2, "TEXT"

    invoke-direct {v0, v1, v3, v2}, Lcom/alibaba/bee/impl/table/DataType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/bee/impl/table/DataType;->TEXT:Lcom/alibaba/bee/impl/table/DataType;

    .line 9
    new-instance v0, Lcom/alibaba/bee/impl/table/DataType;

    const-string/jumbo v1, "INTEGER"

    const-string/jumbo v2, "INTEGER"

    invoke-direct {v0, v1, v4, v2}, Lcom/alibaba/bee/impl/table/DataType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/bee/impl/table/DataType;->INTEGER:Lcom/alibaba/bee/impl/table/DataType;

    .line 10
    new-instance v0, Lcom/alibaba/bee/impl/table/DataType;

    const-string/jumbo v1, "REAL"

    const-string/jumbo v2, "REAL"

    invoke-direct {v0, v1, v5, v2}, Lcom/alibaba/bee/impl/table/DataType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/bee/impl/table/DataType;->REAL:Lcom/alibaba/bee/impl/table/DataType;

    .line 11
    new-instance v0, Lcom/alibaba/bee/impl/table/DataType;

    const-string/jumbo v1, "BLOB"

    const-string/jumbo v2, "BLOB"

    invoke-direct {v0, v1, v6, v2}, Lcom/alibaba/bee/impl/table/DataType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/bee/impl/table/DataType;->BLOB:Lcom/alibaba/bee/impl/table/DataType;

    .line 12
    new-instance v0, Lcom/alibaba/bee/impl/table/DataType;

    const-string/jumbo v1, "NULL"

    const-string/jumbo v2, "NULL"

    invoke-direct {v0, v1, v7, v2}, Lcom/alibaba/bee/impl/table/DataType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/bee/impl/table/DataType;->NULL:Lcom/alibaba/bee/impl/table/DataType;

    .line 7
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alibaba/bee/impl/table/DataType;

    sget-object v1, Lcom/alibaba/bee/impl/table/DataType;->TEXT:Lcom/alibaba/bee/impl/table/DataType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/bee/impl/table/DataType;->INTEGER:Lcom/alibaba/bee/impl/table/DataType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/bee/impl/table/DataType;->REAL:Lcom/alibaba/bee/impl/table/DataType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/bee/impl/table/DataType;->BLOB:Lcom/alibaba/bee/impl/table/DataType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/bee/impl/table/DataType;->NULL:Lcom/alibaba/bee/impl/table/DataType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/alibaba/bee/impl/table/DataType;->$VALUES:[Lcom/alibaba/bee/impl/table/DataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput-object p3, p0, Lcom/alibaba/bee/impl/table/DataType;->value:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/bee/impl/table/DataType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/alibaba/bee/impl/table/DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/bee/impl/table/DataType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/bee/impl/table/DataType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/alibaba/bee/impl/table/DataType;->$VALUES:[Lcom/alibaba/bee/impl/table/DataType;

    invoke-virtual {v0}, [Lcom/alibaba/bee/impl/table/DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/bee/impl/table/DataType;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alibaba/bee/impl/table/DataType;->value:Ljava/lang/String;

    return-object v0
.end method
