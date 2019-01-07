.class final Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$19;
.super Ljava/lang/Object;
.source "CalendarNewTabFragmentImpl.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


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
    .line 367
    iput-object p1, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$19;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 376
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$19;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->k(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    move-result-object v0

    .line 1106
    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->a:Z

    .line 376
    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$19;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->b(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Laph$a;

    move-result-object v0

    invoke-interface {v0, p2}, Laph$a;->a(I)V

    .line 379
    :cond_0
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 371
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$19;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->b(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Laph$a;

    move-result-object v0

    invoke-interface {v0, v1, v1}, Laph$a;->a(II)V

    .line 372
    return-void
.end method
