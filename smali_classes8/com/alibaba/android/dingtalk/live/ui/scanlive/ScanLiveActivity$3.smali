.class final Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ScanLiveActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$3;->a:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 238
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$3;->a:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->e(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$3;->a:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->f(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;)V

    .line 240
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 244
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$3;->a:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->e(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$3;->a:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->g(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    return-void
.end method
