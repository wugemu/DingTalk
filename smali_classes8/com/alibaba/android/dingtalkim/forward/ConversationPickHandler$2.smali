.class final Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler$2;
.super Ljava/lang/Object;
.source "ConversationPickHandler.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler;->verifyConversationTitle(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V
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
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler$2;->b:Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler$2;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 87
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1090
    if-eqz p1, :cond_1

    .line 1091
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 1092
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler$2;->b:Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler$2;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler$2;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v3}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v4

    invoke-static {v1, v2, v0, v4, v5}, Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler;->access$100(Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1093
    :goto_1
    return-void

    .line 1091
    :cond_0
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->realName:Ljava/lang/String;

    goto :goto_0

    .line 1094
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler$2;->b:Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler;

    const/16 v1, 0x3e9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler;->onFail(ILjava/lang/String;)V

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler$2;->b:Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler;->onFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 101
    return-void
.end method
