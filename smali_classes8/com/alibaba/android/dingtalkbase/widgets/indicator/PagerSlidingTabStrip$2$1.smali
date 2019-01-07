.class final Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$2$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PagerSlidingTabStrip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$2;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$2$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$2;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 305
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$2$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$2;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$2;->a(Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$2;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$e;

    .line 1092
    .local v0, "clickView":Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$e;
    iget v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$e;->a:I

    .line 307
    .local v1, "newSelected":I
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$2$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$2;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->a(Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    .line 308
    .local v2, "oldSelect":I
    if-ne v2, v1, :cond_0

    .line 309
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$2$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$2;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->b(Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;)Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$c;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 310
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$2$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$2;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->b(Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;)Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$c;

    .line 313
    :cond_0
    const/4 v3, 0x0

    return v3
.end method
