.class final Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1$1$1;
.super Ljava/lang/Object;
.source "ConversationSettingsActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1$1;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1$1;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 427
    sget v0, Lctk$i;->conversation_transmit_error:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 428
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->g(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    .line 429
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 409
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 409
    .line 1412
    sget v0, Lctk$i;->conversation_transmit_success:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1413
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->g(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    .line 1414
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Z)Z

    .line 1415
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    sget-object v1, Lcom/alibaba/wukong/im/Member$RoleType;->ORDINARY:Lcom/alibaba/wukong/im/Member$RoleType;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Lcom/alibaba/wukong/im/Member$RoleType;)Lcom/alibaba/wukong/im/Member$RoleType;

    .line 1416
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v0

    .line 1417
    if-nez v0, :cond_0

    .line 1418
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1420
    :cond_0
    const-string/jumbo v1, "owner_id"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1$1;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1$1;->a:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1421
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1, v0}, Lcom/alibaba/wukong/im/Conversation;->updateLocalExtras(Ljava/util/Map;)V

    .line 1422
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->d(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    .line 409
    return-void
.end method
