.class final Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1;
.super Ljava/lang/Object;
.source "BurnChatIntroActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;->finish()V

    .line 111
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 41
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1044
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1045
    if-nez p1, :cond_1

    .line 1046
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;->finish()V

    .line 1047
    :cond_0
    :goto_0
    return-void

    .line 1049
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;->a(Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/wukong/im/Conversation;

    .line 1050
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;->a(Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 1051
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto :goto_0
.end method
