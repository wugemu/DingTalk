.class final Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView$1;
.super Ljava/lang/Object;
.source "MotionTrackListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

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
    .line 53
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 56
    :cond_0
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 43
    if-nez p2, :cond_0

    .line 44
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;Z)Z

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 49
    :cond_1
    return-void
.end method
