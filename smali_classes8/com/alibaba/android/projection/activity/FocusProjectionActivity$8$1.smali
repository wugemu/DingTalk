.class final Lcom/alibaba/android/projection/activity/FocusProjectionActivity$8$1;
.super Ljava/lang/Object;
.source "FocusProjectionActivity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/projection/activity/FocusProjectionActivity$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$8;


# direct methods
.method constructor <init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity$8;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity$8;

    .prologue
    .line 1123
    iput-object p1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$8$1;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1144
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$8$1;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$8;

    iget-object v0, v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$8;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->B(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1132
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$8$1;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$8;

    iget-object v0, v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$8;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->C(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1133
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$8$1;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$8;

    iget-object v0, v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$8;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->w(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/widget/ProjectionEditItemView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->a()V

    .line 1136
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$8$1;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$8;

    iget-object v0, v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$8;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->t(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/widget/ProjectionRecordView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$8$1;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$8;

    iget-object v0, v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$8;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->u(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1137
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$8$1;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$8;

    iget-object v0, v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$8;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->t(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/widget/ProjectionRecordView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$8$1;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$8;

    iget-object v1, v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$8;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->v(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/projection/widget/ProjectionRecordView;->a(Ljava/util/List;)V

    .line 1139
    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1149
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1127
    return-void
.end method
