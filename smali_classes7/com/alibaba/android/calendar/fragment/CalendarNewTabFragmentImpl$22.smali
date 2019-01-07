.class final Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$22;
.super Ljava/lang/Object;
.source "CalendarNewTabFragmentImpl.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    .prologue
    .line 414
    iput-object p1, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$22;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 417
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 418
    .local v0, "value":F
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$22;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v1}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->m(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Landroid/widget/LinearLayout;

    move-result-object v1

    mul-float v2, v0, v3

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 419
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$22;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v1}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->m(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$22;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v2}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->n(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)F

    move-result v2

    sget v3, Lcjj;->c:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v0

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 420
    return-void
.end method
