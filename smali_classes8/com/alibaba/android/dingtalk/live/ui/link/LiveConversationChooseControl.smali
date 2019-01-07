.class public Lcom/alibaba/android/dingtalk/live/ui/link/LiveConversationChooseControl;
.super Lcom/alibaba/android/dingtalk/userbase/ChooseControlAdapter;
.source "LiveConversationChooseControl.java"


# static fields
.field private static final serialVersionUID:J = 0xaea53af0bb57c7aL


# instance fields
.field private mSharedCids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSrcCid:Ljava/lang/String;

.field private mStoppedCids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "srcCid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, "sharedCids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "stoppedCids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/userbase/ChooseControlAdapter;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveConversationChooseControl;->mSrcCid:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveConversationChooseControl;->mSharedCids:Ljava/util/List;

    .line 31
    iput-object p3, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveConversationChooseControl;->mStoppedCids:Ljava/util/List;

    .line 32
    return-void
.end method

.method private getConversationId(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Ljava/lang/String;
    .locals 3
    .param p1, "dingtalkConversation"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 71
    if-nez p1, :cond_1

    .line 72
    const/4 v0, 0x0

    .line 80
    :cond_0
    :goto_0
    return-object v0

    .line 74
    :cond_1
    const/4 v0, 0x0

    .line 75
    .local v0, "cid":Ljava/lang/String;
    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_2

    .line 76
    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 77
    :cond_2
    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v2, "cid"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cid":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "cid":Ljava/lang/String;
    goto :goto_0
.end method

.method private hasLive(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 99
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;>;"
    if-eqz p1, :cond_1

    .line 100
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;

    .line 101
    .local v0, "object":Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;
    if-eqz v0, :cond_0

    .line 104
    iget v2, v0, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;->type:I

    sget-object v3, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject$FloatWindowType;->LIVING:Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject$FloatWindowType;

    iget v3, v3, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject$FloatWindowType;->type:I

    if-ne v2, v3, :cond_0

    .line 105
    const/4 v1, 0x1

    .line 110
    .end local v0    # "object":Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isDisable(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 6
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 84
    if-nez p1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v0

    .line 88
    :cond_1
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->getOwnerId()J

    move-result-wide v2

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 89
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->isUserBanWords()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 91
    goto :goto_0

    .line 94
    :cond_2
    invoke-static {p1}, Lbyj;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public isDisable(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 48
    instance-of v5, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-nez v5, :cond_1

    .line 67
    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v1, p1

    .line 52
    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 53
    .local v1, "dingtalkConversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    invoke-direct {p0, v1}, Lcom/alibaba/android/dingtalk/live/ui/link/LiveConversationChooseControl;->getConversationId(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "cid":Ljava/lang/String;
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveConversationChooseControl;->mStoppedCids:Ljava/util/List;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveConversationChooseControl;->mStoppedCids:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    .line 57
    goto :goto_0

    .line 60
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v5

    .line 61
    invoke-virtual {v5, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->b(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Ljava/util/List;

    move-result-object v2

    .line 62
    .local v2, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;>;"
    invoke-direct {p0, v2}, Lcom/alibaba/android/dingtalk/live/ui/link/LiveConversationChooseControl;->hasLive(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v3, v4

    .line 64
    goto :goto_0

    .line 67
    :cond_3
    iget-object v5, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v5, :cond_0

    iget-object v5, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {p0, v5}, Lcom/alibaba/android/dingtalk/live/ui/link/LiveConversationChooseControl;->isDisable(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    goto :goto_0
.end method

.method public isHasSelected(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 36
    instance-of v3, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-nez v3, :cond_1

    .line 43
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v1, p1

    .line 40
    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 41
    .local v1, "dingtalkConversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    invoke-direct {p0, v1}, Lcom/alibaba/android/dingtalk/live/ui/link/LiveConversationChooseControl;->getConversationId(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "cid":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveConversationChooseControl;->mSrcCid:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveConversationChooseControl;->mSharedCids:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveConversationChooseControl;->mSharedCids:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method
