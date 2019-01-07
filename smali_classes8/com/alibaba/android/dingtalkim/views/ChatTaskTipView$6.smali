.class final Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$6;
.super Ljava/lang/Object;
.source "ChatTaskTipView.java"

# interfaces
.implements Layv$b;


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
    .line 301
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$6;->a:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JZ)V
    .locals 1
    .param p1, "newDingId"    # J
    .param p3, "unConfirmed"    # Z

    .prologue
    .line 305
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$6;->a:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    invoke-static {v0, p1, p2, p3}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->a(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;JZ)V

    .line 306
    return-void
.end method
