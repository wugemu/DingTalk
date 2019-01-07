.class public final Lgaq;
.super Ljava/lang/Object;
.source "FavoriteForwardManager.java"


# instance fields
.field private a:Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;


# direct methods
.method public constructor <init>(Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;)V
    .locals 0
    .param p1, "favViewModel"    # Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lgaq;->a:Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    .line 33
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 36
    iget-object v5, p0, Lgaq;->a:Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    if-eqz v5, :cond_0

    .line 37
    iget-object v5, p0, Lgaq;->a:Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    invoke-virtual {v5}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getViewType()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_1

    .line 38
    iget-object v5, p0, Lgaq;->a:Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    invoke-virtual {v5}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v0

    .line 39
    .local v0, "contentViewModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getExtend()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 40
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getExtend()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;

    if-eqz v5, :cond_0

    .line 41
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getExtend()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;

    .line 42
    .local v4, "spaceModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;
    iget-object v5, p0, Lgaq;->a:Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    .line 43
    invoke-virtual {v5}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getOrgId()J

    move-result-wide v6

    .line 42
    invoke-static {v4, v5, v6, v7}, Lgar;->a(Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;Ljava/lang/String;J)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v3

    .line 44
    .local v3, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    new-instance v1, Lgat;

    new-instance v5, Lgaq$1;

    invoke-direct {v5, p0, v3, v0, p1}, Lgaq$1;-><init>(Lgaq;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;Landroid/content/Context;)V

    invoke-direct {v1, p1, v3, v5}, Lgat;-><init>(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcma;)V

    .line 78
    .local v1, "infoManager":Lgat;
    invoke-virtual {v1}, Lgat;->a()V

    .line 89
    .end local v0    # "contentViewModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;
    .end local v1    # "infoManager":Lgat;
    .end local v3    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .end local v4    # "spaceModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v5, p0, Lgaq;->a:Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    .line 82
    invoke-static {v5}, Lgcs;->a(Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;)Ljava/util/List;

    move-result-object v2

    .line 83
    .local v2, "sendMessageObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;>;"
    if-eqz v2, :cond_0

    .line 84
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;->b()Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;

    move-result-object v5

    invoke-virtual {v5, p1, v2}, Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;->a(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0
.end method
