.class final Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$2$1;
.super Ljava/util/TimerTask;
.source "WPSUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$2;->a(Lcom/alibaba/dingtalk/cspace/service/SpaceOperationService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$2;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$2;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$2$1;->a:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$2;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 179
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$2$1;->a:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$2;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$2;->a:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->b(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 181
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$2$1;->a:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$2;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$2;->a:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->c(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;)Lcom/alibaba/dingtalk/cspace/service/SpaceOperationService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$2$1;->a:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$2;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$2;->a:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->c(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;)Lcom/alibaba/dingtalk/cspace/service/SpaceOperationService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/service/SpaceOperationService;->stopSelf()V

    .line 185
    :cond_0
    invoke-static {}, Lgpr;->a()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "tempFileDir":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 188
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lhcs;->a(Ljava/io/File;)V

    .line 191
    :cond_1
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->b()Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 193
    .end local v0    # "tempFileDir":Ljava/lang/String;
    :cond_2
    return-void
.end method
