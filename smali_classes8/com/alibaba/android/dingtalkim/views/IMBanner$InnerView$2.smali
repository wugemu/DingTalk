.class final Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "IMBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;

    .prologue
    .line 214
    .local p0, "this":Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView$2;, "Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView$2;"
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView$2;->a:Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 217
    .local p0, "this":Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView$2;, "Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView$2;"
    const/4 v0, 0x1

    return v0
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 222
    .local p0, "this":Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView$2;, "Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView$2;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView$2;->a:Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;->mListener:Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView$a;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView$2;->a:Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;->mListener:Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView$a;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView$2;->a:Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;->getClickData()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView$a;->onClick(Ljava/lang/Object;)V

    .line 225
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
