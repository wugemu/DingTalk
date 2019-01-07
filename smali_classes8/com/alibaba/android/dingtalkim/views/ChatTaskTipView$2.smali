.class final Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$2;
.super Ljava/lang/Object;
.source "ChatTaskTipView.java"

# interfaces
.implements Layv$g;


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
    .line 382
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$2;->a:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JLcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;)V
    .locals 1
    .param p1, "dingId"    # J
    .param p3, "finishStatus"    # Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    .prologue
    .line 386
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$2;->a:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    invoke-static {v0, p1, p2, p3}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->a(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;JLcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;)V

    .line 387
    return-void
.end method
