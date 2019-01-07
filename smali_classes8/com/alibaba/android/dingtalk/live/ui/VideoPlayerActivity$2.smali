.class final Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity$2;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity$2;->a:Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 193
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity$2;->a:Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity$2;->a:Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->dismissLoadingDialog()V

    .line 195
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity$2;->a:Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->b(Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;)V

    .line 196
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "fetchLiveInfo failed, code="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", reason="

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1013
    const-string/jumbo v1, "live"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 177
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 177
    check-cast p1, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    .line 1180
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity$2;->a:Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1181
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity$2;->a:Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->dismissLoadingDialog()V

    .line 1182
    if-eqz p1, :cond_0

    .line 1183
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity$2;->a:Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->playUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->a(Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1184
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity$2;->a:Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->token:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->b(Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1185
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity$2;->a:Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->title:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->c(Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1187
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity$2;->a:Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->b(Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;)V

    .line 177
    :cond_1
    return-void
.end method
