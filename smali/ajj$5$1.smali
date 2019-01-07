.class final Lajj$5$1;
.super Ljava/lang/Object;
.source "CMailSettingsUtil.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lajj$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/alimei/sdk/model/FolderModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/restfulapi/response/data/GetFolderPushSettingsResult;

.field final synthetic b:Lajj$5;


# direct methods
.method constructor <init>(Lajj$5;Lcom/alibaba/alimei/restfulapi/response/data/GetFolderPushSettingsResult;)V
    .locals 0
    .param p1, "this$0"    # Lajj$5;

    .prologue
    .line 258
    iput-object p1, p0, Lajj$5$1;->b:Lajj$5;

    iput-object p2, p0, Lajj$5$1;->a:Lcom/alibaba/alimei/restfulapi/response/data/GetFolderPushSettingsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 5
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 294
    const-string/jumbo v0, "CMailSettingsUtil"

    const-string/jumbo v1, " queryAllMailPushableFolders: "

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "account:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lajj$5$1;->b:Lajj$5;

    iget-object v4, v4, Lajj$5;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 258
    check-cast p1, Ljava/util/List;

    .line 1261
    if-nez p1, :cond_0

    .line 1262
    const-string/jumbo v0, "CMailSettingsUtil"

    const-string/jumbo v1, " queryAllMailPushableFolders:"

    const-string/jumbo v2, " result null"

    invoke-static {v0, v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    :goto_0
    return-void

    .line 1265
    :cond_0
    iget-object v0, p0, Lajj$5$1;->a:Lcom/alibaba/alimei/restfulapi/response/data/GetFolderPushSettingsResult;

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/response/data/GetFolderPushSettingsResult;->subscribeList:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 1266
    iget-object v0, p0, Lajj$5$1;->a:Lcom/alibaba/alimei/restfulapi/response/data/GetFolderPushSettingsResult;

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/response/data/GetFolderPushSettingsResult;->subscribeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/request/data/SetPushFoldersRequestData$FolderPushSetting;

    .line 1268
    if-eqz p1, :cond_1

    .line 1269
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 1270
    if-eqz v1, :cond_2

    iget-object v4, v1, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverId:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverId:Ljava/lang/String;

    iget-object v5, v0, Lcom/alibaba/alimei/restfulapi/request/data/SetPushFoldersRequestData$FolderPushSetting;->folderId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1271
    iget-boolean v0, v0, Lcom/alibaba/alimei/restfulapi/request/data/SetPushFoldersRequestData$FolderPushSetting;->isSubscribe:Z

    iput-boolean v0, v1, Lcom/alibaba/alimei/sdk/model/FolderModel;->isPush:Z

    goto :goto_1

    .line 1278
    :cond_3
    iget-object v0, p0, Lajj$5$1;->b:Lajj$5;

    iget-object v0, v0, Lajj$5;->a:Ljava/lang/String;

    invoke-static {v0}, Lafv;->d(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/FolderApi;

    move-result-object v0

    new-instance v1, Lajj$5$1$1;

    invoke-direct {v1, p0, p1}, Lajj$5$1$1;-><init>(Lajj$5$1;Ljava/util/List;)V

    invoke-interface {v0, p1, v1}, Lcom/alibaba/alimei/sdk/api/FolderApi;->updateMailPushFolders(Ljava/util/List;Lxv;)V

    goto :goto_0
.end method
