.class final Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3$1;
.super Ljava/lang/Object;
.source "ConfirmCreatingConversationActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3;
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
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3;

    .prologue
    .line 809
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 855
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->dismissLoadingDialog()V

    .line 857
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 809
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 809
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1813
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->x(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->d(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ldjl;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1814
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3$1$1;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3$1$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3$1;Lcom/alibaba/wukong/im/Conversation;)V

    const-class v1, Lcom/alibaba/wukong/Callback;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-static {v0, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    invoke-interface {p1, v0}, Lcom/alibaba/wukong/im/Conversation;->genGroupId(Lcom/alibaba/wukong/Callback;)V

    :goto_0
    return-void

    .line 1845
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0
.end method
