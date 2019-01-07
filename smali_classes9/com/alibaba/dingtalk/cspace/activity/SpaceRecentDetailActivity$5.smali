.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity$5;
.super Ljava/lang/Object;
.source "SpaceRecentDetailActivity.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;
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
        "Lcom/alibaba/alimei/cspace/model/RecentDentryModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity$5;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;

    iput p2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity$5;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 3
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 349
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity$5;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity$5;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->d(Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;)Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    move-result-object v0

    if-nez v0, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity$5;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity$5;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->d(Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;)Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->fileList:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;Ljava/util/List;)Ljava/util/List;

    .line 353
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity$5;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;

    iget v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity$5;->a:I

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;I)V

    .line 354
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "space.recent.detail"

    invoke-static {v0, v1, v2}, Lyn;->c(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 335
    check-cast p1, Ljava/util/List;

    .line 1338
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity$5;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1341
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity$5;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;

    invoke-static {v0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;Ljava/util/List;)Ljava/util/List;

    .line 1342
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity$5;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;

    iget v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity$5;->a:I

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;I)V

    .line 1343
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "space.recent.detail"

    invoke-static {v0, v1, v2}, Lyn;->b(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :cond_0
    return-void
.end method
