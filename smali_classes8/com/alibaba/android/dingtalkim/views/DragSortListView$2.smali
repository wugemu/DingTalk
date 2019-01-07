.class final Lcom/alibaba/android/dingtalkim/views/DragSortListView$2;
.super Landroid/database/DataSetObserver;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/views/DragSortListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/views/DragSortListView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/views/DragSortListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    .prologue
    .line 399
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$2;->a:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 401
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$2;->a:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->b(Lcom/alibaba/android/dingtalkim/views/DragSortListView;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 402
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$2;->a:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->a()V

    .line 404
    :cond_0
    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 0

    .prologue
    .line 408
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView$2;->a()V

    .line 409
    return-void
.end method

.method public final onInvalidated()V
    .locals 0

    .prologue
    .line 413
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView$2;->a()V

    .line 414
    return-void
.end method
