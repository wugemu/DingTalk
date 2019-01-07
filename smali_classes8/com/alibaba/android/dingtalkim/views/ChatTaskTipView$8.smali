.class final Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$8;
.super Ljava/lang/Object;
.source "ChatTaskTipView.java"

# interfaces
.implements Layv$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$8;->a:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 3
    .param p1, "dingId"    # J

    .prologue
    .line 320
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$8;->a:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->a(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$8;->a:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->i(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)I

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$8;->a:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->f(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V

    .line 326
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$8;->a:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->g(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V

    .line 327
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$8;->a:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->h(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V

    .line 328
    return-void
.end method
