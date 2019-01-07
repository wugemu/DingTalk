.class public final Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment$1;
.super Ljava/lang/Object;
.source "OrgCircleFragment.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment$1;->a:Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 111
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 112
    .local v0, "f":Ljava/lang/Float;
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment$1;->a:Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;->b(Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;)Lcom/alibaba/android/user/contact/view/CircleView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment$1;->a:Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;->a(Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;)Lcom/alibaba/android/user/model/OrgTrendItemObject;

    move-result-object v2

    iget-wide v2, v2, Lcom/alibaba/android/user/model/OrgTrendItemObject;->scoreCharacter:J

    long-to-float v2, v2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/view/CircleView;->a(F)Z

    .line 113
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment$1;->a:Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;->b(Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;)Lcom/alibaba/android/user/contact/view/CircleView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment$1;->a:Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;->a(Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;)Lcom/alibaba/android/user/model/OrgTrendItemObject;

    move-result-object v2

    iget-wide v2, v2, Lcom/alibaba/android/user/model/OrgTrendItemObject;->scoreTeamwork:J

    long-to-float v2, v2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/view/CircleView;->b(F)Z

    .line 114
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment$1;->a:Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;->b(Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;)Lcom/alibaba/android/user/contact/view/CircleView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment$1;->a:Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;->a(Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;)Lcom/alibaba/android/user/model/OrgTrendItemObject;

    move-result-object v2

    iget-wide v2, v2, Lcom/alibaba/android/user/model/OrgTrendItemObject;->scoreCommunicate:J

    long-to-float v2, v2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/view/CircleView;->c(F)Z

    .line 115
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment$1;->a:Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;->b(Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;)Lcom/alibaba/android/user/contact/view/CircleView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/view/CircleView;->invalidate()V

    .line 116
    return-void
.end method
