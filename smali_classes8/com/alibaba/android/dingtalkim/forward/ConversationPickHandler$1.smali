.class final Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler$1;
.super Ljava/lang/Object;
.source "ConversationPickHandler.java"

# interfaces
.implements Ldhy$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler;->share2SingleConversationImpl(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler$1;->d:Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler$1;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler$1;->b:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iput-object p4, p0, Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler$1;->d:Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler;->mMsgForwardStatistics:Lcom/alibaba/android/dingtalkim/forward/MsgForwardStatistics;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler$1;->d:Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler;->mMsgForwardStatistics:Lcom/alibaba/android/dingtalkim/forward/MsgForwardStatistics;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/forward/MsgForwardStatistics;->forwardMsgStatistics()V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler$1;->d:Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler$1;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler$1;->b:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler$1;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler;->access$000(Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V

    .line 76
    return-void
.end method
