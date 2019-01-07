.class final Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity$2;
.super Ljava/lang/Object;
.source "AtMeListActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;

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
    .line 130
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;

    invoke-static {v0, p3}, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->b(Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;I)I

    .line 131
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;

    invoke-static {v0, p2}, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->c(Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;I)I

    .line 132
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;

    invoke-static {v0, p4}, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->d(Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;I)I

    .line 133
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 106
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->b(Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->c(Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->d(Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;)I

    move-result v2

    add-int v0, v1, v2

    .line 112
    .local v0, "lastVisibleItemIndex":I
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->d(Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->e(Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    if-le v0, v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->e(Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->f(Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 121
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->e(Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->a(Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;I)I

    .line 123
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->g(Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;)Ldbr$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->g(Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;)Ldbr$a;

    move-result-object v1

    invoke-interface {v1}, Ldbr$a;->c()V

    goto :goto_0
.end method
