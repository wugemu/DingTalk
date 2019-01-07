.class final Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView$1;
.super Ljava/lang/Object;
.source "IMBanner.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 204
    .local p0, "this":Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView$1;, "Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView$1;"
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView$1;->a:Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 207
    .local p0, "this":Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView$1;, "Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView$1;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView$1;->a:Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;->a(Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;)Lga;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView$1;->a:Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;->a(Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;)Lga;

    move-result-object v0

    invoke-virtual {v0, p2}, Lga;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 210
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
