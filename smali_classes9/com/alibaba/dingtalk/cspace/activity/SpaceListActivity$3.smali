.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$3;
.super Ljava/lang/Object;
.source "SpaceListActivity.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;
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
        "Lcom/alibaba/alimei/cspace/model/DentryModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;

    .prologue
    .line 497
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$3;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$3;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 6
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 509
    if-eqz p1, :cond_0

    .line 510
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceBaseActivity"

    const-string/jumbo v2, "updateConflictType"

    const-string/jumbo v3, ""

    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$3;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 518
    :goto_0
    return-void

    .line 517
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$3;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$3;->a:Ljava/util/List;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->b(Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;Ljava/util/List;Z)V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 497
    check-cast p1, Ljava/util/List;

    .line 1500
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$3;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1504
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$3;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->b(Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;Ljava/util/List;Z)V

    .line 497
    :cond_0
    return-void
.end method
