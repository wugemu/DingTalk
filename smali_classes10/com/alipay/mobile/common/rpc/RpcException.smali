.class public Lcom/alipay/mobile/common/rpc/RpcException;
.super Ljava/lang/RuntimeException;
.source "RpcException.java"


# static fields
.field private static final serialVersionUID:J = -0x27e79b9ef4131536L


# instance fields
.field private mCode:I

.field private mControl:Ljava/lang/String;

.field private mMsg:Ljava/lang/String;

.field private mOperationType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/Integer;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-static {p1, p2}, Lcom/alipay/mobile/common/rpc/RpcException;->format(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/common/rpc/RpcException;->mCode:I

    .line 30
    iput-object p2, p0, Lcom/alipay/mobile/common/rpc/RpcException;->mMsg:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/Integer;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 34
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 35
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/common/rpc/RpcException;->mCode:I

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/common/rpc/RpcException;->mCode:I

    .line 41
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/RpcException;->mMsg:Ljava/lang/String;

    .line 42
    return-void
.end method

.method protected static format(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "code"    # Ljava/lang/Integer;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .local v0, "str":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "RPCException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    if-eqz p0, :cond_0

    .line 81
    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :cond_0
    const-string/jumbo v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    if-eqz p1, :cond_1

    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/alipay/mobile/common/rpc/RpcException;->mCode:I

    return v0
.end method

.method public getControl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcException;->mControl:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcException;->mMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getOperationType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcException;->mOperationType:Ljava/lang/String;

    return-object v0
.end method

.method public setControl(Ljava/lang/String;)V
    .locals 0
    .param p1, "control"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/RpcException;->mControl:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setOperationType(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/RpcException;->mOperationType:Ljava/lang/String;

    .line 50
    return-void
.end method
