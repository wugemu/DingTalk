.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124$1$1;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124$1;
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
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/alibaba/wukong/im/Message;

.field final synthetic e:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124$1;IIILcom/alibaba/wukong/im/Message;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124$1;

    .prologue
    .line 4402
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124$1$1;->e:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124$1;

    iput p2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124$1$1;->a:I

    iput p3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124$1$1;->b:I

    iput p4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124$1$1;->c:I

    iput-object p5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124$1$1;->d:Lcom/alibaba/wukong/im/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 4439
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 4402
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 4402
    check-cast p1, Lcom/alibaba/wukong/im/Message;

    .line 5405
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124$1$1;->e:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 5406
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124$1$1;->e:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124$1;

    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124$1;->a:Lcom/alibaba/wukong/im/Message;

    const/4 v2, 0x0

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124$1$1$1;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124$1$1$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124$1$1;Lcom/alibaba/wukong/im/Message;)V

    const-class v4, Lcom/alibaba/wukong/Callback;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124$1$1;->e:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124$1;

    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124;

    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-interface {v0, v3, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    invoke-interface {v1, p1, v2, v0}, Lcom/alibaba/wukong/im/Message;->compareOffset(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Message$CreatorType;Lcom/alibaba/wukong/Callback;)V

    .line 4402
    :cond_0
    return-void
.end method
