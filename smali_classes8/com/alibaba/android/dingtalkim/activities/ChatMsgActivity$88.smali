.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
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
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 2393
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88;->d:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iput-wide p2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88;->a:J

    iput-object p4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2526
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88;->d:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    sget v1, Lctk$i;->msg_forward_failed:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    .line 3056
    iget-object v4, v4, Lcid;->c:Lcmy;

    .line 2526
    invoke-interface {v4, p1, p2}, Lcmy;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 2527
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 2393
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2393
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 3396
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88;->d:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    .line 3399
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88;->d:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88;->a:J

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88$1;

    invoke-direct {v4, p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88;Lcom/alibaba/wukong/im/Conversation;)V

    const-class v5, Lcom/alibaba/wukong/Callback;

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88;->d:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-interface {v0, v4, v5, v6}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/wukong/im/Conversation;->getMessage(JLcom/alibaba/wukong/Callback;)V

    .line 2393
    :cond_0
    return-void
.end method
