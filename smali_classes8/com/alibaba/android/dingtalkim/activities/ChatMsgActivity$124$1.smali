.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124$1;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124;->run()V
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
.field final synthetic a:Lcom/alibaba/wukong/im/Message;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124;Lcom/alibaba/wukong/im/Message;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124;

    .prologue
    .line 4375
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124$1;->a:Lcom/alibaba/wukong/im/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 4458
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 4375
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v10, 0x0

    .line 4375
    move-object v5, p1

    check-cast v5, Lcom/alibaba/wukong/im/Message;

    .line 5378
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 5380
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->getLastVisibleDataPosition()I

    move-result v2

    .line 5381
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->getFirstVisibleDataPosition()I

    move-result v3

    .line 5384
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->X(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)I

    move-result v0

    sub-int v1, v2, v3

    add-int/lit8 v1, v1, 0x1

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->X(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)I

    move-result v0

    const/16 v1, 0x9

    if-le v0, v1, :cond_3

    .line 5385
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->X(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)I

    move-result v4

    .line 5386
    if-eqz v5, :cond_3

    .line 5388
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->u:Lcug;

    if-eqz v0, :cond_0

    .line 5389
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->u:Lcug;

    .line 6119
    iput-object v5, v0, Lcug;->h:Lcom/alibaba/wukong/im/Message;

    .line 5391
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->Y(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->Z(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "at"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .line 5392
    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->Y(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "at_all"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .line 5393
    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->Y(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "special"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .line 5394
    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->Y(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string/jumbo v0, "announce"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .line 5395
    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->Y(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5396
    :cond_2
    const-wide/16 v0, 0x0

    .line 5398
    :try_start_0
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124;

    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->Z(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    move-wide v8, v0

    .line 5402
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v7, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124$1$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124$1$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124$1;IIILcom/alibaba/wukong/im/Message;)V

    const-class v1, Lcom/alibaba/wukong/Callback;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-interface {v6, v0, v1, v2}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    invoke-interface {v7, v8, v9, v0}, Lcom/alibaba/wukong/im/Conversation;->getMessage(JLcom/alibaba/wukong/Callback;)V

    .line 5451
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0, v10}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->d(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;I)I

    .line 4375
    :cond_4
    return-void

    .line 5399
    :catch_0
    move-exception v6

    .line 5400
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    move-wide v8, v0

    goto :goto_0

    .line 5446
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    sget v2, Lctk$i;->chat_unread_message_tip:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->X(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;)V

    goto :goto_1
.end method
