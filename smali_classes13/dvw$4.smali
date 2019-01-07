.class final Ldvw$4;
.super Ljava/lang/Object;
.source "OneBoxCenter.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldvw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldvw;


# direct methods
.method constructor <init>(Ldvw;)V
    .locals 0
    .param p1, "this$0"    # Ldvw;

    .prologue
    .line 270
    iput-object p1, p0, Ldvw$4;->a:Ldvw;

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
    .line 305
    iget-object v0, p0, Ldvw$4;->a:Ldvw;

    invoke-static {v0, p3}, Ldvw;->b(Ldvw;I)I

    .line 306
    iget-object v0, p0, Ldvw$4;->a:Ldvw;

    invoke-static {v0, p2}, Ldvw;->c(Ldvw;I)I

    .line 307
    iget-object v0, p0, Ldvw$4;->a:Ldvw;

    invoke-static {v0, p4}, Ldvw;->d(Ldvw;I)I

    .line 308
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 274
    if-nez p2, :cond_0

    iget-object v1, p0, Ldvw$4;->a:Ldvw;

    iget-boolean v1, v1, Ldvw;->c:Z

    if-nez v1, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    iget-object v1, p0, Ldvw$4;->a:Ldvw;

    invoke-static {v1}, Ldvw;->c(Ldvw;)I

    move-result v1

    if-nez v1, :cond_2

    .line 279
    iget-object v1, p0, Ldvw$4;->a:Ldvw;

    invoke-static {v1}, Ldvw;->d(Ldvw;)Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;->PULL_FROM_UP:Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;

    if-ne v1, v2, :cond_2

    .line 280
    iget-object v1, p0, Ldvw$4;->a:Ldvw;

    invoke-static {v1}, Ldvw;->e(Ldvw;)V

    .line 285
    :cond_2
    iget-object v1, p0, Ldvw$4;->a:Ldvw;

    invoke-static {v1}, Ldvw;->c(Ldvw;)I

    move-result v1

    iget-object v2, p0, Ldvw$4;->a:Ldvw;

    invoke-static {v2}, Ldvw;->f(Ldvw;)I

    move-result v2

    add-int v0, v1, v2

    .line 286
    .local v0, "lastVisibleItemIndex":I
    iget-object v1, p0, Ldvw$4;->a:Ldvw;

    invoke-static {v1}, Ldvw;->f(Ldvw;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Ldvw$4;->a:Ldvw;

    invoke-static {v1}, Ldvw;->g(Ldvw;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Ldvw$4;->a:Ldvw;

    .line 287
    invoke-static {v1}, Ldvw;->c(Ldvw;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    iget-object v1, p0, Ldvw$4;->a:Ldvw;

    invoke-static {v1}, Ldvw;->h(Ldvw;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 297
    iget-object v1, p0, Ldvw$4;->a:Ldvw;

    invoke-static {v1, v0}, Ldvw;->a(Ldvw;I)I

    .line 298
    iget-object v1, p0, Ldvw$4;->a:Ldvw;

    invoke-static {v1}, Ldvw;->d(Ldvw;)Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;->PULL_FROM_DOWN:Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;

    if-ne v1, v2, :cond_0

    .line 299
    iget-object v1, p0, Ldvw$4;->a:Ldvw;

    invoke-static {v1}, Ldvw;->e(Ldvw;)V

    goto :goto_0
.end method
