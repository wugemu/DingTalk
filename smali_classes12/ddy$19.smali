.class final Lddy$19;
.super Lcom/alibaba/wukong/im/ConversationChangeListener;
.source "ChatLoadPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lddy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lddy;


# direct methods
.method constructor <init>(Lddy;)V
    .locals 0
    .param p1, "this$0"    # Lddy;

    .prologue
    .line 360
    iput-object p1, p0, Lddy$19;->a:Lddy;

    invoke-direct {p0}, Lcom/alibaba/wukong/im/ConversationChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAuthorityChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 461
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    if-eqz p1, :cond_1

    .line 462
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 463
    .local v0, "conversation":Lcom/alibaba/wukong/im/Conversation;
    iget-object v2, p0, Lddy$19;->a:Lddy;

    .line 35066
    iget-object v2, v2, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 463
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 464
    iget-object v2, p0, Lddy$19;->a:Lddy;

    invoke-static {v2, v0}, Lddy;->a(Lddy;Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0

    .line 468
    .end local v0    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    :cond_1
    return-void
.end method

.method public final onClearMessage(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 445
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-super {p0, p1}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onClearMessage(Ljava/util/List;)V

    .line 446
    if-eqz p1, :cond_1

    .line 447
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 448
    .local v0, "conversation":Lcom/alibaba/wukong/im/Conversation;
    iget-object v2, p0, Lddy$19;->a:Lddy;

    .line 30066
    iget-object v2, v2, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 448
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lddy$19;->a:Lddy;

    .line 31066
    iget-object v3, v3, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 448
    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 449
    iget-object v2, p0, Lddy$19;->a:Lddy;

    .line 32066
    iget-object v2, v2, Lddy;->c:Ldqq;

    .line 449
    if-eqz v2, :cond_0

    .line 450
    iget-object v2, p0, Lddy$19;->a:Lddy;

    .line 33066
    iget-object v2, v2, Lddy;->c:Ldqq;

    .line 450
    invoke-virtual {v2}, Ldqq;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 451
    iget-object v2, p0, Lddy$19;->a:Lddy;

    .line 34066
    iget-object v2, v2, Lddy;->d:Lddx$b;

    .line 451
    invoke-interface {v2}, Lddx$b;->a()V

    goto :goto_0

    .line 456
    .end local v0    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    :cond_1
    return-void
.end method

.method public final onExtensionChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 374
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    if-eqz p1, :cond_1

    .line 375
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 376
    .local v0, "conversation":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lddy$19;->a:Lddy;

    .line 2066
    iget-object v2, v2, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 376
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 377
    iget-object v2, p0, Lddy$19;->a:Lddy;

    invoke-static {v2, v0}, Lddy;->a(Lddy;Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0

    .line 381
    .end local v0    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    :cond_1
    return-void
.end method

.method public final onLocalExtrasChanged(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 415
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    if-eqz p1, :cond_1

    .line 416
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 417
    .local v0, "conversation":Lcom/alibaba/wukong/im/Conversation;
    iget-object v2, p0, Lddy$19;->a:Lddy;

    .line 8066
    iget-object v2, v2, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 417
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 418
    iget-object v2, p0, Lddy$19;->a:Lddy;

    .line 9066
    iput-object v0, v2, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 419
    iget-object v2, p0, Lddy$19;->a:Lddy;

    .line 10066
    iget-object v2, v2, Lddy;->d:Lddx$b;

    .line 419
    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lddx$b;->a(Lcom/alibaba/wukong/im/Conversation;Z)V

    .line 420
    iget-object v2, p0, Lddy$19;->a:Lddy;

    .line 11066
    iget-object v2, v2, Lddy;->d:Lddx$b;

    .line 420
    invoke-interface {v2}, Lddx$b;->j()V

    .line 421
    iget-object v2, p0, Lddy$19;->a:Lddy;

    .line 12066
    iget-object v2, v2, Lddy;->d:Lddx$b;

    .line 421
    invoke-interface {v2}, Lddx$b;->g()V

    goto :goto_0

    .line 425
    .end local v0    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    :cond_1
    return-void
.end method

.method public final onStatusChanged(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 385
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    if-eqz p1, :cond_1

    iget-object v1, p0, Lddy$19;->a:Lddy;

    .line 3066
    iget-object v1, v1, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 385
    if-eqz v1, :cond_1

    .line 386
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 387
    .local v0, "conversation":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 388
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lddy$19;->a:Lddy;

    .line 4066
    iget-object v3, v3, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 388
    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 389
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->status()Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-result-object v2

    sget-object v3, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->DISBAND:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    if-ne v2, v3, :cond_2

    .line 390
    iget-object v1, p0, Lddy$19;->a:Lddy;

    .line 5066
    iget-object v1, v1, Lddy;->d:Lddx$b;

    .line 390
    sget v2, Lctk$i;->conversation_disband_warning:I

    invoke-interface {v1, v2}, Lddx$b;->b(I)V

    .line 399
    .end local v0    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    :cond_1
    :goto_0
    return-void

    .line 392
    .restart local v0    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    :cond_2
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->status()Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-result-object v2

    sget-object v3, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->KICKOUT:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    if-ne v2, v3, :cond_0

    .line 393
    iget-object v1, p0, Lddy$19;->a:Lddy;

    .line 6066
    iget-object v1, v1, Lddy;->d:Lddx$b;

    .line 393
    sget v2, Lctk$i;->conversation_kickoff:I

    invoke-interface {v1, v2}, Lddx$b;->b(I)V

    goto :goto_0
.end method

.method public final onTagChanged(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 404
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    if-eqz p1, :cond_1

    .line 405
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 406
    .local v0, "conversation":Lcom/alibaba/wukong/im/Conversation;
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lddy$19;->a:Lddy;

    .line 7066
    iget-object v3, v3, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 406
    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 407
    iget-object v2, p0, Lddy$19;->a:Lddy;

    invoke-static {v2, v0}, Lddy;->a(Lddy;Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0

    .line 411
    .end local v0    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    :cond_1
    return-void
.end method

.method public final onTitleChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 363
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    if-eqz p1, :cond_1

    .line 364
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 365
    .local v0, "conversation":Lcom/alibaba/wukong/im/Conversation;
    iget-object v2, p0, Lddy$19;->a:Lddy;

    .line 1066
    iget-object v2, v2, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 365
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 366
    iget-object v2, p0, Lddy$19;->a:Lddy;

    invoke-static {v2, v0}, Lddy;->a(Lddy;Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0

    .line 370
    .end local v0    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    :cond_1
    return-void
.end method

.method public final onTypingEvent(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Conversation$TypingCommand;Lcom/alibaba/wukong/im/Conversation$TypingType;)V
    .locals 4
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "command"    # Lcom/alibaba/wukong/im/Conversation$TypingCommand;
    .param p3, "type"    # Lcom/alibaba/wukong/im/Conversation$TypingType;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 429
    if-eqz p2, :cond_1

    sget-object v0, Lcom/alibaba/wukong/im/Conversation$TypingCommand;->TYPING:Lcom/alibaba/wukong/im/Conversation$TypingCommand;

    if-ne p2, v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lddy$19;->a:Lddy;

    .line 13066
    iget-object v0, v0, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 429
    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lddy$19;->a:Lddy;

    .line 14066
    iget-object v1, v1, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 429
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 430
    iget-object v0, p0, Lddy$19;->a:Lddy;

    .line 15066
    iget-object v0, v0, Lddy;->d:Lddx$b;

    .line 430
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lctk$i;->im_typing:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lddx$b;->a(Ljava/lang/String;Z)V

    .line 431
    iget-object v0, p0, Lddy$19;->a:Lddy;

    .line 16066
    iget-object v0, v0, Lddy;->i:Landroid/os/Handler;

    .line 431
    if-eqz v0, :cond_0

    iget-object v0, p0, Lddy$19;->a:Lddy;

    .line 17066
    iget-object v0, v0, Lddy;->k:Ljava/lang/Runnable;

    .line 431
    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lddy$19;->a:Lddy;

    .line 18066
    iget-object v0, v0, Lddy;->i:Landroid/os/Handler;

    .line 432
    iget-object v1, p0, Lddy$19;->a:Lddy;

    .line 19066
    iget-object v1, v1, Lddy;->k:Ljava/lang/Runnable;

    .line 432
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 433
    iget-object v0, p0, Lddy$19;->a:Lddy;

    .line 20066
    iget-object v0, v0, Lddy;->i:Landroid/os/Handler;

    .line 433
    iget-object v1, p0, Lddy$19;->a:Lddy;

    .line 21066
    iget-object v1, v1, Lddy;->k:Ljava/lang/Runnable;

    .line 433
    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    if-eqz p2, :cond_0

    sget-object v0, Lcom/alibaba/wukong/im/Conversation$TypingCommand;->CANCEL:Lcom/alibaba/wukong/im/Conversation$TypingCommand;

    if-ne p2, v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lddy$19;->a:Lddy;

    .line 22066
    iget-object v0, v0, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 435
    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lddy$19;->a:Lddy;

    .line 23066
    iget-object v1, v1, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 435
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lddy$19;->a:Lddy;

    .line 24066
    iget-object v0, v0, Lddy;->i:Landroid/os/Handler;

    .line 436
    if-eqz v0, :cond_0

    iget-object v0, p0, Lddy$19;->a:Lddy;

    .line 25066
    iget-object v0, v0, Lddy;->k:Ljava/lang/Runnable;

    .line 436
    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lddy$19;->a:Lddy;

    .line 26066
    iget-object v0, v0, Lddy;->i:Landroid/os/Handler;

    .line 437
    iget-object v1, p0, Lddy$19;->a:Lddy;

    .line 27066
    iget-object v1, v1, Lddy;->k:Ljava/lang/Runnable;

    .line 437
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 438
    iget-object v0, p0, Lddy$19;->a:Lddy;

    .line 28066
    iget-object v0, v0, Lddy;->i:Landroid/os/Handler;

    .line 438
    iget-object v1, p0, Lddy$19;->a:Lddy;

    .line 29066
    iget-object v1, v1, Lddy;->k:Ljava/lang/Runnable;

    .line 438
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
