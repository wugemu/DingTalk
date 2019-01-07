.class final Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity$1;
.super Lbyi$a;
.source "VideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;

    invoke-direct {p0}, Lbyi$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 77
    .line 1080
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1083
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->a(Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;)V

    .line 1085
    invoke-static {}, Lbtr;->a()Lbtr;

    move-result-object v0

    .line 1096
    iget-object v0, v0, Lbtr;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 77
    :cond_0
    return-void
.end method
