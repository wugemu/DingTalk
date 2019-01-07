.class final Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$5;
.super Ljava/lang/Object;
.source "ShareTextSendForwardHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->send2ConversationsImplByLink(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldiz;

.field final synthetic b:Ldiz;

.field final synthetic c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field final synthetic d:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;Ldiz;Ldiz;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$5;->d:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$5;->a:Ldiz;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$5;->b:Ldiz;

    iput-object p4, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$5;->c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 348
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$5;->a:Ldiz;

    new-instance v1, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$5$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$5$1;-><init>(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$5;)V

    .line 1131
    iput-object v1, v0, Ldiz;->b:Ldiz$a;

    .line 371
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$5;->a:Ldiz;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$5;->d:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->access$500(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$5;->d:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->access$300(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$5;->d:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->access$400(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$5;->d:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->access$700(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Ldiz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 372
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$5;->d:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$5;->c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->checkComplete(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Z)V

    .line 373
    return-void
.end method
