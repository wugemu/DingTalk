.class final Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1$1;
.super Ljava/lang/Object;
.source "ConversationOwnerManagerActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
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
.field final synthetic a:J

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1;J)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1;

    iput-wide p2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1$1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 247
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->dismissLoadingDialog()V

    .line 248
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "OwnerManager buildSystemMessageAsync s:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " s1:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    .line 249
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 248
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 211
    check-cast p1, Lcom/alibaba/wukong/im/Message;

    .line 1214
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v0

    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1$1;->a:J

    const-string/jumbo v0, "EVENTBUTLER"

    .line 1215
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1$1$1;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1$1$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1$1;)V

    const-class v5, Lcom/alibaba/wukong/Callback;

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1;

    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    .line 1216
    invoke-interface {v0, v4, v5, v6}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 1214
    invoke-interface {v1, v2, v3, p1, v0}, Lcom/alibaba/wukong/im/Conversation;->updateOwner(JLcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/Callback;)V

    .line 211
    return-void
.end method
