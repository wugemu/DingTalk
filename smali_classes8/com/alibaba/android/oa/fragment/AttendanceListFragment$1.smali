.class final Lcom/alibaba/android/oa/fragment/AttendanceListFragment$1;
.super Ljava/lang/Object;
.source "AttendanceListFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/oa/fragment/AttendanceListFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$1;->a:Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

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
    .line 138
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$1;->a:Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    invoke-static {v0, p3}, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->b(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;I)I

    .line 139
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$1;->a:Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    invoke-static {v0, p2}, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->c(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;I)I

    .line 140
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$1;->a:Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    invoke-static {v0, p4}, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->d(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;I)I

    .line 141
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 110
    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$1;->a:Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    invoke-static {v1}, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->a(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$1;->a:Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    invoke-static {v1}, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->b(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$1;->a:Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    invoke-static {v2}, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->c(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;)I

    move-result v2

    add-int v0, v1, v2

    .line 116
    .local v0, "lastVisibleItemIndex":I
    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$1;->a:Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    invoke-static {v1}, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->c(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$1;->a:Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    invoke-static {v1}, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->d(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$1;->a:Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    .line 117
    invoke-static {v1}, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->b(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$1;->a:Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    invoke-static {v1}, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->e(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$1;->a:Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    invoke-static {v1, v0}, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->a(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;I)I

    .line 128
    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$1;->a:Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    invoke-static {v1}, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->f(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;)Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;->DEPT_MODE:Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;

    if-ne v1, v2, :cond_2

    .line 129
    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$1;->a:Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    invoke-static {v1, v3}, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->a(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;Z)V

    goto :goto_0

    .line 130
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$1;->a:Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    invoke-static {v1}, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->f(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;)Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;->SUB_DEPT_MODE:Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;

    if-ne v1, v2, :cond_0

    .line 131
    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$1;->a:Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->a(Z)V

    goto :goto_0
.end method
