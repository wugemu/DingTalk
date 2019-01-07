.class final Lcom/alibaba/android/dingtalkim/views/DragSortListView$1;
.super Ljava/lang/Object;
.source "DragSortListView.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkim/views/DragSortListView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/views/DragSortListView;
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
    .line 238
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$1;->a:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(F)F
    .locals 1
    .param p1, "w"    # F

    .prologue
    .line 241
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$1;->a:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->a(Lcom/alibaba/android/dingtalkim/views/DragSortListView;)F

    move-result v0

    mul-float/2addr v0, p1

    return v0
.end method
