.class final Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$1;
.super Ljava/lang/Object;
.source "PagerSlidingTabStrip.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 287
    move-object v0, p1

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$e;

    .line 1092
    .local v0, "clickView":Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$e;
    iget v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$e;->a:I

    .line 289
    .local v1, "newSelected":I
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->a(Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    .line 290
    .local v2, "oldSelect":I
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->a(Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 291
    if-ne v2, v1, :cond_0

    .line 292
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->b(Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;)Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$c;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 293
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->b(Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;)Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$c;

    .line 296
    :cond_0
    return-void
.end method
