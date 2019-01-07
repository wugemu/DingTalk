.class final Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1$1$1;
.super Ljava/lang/Object;
.source "ConversationOwnerManagerActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1$1;
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
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1$1;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 234
    sget v0, Lctk$i;->conversation_transmit_error:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 235
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->dismissLoadingDialog()V

    .line 236
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 216
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 216
    .line 1219
    sget v0, Lctk$i;->conversation_transmit_success:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1220
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->dismissLoadingDialog()V

    .line 1221
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;Z)Z

    .line 1222
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v0

    .line 1223
    if-nez v0, :cond_0

    .line 1224
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1226
    :cond_0
    const-string/jumbo v1, "owner_id"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1$1;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1$1;->a:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1227
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1, v0}, Lcom/alibaba/wukong/im/Conversation;->updateLocalExtras(Ljava/util/Map;)V

    .line 1228
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->c(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)V

    .line 1229
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->d(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)V

    .line 216
    return-void
.end method
