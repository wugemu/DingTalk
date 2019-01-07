.class final Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$2;
.super Ljava/lang/Object;
.source "WPSUtil.java"

# interfaces
.implements Lcom/alibaba/dingtalk/cspace/service/SpaceOperationService$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$2;->a:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$2;->a:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    invoke-static {v0, p1}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->a(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;Landroid/content/Context;)V

    .line 209
    return-void
.end method

.method public final a(Lcom/alibaba/dingtalk/cspace/service/SpaceOperationService;)V
    .locals 6
    .param p1, "spaceOperationService"    # Lcom/alibaba/dingtalk/cspace/service/SpaceOperationService;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 173
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$2;->a:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    invoke-static {v0, p1}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->a(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;Lcom/alibaba/dingtalk/cspace/service/SpaceOperationService;)Lcom/alibaba/dingtalk/cspace/service/SpaceOperationService;

    .line 176
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$2;->a:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$2$1;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$2$1;-><init>(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$2;)V

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->a(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;Ljava/util/TimerTask;)Ljava/util/TimerTask;

    .line 196
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->a(Ljava/util/Timer;)Ljava/util/Timer;

    .line 198
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->b()Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$2;->a:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->d(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;)Ljava/util/TimerTask;

    move-result-object v1

    const-wide/16 v2, 0x12c

    const-wide/16 v4, 0x7530

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 199
    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$2;->a:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->e(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$2;->a:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->e(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 216
    :cond_0
    return-void
.end method
