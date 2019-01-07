.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$36;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->g(Lcom/alibaba/wukong/im/Conversation;)V
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
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 7796
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$36;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 7816
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 7796
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 7796
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 8799
    if-eqz p1, :cond_0

    .line 8800
    const-string/jumbo v0, "sync_status"

    const-string/jumbo v1, "1"

    invoke-interface {p1, v0, v1}, Lcom/alibaba/wukong/im/Conversation;->updateLocalExtras(Ljava/lang/String;Ljava/lang/String;)V

    .line 8801
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$36;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iput-object p1, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 8802
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$36;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Z)V

    .line 8803
    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v0

    .line 8804
    invoke-virtual {v0, p1}, Ldho;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8805
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$36;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->s(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)I

    move-result v0

    if-lez v0, :cond_0

    .line 8806
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$36;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->u:Lcug;

    invoke-virtual {v0}, Lcug;->notifyDataSetChanged()V

    .line 7796
    :cond_0
    return-void
.end method
