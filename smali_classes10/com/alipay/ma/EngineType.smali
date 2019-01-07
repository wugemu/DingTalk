.class public final enum Lcom/alipay/ma/EngineType;
.super Ljava/lang/Enum;
.source "EngineType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/ma/EngineType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/ma/EngineType;

.field public static final enum ALL:Lcom/alipay/ma/EngineType;

.field public static final enum BAR:Lcom/alipay/ma/EngineType;

.field public static final enum DEFAULT:Lcom/alipay/ma/EngineType;

.field public static final enum LOTTERY:Lcom/alipay/ma/EngineType;

.field public static final enum QRCODE:Lcom/alipay/ma/EngineType;


# instance fields
.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/alipay/ma/EngineType;

    const-string/jumbo v1, "ALL"

    invoke-direct {v0, v1, v2, v2}, Lcom/alipay/ma/EngineType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/ma/EngineType;->ALL:Lcom/alipay/ma/EngineType;

    .line 10
    new-instance v0, Lcom/alipay/ma/EngineType;

    const-string/jumbo v1, "BAR"

    invoke-direct {v0, v1, v3, v3}, Lcom/alipay/ma/EngineType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/ma/EngineType;->BAR:Lcom/alipay/ma/EngineType;

    .line 11
    new-instance v0, Lcom/alipay/ma/EngineType;

    const-string/jumbo v1, "QRCODE"

    invoke-direct {v0, v1, v4, v4}, Lcom/alipay/ma/EngineType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/ma/EngineType;->QRCODE:Lcom/alipay/ma/EngineType;

    .line 12
    new-instance v0, Lcom/alipay/ma/EngineType;

    const-string/jumbo v1, "DEFAULT"

    invoke-direct {v0, v1, v5, v5}, Lcom/alipay/ma/EngineType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/ma/EngineType;->DEFAULT:Lcom/alipay/ma/EngineType;

    .line 13
    new-instance v0, Lcom/alipay/ma/EngineType;

    const-string/jumbo v1, "LOTTERY"

    invoke-direct {v0, v1, v6, v6}, Lcom/alipay/ma/EngineType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/ma/EngineType;->LOTTERY:Lcom/alipay/ma/EngineType;

    .line 8
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alipay/ma/EngineType;

    sget-object v1, Lcom/alipay/ma/EngineType;->ALL:Lcom/alipay/ma/EngineType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/ma/EngineType;->BAR:Lcom/alipay/ma/EngineType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/ma/EngineType;->QRCODE:Lcom/alipay/ma/EngineType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/ma/EngineType;->DEFAULT:Lcom/alipay/ma/EngineType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/ma/EngineType;->LOTTERY:Lcom/alipay/ma/EngineType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alipay/ma/EngineType;->$VALUES:[Lcom/alipay/ma/EngineType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lcom/alipay/ma/EngineType;->type:I

    .line 19
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static getType(I)Lcom/alipay/ma/EngineType;
    .locals 5
    .param p0, "type"    # I

    .prologue
    .line 26
    invoke-static {}, Lcom/alipay/ma/EngineType;->values()[Lcom/alipay/ma/EngineType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 27
    .local v0, "candiType":Lcom/alipay/ma/EngineType;
    iget v4, v0, Lcom/alipay/ma/EngineType;->type:I

    if-ne v4, p0, :cond_0

    .line 31
    .end local v0    # "candiType":Lcom/alipay/ma/EngineType;
    :goto_1
    return-object v0

    .line 26
    .restart local v0    # "candiType":Lcom/alipay/ma/EngineType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    .end local v0    # "candiType":Lcom/alipay/ma/EngineType;
    :cond_1
    sget-object v0, Lcom/alipay/ma/EngineType;->DEFAULT:Lcom/alipay/ma/EngineType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/ma/EngineType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/alipay/ma/EngineType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/ma/EngineType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/ma/EngineType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/alipay/ma/EngineType;->$VALUES:[Lcom/alipay/ma/EngineType;

    invoke-virtual {v0}, [Lcom/alipay/ma/EngineType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/ma/EngineType;

    return-object v0
.end method


# virtual methods
.method public final getType()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/alipay/ma/EngineType;->type:I

    return v0
.end method
