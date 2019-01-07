.class final Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity$2$1;
.super Ljava/lang/Object;
.source "ChooseEnterpriseGroupConversationActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity$2;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity$2;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity$2$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity$2;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity$2$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 112
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 101
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1104
    if-eqz p1, :cond_0

    .line 1107
    const-string/jumbo v0, "chat_id"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity$2$1;->a:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/alibaba/wukong/im/Conversation;->updateLocalExtras(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_0
    return-void
.end method
