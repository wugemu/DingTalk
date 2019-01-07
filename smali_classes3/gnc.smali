.class public final Lgnc;
.super Lgly;
.source "SpaceMenuOnlineEditStatisticHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lgly;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Lgmb;Ljava/lang/Object;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paramModel"    # Lgmb;
    .param p3, "willChange"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 24
    const/4 v2, 0x1

    invoke-static {p1, p2, v2}, Lgnc;->a(Landroid/content/Context;Lgmb;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 41
    :goto_0
    return-void

    .line 28
    :cond_0
    iget-object v1, p2, Lgmb;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 30
    .local v1, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    new-instance v0, Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;-><init>()V

    .line 31
    .local v0, "args":Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;
    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;->spaceId:Ljava/lang/String;

    .line 32
    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;->fileId:Ljava/lang/String;

    .line 33
    iget-object v2, p2, Lgmb;->f:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;->convId:Ljava/lang/String;

    .line 34
    invoke-static {v1}, Lgoc;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;->spaceDo:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 36
    iget-object v2, v0, Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;->convId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 37
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v2

    iget-object v3, v0, Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;->spaceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lfzv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;->convId:Ljava/lang/String;

    .line 40
    :cond_1
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;)V

    goto :goto_0
.end method
