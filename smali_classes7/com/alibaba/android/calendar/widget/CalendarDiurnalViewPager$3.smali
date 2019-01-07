.class final Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$3;
.super Landroid/support/v4/view/ViewPager$g;
.source "CalendarDiurnalViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->b(Ljava/util/Calendar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;


# direct methods
.method constructor <init>(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$3;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$g;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 213
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager$g;->onPageSelected(I)V

    .line 214
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$3;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    invoke-static {v0, p1}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->a(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;I)I

    .line 215
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$3;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    invoke-static {v0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->d(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$3;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    invoke-static {v1}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->c(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$3;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    invoke-static {v0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->d(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$3;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    invoke-static {v1}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->c(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;

    .line 1384
    iget v1, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->a:F

    invoke-static {}, Larg;->a()Larg;

    move-result-object v2

    .line 2044
    iget v2, v2, Larg;->a:F

    .line 1384
    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 1387
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->c()V

    .line 1388
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->b()V

    .line 1389
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->requestLayout()V

    .line 218
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$3$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$3$1;-><init>(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$3;I)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 229
    return-void
.end method
