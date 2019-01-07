.class final Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$b;
.super Ljava/lang/Object;
.source "TeleConfRunningActivity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;
    .param p2, "show"    # Z

    .prologue
    .line 3368
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$b;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3369
    iput-boolean p2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$b;->b:Z

    .line 3370
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 3388
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v1, 0x8

    .line 3379
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$b;->b:Z

    if-nez v0, :cond_0

    .line 3380
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$b;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ao(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3381
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$b;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->an(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3383
    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 3393
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 3375
    return-void
.end method
