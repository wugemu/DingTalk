.class public final Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;
.super Ljava/lang/Object;
.source "BanWordsCheckRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$BanMode;,
        Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;,
        Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$b;
    }
.end annotation


# instance fields
.field a:Lcom/alibaba/wukong/im/Conversation;

.field private b:Ljava/lang/String;

.field private c:Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$b;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/os/Handler;

.field private f:Z

.field private g:Landroid/app/Activity;

.field private h:Landroid/os/Handler$Callback;

.field private i:Lcom/alibaba/wukong/im/ConversationChangeListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;->b:Ljava/lang/String;

    .line 114
    new-instance v0, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$1;-><init>(Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;->h:Landroid/os/Handler$Callback;

    .line 145
    new-instance v0, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$2;-><init>(Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;->i:Lcom/alibaba/wukong/im/ConversationChangeListener;

    .line 34
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;->g:Landroid/app/Activity;

    .line 35
    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;->d:Ljava/util/List;

    .line 37
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;->h:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;->e:Landroid/os/Handler;

    .line 38
    new-instance v0, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;

    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$BanMode;->NOT_BANNED:Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$BanMode;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;-><init>(Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$BanMode;J)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;->c:Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;

    .line 39
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;->c()V

    .line 2065
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;->i:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-static {v0}, Liau;->a(Lcom/alibaba/wukong/im/ConversationChangeListener;)V

    .line 2066
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;->d()V

    .line 41
    return-void
.end method

.method private d()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v6, 0x3e8

    .line 70
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;->e:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 71
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->isUserBanWords()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;->e()J

    move-result-wide v0

    .line 73
    .local v0, "distance":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;->e:Landroid/os/Handler;

    const-wide/16 v4, 0xc8

    add-long/2addr v4, v0

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 77
    .end local v0    # "distance":J
    :cond_0
    return-void
.end method

.method private e()J
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 80
    invoke-static {}, Lcom/laiwang/protocol/android/LWP;->currentServerTime()J

    move-result-wide v0

    .line 81
    .local v0, "currentTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 84
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->banWordsTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    return-wide v2
.end method


# virtual methods
.method public final a()Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    .line 49
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 2441
    if-eqz v2, :cond_0

    invoke-static {v2}, Ldjl;->A(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2442
    const-string/jumbo v3, "1"

    const-string/jumbo v4, "conv_input_status"

    .line 2443
    invoke-interface {v2, v4}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2442
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 49
    :goto_0
    if-eqz v2, :cond_1

    .line 50
    new-instance v2, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;

    sget-object v3, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$BanMode;->BANNED_ADVISE:Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$BanMode;

    invoke-direct {v2, v3, v6, v7}, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;-><init>(Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$BanMode;J)V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;->c:Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;

    .line 61
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;->c:Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;

    return-object v2

    .line 2445
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 51
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->isUserBanWords()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;->f:Z

    if-nez v2, :cond_3

    .line 52
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->isBanWords()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 53
    new-instance v2, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;

    sget-object v3, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$BanMode;->BANNED_ALL:Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$BanMode;

    invoke-direct {v2, v3, v6, v7}, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;-><init>(Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$BanMode;J)V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;->c:Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;

    goto :goto_1

    .line 55
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;->e()J

    move-result-wide v0

    .line 56
    .local v0, "leftTime":J
    new-instance v2, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;

    sget-object v3, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$BanMode;->BANNED_SPECIFIC:Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$BanMode;

    invoke-direct {v2, v3, v0, v1}, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;-><init>(Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$BanMode;J)V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;->c:Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;

    goto :goto_1

    .line 59
    .end local v0    # "leftTime":J
    :cond_3
    new-instance v2, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;

    sget-object v3, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$BanMode;->NOT_BANNED:Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$BanMode;

    invoke-direct {v2, v3, v6, v7}, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;-><init>(Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$BanMode;J)V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;->c:Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;

    goto :goto_1
.end method

.method public final a(Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$b;)V
    .locals 1
    .param p1, "listener"    # Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$b;

    .prologue
    .line 93
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 110
    .line 3088
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;->i:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-static {v0}, Liau;->b(Lcom/alibaba/wukong/im/ConversationChangeListener;)V

    .line 3089
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 112
    return-void
.end method

.method public final b(Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$b;)V
    .locals 1
    .param p1, "listener"    # Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$b;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 100
    return-void
.end method

.method c()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 128
    .line 4044
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;->a:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->getOwnerId()J

    move-result-wide v4

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getCurrentUid()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 4045
    invoke-static {v1}, Ldjt;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v2

    .line 128
    :goto_0
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;->f:Z

    .line 129
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;->c:Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;

    .line 130
    .local v0, "lastBanInfo":Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;->a()Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;

    move-result-object v1

    .line 4314
    if-eqz v1, :cond_2

    .line 4317
    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;->a:Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$BanMode;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;->a:Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$BanMode;

    if-ne v4, v1, :cond_2

    .line 130
    :goto_1
    if-nez v2, :cond_4

    .line 5137
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 5138
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;->d:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5139
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$b;

    .line 5140
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;->c:Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;

    invoke-interface {v1, v3}, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$b;->a(Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;)V

    goto :goto_2

    .end local v0    # "lastBanInfo":Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;
    :cond_1
    move v1, v3

    .line 4045
    goto :goto_0

    .restart local v0    # "lastBanInfo":Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;
    :cond_2
    move v2, v3

    .line 4317
    goto :goto_1

    .line 132
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;->d()V

    .line 134
    :cond_4
    return-void
.end method
