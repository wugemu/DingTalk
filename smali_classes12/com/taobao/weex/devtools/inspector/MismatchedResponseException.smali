.class public Lcom/taobao/weex/devtools/inspector/MismatchedResponseException;
.super Lcom/taobao/weex/devtools/inspector/MessageHandlingException;
.source "MismatchedResponseException.java"


# instance fields
.field public mRequestId:J


# direct methods
.method public constructor <init>(J)V
    .locals 3
    .param p1, "requestId"    # J

    .prologue
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Response for request id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", but no such request is pending"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/weex/devtools/inspector/MessageHandlingException;-><init>(Ljava/lang/String;)V

    .line 17
    iput-wide p1, p0, Lcom/taobao/weex/devtools/inspector/MismatchedResponseException;->mRequestId:J

    .line 18
    return-void
.end method


# virtual methods
.method public getRequestId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/taobao/weex/devtools/inspector/MismatchedResponseException;->mRequestId:J

    return-wide v0
.end method
