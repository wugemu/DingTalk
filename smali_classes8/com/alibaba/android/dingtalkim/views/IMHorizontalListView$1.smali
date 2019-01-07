.class final Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$1;
.super Ljava/lang/Object;
.source "IMHorizontalListView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 225
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$1;->a:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$1;->a:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->a(Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
