.class final Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$c;
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
    name = "c"
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
    .line 3331
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$c;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3332
    iput-boolean p2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$c;->b:Z

    .line 3333
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 3356
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x0

    .line 3344
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$c;->b:Z

    if-eqz v0, :cond_0

    .line 3345
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$c;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ap(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3346
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$c;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$c;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ap(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    const-wide/16 v4, 0x12c

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    invoke-static/range {v1 .. v6}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Landroid/view/View;ZJ[F)V

    .line 3351
    :goto_0
    return-void

    .line 3348
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$c;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ap(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3349
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$c;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$c;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ao(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    const-wide/16 v4, 0xc8

    new-array v6, v6, [F

    fill-array-data v6, :array_1

    invoke-static/range {v1 .. v6}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Landroid/view/View;ZJ[F)V

    goto :goto_0

    .line 3346
    .line 3349
    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f400000    # 0.75f
    .end array-data
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 3361
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 3337
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$c;->b:Z

    if-eqz v0, :cond_0

    .line 3338
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$c;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ao(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3340
    :cond_0
    return-void
.end method
