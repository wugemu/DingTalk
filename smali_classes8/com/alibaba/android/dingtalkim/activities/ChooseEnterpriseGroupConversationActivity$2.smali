.class final Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity$2;
.super Ljava/lang/Object;
.source "ChooseEnterpriseGroupConversationActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity$2;->d:Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity$2;->b:Ljava/lang/Object;

    iput-object p4, p0, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 90
    check-cast p1, Ljava/lang/String;

    .line 1094
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity$2;->d:Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1095
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity$2;->d:Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity$2;->a:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity$2;->b:Ljava/lang/Object;

    instance-of v0, v0, Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_1

    .line 1097
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity$2;->b:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v1, "chat_id"

    invoke-interface {v0, v1, p1}, Lcom/alibaba/wukong/im/Conversation;->updateLocalExtras(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity$2;->d:Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;->finish()V

    .line 90
    :cond_0
    return-void

    .line 1098
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity$2;->b:Ljava/lang/Object;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity$2;->b:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_2

    .line 1099
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity$2;->b:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v1, "chat_id"

    invoke-interface {v0, v1, p1}, Lcom/alibaba/wukong/im/Conversation;->updateLocalExtras(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1101
    :cond_2
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity$2$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity$2$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity$2;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity$2;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 127
    return-void
.end method
