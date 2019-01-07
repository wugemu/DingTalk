.class final Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity$1;
.super Ljava/lang/Object;
.source "RemoveMyAddedConversationMembersActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;
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
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;->finish()V

    .line 108
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 92
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1095
    if-nez p1, :cond_0

    .line 1096
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;->finish()V

    .line 1097
    :goto_0
    return-void

    .line 1099
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;->a(Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/wukong/im/Conversation;

    .line 1100
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;->a(Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;Z)Z

    .line 1101
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;->a(Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;)V

    goto :goto_0
.end method
