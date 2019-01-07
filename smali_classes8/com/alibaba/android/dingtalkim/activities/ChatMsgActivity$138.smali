.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$138;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Z

.field final synthetic c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/util/List;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 5355
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$138;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$138;->a:Ljava/util/List;

    iput-boolean p3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$138;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5358
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$138;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$138;->a:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$138;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i:Ldiz;

    if-nez v1, :cond_1

    .line 5382
    :cond_0
    return-void

    .line 5361
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$138;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->o(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 5362
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$138;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->o(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$138$1;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$138$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$138;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5369
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$138;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5370
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$138;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->af(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    .line 5371
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$138;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ag(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5372
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$138;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v5, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i:Ldiz;

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$138;->b:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v5, v0, v1}, Ldiz;->a(Ljava/lang/String;I)Z

    .line 5378
    :goto_2
    const-wide/16 v6, 0x1f4

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5381
    :catch_0
    move-exception v1

    goto :goto_0

    :cond_3
    move v1, v3

    .line 5372
    goto :goto_1

    .line 5374
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$138;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v5, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i:Ldiz;

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$138;->b:Z

    if-eqz v1, :cond_5

    move v1, v2

    :goto_3
    invoke-virtual {v5, v0, v0, v1}, Ldiz;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_5
    move v1, v3

    goto :goto_3
.end method
