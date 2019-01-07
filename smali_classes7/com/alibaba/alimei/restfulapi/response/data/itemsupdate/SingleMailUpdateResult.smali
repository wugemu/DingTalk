.class public Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;
.super Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/BaseItemsUpdateResult;
.source "SingleMailUpdateResult.java"


# instance fields
.field private attachList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Attach;",
            ">;"
        }
    .end annotation
.end field

.field private errorCode:I

.field private messageId:Ljava/lang/String;

.field private resourceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Attach;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/BaseItemsUpdateResult;-><init>()V

    .line 22
    return-void
.end method

.method public static final copy(Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;)V
    .locals 1
    .param p0, "target"    # Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;
    .param p1, "source"    # Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;

    .prologue
    .line 57
    iget-object v0, p1, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;->itemId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;->itemId:Ljava/lang/String;

    .line 58
    iget v0, p1, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;->resultCode:I

    iput v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;->resultCode:I

    .line 59
    iget v0, p1, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;->errorCode:I

    iput v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;->errorCode:I

    .line 60
    iget-object v0, p1, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;->messageId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;->messageId:Ljava/lang/String;

    .line 61
    iget-object v0, p1, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;->attachList:Ljava/util/List;

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;->attachList:Ljava/util/List;

    .line 62
    iget-object v0, p1, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;->resourceList:Ljava/util/List;

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;->resourceList:Ljava/util/List;

    .line 63
    return-void
.end method


# virtual methods
.method public getAttachList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Attach;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;->attachList:Ljava/util/List;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;->errorCode:I

    return v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Attach;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;->resourceList:Ljava/util/List;

    return-object v0
.end method

.method public setAttachList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Attach;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "attachList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Attach;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;->attachList:Ljava/util/List;

    .line 38
    return-void
.end method

.method public setErrorCode(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;->errorCode:I

    .line 54
    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .locals 0
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;->messageId:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setResourceList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Attach;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "resourceList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Attach;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;->resourceList:Ljava/util/List;

    .line 46
    return-void
.end method
