.class final Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$7;
.super Ljava/lang/Object;
.source "ChatTaskTipView.java"

# interfaces
.implements Layv$c;


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
    .line 309
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$7;->a:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 1
    .param p1, "dingId"    # J

    .prologue
    .line 312
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$7;->a:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    invoke-static {v0, p1, p2}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->a(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;J)V

    .line 313
    return-void
.end method
