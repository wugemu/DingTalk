.class public Lcom/alibaba/alimei/restfulapi/spi/http/EmptyServiceTicket;
.super Ljava/lang/Object;
.source "EmptyServiceTicket.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancle()V
    .locals 0

    .prologue
    .line 18
    return-void
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    return v0
.end method

.method public redo()V
    .locals 0

    .prologue
    .line 13
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0
    .param p1, "isSuccess"    # Z

    .prologue
    .line 33
    return-void
.end method
