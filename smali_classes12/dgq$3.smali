.class final Ldgq$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ChatDetailRobotMarkdownViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldgq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldgq;


# direct methods
.method constructor <init>(Ldgq;)V
    .locals 0
    .param p1, "this$0"    # Ldgq;

    .prologue
    .line 87
    iput-object p1, p0, Ldgq$3;->a:Ldgq;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 95
    const/4 v0, 0x1

    return v0
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 100
    iget-object v0, p0, Ldgq$3;->a:Ldgq;

    .line 1026
    iget-object v0, v0, Ldgq;->m:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    .line 100
    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Ldgq$3;->a:Ldgq;

    .line 2026
    iget-object v0, v0, Ldgq;->m:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    .line 101
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->performLongClick()Z

    .line 103
    :cond_0
    return-void
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 107
    iget-object v1, p0, Ldgq$3;->a:Ldgq;

    invoke-static {v1}, Ldgq;->a(Ldgq;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "singleUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    iget-object v2, p0, Ldgq$3;->a:Ldgq;

    iget-object v2, v2, Ldgq;->d:Landroid/app/Activity;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 110
    const/4 v1, 0x1

    .line 112
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
