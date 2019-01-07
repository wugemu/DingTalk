.class final Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$1;
.super Ljava/lang/Object;
.source "MailInterfaceImpl.java"

# interfaces
.implements Lxm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$1;->a:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Class;Lcom/alibaba/alimei/framework/datasource/DataGroupModel;)V
    .locals 7
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

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 213
    .local p1, "classType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/framework/datasource/DataGroupModel;>;"
    instance-of v4, p2, Lcom/alibaba/alimei/sdk/model/FolderGroupPushModel;

    if-eqz v4, :cond_1

    move-object v3, p2

    .line 214
    check-cast v3, Lcom/alibaba/alimei/sdk/model/FolderGroupPushModel;

    .line 215
    .local v3, "pushModel":Lcom/alibaba/alimei/sdk/model/FolderGroupPushModel;
    invoke-virtual {v3}, Lcom/alibaba/alimei/sdk/model/FolderGroupPushModel;->getChangedFolders()Ljava/util/List;

    move-result-object v2

    .line 216
    .local v2, "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 217
    iget-object v4, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$1;->a:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;

    invoke-static {v4}, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->a(Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v4

    const-string/jumbo v5, "AlimeiContentObserver"

    new-instance v6, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$1$1;

    invoke-direct {v6, p0, v2}, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$1$1;-><init>(Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$1;Ljava/util/List;)V

    invoke-interface {v4, v5, v6}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 242
    .end local v2    # "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    .end local v3    # "pushModel":Lcom/alibaba/alimei/sdk/model/FolderGroupPushModel;
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    instance-of v4, p2, Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    if-eqz v4, :cond_0

    move-object v1, p2

    .line 231
    check-cast v1, Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    .line 232
    .local v1, "mailGroupModel":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->getAccountName()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "accountName":Ljava/lang/String;
    invoke-static {}, Lacq;->j()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$1;->a:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;

    invoke-static {v4}, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->b(Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->getAddedMails()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->getAddedMails()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 235
    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->getChangeReason()I

    move-result v4

    const/16 v5, -0x9

    if-eq v4, v5, :cond_2

    .line 237
    const-string/jumbo v4, "MailInterfaceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "mail content changed, start auto download mail detail, accountName: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lyw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v4, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$1;->a:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;

    invoke-static {v4, v0}, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->a(Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;Ljava/lang/String;)V

    .line 240
    :cond_2
    invoke-static {v1}, Lacs;->a(Lcom/alibaba/alimei/sdk/model/MailGroupModel;)V

    goto :goto_0
.end method
