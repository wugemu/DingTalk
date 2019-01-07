.class public Lcom/alibaba/alimei/restfulapi/response/data/PreviewDocUrlResult;
.super Ljava/lang/Object;
.source "PreviewDocUrlResult.java"


# instance fields
.field private content:Lcom/alibaba/alimei/restfulapi/response/data/PreviewUrlItemResult;

.field private status:Ljava/lang/String;

.field private statusMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Lcom/alibaba/alimei/restfulapi/response/data/PreviewUrlItemResult;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/PreviewDocUrlResult;->content:Lcom/alibaba/alimei/restfulapi/response/data/PreviewUrlItemResult;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/PreviewDocUrlResult;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/PreviewDocUrlResult;->statusMsg:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Lcom/alibaba/alimei/restfulapi/response/data/PreviewUrlItemResult;)V
    .locals 0
    .param p1, "content"    # Lcom/alibaba/alimei/restfulapi/response/data/PreviewUrlItemResult;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/PreviewDocUrlResult;->content:Lcom/alibaba/alimei/restfulapi/response/data/PreviewUrlItemResult;

    .line 27
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/PreviewDocUrlResult;->status:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setStatusMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "statusMsg"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/PreviewDocUrlResult;->statusMsg:Ljava/lang/String;

    .line 35
    return-void
.end method
