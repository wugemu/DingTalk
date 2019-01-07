.class final Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1$1$1;
.super Ljava/lang/Object;
.source "ConversationSettingsActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1$1;->onClick(Landroid/content/DialogInterface;I)V
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
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1$1;)V
    .locals 0
    .param p1, "this$3"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1$1;

    .prologue
    .line 3279
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 3306
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 3279
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3279
    check-cast p1, Lcom/alibaba/wukong/im/Message;

    .line 4282
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    sget-object v1, Lcom/alibaba/wukong/im/Conversation$GroupIconType;->AUTOMATIC:Lcom/alibaba/wukong/im/Conversation$GroupIconType;

    const/4 v2, 0x0

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1$1$1$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1$1$1$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1$1$1;)V

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/alibaba/wukong/im/Conversation;->updateGroupIcon(Lcom/alibaba/wukong/im/Conversation$GroupIconType;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/Callback;)V

    .line 3279
    return-void
.end method
