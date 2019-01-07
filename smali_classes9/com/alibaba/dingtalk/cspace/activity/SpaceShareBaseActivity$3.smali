.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$3;
.super Ljava/lang/Object;
.source "SpaceShareBaseActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;
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
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 273
    check-cast p1, Landroid/util/Pair;

    .line 1276
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1279
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 1280
    :cond_0
    const-string/jumbo v0, "null"

    const-string/jumbo v1, "(result is null)"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$3;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    :cond_1
    :goto_0
    return-void

    .line 1283
    :cond_2
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->h:Z

    .line 1284
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1285
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;

    iget-object v1, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->g:Ljava/util/ArrayList;

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1286
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 295
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    :goto_0
    return-void

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->h:Z

    .line 299
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 291
    return-void
.end method
