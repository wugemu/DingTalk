.class public Lcom/mybank/android/phone/common/h5container/plugin/rpc/H5RpcException;
.super Ljava/lang/RuntimeException;
.source "H5RpcException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mybank/android/phone/common/h5container/plugin/rpc/H5RpcException$ErrorCode;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x27e79b9ef4131536L


# instance fields
.field private mCode:I

.field private mMsg:Ljava/lang/String;

.field private mOperationType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/Integer;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-static {p1, p2}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/H5RpcException;->format(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/H5RpcException;->mCode:I

    .line 26
    iput-object p2, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/H5RpcException;->mMsg:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/Integer;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 30
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 31
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/H5RpcException;->mCode:I

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/H5RpcException;->mCode:I

    .line 37
    iput-object p1, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/H5RpcException;->mMsg:Ljava/lang/String;

    .line 38
    return-void
.end method

.method protected static format(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "code"    # Ljava/lang/Integer;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .local v0, "str":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "RPCException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    if-eqz p0, :cond_0

    .line 70
    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    :cond_0
    const-string/jumbo v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    if-eqz p1, :cond_1

    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/H5RpcException;->mCode:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/H5RpcException;->mMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getOperationType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/H5RpcException;->mOperationType:Ljava/lang/String;

    return-object v0
.end method

.method public setOperationType(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/H5RpcException;->mOperationType:Ljava/lang/String;

    .line 46
    return-void
.end method
