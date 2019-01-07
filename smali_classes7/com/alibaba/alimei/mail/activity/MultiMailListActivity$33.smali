.class final Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$33;
.super Ljava/lang/Object;
.source "MultiMailListActivity.java"

# interfaces
.implements Lxm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    .prologue
    .line 1950
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$33;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Class;Lcom/alibaba/alimei/framework/datasource/DataGroupModel;)V
    .locals 12
    .param p2, "dataGroup"    # Lcom/alibaba/alimei/framework/datasource/DataGroupModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/framework/datasource/DataGroupModel;",
            ">;",
            "Lcom/alibaba/alimei/framework/datasource/DataGroupModel;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1953
    .local p1, "classType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/framework/datasource/DataGroupModel;>;"
    iget-object v7, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$33;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-virtual {v7}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->isDestroyed()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1987
    :cond_0
    :goto_0
    return-void

    .line 1956
    :cond_1
    instance-of v7, p2, Lcom/alibaba/alimei/sdk/model/FolderGroupPushModel;

    if-eqz v7, :cond_0

    move-object v6, p2

    .line 1957
    check-cast v6, Lcom/alibaba/alimei/sdk/model/FolderGroupPushModel;

    .line 1958
    .local v6, "pushModel":Lcom/alibaba/alimei/sdk/model/FolderGroupPushModel;
    invoke-virtual {v6}, Lcom/alibaba/alimei/sdk/model/FolderGroupPushModel;->getChangedFolders()Ljava/util/List;

    move-result-object v5

    .line 1959
    .local v5, "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    const/4 v2, 0x0

    .line 1960
    .local v2, "currentFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    iget-object v7, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$33;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v7}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1961
    iget-object v7, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$33;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v7}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    move-result-object v7

    .line 2246
    iget-object v0, v7, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->f:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    .line 1962
    .local v0, "baseModel":Lcom/alibaba/alimei/framework/model/AbsBaseModel;
    instance-of v7, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v7, :cond_2

    move-object v2, v0

    .line 1963
    check-cast v2, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 1965
    :cond_2
    const/4 v1, 0x0

    .line 1966
    .local v1, "containCurrentFolder":Z
    if-eqz v2, :cond_0

    .line 1967
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 1969
    .local v4, "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    invoke-virtual {v2}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v8

    invoke-virtual {v4}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    invoke-static {v4}, Lrx;->a(Lcom/alibaba/alimei/sdk/model/FolderModel;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1970
    iget-object v7, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$33;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->b(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;Z)V

    .line 1971
    const/4 v1, 0x1

    .line 1976
    .end local v4    # "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :cond_4
    if-eqz v1, :cond_0

    .line 1977
    iget-object v7, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$33;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v7}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    move-result-object v7

    .line 2503
    iget-object v7, v7, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->j:Ljava/lang/String;

    .line 1977
    invoke-static {v7}, Lafw;->b(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/FolderApi;

    move-result-object v3

    .line 1978
    .local v3, "folderApi":Lcom/alibaba/alimei/sdk/api/FolderApi;
    if-eqz v3, :cond_5

    .line 1979
    iget-object v7, v2, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverId:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface {v3, v7, v8}, Lcom/alibaba/alimei/sdk/api/FolderApi;->updateLastVisitTime(Ljava/lang/String;Lxv;)V

    goto :goto_0

    .line 1981
    :cond_5
    const-string/jumbo v7, "MultiMailListActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "FolderGroupPushModel changed get FolderApi fail, for accoutName: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$33;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v9}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    move-result-object v9

    .line 3503
    iget-object v9, v9, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->j:Ljava/lang/String;

    .line 1981
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
