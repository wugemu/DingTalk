.class final Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3$1$1;
.super Ljava/lang/Object;
.source "ConfirmCreatingConversationActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3$1;
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3$1;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3$1;

    .prologue
    .line 814
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3$1$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3$1;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3$1$1;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 836
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3$1$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3$1$1;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;Lcom/alibaba/wukong/im/Conversation;)V

    .line 837
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 814
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 814
    .line 1817
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3$1$1;->a:Lcom/alibaba/wukong/im/Conversation;

    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3$1$1$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3$1$1$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3$1$1;)V

    const-class v2, Lcom/alibaba/wukong/Callback;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3$1$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3$1;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-static {v0, v2, v3}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    invoke-interface {v1, v0, v4, v4}, Lcom/alibaba/wukong/im/Conversation;->updateSearchable(Lcom/alibaba/wukong/Callback;ZZ)V

    .line 814
    return-void
.end method
