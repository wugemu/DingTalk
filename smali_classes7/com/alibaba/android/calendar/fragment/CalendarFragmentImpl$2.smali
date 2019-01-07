.class final Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$2;
.super Ljava/lang/Object;
.source "CalendarFragmentImpl.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    .prologue
    .line 408
    iput-object p1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$2;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 411
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$2;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v2}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->h(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)I

    move-result v2

    if-nez v2, :cond_2

    .line 412
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$2;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v2}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->i(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    move-result-object v2

    if-nez v2, :cond_1

    .line 422
    :cond_0
    :goto_0
    return v1

    .line 415
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$2;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v1}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->i(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->a()Z

    move-result v1

    goto :goto_0

    .line 417
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$2;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v2}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->j(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 420
    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$2;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v2}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->j(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 421
    .local v0, "firstChildView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$2;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v2}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->j(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->getPositionForView(Landroid/view/View;)I

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method
