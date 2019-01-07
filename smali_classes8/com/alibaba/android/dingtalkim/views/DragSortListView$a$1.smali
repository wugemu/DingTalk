.class final Lcom/alibaba/android/dingtalkim/views/DragSortListView$a$1;
.super Landroid/database/DataSetObserver;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/views/DragSortListView$a;-><init>(Lcom/alibaba/android/dingtalkim/views/DragSortListView;Landroid/widget/ListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/views/DragSortListView$a;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/views/DragSortListView$a;Lcom/alibaba/android/dingtalkim/views/DragSortListView;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/views/DragSortListView$a;

    .prologue
    .line 492
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$a$1;->b:Lcom/alibaba/android/dingtalkim/views/DragSortListView$a;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$a$1;->a:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$a$1;->b:Lcom/alibaba/android/dingtalkim/views/DragSortListView$a;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView$a;->notifyDataSetChanged()V

    .line 495
    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$a$1;->b:Lcom/alibaba/android/dingtalkim/views/DragSortListView$a;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView$a;->notifyDataSetInvalidated()V

    .line 499
    return-void
.end method
