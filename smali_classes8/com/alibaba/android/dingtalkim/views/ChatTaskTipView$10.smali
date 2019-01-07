.class final Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$10;
.super Ljava/lang/Object;
.source "ChatTaskTipView.java"

# interfaces
.implements Layv$i;


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
    .line 349
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$10;->a:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JZZ)V
    .locals 1
    .param p1, "dingId"    # J
    .param p3, "isNormal"    # Z
    .param p4, "unConfirmed"    # Z

    .prologue
    .line 353
    if-eqz p3, :cond_0

    .line 354
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$10;->a:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    invoke-static {v0, p1, p2, p4}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->a(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;JZ)V

    .line 358
    :goto_0
    return-void

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$10;->a:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    invoke-static {v0, p1, p2}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->b(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;J)V

    goto :goto_0
.end method
