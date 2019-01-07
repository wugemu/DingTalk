.class public Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;
.super Ljava/lang/Object;
.source "H5EventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "H5EventDispatcher"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;
    .param p1, "x1"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "x2"    # Liny;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;->beginDispatch(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    return-void
.end method

.method private beginDispatch(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    .locals 7
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 107
    .local v2, "time":J
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;->dispatchInternal(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :cond_0
    sget-boolean v4, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 3065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 117
    .local v0, "actionName":Ljava/lang/String;
    const-wide/16 v4, 0xa

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 118
    const-string/jumbo v4, "H5EventDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Nebula cost time ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] dispatch elapse "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .end local v0    # "actionName":Ljava/lang/String;
    :cond_1
    return-void

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "H5EventDispatcher"

    invoke-static {v4, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->enableThrow()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 111
    throw v1
.end method

.method private verifyEvent(Lcom/alipay/mobile/h5container/api/H5Event;)Z
    .locals 7
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 210
    if-nez p1, :cond_0

    .line 211
    const-string/jumbo v5, "H5EventDispatcher"

    const-string/jumbo v6, "invalid event body!"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :goto_0
    return v4

    .line 9081
    :cond_0
    iget-object v3, p1, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 216
    .local v3, "target":Liob;
    if-nez v3, :cond_1

    .line 217
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v1

    .line 218
    .local v1, "service":Lcom/alipay/mobile/nebulacore/api/NebulaService;
    if-eqz v1, :cond_1

    .line 221
    move-object v3, v1

    .line 223
    invoke-interface {v1}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getTopSession()Lipc;

    move-result-object v2

    .line 224
    .local v2, "session":Lipc;
    if-eqz v2, :cond_1

    .line 227
    move-object v3, v2

    .line 229
    invoke-interface {v2}, Lipc;->getTopPage()Liop;

    move-result-object v0

    .line 230
    .local v0, "page":Liop;
    if-eqz v0, :cond_1

    .line 233
    move-object v3, v0

    .line 237
    .end local v0    # "page":Liop;
    .end local v1    # "service":Lcom/alipay/mobile/nebulacore/api/NebulaService;
    .end local v2    # "session":Lipc;
    :cond_1
    if-nez v3, :cond_2

    .line 238
    const-string/jumbo v5, "H5EventDispatcher"

    const-string/jumbo v6, "invalid event target!"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9085
    :cond_2
    iput-object v3, p1, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 242
    const/4 v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public dispatch(Lcom/alipay/mobile/h5container/api/H5Event;)Lcom/alipay/mobile/h5container/api/H5Event$Error;
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 54
    const/4 v0, 0x0

    sget-object v1, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;->UI:Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;

    invoke-virtual {p0, p1, v0, v1}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;->dispatch(Lcom/alipay/mobile/h5container/api/H5Event;Liny;Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;)Lcom/alipay/mobile/h5container/api/H5Event$Error;

    move-result-object v0

    return-object v0
.end method

.method public dispatch(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Lcom/alipay/mobile/h5container/api/H5Event$Error;
    .locals 1
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    .prologue
    .line 58
    sget-object v0, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;->UI:Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;->dispatch(Lcom/alipay/mobile/h5container/api/H5Event;Liny;Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;)Lcom/alipay/mobile/h5container/api/H5Event$Error;

    move-result-object v0

    return-object v0
.end method

.method public dispatch(Lcom/alipay/mobile/h5container/api/H5Event;Liny;Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;)Lcom/alipay/mobile/h5container/api/H5Event$Error;
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;
    .param p3, "policy"    # Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;->verifyEvent(Lcom/alipay/mobile/h5container/api/H5Event;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p3, :cond_1

    .line 63
    :cond_0
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    .line 100
    :goto_0
    return-object v0

    .line 3049
    :cond_1
    iget-boolean v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->i:Z

    .line 66
    if-eqz v0, :cond_2

    .line 67
    sget-object p3, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;->IO:Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;

    .line 70
    :cond_2
    sget-object v0, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$3;->$SwitchMap$com$alipay$mobile$nebulacore$core$H5EventDispatcher$Policy:[I

    invoke-virtual {p3}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 100
    :goto_1
    :pswitch_0
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->NONE:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    goto :goto_0

    .line 74
    :pswitch_1
    new-instance v0, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$1;-><init>(Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 84
    :pswitch_2
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMain()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 86
    invoke-static {}, Lioe;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$2;-><init>(Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 94
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;->beginDispatch(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    goto :goto_1

    .line 70
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected dispatchInternal(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 12
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 125
    if-nez p1, :cond_0

    .line 126
    const-string/jumbo v7, "H5EventDispatcher"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "invalid params, event: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v8

    .line 206
    :goto_0
    return v7

    .line 130
    :cond_0
    if-nez p2, :cond_1

    .line 3081
    iget-object v7, p1, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 130
    if-eqz v7, :cond_1

    .line 4081
    iget-object v7, p1, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 130
    instance-of v7, v7, Liop;

    if-eqz v7, :cond_1

    .line 5081
    iget-object v7, p1, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 131
    check-cast v7, Liop;

    invoke-interface {v7}, Liop;->getBridge()Linx;

    move-result-object v1

    .line 132
    .local v1, "bridge":Linx;
    new-instance p2, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;

    .line 5113
    .end local p2    # "context":Liny;
    iget-object v7, p1, Lcom/alipay/mobile/h5container/api/H5Event;->c:Ljava/lang/String;

    .line 6065
    iget-object v10, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 132
    invoke-direct {p2, v1, v7, v10}, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;-><init>(Linx;Ljava/lang/String;Ljava/lang/String;)V

    .line 7065
    .end local v1    # "bridge":Linx;
    .restart local p2    # "context":Liny;
    :cond_1
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 136
    .local v0, "actionName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 137
    const-string/jumbo v7, "H5EventDispatcher"

    const-string/jumbo v9, "invalid action name"

    invoke-static {v7, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    if-eqz p2, :cond_2

    .line 139
    sget-object v7, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p2, p1, v7}, Liny;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    :cond_2
    move v7, v8

    .line 141
    goto :goto_0

    .line 145
    :cond_3
    invoke-static {p1, p2}, Lcom/alipay/mobile/nebulacore/Nebula;->dispatchProcess(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v7, v9

    .line 146
    goto :goto_0

    .line 7081
    :cond_4
    iget-object v5, p1, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 152
    .local v5, "target":Liob;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v6, "targetList":Ljava/util/List;, "Ljava/util/List<Liov;>;"
    :goto_1
    if-eqz v5, :cond_5

    .line 156
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-interface {v5}, Liob;->getParent()Liob;

    move-result-object v5

    goto :goto_1

    .line 160
    :cond_5
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 161
    const-string/jumbo v7, "H5EventDispatcher"

    const-string/jumbo v9, "no event target!"

    invoke-static {v7, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    if-eqz p2, :cond_6

    .line 163
    sget-object v7, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p2, p1, v7}, Liny;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    :cond_6
    move v7, v8

    .line 165
    goto :goto_0

    .line 168
    :cond_7
    sget-boolean v7, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v7, :cond_8

    .line 169
    const-string/jumbo v7, "H5EventDispatcher"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "routing event "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_8
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 174
    .local v4, "size":I
    add-int/lit8 v2, v4, -0x1

    .local v2, "index":I
    :goto_2
    if-ltz v2, :cond_b

    .line 175
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Liov;

    .line 8073
    .local v3, "p":Liov;
    iget-boolean v7, p1, Lcom/alipay/mobile/h5container/api/H5Event;->d:Z

    .line 176
    if-eqz v7, :cond_9

    .line 177
    const-string/jumbo v7, "H5EventDispatcher"

    const-string/jumbo v9, "event been canceled on intercept!"

    invoke-static {v7, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v8

    .line 178
    goto/16 :goto_0

    .line 181
    :cond_9
    invoke-interface {v3, p1, p2}, Liov;->interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z

    move-result v7

    if-eqz v7, :cond_a

    move v7, v9

    .line 182
    goto/16 :goto_0

    .line 174
    :cond_a
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 187
    .end local v3    # "p":Liov;
    :cond_b
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v4, :cond_e

    .line 9073
    iget-boolean v7, p1, Lcom/alipay/mobile/h5container/api/H5Event;->d:Z

    .line 188
    if-eqz v7, :cond_c

    .line 189
    const-string/jumbo v7, "H5EventDispatcher"

    const-string/jumbo v9, "event been canceled on handle!"

    invoke-static {v7, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v8

    .line 190
    goto/16 :goto_0

    .line 193
    :cond_c
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Liov;

    .line 194
    .restart local v3    # "p":Liov;
    invoke-interface {v3, p1, p2}, Liov;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z

    move-result v7

    if-eqz v7, :cond_d

    move v7, v9

    .line 195
    goto/16 :goto_0

    .line 187
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 202
    .end local v3    # "p":Liov;
    :cond_e
    if-eqz p2, :cond_f

    .line 203
    sget-object v7, Lcom/alipay/mobile/h5container/api/H5Event$Error;->NOT_FOUND:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p2, p1, v7}, Liny;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 205
    :cond_f
    const-string/jumbo v7, "H5EventDispatcher"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "] handled by nobody"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v8

    .line 206
    goto/16 :goto_0
.end method

.method public sendEvent(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Error;
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/h5container/api/H5Event$Error;

    move-result-object v0

    return-object v0
.end method

.method public sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/h5container/api/H5Event$Error;
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "param"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Liob;)Lcom/alipay/mobile/h5container/api/H5Event$Error;

    move-result-object v0

    return-object v0
.end method

.method public sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Liob;)Lcom/alipay/mobile/h5container/api/H5Event$Error;
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "param"    # Lcom/alibaba/fastjson/JSONObject;
    .param p3, "target"    # Liob;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 42
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    .line 50
    :goto_0
    return-object v1

    .line 45
    :cond_0
    new-instance v0, Lcom/alipay/mobile/h5container/api/H5Event$a;

    invoke-direct {v0}, Lcom/alipay/mobile/h5container/api/H5Event$a;-><init>()V

    .line 1202
    .local v0, "builder":Lcom/alipay/mobile/h5container/api/H5Event$a;
    iput-object p1, v0, Lcom/alipay/mobile/h5container/api/H5Event$a;->a:Ljava/lang/String;

    .line 1217
    iput-object p2, v0, Lcom/alipay/mobile/h5container/api/H5Event$a;->d:Lcom/alibaba/fastjson/JSONObject;

    .line 2207
    iput-object p3, v0, Lcom/alipay/mobile/h5container/api/H5Event$a;->b:Liob;

    .line 50
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Event$a;->a()Lcom/alipay/mobile/h5container/api/H5Event;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;->dispatch(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Lcom/alipay/mobile/h5container/api/H5Event$Error;

    move-result-object v1

    goto :goto_0
.end method
