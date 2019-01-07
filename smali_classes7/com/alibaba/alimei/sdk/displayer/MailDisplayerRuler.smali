.class public Lcom/alibaba/alimei/sdk/displayer/MailDisplayerRuler;
.super Ljava/lang/Object;
.source "MailDisplayerRuler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAggregationable(Lcom/alibaba/alimei/sdk/model/FolderModel;)Z
    .locals 2
    .param p0, "folderModel"    # Lcom/alibaba/alimei/sdk/model/FolderModel;

    .prologue
    const/4 v0, 0x0

    .line 36
    if-nez p0, :cond_1

    .line 44
    :cond_0
    :goto_0
    return v0

    .line 40
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isDraftFolder()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isTrashFolder()Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isOutgoingFolder()Z

    move-result v1

    if-nez v1, :cond_0

    .line 44
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSessionable(Lcom/alibaba/alimei/sdk/model/FolderModel;)Z
    .locals 2
    .param p0, "folderModel"    # Lcom/alibaba/alimei/sdk/model/FolderModel;

    .prologue
    const/4 v0, 0x0

    .line 19
    if-nez p0, :cond_1

    .line 27
    :cond_0
    :goto_0
    return v0

    .line 22
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isSendFolder()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isDraftFolder()Z

    move-result v1

    if-nez v1, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isJunkFolder()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isOutgoingFolder()Z

    move-result v1

    if-nez v1, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isTrashFolder()Z

    move-result v1

    if-nez v1, :cond_0

    .line 27
    const/4 v0, 0x1

    goto :goto_0
.end method
