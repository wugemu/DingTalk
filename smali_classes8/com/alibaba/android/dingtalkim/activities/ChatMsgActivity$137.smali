.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$137;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(ZLjava/util/List;)V
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
    .line 5300
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$137;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$137;->a:Ljava/util/List;

    iput-boolean p3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$137;->b:Z

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
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5303
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$137;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$137;->a:Ljava/util/List;

    if-nez v2, :cond_1

    .line 5337
    :cond_0
    return-void

    .line 5306
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$137;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->o(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 5307
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$137;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->o(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Landroid/os/Handler;

    move-result-object v2

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$137$1;

    invoke-direct {v5, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$137$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$137;)V

    invoke-virtual {v2, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5314
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$137;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 5315
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$137;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i:Ldiz;

    if-eqz v2, :cond_0

    .line 5318
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$137;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    .line 5319
    .local v1, "photo":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    if-eqz v1, :cond_4

    .line 5322
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$137;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->af(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    .line 5323
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$137;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ag(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5324
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$137;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v5, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i:Ldiz;

    iget-object v6, v1, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$137;->b:Z

    if-nez v2, :cond_3

    iget-boolean v2, v1, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->isCompressed:Z

    if-nez v2, :cond_5

    :cond_3
    move v2, v4

    :goto_1
    invoke-virtual {v5, v6, v2}, Ldiz;->a(Ljava/lang/String;I)Z

    .line 5333
    :goto_2
    const-wide/16 v6, 0x1f4

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5314
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move v2, v3

    .line 5324
    goto :goto_1

    .line 5326
    :cond_6
    iget-object v2, v1, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->originUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 5327
    iget-object v2, v1, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->originUrl:Ljava/lang/String;

    .line 5329
    :cond_7
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$137;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v5, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i:Ldiz;

    iget-object v6, v1, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    iget-object v7, v1, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->originUrl:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$137;->b:Z

    if-nez v2, :cond_8

    iget-boolean v2, v1, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->isCompressed:Z

    if-nez v2, :cond_9

    :cond_8
    move v2, v4

    :goto_4
    invoke-virtual {v5, v6, v7, v2}, Ldiz;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_9
    move v2, v3

    goto :goto_4

    :catch_0
    move-exception v2

    goto :goto_3
.end method
