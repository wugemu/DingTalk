.class final Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity$2;
.super Ljava/lang/Object;
.source "BusinessListActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity$2;->a:Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;

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
    .line 168
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity$2;->a:Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;

    invoke-static {v0, p3}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->b(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;I)I

    .line 169
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity$2;->a:Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;

    invoke-static {v0, p2}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->c(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;I)I

    .line 170
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity$2;->a:Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;

    invoke-static {v0, p4}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->d(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;I)I

    .line 171
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
    .line 146
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity$2;->a:Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;

    iget-boolean v1, v1, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->a:Z

    if-nez v1, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity$2;->a:Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->b(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity$2;->a:Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->c(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;)I

    move-result v2

    add-int v0, v1, v2

    .line 152
    .local v0, "lastVisibleItemIndex":I
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity$2;->a:Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->c(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity$2;->a:Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->d(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x64

    if-le v0, v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity$2;->a:Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->d(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity$2;->a:Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->e(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 162
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity$2;->a:Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity$2;->a:Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->d(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->a(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;I)I

    .line 163
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity$2;->a:Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->a(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;Z)V

    goto :goto_0
.end method
