.class final Lcom/alibaba/android/dingtalkim/views/DragSortListView$i;
.super Ljava/lang/Object;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/views/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "i"
.end annotation


# instance fields
.field a:Landroid/util/SparseIntArray;

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field c:I

.field final synthetic d:Lcom/alibaba/android/dingtalkim/views/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkim/views/DragSortListView;I)V
    .locals 2
    .param p2, "size"    # I

    .prologue
    const/4 v1, 0x3

    .line 696
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$i;->d:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 697
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$i;->a:Landroid/util/SparseIntArray;

    .line 698
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$i;->b:Ljava/util/ArrayList;

    .line 699
    iput v1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$i;->c:I

    .line 700
    return-void
.end method
