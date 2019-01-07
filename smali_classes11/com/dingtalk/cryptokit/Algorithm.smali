.class public final enum Lcom/dingtalk/cryptokit/Algorithm;
.super Ljava/lang/Enum;
.source "Algorithm.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dingtalk/cryptokit/Algorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dingtalk/cryptokit/Algorithm;

.field public static final enum AES_128_CBC:Lcom/dingtalk/cryptokit/Algorithm;

.field public static final enum AES_256_CBC:Lcom/dingtalk/cryptokit/Algorithm;


# instance fields
.field public code:I

.field public name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 7
    new-instance v0, Lcom/dingtalk/cryptokit/Algorithm;

    const-string/jumbo v1, "AES_128_CBC"

    const-string/jumbo v2, "AES_128_CBC"

    invoke-direct {v0, v1, v4, v3, v2}, Lcom/dingtalk/cryptokit/Algorithm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/dingtalk/cryptokit/Algorithm;->AES_128_CBC:Lcom/dingtalk/cryptokit/Algorithm;

    .line 8
    new-instance v0, Lcom/dingtalk/cryptokit/Algorithm;

    const-string/jumbo v1, "AES_256_CBC"

    const-string/jumbo v2, "AES_256_CBC"

    invoke-direct {v0, v1, v3, v5, v2}, Lcom/dingtalk/cryptokit/Algorithm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/dingtalk/cryptokit/Algorithm;->AES_256_CBC:Lcom/dingtalk/cryptokit/Algorithm;

    .line 6
    new-array v0, v5, [Lcom/dingtalk/cryptokit/Algorithm;

    sget-object v1, Lcom/dingtalk/cryptokit/Algorithm;->AES_128_CBC:Lcom/dingtalk/cryptokit/Algorithm;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dingtalk/cryptokit/Algorithm;->AES_256_CBC:Lcom/dingtalk/cryptokit/Algorithm;

    aput-object v1, v0, v3

    sput-object v0, Lcom/dingtalk/cryptokit/Algorithm;->$VALUES:[Lcom/dingtalk/cryptokit/Algorithm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "code"    # I
    .param p4, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput p3, p0, Lcom/dingtalk/cryptokit/Algorithm;->code:I

    .line 16
    iput-object p4, p0, Lcom/dingtalk/cryptokit/Algorithm;->name:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public static getByCode(I)Lcom/dingtalk/cryptokit/Algorithm;
    .locals 1
    .param p0, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dingtalk/cryptokit/UnimplementAlgorithmException;
        }
    .end annotation

    .prologue
    .line 29
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 30
    sget-object v0, Lcom/dingtalk/cryptokit/Algorithm;->AES_128_CBC:Lcom/dingtalk/cryptokit/Algorithm;

    .line 32
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 32
    sget-object v0, Lcom/dingtalk/cryptokit/Algorithm;->AES_256_CBC:Lcom/dingtalk/cryptokit/Algorithm;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/dingtalk/cryptokit/UnimplementAlgorithmException;

    invoke-direct {v0}, Lcom/dingtalk/cryptokit/UnimplementAlgorithmException;-><init>()V

    throw v0
.end method

.method public static getByName(Ljava/lang/String;)Lcom/dingtalk/cryptokit/Algorithm;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dingtalk/cryptokit/UnimplementAlgorithmException;
        }
    .end annotation

    .prologue
    .line 20
    sget-object v0, Lcom/dingtalk/cryptokit/Algorithm;->AES_128_CBC:Lcom/dingtalk/cryptokit/Algorithm;

    invoke-virtual {v0}, Lcom/dingtalk/cryptokit/Algorithm;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    sget-object v0, Lcom/dingtalk/cryptokit/Algorithm;->AES_128_CBC:Lcom/dingtalk/cryptokit/Algorithm;

    .line 23
    :goto_0
    return-object v0

    .line 22
    :cond_0
    sget-object v0, Lcom/dingtalk/cryptokit/Algorithm;->AES_256_CBC:Lcom/dingtalk/cryptokit/Algorithm;

    invoke-virtual {v0}, Lcom/dingtalk/cryptokit/Algorithm;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    sget-object v0, Lcom/dingtalk/cryptokit/Algorithm;->AES_256_CBC:Lcom/dingtalk/cryptokit/Algorithm;

    goto :goto_0

    .line 25
    :cond_1
    new-instance v0, Lcom/dingtalk/cryptokit/UnimplementAlgorithmException;

    invoke-direct {v0}, Lcom/dingtalk/cryptokit/UnimplementAlgorithmException;-><init>()V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dingtalk/cryptokit/Algorithm;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/dingtalk/cryptokit/Algorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dingtalk/cryptokit/Algorithm;

    return-object v0
.end method

.method public static values()[Lcom/dingtalk/cryptokit/Algorithm;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/dingtalk/cryptokit/Algorithm;->$VALUES:[Lcom/dingtalk/cryptokit/Algorithm;

    invoke-virtual {v0}, [Lcom/dingtalk/cryptokit/Algorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dingtalk/cryptokit/Algorithm;

    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/dingtalk/cryptokit/Algorithm;->code:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/dingtalk/cryptokit/Algorithm;->name:Ljava/lang/String;

    return-object v0
.end method
