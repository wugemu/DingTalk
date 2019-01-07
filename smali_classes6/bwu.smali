.class public final Lbwu;
.super Ljava/lang/Object;
.source "FullPlayerPresenter.java"

# interfaces
.implements Lbwt$a;


# instance fields
.field a:Lbwt$b;

.field private b:Lbwf;

.field private c:Ljjx$a;


# direct methods
.method constructor <init>(Lbwt$b;)V
    .locals 1
    .param p1, "view"    # Lbwt$b;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lbwu;->a:Lbwt$b;

    .line 63
    iget-object v0, p0, Lbwu;->a:Lbwt$b;

    invoke-interface {v0, p0}, Lbwt$b;->setPresenter(Lcjd;)V

    .line 64
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 68
    .line 1173
    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v0

    .line 2043
    iget-object v2, v0, Lbwr;->c:Ljava/lang/String;

    .line 1174
    new-instance v0, Lbwu$3;

    invoke-direct {v0, p0}, Lbwu$3;-><init>(Lbwu;)V

    .line 1194
    iget-object v1, p0, Lbwu;->a:Lbwt$b;

    invoke-interface {v1}, Lbwt$b;->a()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1195
    const-class v1, Lcom/alibaba/wukong/Callback;

    iget-object v3, p0, Lbwu;->a:Lbwt$b;

    invoke-interface {v3}, Lbwt$b;->a()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    move-object v1, v0

    .line 1197
    :goto_0
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 2216
    iget-object v0, p0, Lbwu;->b:Lbwf;

    if-nez v0, :cond_0

    .line 2217
    new-instance v0, Lbwu$4;

    invoke-direct {v0, p0}, Lbwu$4;-><init>(Lbwu;)V

    iput-object v0, p0, Lbwu;->b:Lbwf;

    .line 2248
    invoke-static {}, Lbwg;->a()Lbwg;

    move-result-object v0

    iget-object v1, p0, Lbwu;->b:Lbwf;

    invoke-virtual {v0, v1}, Lbwg;->a(Lbwf;)V

    .line 2251
    :cond_0
    iget-object v0, p0, Lbwu;->c:Ljjx$a;

    if-nez v0, :cond_1

    .line 2252
    new-instance v0, Lbwu$5;

    invoke-direct {v0, p0}, Lbwu$5;-><init>(Lbwu;)V

    iput-object v0, p0, Lbwu;->c:Ljjx$a;

    .line 2274
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v0

    invoke-virtual {v0}, Lbws;->b()Ljjx;

    move-result-object v0

    .line 2275
    iget-object v1, p0, Lbwu;->c:Ljjx$a;

    invoke-virtual {v0, v1}, Ljjx;->a(Ljjx$a;)V

    .line 70
    :cond_1
    return-void

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewParent;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "contentView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewParent;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v3, -0x1

    .line 74
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 99
    .end local p3    # "parent":Landroid/view/ViewParent;
    :cond_0
    :goto_0
    return-void

    .line 79
    .restart local p3    # "parent":Landroid/view/ViewParent;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 80
    .local v0, "oldParent":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 81
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "oldParent":Landroid/view/ViewParent;
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 85
    :cond_2
    instance-of v2, p3, Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    .line 86
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 89
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    check-cast p3, Landroid/view/ViewGroup;

    .end local p3    # "parent":Landroid/view/ViewParent;
    invoke-virtual {p3, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 94
    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v2

    invoke-virtual {v2}, Lbwr;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 95
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 98
    :cond_4
    iget-object v2, p0, Lbwu;->a:Lbwt$b;

    invoke-interface {v2}, Lbwt$b;->e()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 141
    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v2

    .line 4043
    iget-object v1, v2, Lbwr;->c:Ljava/lang/String;

    .line 142
    .local v1, "cid":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    new-instance v0, Lbwu$2;

    invoke-direct {v0, p0, p1}, Lbwu$2;-><init>(Lbwu;Ljava/lang/String;)V

    .line 164
    .local v0, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-object v2, p0, Lbwu;->a:Lbwt$b;

    invoke-interface {v2}, Lbwt$b;->a()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 165
    const-class v2, Lcom/alibaba/wukong/Callback;

    iget-object v3, p0, Lbwu;->a:Lbwt$b;

    invoke-interface {v3}, Lbwt$b;->a()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Conversation;>;"
    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 167
    .restart local v0    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Conversation;>;"
    :cond_2
    const-class v2, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/ConversationService;

    invoke-interface {v2, v0, v1}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 104
    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v4

    .line 3043
    iget-object v1, v4, Lbwr;->c:Ljava/lang/String;

    .line 105
    .local v1, "cid":Ljava/lang/String;
    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v4

    .line 4035
    iget-object v2, v4, Lbwr;->b:Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    .line 106
    .local v2, "object":Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v2, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    new-instance v3, Lcom/alibaba/android/dingtalk/live/rpc/model/StopLiveReqObject;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalk/live/rpc/model/StopLiveReqObject;-><init>()V

    .line 110
    .local v3, "reqObject":Lcom/alibaba/android/dingtalk/live/rpc/model/StopLiveReqObject;
    iput-object v1, v3, Lcom/alibaba/android/dingtalk/live/rpc/model/StopLiveReqObject;->cid:Ljava/lang/String;

    .line 111
    iget-object v4, v2, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;->uuid:Ljava/lang/String;

    iput-object v4, v3, Lcom/alibaba/android/dingtalk/live/rpc/model/StopLiveReqObject;->liveUuid:Ljava/lang/String;

    .line 112
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->d()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alibaba/android/dingtalk/live/rpc/model/StopLiveReqObject;->nickname:Ljava/lang/String;

    .line 114
    new-instance v0, Lbwu$1;

    invoke-direct {v0, p0}, Lbwu$1;-><init>(Lbwu;)V

    .line 132
    .local v0, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/android/dingtalk/live/rpc/model/StopLiveRspObject;>;"
    iget-object v4, p0, Lbwu;->a:Lbwt$b;

    invoke-interface {v4}, Lbwt$b;->a()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 133
    const-class v4, Lcom/alibaba/wukong/Callback;

    iget-object v5, p0, Lbwu;->a:Lbwt$b;

    invoke-interface {v5}, Lbwt$b;->a()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/android/dingtalk/live/rpc/model/StopLiveRspObject;>;"
    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 135
    .restart local v0    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/android/dingtalk/live/rpc/model/StopLiveRspObject;>;"
    :cond_2
    invoke-static {}, Lbxe;->a()Lbxe;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Lbxe;->a(Lcom/alibaba/android/dingtalk/live/rpc/model/StopLiveReqObject;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 325
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v1

    const/4 v2, 0x1

    .line 4505
    iput v2, v1, Lbws;->e:I

    .line 326
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v1

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 5493
    iput-object v2, v1, Lbws;->i:Ljava/lang/String;

    .line 328
    new-instance v0, Lbua;

    invoke-direct {v0}, Lbua;-><init>()V

    .line 330
    .local v0, "req":Lbua;
    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v1

    .line 6043
    iget-object v1, v1, Lbwr;->c:Ljava/lang/String;

    .line 330
    iput-object v1, v0, Lbua;->b:Ljava/lang/String;

    .line 331
    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v1

    invoke-virtual {v1}, Lbwr;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbua;->a:Ljava/lang/String;

    .line 332
    invoke-static {}, Lbxe;->a()Lbxe;

    move-result-object v1

    new-instance v2, Lbwu$6;

    invoke-direct {v2, p0}, Lbwu$6;-><init>(Lbwu;)V

    invoke-virtual {v1, v0, v2}, Lbxe;->a(Lbua;Lcom/alibaba/wukong/Callback;)V

    .line 351
    return-void
.end method

.method public final d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 355
    new-instance v0, Lbuh;

    invoke-direct {v0}, Lbuh;-><init>()V

    .line 357
    .local v0, "req":Lbuh;
    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v1

    .line 7043
    iget-object v1, v1, Lbwr;->c:Ljava/lang/String;

    .line 357
    iput-object v1, v0, Lbuh;->b:Ljava/lang/String;

    .line 358
    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v1

    invoke-virtual {v1}, Lbwr;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbuh;->a:Ljava/lang/String;

    .line 359
    invoke-static {}, Lbxe;->a()Lbxe;

    move-result-object v1

    new-instance v2, Lbwu$7;

    invoke-direct {v2, p0}, Lbwu$7;-><init>(Lbwu;)V

    invoke-virtual {v1, v0, v2}, Lbxe;->a(Lbuh;Lcom/alibaba/wukong/Callback;)V

    .line 378
    return-void
.end method

.method public final e()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 383
    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v2

    invoke-virtual {v2}, Lbwr;->d()Z

    move-result v2

    if-nez v2, :cond_0

    .line 409
    :goto_0
    return-void

    .line 386
    :cond_0
    new-instance v1, Lbvc;

    invoke-direct {v1}, Lbvc;-><init>()V

    .line 387
    .local v1, "reqModel":Lbvc;
    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v2

    .line 8043
    iget-object v2, v2, Lbwr;->c:Ljava/lang/String;

    .line 387
    iput-object v2, v1, Lbvc;->a:Ljava/lang/String;

    .line 388
    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v2

    invoke-virtual {v2}, Lbwr;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lbvc;->b:Ljava/lang/String;

    .line 389
    new-instance v0, Lbwu$8;

    invoke-direct {v0, p0}, Lbwu$8;-><init>(Lbwu;)V

    .line 407
    .local v0, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lbxh;>;"
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v2

    const-class v3, Lcom/alibaba/wukong/Callback;

    iget-object v4, p0, Lbwu;->a:Lbwt$b;

    invoke-interface {v4}, Lbwt$b;->a()Landroid/app/Activity;

    move-result-object v4

    invoke-interface {v2, v0, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lbxh;>;"
    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 408
    .restart local v0    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lbxh;>;"
    invoke-static {}, Lbxe;->a()Lbxe;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lbxe;->a(Lbvc;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 203
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 208
    return-void
.end method

.method public final i()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 212
    .line 4280
    iget-object v0, p0, Lbwu;->b:Lbwf;

    if-eqz v0, :cond_0

    .line 4281
    invoke-static {}, Lbwg;->a()Lbwg;

    move-result-object v0

    iget-object v1, p0, Lbwu;->b:Lbwf;

    invoke-virtual {v0, v1}, Lbwg;->b(Lbwf;)V

    .line 4282
    const/4 v0, 0x0

    iput-object v0, p0, Lbwu;->b:Lbwf;

    .line 4284
    :cond_0
    iget-object v0, p0, Lbwu;->c:Ljjx$a;

    if-eqz v0, :cond_1

    .line 4285
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v0

    invoke-virtual {v0}, Lbws;->b()Ljjx;

    move-result-object v0

    .line 4286
    iget-object v1, p0, Lbwu;->c:Ljjx$a;

    invoke-virtual {v0, v1}, Ljjx;->b(Ljjx$a;)V

    .line 4287
    invoke-virtual {v0}, Ljjx;->g()V

    .line 213
    :cond_1
    return-void
.end method
