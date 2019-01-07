.class public Lcom/taobao/weex/ui/module/WXTimerModule;
.super Lcom/taobao/weex/common/WXModule;
.source "WXTimerModule.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/taobao/weex/common/Destroyable;


# static fields
.field private static final TAG:Ljava/lang/String; = "timer"


# instance fields
.field private antiIntAutoBoxing:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/taobao/weex/common/WXModule;-><init>()V

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->getJSLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/module/WXTimerModule;->handler:Landroid/os/Handler;

    .line 64
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/module/WXTimerModule;->antiIntAutoBoxing:Landroid/util/SparseArray;

    .line 65
    return-void
.end method

.method private createTimerArgs(IIZ)[Lcom/taobao/weex/bridge/WXJSObject;
    .locals 9
    .param p1, "instanceId"    # I
    .param p2, "funcId"    # I
    .param p3, "keepAlive"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v0, "argsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v1, Lcom/taobao/weex/bridge/WXHashMap;

    invoke-direct {v1}, Lcom/taobao/weex/bridge/WXHashMap;-><init>()V

    .line 160
    .local v1, "task":Lcom/taobao/weex/bridge/WXHashMap;, "Lcom/taobao/weex/bridge/WXHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v3, "method"

    const-string/jumbo v4, "callback"

    invoke-virtual {v1, v3, v4}, Lcom/taobao/weex/bridge/WXHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string/jumbo v3, "args"

    invoke-virtual {v1, v3, v0}, Lcom/taobao/weex/bridge/WXHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    new-array v2, v7, [Ljava/lang/Object;

    aput-object v1, v2, v6

    .line 163
    .local v2, "tasks":[Ljava/lang/Object;
    new-array v3, v8, [Lcom/taobao/weex/bridge/WXJSObject;

    new-instance v4, Lcom/taobao/weex/bridge/WXJSObject;

    .line 164
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v8, v5}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    aput-object v4, v3, v6

    new-instance v4, Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v5, 0x3

    .line 166
    invoke-static {v2}, Lcom/taobao/weex/utils/WXJsonUtils;->fromObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    aput-object v4, v3, v7

    return-object v3
.end method

.method private postMessage(IIII)V
    .locals 4
    .param p1, "what"    # I
    .param p2, "funcId"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .param p3, "interval"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p4, "instanceId"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 188
    if-ltz p3, :cond_0

    if-gtz p2, :cond_1

    .line 189
    :cond_0
    const-string/jumbo v1, "timer"

    const-string/jumbo v2, "interval < 0 or funcId <=0"

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/taobao/weex/ui/module/WXTimerModule;->antiIntAutoBoxing:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 192
    iget-object v1, p0, Lcom/taobao/weex/ui/module/WXTimerModule;->antiIntAutoBoxing:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 194
    :cond_2
    iget-object v1, p0, Lcom/taobao/weex/ui/module/WXTimerModule;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/taobao/weex/ui/module/WXTimerModule;->antiIntAutoBoxing:Landroid/util/SparseArray;

    .line 195
    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, p4, p3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 196
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/taobao/weex/ui/module/WXTimerModule;->handler:Landroid/os/Handler;

    int-to-long v2, p3

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private postOrHoldMessage(IIII)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "funcId"    # I
    .param p3, "interval"    # I
    .param p4, "instanceId"    # I

    .prologue
    .line 170
    iget-object v0, p0, Lcom/taobao/weex/ui/module/WXTimerModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->isPreRenderMode()Z

    .line 173
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/ui/module/WXTimerModule;->postMessage(IIII)V

    .line 175
    return-void
.end method

.method private removeOrHoldMessage(II)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "funcId"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 178
    iget-object v0, p0, Lcom/taobao/weex/ui/module/WXTimerModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->isPreRenderMode()Z

    .line 181
    iget-object v0, p0, Lcom/taobao/weex/ui/module/WXTimerModule;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/taobao/weex/ui/module/WXTimerModule;->antiIntAutoBoxing:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 183
    return-void
.end method


# virtual methods
.method public clearInterval(I)V
    .locals 1
    .param p1, "funcId"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .prologue
    .line 98
    if-gtz p1, :cond_0

    .line 102
    :goto_0
    return-void

    .line 101
    :cond_0
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/taobao/weex/ui/module/WXTimerModule;->removeOrHoldMessage(II)V

    goto :goto_0
.end method

.method public clearTimeout(I)V
    .locals 1
    .param p1, "funcId"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .prologue
    .line 90
    if-gtz p1, :cond_0

    .line 94
    :goto_0
    return-void

    .line 93
    :cond_0
    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Lcom/taobao/weex/ui/module/WXTimerModule;->removeOrHoldMessage(II)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 106
    iget-object v0, p0, Lcom/taobao/weex/ui/module/WXTimerModule;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 107
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const-string/jumbo v0, "timer"

    const-string/jumbo v1, "Timer Module removeAllMessages: "

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/module/WXTimerModule;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lcom/taobao/weex/ui/module/WXTimerModule;->antiIntAutoBoxing:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 113
    :cond_1
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 117
    const/4 v6, 0x0

    .line 119
    .local v6, "ret":Z
    if-eqz p1, :cond_1

    .line 120
    iget v7, p1, Landroid/os/Message;->what:I

    .line 121
    .local v7, "what":I
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    const-string/jumbo v0, "timer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Timer Module handleMessage : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_0
    packed-switch v7, :pswitch_data_0

    .line 146
    .end local v7    # "what":I
    :cond_1
    :goto_0
    return v6

    .line 126
    .restart local v7    # "what":I
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 129
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v0, v3}, Lcom/taobao/weex/ui/module/WXTimerModule;->createTimerArgs(IIZ)[Lcom/taobao/weex/bridge/WXJSObject;

    move-result-object v4

    .line 130
    .local v4, "args":[Lcom/taobao/weex/bridge/WXJSObject;
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "callJS"

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeExecJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Z)V

    .line 131
    const/4 v6, 0x1

    .line 132
    goto :goto_0

    .line 134
    .end local v4    # "args":[Lcom/taobao/weex/bridge/WXJSObject;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 137
    const/16 v1, 0xc

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1, v0, v3, v8}, Lcom/taobao/weex/ui/module/WXTimerModule;->postMessage(IIII)V

    .line 138
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v1, v0, v5}, Lcom/taobao/weex/ui/module/WXTimerModule;->createTimerArgs(IIZ)[Lcom/taobao/weex/bridge/WXJSObject;

    move-result-object v4

    .line 139
    .restart local v4    # "args":[Lcom/taobao/weex/bridge/WXJSObject;
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "callJS"

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeExecJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Z)V

    .line 140
    const/4 v6, 0x1

    goto :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 151
    iput-object p1, p0, Lcom/taobao/weex/ui/module/WXTimerModule;->handler:Landroid/os/Handler;

    .line 152
    return-void
.end method

.method public setInterval(IF)V
    .locals 3
    .param p1, "funcId"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .param p2, "interval"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 80
    iget-object v0, p0, Lcom/taobao/weex/ui/module/WXTimerModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_0

    .line 81
    const/16 v0, 0xc

    float-to-int v1, p2

    iget-object v2, p0, Lcom/taobao/weex/ui/module/WXTimerModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/weex/utils/WXUtils;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/taobao/weex/ui/module/WXTimerModule;->postOrHoldMessage(IIII)V

    .line 82
    iget-object v0, p0, Lcom/taobao/weex/ui/module/WXTimerModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getWXPerformance()Lcom/taobao/weex/common/WXPerformance;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/taobao/weex/ui/module/WXTimerModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getWXPerformance()Lcom/taobao/weex/common/WXPerformance;

    move-result-object v0

    iget v1, v0, Lcom/taobao/weex/common/WXPerformance;->timerInvokeCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/taobao/weex/common/WXPerformance;->timerInvokeCount:I

    .line 86
    :cond_0
    return-void
.end method

.method public setTimeout(IF)V
    .locals 3
    .param p1, "funcId"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .param p2, "delay"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 70
    iget-object v0, p0, Lcom/taobao/weex/ui/module/WXTimerModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_0

    .line 71
    const/16 v0, 0xb

    float-to-int v1, p2

    iget-object v2, p0, Lcom/taobao/weex/ui/module/WXTimerModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/weex/utils/WXUtils;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/taobao/weex/ui/module/WXTimerModule;->postOrHoldMessage(IIII)V

    .line 72
    iget-object v0, p0, Lcom/taobao/weex/ui/module/WXTimerModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getWXPerformance()Lcom/taobao/weex/common/WXPerformance;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/taobao/weex/ui/module/WXTimerModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getWXPerformance()Lcom/taobao/weex/common/WXPerformance;

    move-result-object v0

    iget v1, v0, Lcom/taobao/weex/common/WXPerformance;->timerInvokeCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/taobao/weex/common/WXPerformance;->timerInvokeCount:I

    .line 76
    :cond_0
    return-void
.end method
