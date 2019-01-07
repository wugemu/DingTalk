.class public Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;
.super Lipd;
.source "H5NotifyPlugin.java"


# static fields
.field private static final BROADCAST_NAME:Ljava/lang/String; = "name"

.field private static final DATA:Ljava/lang/String; = "data"

.field private static final NOTIFY_LISTENER:Ljava/lang/String; = "addNotifyListener"

.field public static final NOTIFY_PREFIX:Ljava/lang/String; = "NEBULANOTIFY_"

.field private static final POST_NOTIFY:Ljava/lang/String; = "postNotification"

.field private static final REMOVE_NOTIFY_LISTENER:Ljava/lang/String; = "removeNotifyListener"

.field public static final TAG:Ljava/lang/String; = "H5NotifyPlugin"


# instance fields
.field private mBroadcastManager:Ldq;

.field private mBroadcastNameRemMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiverMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Lipd;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;->mBroadcastManager:Ldq;

    .line 36
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;->mBroadcastNameRemMap:Ljava/util/Map;

    .line 37
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;->mReceiverMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;->mBroadcastNameRemMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;)Ldq;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;->mBroadcastManager:Ldq;

    return-object v0
.end method

.method private postNotify(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    .locals 10
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 163
    .line 5121
    iget-object v5, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 164
    .local v5, "params":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v7, "name"

    invoke-static {v5, v7, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "broadcastName":Ljava/lang/String;
    const-string/jumbo v7, "data"

    invoke-static {v5, v7, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 166
    .local v1, "data":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 167
    new-instance v6, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v6}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 168
    .local v6, "result":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v7, "error"

    sget-object v8, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-virtual {v8}, Lcom/alipay/mobile/h5container/api/H5Event$Error;->ordinal()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string/jumbo v7, "message"

    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/alipay/mobile/nebula/R$string;->h5_invalidparam:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-interface {p2, v6}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 182
    .end local v6    # "result":Lcom/alibaba/fastjson/JSONObject;
    :goto_0
    return-void

    .line 173
    :cond_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 174
    .local v4, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 175
    .local v2, "intent":Landroid/content/Intent;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "NEBULANOTIFY_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 177
    .local v3, "key":Ljava/lang/String;
    new-instance v8, Ljava/lang/Object;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    invoke-static {v1, v3, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getValue(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 179
    .end local v3    # "key":Ljava/lang/String;
    :cond_1
    const-string/jumbo v7, "H5NotifyPlugin"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "postNotify action:NEBULANOTIFY_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " intent data "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;->mBroadcastManager:Ldq;

    invoke-virtual {v7, v2}, Ldq;->a(Landroid/content/Intent;)Z

    .line 181
    const-string/jumbo v7, "success"

    const-string/jumbo v8, "true"

    invoke-interface {p2, v7, v8}, Liny;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private resetParam()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 70
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;->mBroadcastNameRemMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 71
    const-string/jumbo v1, "H5NotifyPlugin"

    const-string/jumbo v2, "H5_PAGE_STARTED unregisterReceiver"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;->mReceiverMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    .line 73
    .local v0, "br":Landroid/content/BroadcastReceiver;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;->mBroadcastManager:Ldq;

    invoke-virtual {v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 75
    .end local v0    # "br":Landroid/content/BroadcastReceiver;
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;->mReceiverMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 76
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 9
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgecontext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x1

    .line 81
    .line 3065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 82
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v6, "addNotifyListener"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3121
    iget-object v4, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 85
    .local v4, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v6, "name"

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "broadcastName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 87
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 88
    .local v2, "data":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v6, "message"

    const-string/jumbo v7, "param name must not null"

    invoke-virtual {v2, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string/jumbo v6, "error"

    sget-object v7, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-virtual {v7}, Lcom/alipay/mobile/h5container/api/H5Event$Error;->ordinal()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-interface {p2, v2}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 91
    const-string/jumbo v6, "H5NotifyPlugin"

    const-string/jumbo v7, "broadcastname none"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .end local v1    # "broadcastName":Ljava/lang/String;
    .end local v2    # "data":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "param":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    :goto_0
    return v8

    .line 95
    .restart local v1    # "broadcastName":Ljava/lang/String;
    .restart local v4    # "param":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;->mBroadcastNameRemMap:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 96
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 97
    .restart local v2    # "data":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v6, "message"

    const-string/jumbo v7, "repeat event"

    invoke-virtual {v2, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string/jumbo v6, "error"

    const/16 v7, 0xc

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-interface {p2, v2}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 100
    const-string/jumbo v6, "H5NotifyPlugin"

    const-string/jumbo v7, "repeat event"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    .end local v2    # "data":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    const-string/jumbo v6, "keep"

    invoke-static {v4, v6, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v3

    .line 104
    .local v3, "keepalive":Z
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;->mBroadcastNameRemMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v6, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    new-instance v5, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin$1;

    invoke-direct {v5, p0, v1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin$1;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;Ljava/lang/String;Liny;)V

    .line 135
    .local v5, "receiver":Landroid/content/BroadcastReceiver;
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;->mBroadcastManager:Ldq;

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5, v7}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 136
    const-string/jumbo v6, "H5NotifyPlugin"

    const-string/jumbo v7, "register receiver"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;->mReceiverMap:Ljava/util/Map;

    invoke-interface {v6, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 138
    .end local v1    # "broadcastName":Ljava/lang/String;
    .end local v3    # "keepalive":Z
    .end local v4    # "param":Lcom/alibaba/fastjson/JSONObject;
    .end local v5    # "receiver":Landroid/content/BroadcastReceiver;
    :cond_3
    const-string/jumbo v6, "removeNotifyListener"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 4121
    iget-object v4, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 140
    .restart local v4    # "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v6, "name"

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 141
    .restart local v1    # "broadcastName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 142
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 143
    .restart local v2    # "data":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v6, "message"

    const-string/jumbo v7, "param name must not null"

    invoke-virtual {v2, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string/jumbo v6, "error"

    sget-object v7, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-virtual {v7}, Lcom/alipay/mobile/h5container/api/H5Event$Error;->ordinal()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-interface {p2, v2}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 146
    const-string/jumbo v6, "H5NotifyPlugin"

    const-string/jumbo v7, "broadcastname none"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 149
    .end local v2    # "data":Lcom/alibaba/fastjson/JSONObject;
    :cond_4
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;->mReceiverMap:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 150
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;->mBroadcastManager:Ldq;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;->mReceiverMap:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v6}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 151
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;->mBroadcastNameRemMap:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string/jumbo v6, "success"

    const-string/jumbo v7, "true"

    invoke-interface {p2, v6, v7}, Liny;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 154
    :cond_5
    const-string/jumbo v6, "success"

    const-string/jumbo v7, "true"

    invoke-interface {p2, v6, v7}, Liny;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 156
    .end local v1    # "broadcastName":Ljava/lang/String;
    .end local v4    # "param":Lcom/alibaba/fastjson/JSONObject;
    :cond_6
    const-string/jumbo v6, "postNotification"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;->postNotify(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    goto/16 :goto_0
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 3
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 61
    const-string/jumbo v0, "H5NotifyPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "interceptEvent is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1065
    iget-object v2, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", data is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1121
    iget-object v2, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 62
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string/jumbo v0, "h5PageStarted"

    .line 2065
    iget-object v1, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;->resetParam()V

    .line 66
    :cond_0
    invoke-super {p0, p1, p2}, Lipd;->interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z

    move-result v0

    return v0
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 48
    const-string/jumbo v0, "postNotification"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 49
    const-string/jumbo v0, "addNotifyListener"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 50
    const-string/jumbo v0, "removeNotifyListener"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 51
    const-string/jumbo v0, "h5PageStarted"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 52
    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;->mBroadcastManager:Ldq;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;->mBroadcastNameRemMap:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;->mReceiverMap:Ljava/util/Map;

    .line 57
    return-void
.end method

.method public onRelease()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 41
    invoke-super {p0}, Lipd;->onRelease()V

    .line 42
    const-string/jumbo v0, "H5NotifyPlugin"

    const-string/jumbo v1, "onRelease unregisterReceiver"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;->resetParam()V

    .line 44
    return-void
.end method
