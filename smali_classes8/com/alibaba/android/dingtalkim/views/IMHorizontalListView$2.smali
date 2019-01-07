.class final Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$2;
.super Landroid/database/DataSetObserver;
.source "IMHorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    .prologue
    .line 339
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$2;->a:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 342
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$2;->a:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->a(Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;Z)Z

    .line 345
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$2;->a:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->b(Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;Z)Z

    .line 347
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$2;->a:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->b(Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;)V

    .line 350
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$2;->a:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->invalidate()V

    .line 351
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$2;->a:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->requestLayout()V

    .line 352
    return-void
.end method

.method public final onInvalidated()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 357
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$2;->a:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->b(Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;Z)Z

    .line 359
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$2;->a:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->b(Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;)V

    .line 360
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$2;->a:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->c(Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;)V

    .line 363
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$2;->a:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->invalidate()V

    .line 364
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$2;->a:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->requestLayout()V

    .line 365
    return-void
.end method
