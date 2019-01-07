.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$130;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(JJZ)V
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

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 4835
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$130;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iput p2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$130;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 4898
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 4835
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    const/4 v6, 0x1

    .line 4835
    check-cast p1, Lcom/alibaba/wukong/im/Message;

    .line 5838
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$130;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$130;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    if-eqz v0, :cond_0

    .line 5839
    if-eqz p1, :cond_1

    .line 5840
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$130;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$130$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$130$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$130;Lcom/alibaba/wukong/im/Message;)V

    const-string/jumbo v2, "jump"

    invoke-virtual {v0, p1, v1, v6, v2}, Ldqq;->a(Lcom/alibaba/wukong/im/Message;Ldqq$d;ZLjava/lang/Object;)I

    :cond_0
    :goto_0
    return-void

    .line 5891
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$130;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    move-wide v4, v2

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(JJZ)V

    goto :goto_0
.end method
