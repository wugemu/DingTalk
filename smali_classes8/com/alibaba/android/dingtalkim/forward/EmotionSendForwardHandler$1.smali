.class final Lcom/alibaba/android/dingtalkim/forward/EmotionSendForwardHandler$1;
.super Ljava/lang/Object;
.source "EmotionSendForwardHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/forward/EmotionSendForwardHandler;->send2ConversationsImpl(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldiz;

.field final synthetic b:Ldiz;

.field final synthetic c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field final synthetic d:Lcom/alibaba/android/dingtalkim/forward/EmotionSendForwardHandler;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/forward/EmotionSendForwardHandler;Ldiz;Ldiz;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/forward/EmotionSendForwardHandler;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/EmotionSendForwardHandler$1;->d:Lcom/alibaba/android/dingtalkim/forward/EmotionSendForwardHandler;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/forward/EmotionSendForwardHandler$1;->a:Ldiz;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/forward/EmotionSendForwardHandler$1;->b:Ldiz;

    iput-object p4, p0, Lcom/alibaba/android/dingtalkim/forward/EmotionSendForwardHandler$1;->c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/EmotionSendForwardHandler$1;->a:Ldiz;

    new-instance v1, Lcom/alibaba/android/dingtalkim/forward/EmotionSendForwardHandler$1$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/forward/EmotionSendForwardHandler$1$1;-><init>(Lcom/alibaba/android/dingtalkim/forward/EmotionSendForwardHandler$1;)V

    .line 1131
    iput-object v1, v0, Ldiz;->b:Ldiz$a;

    .line 73
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/EmotionSendForwardHandler$1;->a:Ldiz;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/EmotionSendForwardHandler$1;->d:Lcom/alibaba/android/dingtalkim/forward/EmotionSendForwardHandler;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/forward/EmotionSendForwardHandler;->access$000(Lcom/alibaba/android/dingtalkim/forward/EmotionSendForwardHandler;)Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;

    move-result-object v1

    .line 2119
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ldiz;->a(Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;Ldcu;)Z

    .line 74
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/EmotionSendForwardHandler$1;->d:Lcom/alibaba/android/dingtalkim/forward/EmotionSendForwardHandler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/EmotionSendForwardHandler$1;->c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/forward/EmotionSendForwardHandler;->checkComplete(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Z)V

    .line 75
    return-void
.end method
