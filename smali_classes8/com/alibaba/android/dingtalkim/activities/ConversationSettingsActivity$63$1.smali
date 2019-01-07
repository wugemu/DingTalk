.class final Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$63$1;
.super Ljava/lang/Object;
.source "ConversationSettingsActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$63;->onClick(Landroid/content/DialogInterface;I)V
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
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$63;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$63;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$63;

    .prologue
    .line 3766
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$63$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$63;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 3796
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 3766
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3766
    check-cast p1, Lcom/alibaba/wukong/im/Message;

    .line 4769
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$63$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$63;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$63;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v0

    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$63$1$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$63$1$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$63$1;)V

    const-class v3, Lcom/alibaba/wukong/Callback;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$63$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$63;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$63;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-interface {v0, v2, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    invoke-interface {v1, p1, v0}, Lcom/alibaba/wukong/im/Conversation;->quitSilent(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/Callback;)V

    .line 3766
    return-void
.end method
