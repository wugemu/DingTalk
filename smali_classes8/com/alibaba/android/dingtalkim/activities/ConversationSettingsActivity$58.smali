.class final Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$58;
.super Ljava/lang/Object;
.source "ConversationSettingsActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->onActivityResult(IILandroid/content/Intent;)V
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
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;ZLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 3390
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$58;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    iput-boolean p2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$58;->a:Z

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$58;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 3418
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$58;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->dismissLoadingDialog()V

    .line 3419
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3420
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 3390
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3390
    check-cast p1, Lcom/alibaba/wukong/im/Message;

    .line 4393
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$58;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/wukong/im/Conversation$GroupIconType;->ENTERPRISE:Lcom/alibaba/wukong/im/Conversation$GroupIconType;

    .line 4394
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$58;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$58;->b:Ljava/lang/String;

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$58$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$58$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$58;)V

    invoke-interface {v1, v0, v2, p1, v3}, Lcom/alibaba/wukong/im/Conversation;->updateGroupIcon(Lcom/alibaba/wukong/im/Conversation$GroupIconType;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/Callback;)V

    .line 3390
    return-void

    .line 4393
    :cond_0
    sget-object v0, Lcom/alibaba/wukong/im/Conversation$GroupIconType;->CUSTOM:Lcom/alibaba/wukong/im/Conversation$GroupIconType;

    goto :goto_0
.end method
