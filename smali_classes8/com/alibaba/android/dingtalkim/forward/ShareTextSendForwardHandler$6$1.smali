.class final Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$6$1;
.super Ljava/lang/Object;
.source "ShareTextSendForwardHandler.java"

# interfaces
.implements Ldiz$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$6;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$6;

    .prologue
    .line 389
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$6$1;->a:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/wukong/im/Message;)V
    .locals 2
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$6$1;->a:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$6;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$6;->e:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$6$1;->a:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$6;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$6;->b:Ldiz;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->sendText(Ldiz;)V

    .line 394
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/im/Message;I)V
    .locals 0
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "progress"    # I

    .prologue
    .line 404
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 398
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$6$1;->a:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$6;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$6;->e:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$6$1;->a:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$6;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$6;->b:Ldiz;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->sendText(Ldiz;)V

    .line 399
    return-void
.end method
