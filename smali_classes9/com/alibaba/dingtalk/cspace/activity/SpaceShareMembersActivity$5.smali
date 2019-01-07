.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$5;
.super Ljava/lang/Object;
.source "SpaceShareMembersActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$5;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$5;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 389
    .local p1, "memberModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;>;"
    if-nez p1, :cond_0

    .line 400
    :goto_0
    return-void

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$5;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$5$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$5$1;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$5;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 363
    check-cast p1, Landroid/util/Pair;

    .line 1366
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$5;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1369
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 1370
    :cond_0
    const-string/jumbo v0, "null"

    const-string/jumbo v1, "(result is null)"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$5;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    :cond_1
    :goto_0
    return-void

    .line 1373
    :cond_2
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$5;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 382
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$5;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    :goto_0
    return-void

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$5;->a:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$5;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 378
    return-void
.end method
