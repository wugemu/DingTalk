.class public abstract Ldet;
.super Ljava/lang/Object;
.source "ChatMsgListGuideTipManager.java"


# instance fields
.field protected a:Ldqq;

.field protected b:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

.field protected c:Landroid/app/Activity;

.field protected d:Z

.field protected e:Lcom/alibaba/wukong/im/Message;

.field protected f:Landroid/view/View;

.field protected g:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ldqq;Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "chatMsgListModel"    # Ldqq;
    .param p3, "chatMsgListView"    # Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Ldet;->c:Landroid/app/Activity;

    .line 33
    iput-object p2, p0, Ldet;->a:Ldqq;

    .line 34
    iput-object p3, p0, Ldet;->b:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    .line 36
    iget-object v0, p0, Ldet;->c:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Activity is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    return-void
.end method

.method static synthetic a(Ldet;)V
    .locals 0
    .param p0, "x0"    # Ldet;

    .prologue
    .line 26
    invoke-direct {p0}, Ldet;->e()V

    return-void
.end method

.method static synthetic b(Ldet;)V
    .locals 0
    .param p0, "x0"    # Ldet;

    .prologue
    .line 26
    invoke-direct {p0}, Ldet;->f()V

    return-void
.end method

.method private e()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 139
    iget-boolean v4, p0, Ldet;->d:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Ldet;->e:Lcom/alibaba/wukong/im/Message;

    if-eqz v4, :cond_3

    iget-object v4, p0, Ldet;->e:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Ldet;->e:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    const/16 v5, 0x190

    if-eq v4, v5, :cond_3

    iget-object v4, p0, Ldet;->a:Ldqq;

    if-eqz v4, :cond_3

    iget-object v4, p0, Ldet;->a:Ldqq;

    .line 140
    invoke-virtual {v4}, Ldqq;->a()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Ldet;->b:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    if-eqz v4, :cond_3

    .line 142
    iget-object v4, p0, Ldet;->f:Landroid/view/View;

    if-nez v4, :cond_0

    .line 143
    iget-object v4, p0, Ldet;->c:Landroid/app/Activity;

    sget v5, Lctk$g;->small_text_tip:I

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Ldet;->f:Landroid/view/View;

    .line 145
    iget-object v4, p0, Ldet;->f:Landroid/view/View;

    new-instance v5, Ldet$1;

    invoke-direct {v5, p0}, Ldet$1;-><init>(Ldet;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v4, p0, Ldet;->f:Landroid/view/View;

    sget v5, Lctk$f;->small_text_tip_textview:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Ldet;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v4, p0, Ldet;->c:Landroid/app/Activity;

    sget v5, Lctk$f;->list_container:I

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 155
    .local v3, "listContainer":Landroid/view/ViewGroup;
    iget-object v4, p0, Ldet;->f:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 157
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 158
    .local v0, "handler":Landroid/os/Handler;
    new-instance v4, Ldet$2;

    invoke-direct {v4, p0, v0}, Ldet$2;-><init>(Ldet;Landroid/os/Handler;)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 173
    .end local v0    # "handler":Landroid/os/Handler;
    .end local v3    # "listContainer":Landroid/view/ViewGroup;
    :cond_0
    iget-object v4, p0, Ldet;->a:Ldqq;

    invoke-virtual {v4}, Ldqq;->a()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Ldet;->e:Lcom/alibaba/wukong/im/Message;

    invoke-static {v4, v5}, Ldqq;->a(Ljava/util/List;Lcom/alibaba/wukong/im/Message;)I

    move-result v1

    .line 175
    .local v1, "index":I
    iget-object v4, p0, Ldet;->b:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-virtual {v4, v1}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a(I)Landroid/view/View;

    move-result-object v2

    .line 177
    .local v2, "itemView":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 178
    invoke-virtual {p0, v2}, Ldet;->a(Landroid/view/View;)V

    .line 2189
    iget-object v4, p0, Ldet;->f:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 2190
    iget-object v4, p0, Ldet;->f:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2192
    iget-boolean v4, p0, Ldet;->g:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Ldet;->f:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Ldet;->f:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    if-lez v4, :cond_1

    .line 2193
    iget-object v4, p0, Ldet;->c:Landroid/app/Activity;

    sget v5, Lctk$a;->alpha_pop:I

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    .line 2194
    iget-object v5, p0, Ldet;->f:Landroid/view/View;

    sget v6, Lctk$f;->small_text_tip:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2195
    const/4 v4, 0x1

    iput-boolean v4, p0, Ldet;->g:Z

    .line 186
    .end local v1    # "index":I
    .end local v2    # "itemView":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 181
    .restart local v1    # "index":I
    .restart local v2    # "itemView":Landroid/view/View;
    :cond_2
    invoke-direct {p0}, Ldet;->f()V

    goto :goto_0

    .line 184
    .end local v1    # "index":I
    .end local v2    # "itemView":Landroid/view/View;
    :cond_3
    invoke-direct {p0}, Ldet;->f()V

    goto :goto_0
.end method

.method private e(Lcom/alibaba/wukong/im/Message;)V
    .locals 4
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 129
    invoke-static {}, Ldes;->a()Ldes;

    move-result-object v0

    .line 1050
    if-nez p1, :cond_1

    move v0, v1

    .line 129
    :goto_0
    if-nez v0, :cond_0

    iget-boolean v0, p0, Ldet;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ldet;->e:Lcom/alibaba/wukong/im/Message;

    if-nez v0, :cond_0

    .line 130
    iput-object p1, p0, Ldet;->e:Lcom/alibaba/wukong/im/Message;

    .line 131
    invoke-direct {p0}, Ldet;->e()V

    .line 132
    invoke-virtual {p0}, Ldet;->b()V

    .line 133
    invoke-static {}, Ldes;->a()Ldes;

    move-result-object v0

    iget-object v1, p0, Ldet;->e:Lcom/alibaba/wukong/im/Message;

    .line 2034
    if-eqz v1, :cond_0

    .line 2038
    iget-object v0, v0, Ldes;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_0
    return-void

    .line 1054
    :cond_1
    iget-object v0, v0, Ldes;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 2022
    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    goto :goto_0
.end method

.method private f()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 201
    iget-object v0, p0, Ldet;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Ldet;->f:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 204
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Ldet;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ldet;->e:Lcom/alibaba/wukong/im/Message;

    if-eqz v0, :cond_0

    .line 57
    invoke-direct {p0}, Ldet;->e()V

    .line 59
    :cond_0
    return-void
.end method

.method protected abstract a(Landroid/view/View;)V
.end method

.method public final a(Lcom/alibaba/wukong/im/Message;)V
    .locals 1
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 64
    iget-boolean v0, p0, Ldet;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ldet;->e:Lcom/alibaba/wukong/im/Message;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p0, p1}, Ldet;->d(Lcom/alibaba/wukong/im/Message;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    invoke-direct {p0, p1}, Ldet;->e(Lcom/alibaba/wukong/im/Message;)V

    goto :goto_0
.end method

.method protected abstract b()V
.end method

.method public final b(Lcom/alibaba/wukong/im/Message;)V
    .locals 4
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 75
    iget-boolean v0, p0, Ldet;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ldet;->e:Lcom/alibaba/wukong/im/Message;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 76
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0, p1}, Ldet;->d(Lcom/alibaba/wukong/im/Message;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    invoke-direct {p0, p1}, Ldet;->e(Lcom/alibaba/wukong/im/Message;)V

    goto :goto_0
.end method

.method protected abstract c()Ljava/lang/String;
.end method

.method public final c(Lcom/alibaba/wukong/im/Message;)V
    .locals 4
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 88
    iget-boolean v0, p0, Ldet;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Ldet;->e:Lcom/alibaba/wukong/im/Message;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 89
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v0

    sget-object v1, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENT:Lcom/alibaba/wukong/im/Message$MessageStatus;

    if-ne v0, v1, :cond_1

    .line 91
    iget-object v0, p0, Ldet;->e:Lcom/alibaba/wukong/im/Message;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    iput-object p1, p0, Ldet;->e:Lcom/alibaba/wukong/im/Message;

    .line 95
    invoke-virtual {p0, p1}, Ldet;->d(Lcom/alibaba/wukong/im/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p0}, Ldet;->d()V

    .line 99
    :cond_0
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->privateTag()J

    move-result-wide v0

    sget-object v2, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 100
    invoke-virtual {p0}, Ldet;->d()V

    .line 105
    :cond_1
    return-void
.end method

.method protected final d()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 207
    const/4 v1, 0x1

    iput-boolean v1, p0, Ldet;->d:Z

    .line 208
    invoke-static {}, Ldes;->a()Ldes;

    move-result-object v1

    iget-object v2, p0, Ldet;->e:Lcom/alibaba/wukong/im/Message;

    .line 3042
    if-eqz v2, :cond_0

    .line 3046
    iget-object v1, v1, Ldes;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    :cond_0
    iget-boolean v1, p0, Ldet;->g:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Ldet;->f:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 211
    iget-object v1, p0, Ldet;->c:Landroid/app/Activity;

    sget v2, Lctk$a;->alpha_out:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 212
    .local v0, "anim":Landroid/view/animation/Animation;
    new-instance v1, Ldet$3;

    invoke-direct {v1, p0}, Ldet$3;-><init>(Ldet;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 229
    iget-object v1, p0, Ldet;->f:Landroid/view/View;

    sget v2, Lctk$f;->small_text_tip:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 230
    const/4 v1, 0x0

    iput-boolean v1, p0, Ldet;->g:Z

    .line 232
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_1
    return-void
.end method

.method protected abstract d(Lcom/alibaba/wukong/im/Message;)Z
.end method
