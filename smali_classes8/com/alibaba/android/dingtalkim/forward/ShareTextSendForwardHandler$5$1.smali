.class final Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$5$1;
.super Ljava/lang/Object;
.source "ShareTextSendForwardHandler.java"

# interfaces
.implements Ldiz$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$5;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$5;

    .prologue
    .line 349
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$5$1;->a:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$5;

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
    .line 352
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$5$1;->a:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$5;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$5;->d:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$5$1;->a:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$5;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$5;->b:Ldiz;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->sendText(Ldiz;)V

    .line 354
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/im/Message;I)V
    .locals 0
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "progress"    # I

    .prologue
    .line 369
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 358
    if-eqz p1, :cond_0

    .line 359
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[ShareTextSendForwardHandler]send2ConversationsImplByLink error,msgId:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 361
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ",code:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, ",reason:"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p3, v2, v3

    .line 360
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 359
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$5$1;->a:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$5;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$5;->d:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$5$1;->a:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$5;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$5;->b:Ldiz;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->sendText(Ldiz;)V

    .line 364
    return-void
.end method
