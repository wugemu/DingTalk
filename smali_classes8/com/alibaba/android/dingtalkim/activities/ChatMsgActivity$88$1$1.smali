.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88$1$1;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88$1;
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/Message;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88$1;

    .prologue
    .line 2423
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 2435
    const-string/jumbo v0, "101008"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2436
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88;->d:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    sget v1, Lctk$i;->msg_forward_failed:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    .line 3056
    iget-object v4, v4, Lcid;->c:Lcmy;

    .line 2436
    invoke-interface {v4, p1, p2}, Lcmy;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 2438
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2439
    new-instance v0, Ldiz;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88$1;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {v0, v1}, Ldiz;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88;->c:Ljava/lang/String;

    .line 3413
    invoke-virtual {v0, v1, v5, v5}, Ldiz;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Z

    .line 2441
    :cond_1
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 2423
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 2423
    .line 3426
    sget v0, Lctk$i;->msg_forward_success:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 3427
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88;->d:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88$1;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88;->a:J

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/lang/String;J)V

    .line 3428
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3429
    new-instance v0, Ldiz;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88$1;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {v0, v1}, Ldiz;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88;->c:Ljava/lang/String;

    .line 4413
    invoke-virtual {v0, v1, v4, v4}, Ldiz;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Z

    .line 2423
    :cond_0
    return-void
.end method
