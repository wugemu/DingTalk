.class public Lcom/dingtalk/cryptokit/CryptoException;
.super Ljava/lang/Exception;
.source "CryptoException.java"


# instance fields
.field private code:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    const-string/jumbo v0, "crypto failure"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/dingtalk/cryptokit/CryptoException;->code:I

    .line 16
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/dingtalk/cryptokit/CryptoException;->code:I

    .line 24
    iput p1, p0, Lcom/dingtalk/cryptokit/CryptoException;->code:I

    .line 25
    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 32
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/dingtalk/cryptokit/CryptoException;->code:I

    .line 33
    iput p1, p0, Lcom/dingtalk/cryptokit/CryptoException;->code:I

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/dingtalk/cryptokit/CryptoException;->code:I

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/dingtalk/cryptokit/CryptoException;->code:I

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/dingtalk/cryptokit/CryptoException;->code:I

    .line 29
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/dingtalk/cryptokit/CryptoException;->code:I

    return v0
.end method
