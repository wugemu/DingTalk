.class final Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1$1;
.super Ljava/lang/Object;
.source "ConversationSettingsActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1;->run()V
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
        "Lcom/alibaba/wukong/im/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1;

    .prologue
    .line 3630
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 3670
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 3630
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3630
    check-cast p1, Lcom/alibaba/wukong/im/Message;

    .line 4633
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1$1$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1$1$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1$1;)V

    const-class v3, Lcom/alibaba/wukong/Callback;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .line 4665
    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61;->a:[Ljava/lang/Long;

    .line 4633
    invoke-interface {v0, v1, v2, p1, v3}, Lcom/alibaba/wukong/im/ConversationService;->removeMembers(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;[Ljava/lang/Long;)V

    .line 3630
    return-void
.end method
