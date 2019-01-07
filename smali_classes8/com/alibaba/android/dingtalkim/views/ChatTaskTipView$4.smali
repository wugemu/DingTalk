.class final Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$4;
.super Ljava/lang/Object;
.source "ChatTaskTipView.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$4;->a:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 254
    check-cast p1, Ljava/util/Map;

    .line 1258
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1259
    :cond_0
    :goto_0
    return-void

    .line 1261
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$4;->a:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->b(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1263
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$4;->a:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->f(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V

    .line 1264
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$4;->a:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->g(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V

    .line 1265
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$4;->a:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->h(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 277
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 271
    return-void
.end method
