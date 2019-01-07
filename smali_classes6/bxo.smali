.class public final Lbxo;
.super Ljava/lang/Object;
.source "AnchorPresenter.java"

# interfaces
.implements Lbxn$a;


# instance fields
.field a:Lbxn$b;

.field b:I

.field c:Z

.field private d:Landroid/content/BroadcastReceiver;

.field private e:Lbwf;

.field private f:Lbtv;


# direct methods
.method public constructor <init>(Lbxn$b;)V
    .locals 1
    .param p1, "view"    # Lbxn$b;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lbxo;->a:Lbxn$b;

    .line 72
    iget-object v0, p0, Lbxo;->a:Lbxn$b;

    invoke-interface {v0, p0}, Lbxn$b;->setPresenter(Lcjd;)V

    .line 73
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 152
    .line 5227
    iget-boolean v0, p0, Lbxo;->c:Z

    if-nez v0, :cond_0

    .line 5230
    invoke-static {}, Lbtq;->a()Lbtq;

    move-result-object v0

    .line 6086
    iget-object v0, v0, Lbtq;->f:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    .line 5231
    if-eqz v0, :cond_0

    .line 5234
    const-string/jumbo v1, "subscribe"

    .line 7013
    const-string/jumbo v2, "live"

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5235
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    .line 5236
    const/4 v2, 0x0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->liveUuid:Ljava/lang/String;

    new-instance v3, Lbxo$7;

    invoke-direct {v3, p0}, Lbxo$7;-><init>(Lbxo;)V

    invoke-static {v1, v2, v0, v3}, Lcom/alibaba/android/dingtalk/live/msg/PowerMessageUtils;->subscribe(Landroid/content/Context;ILjava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 153
    :cond_0
    iget-object v0, p0, Lbxo;->a:Lbxn$b;

    invoke-interface {v0}, Lbxn$b;->e()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lbxo$5;

    invoke-direct {v1, p0}, Lbxo$5;-><init>(Lbxo;)V

    invoke-static {v0, v1}, Lbyi;->a(Landroid/app/Activity;Lcjn$a;)V

    .line 171
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 6
    .param p1, "nick"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 119
    const-string/jumbo v3, "stopLive"

    .line 4013
    const-string/jumbo v4, "live"

    invoke-static {v4, v5, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-static {}, Lbtq;->a()Lbtq;

    move-result-object v3

    .line 4082
    iget-object v0, v3, Lbtq;->b:Ljava/lang/String;

    .line 121
    .local v0, "cid":Ljava/lang/String;
    invoke-static {}, Lbtq;->a()Lbtq;

    move-result-object v3

    .line 4086
    iget-object v1, v3, Lbtq;->f:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    .line 122
    .local v1, "liveInfo":Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v1, :cond_1

    .line 123
    :cond_0
    const-string/jumbo v3, "stopLive with incorrect params"

    .line 5013
    const-string/jumbo v4, "live"

    invoke-static {v4, v5, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :goto_0
    return-void

    .line 126
    :cond_1
    new-instance v2, Lcom/alibaba/android/dingtalk/live/rpc/model/StopLiveReqObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/live/rpc/model/StopLiveReqObject;-><init>()V

    .line 127
    .local v2, "reqObject":Lcom/alibaba/android/dingtalk/live/rpc/model/StopLiveReqObject;
    iput-object v0, v2, Lcom/alibaba/android/dingtalk/live/rpc/model/StopLiveReqObject;->cid:Ljava/lang/String;

    .line 128
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->liveUuid:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/live/rpc/model/StopLiveReqObject;->liveUuid:Ljava/lang/String;

    .line 129
    iput-object p1, v2, Lcom/alibaba/android/dingtalk/live/rpc/model/StopLiveReqObject;->nickname:Ljava/lang/String;

    .line 130
    invoke-static {}, Lbxe;->a()Lbxe;

    move-result-object v3

    new-instance v4, Lbxo$4;

    invoke-direct {v4, p0}, Lbxo$4;-><init>(Lbxo;)V

    invoke-virtual {v3, v2, v4}, Lbxe;->a(Lcom/alibaba/android/dingtalk/live/rpc/model/StopLiveReqObject;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method public final a(ZILjava/lang/String;Z)V
    .locals 10
    .param p1, "saveReplay"    # Z
    .param p2, "dingRemindType"    # I
    .param p3, "nick"    # Ljava/lang/String;
    .param p4, "enableLinkMic"    # Z

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 77
    invoke-static {}, Lbtq;->a()Lbtq;

    move-result-object v0

    .line 1082
    iget-object v6, v0, Lbtq;->b:Ljava/lang/String;

    .line 78
    .local v6, "cid":Ljava/lang/String;
    invoke-static {}, Lbtq;->a()Lbtq;

    move-result-object v0

    .line 1086
    iget-object v7, v0, Lbtq;->f:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    .line 79
    .local v7, "liveInfo":Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez v7, :cond_1

    .line 80
    :cond_0
    const-string/jumbo v0, "startLive with incorrect params"

    .line 2013
    const-string/jumbo v1, "live"

    invoke-static {v1, v9, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :goto_0
    return-void

    .line 83
    :cond_1
    new-instance v5, Lcom/alibaba/android/dingtalk/live/rpc/model/StartLiveReqObject;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalk/live/rpc/model/StartLiveReqObject;-><init>()V

    .line 84
    .local v5, "reqObject":Lcom/alibaba/android/dingtalk/live/rpc/model/StartLiveReqObject;
    iput-object v6, v5, Lcom/alibaba/android/dingtalk/live/rpc/model/StartLiveReqObject;->cid:Ljava/lang/String;

    .line 85
    iget-object v0, v7, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->title:Ljava/lang/String;

    iput-object v0, v5, Lcom/alibaba/android/dingtalk/live/rpc/model/StartLiveReqObject;->title:Ljava/lang/String;

    .line 86
    iget v0, v7, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->isLandscape:I

    iput v0, v5, Lcom/alibaba/android/dingtalk/live/rpc/model/StartLiveReqObject;->isLandscape:I

    .line 87
    iput-object p3, v5, Lcom/alibaba/android/dingtalk/live/rpc/model/StartLiveReqObject;->nickname:Ljava/lang/String;

    .line 88
    iget v0, v7, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->codeLevel:I

    iput v0, v5, Lcom/alibaba/android/dingtalk/live/rpc/model/StartLiveReqObject;->codeLevel:I

    .line 89
    if-eqz p1, :cond_2

    move v0, v3

    :goto_1
    iput v0, v5, Lcom/alibaba/android/dingtalk/live/rpc/model/StartLiveReqObject;->recordSeenLevel:I

    .line 91
    iput p2, v5, Lcom/alibaba/android/dingtalk/live/rpc/model/StartLiveReqObject;->dingRemindType:I

    .line 92
    iput-boolean p4, v5, Lcom/alibaba/android/dingtalk/live/rpc/model/StartLiveReqObject;->enableLinkMic:Z

    .line 93
    invoke-static {}, Lbxe;->a()Lbxe;

    move-result-object v1

    new-instance v2, Lbxo$1;

    invoke-direct {v2, p0}, Lbxo$1;-><init>(Lbxo;)V

    .line 2127
    new-instance v0, Lbxe$31;

    iget-object v4, v1, Lbxe;->a:Ljava/util/concurrent/Executor;

    invoke-direct/range {v0 .. v5}, Lbxe$31;-><init>(Lbxe;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lcom/alibaba/android/dingtalk/live/rpc/model/StartLiveReqObject;)V

    .line 2134
    invoke-virtual {v0}, Lbxe$31;->start()V

    .line 111
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "startLive, saveReplay="

    aput-object v1, v0, v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v1, 0x2

    const-string/jumbo v2, ", dingRemindType="

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 112
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, ", codeLevel="

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget v2, v5, Lcom/alibaba/android/dingtalk/live/rpc/model/StartLiveReqObject;->codeLevel:I

    .line 113
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, ", isLandscape="

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget v2, v5, Lcom/alibaba/android/dingtalk/live/rpc/model/StartLiveReqObject;->isLandscape:I

    .line 114
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 111
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3013
    const-string/jumbo v1, "live"

    invoke-static {v1, v9, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v8

    .line 89
    goto :goto_1
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 175
    .line 7421
    iget-object v0, p0, Lbxo;->d:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 7424
    new-instance v0, Lbxo$11;

    invoke-direct {v0, p0}, Lbxo$11;-><init>(Lbxo;)V

    iput-object v0, p0, Lbxo;->d:Landroid/content/BroadcastReceiver;

    .line 7461
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 7462
    const-string/jumbo v1, "intent_action_link_live_cids_changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7463
    const-string/jumbo v1, "intent_action_link_live_shared_cids"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7464
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    .line 7465
    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lbxo;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 8283
    :cond_0
    iget-object v0, p0, Lbxo;->f:Lbtv;

    if-nez v0, :cond_1

    .line 8284
    new-instance v0, Lbxo$9;

    invoke-direct {v0, p0}, Lbxo$9;-><init>(Lbxo;)V

    iput-object v0, p0, Lbxo;->f:Lbtv;

    .line 8355
    iget-object v0, p0, Lbxo;->f:Lbtv;

    invoke-virtual {v0}, Lbtv;->b()V

    .line 8356
    iget-object v0, p0, Lbxo;->f:Lbtv;

    invoke-static {}, Lbtq;->a()Lbtq;

    move-result-object v1

    .line 9082
    iget-object v1, v1, Lbtq;->b:Ljava/lang/String;

    .line 8356
    invoke-virtual {v0, v1}, Lbtv;->b(Ljava/lang/String;)V

    .line 9368
    :cond_1
    iget-object v0, p0, Lbxo;->e:Lbwf;

    if-nez v0, :cond_2

    .line 9371
    new-instance v0, Lbxo$10;

    invoke-direct {v0, p0}, Lbxo$10;-><init>(Lbxo;)V

    iput-object v0, p0, Lbxo;->e:Lbwf;

    .line 9410
    invoke-static {}, Lbwg;->a()Lbwg;

    move-result-object v0

    iget-object v1, p0, Lbxo;->e:Lbwf;

    invoke-virtual {v0, v1}, Lbwg;->a(Lbwf;)V

    .line 178
    :cond_2
    return-void
.end method

.method public final c()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 183
    new-instance v1, Lbvc;

    invoke-direct {v1}, Lbvc;-><init>()V

    .line 184
    .local v1, "reqModel":Lbvc;
    invoke-static {}, Lbtq;->a()Lbtq;

    move-result-object v2

    .line 10082
    iget-object v2, v2, Lbtq;->b:Ljava/lang/String;

    .line 184
    iput-object v2, v1, Lbvc;->a:Ljava/lang/String;

    .line 185
    invoke-static {}, Lbtq;->a()Lbtq;

    move-result-object v2

    invoke-virtual {v2}, Lbtq;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lbvc;->b:Ljava/lang/String;

    .line 186
    new-instance v0, Lbxo$6;

    invoke-direct {v0, p0}, Lbxo$6;-><init>(Lbxo;)V

    .line 204
    .local v0, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lbxh;>;"
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v2

    const-class v3, Lcom/alibaba/wukong/Callback;

    iget-object v4, p0, Lbxo;->a:Lbxn$b;

    invoke-interface {v4}, Lbxn$b;->e()Landroid/app/Activity;

    move-result-object v4

    invoke-interface {v2, v0, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lbxh;>;"
    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 205
    .restart local v0    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lbxh;>;"
    invoke-static {}, Lbxe;->a()Lbxe;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lbxe;->a(Lbvc;Lcom/alibaba/wukong/Callback;)V

    .line 206
    return-void
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 216
    return-void
.end method

.method public final i()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 220
    .line 10255
    iget-boolean v0, p0, Lbxo;->c:Z

    if-eqz v0, :cond_0

    .line 10258
    invoke-static {}, Lbtq;->a()Lbtq;

    move-result-object v0

    .line 11086
    iget-object v0, v0, Lbtq;->f:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    .line 10259
    if-eqz v0, :cond_0

    .line 10262
    const-string/jumbo v1, "unsubscribe"

    .line 12013
    const-string/jumbo v2, "live"

    invoke-static {v2, v4, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10263
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    .line 10264
    const/4 v2, 0x0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->liveUuid:Ljava/lang/String;

    new-instance v3, Lbxo$8;

    invoke-direct {v3, p0}, Lbxo$8;-><init>(Lbxo;)V

    invoke-static {v1, v2, v0, v3}, Lcom/alibaba/android/dingtalk/live/msg/PowerMessageUtils;->unsubscribe(Landroid/content/Context;ILjava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 12469
    :cond_0
    iget-object v0, p0, Lbxo;->d:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 12470
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 12471
    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lbxo;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 12472
    iput-object v4, p0, Lbxo;->d:Landroid/content/BroadcastReceiver;

    .line 13414
    :cond_1
    iget-object v0, p0, Lbxo;->e:Lbwf;

    if-eqz v0, :cond_2

    .line 13415
    invoke-static {}, Lbwg;->a()Lbwg;

    move-result-object v0

    iget-object v1, p0, Lbxo;->e:Lbwf;

    invoke-virtual {v0, v1}, Lbwg;->b(Lbwf;)V

    .line 13416
    iput-object v4, p0, Lbxo;->e:Lbwf;

    .line 14361
    :cond_2
    iget-object v0, p0, Lbxo;->f:Lbtv;

    if-eqz v0, :cond_3

    .line 14362
    iget-object v0, p0, Lbxo;->f:Lbtv;

    invoke-virtual {v0}, Lbtv;->c()V

    .line 14363
    iput-object v4, p0, Lbxo;->f:Lbtv;

    .line 224
    :cond_3
    return-void
.end method
