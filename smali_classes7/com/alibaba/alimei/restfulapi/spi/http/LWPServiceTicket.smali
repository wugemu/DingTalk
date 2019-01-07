.class public Lcom/alibaba/alimei/restfulapi/spi/http/LWPServiceTicket;
.super Ljava/lang/Object;
.source "LWPServiceTicket.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;


# instance fields
.field private isSuccess:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/LWPServiceTicket;->isSuccess:Z

    return-void
.end method


# virtual methods
.method public cancle()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/LWPServiceTicket;->isSuccess:Z

    return v0
.end method

.method public redo()V
    .locals 0

    .prologue
    .line 18
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0
    .param p1, "isSuccess"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/LWPServiceTicket;->isSuccess:Z

    .line 38
    return-void
.end method
