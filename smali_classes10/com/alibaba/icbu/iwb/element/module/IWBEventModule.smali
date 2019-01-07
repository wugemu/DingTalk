.class public Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;
.super Lcom/taobao/weex/common/WXModule;
.source "IWBEventModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/icbu/iwb/element/module/IWBEventModule$KeyboroadcastReceiver;,
        Lcom/alibaba/icbu/iwb/element/module/IWBEventModule$GlobalContainerBroadcastReceiver;,
        Lcom/alibaba/icbu/iwb/element/module/IWBEventModule$AppContainerBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final APP_BROADCAST_ACTION_KEY:Ljava/lang/String; = "com.taobao.qianniu.qap.broadcast.key"

.field public static final APP_BROADCAST_ACTION_PREFIX:Ljava/lang/String; = "com.taobao.qianniu.qap.broadcast.action_app_"

.field public static final APP_BROADCAST_ACTION_TYPE:Ljava/lang/String; = "com.taobao.qianniu.qap.broadcast.type"

.field public static final APP_BROADCAST_ACTION_VALUE:Ljava/lang/String; = "com.taobao.qianniu.qap.broadcast.value"

.field public static final APP_TYPE_FIRE:I = 0x0

.field public static final APP_TYPE_NOTIFY:I = 0x1

.field public static final APP_TYPE_REMOVE:I = 0x2

.field public static final EVENT_DATA:Ljava/lang/String; = "info"

.field public static final EVENT_KEY:Ljava/lang/String; = "event"

.field public static final GLOBAL_BROADCAST_ACTION_KEY:Ljava/lang/String; = "com.taobao.qianniu.qap.broadcast.key"

.field public static final GLOBAL_BROADCAST_ACTION_PREFIX:Ljava/lang/String; = "com.taobao.qianniu.qap.broadcast.action_global"

.field public static final GLOBAL_BROADCAST_ACTION_VALUE:Ljava/lang/String; = "com.taobao.qianniu.qap.broadcast.value"

.field public static final IWB_EVENT_APPID:Ljava/lang/String; = "appId"

.field public static final IWB_EVENT_PAGEID:Ljava/lang/String; = "pageId"

.field public static final IWB_EVENT_SCOPE:Ljava/lang/String; = "scope"

.field public static final KEYBOARD_BROADCAST_ACTION:Ljava/lang/String; = "com.alibaba.icbu.iwb.event.keyboard"

.field public static final KEYBOARD_BROADCAST_ACTION_EVENT:Ljava/lang/String; = "com.alibaba.icbu.iwb.event.keyboard.event"

.field public static final KEYBOARD_BROADCAST_ACTION_HEIGHT:Ljava/lang/String; = "com.alibaba.icbu.iwb.event.keyboard.height"

.field public static final RESULT_EVENT:Ljava/lang/String; = "onResultEvent"

.field public static final SCOPE_APP:Ljava/lang/String; = "app"

.field public static final SCOPE_GLOBAL:Ljava/lang/String; = "global"

.field public static final SCOPE_PAGE:Ljava/lang/String; = "page"


# instance fields
.field protected mAppCallBack:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/taobao/weex/bridge/JSCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mAppContainerBR:Landroid/content/BroadcastReceiver;

.field private mAppSticky:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/bridge/JSCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mGlobalCallBack:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/taobao/weex/bridge/JSCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mGlobalContainerBR:Landroid/content/BroadcastReceiver;

.field protected mPageCallBack:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/taobao/weex/bridge/JSCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPageSticky:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/bridge/JSCallback;",
            ">;"
        }
    .end annotation
.end field

.field public sKeyboardBR:Lcom/alibaba/icbu/iwb/element/module/IWBEventModule$KeyboroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Lcom/taobao/weex/common/WXModule;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mPageCallBack:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mPageSticky:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mAppCallBack:Ljava/util/Map;

    .line 60
    iput-object v1, p0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mAppContainerBR:Landroid/content/BroadcastReceiver;

    .line 61
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mAppSticky:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mGlobalCallBack:Ljava/util/Map;

    .line 68
    iput-object v1, p0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mGlobalContainerBR:Landroid/content/BroadcastReceiver;

    .line 75
    iput-object v1, p0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->sKeyboardBR:Lcom/alibaba/icbu/iwb/element/module/IWBEventModule$KeyboroadcastReceiver;

    .line 79
    new-instance v0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule$KeyboroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule$KeyboroadcastReceiver;-><init>(Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;)V

    iput-object v0, p0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->sKeyboardBR:Lcom/alibaba/icbu/iwb/element/module/IWBEventModule$KeyboroadcastReceiver;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mAppSticky:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mGlobalCallBack:Ljava/util/Map;

    return-object v0
.end method

.method public static sendKeyboardEvent(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "height"    # I

    .prologue
    .line 535
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alibaba.icbu.iwb.event.keyboard"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 536
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.alibaba.icbu.iwb.event.keyboard.event"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 537
    const-string/jumbo v1, "com.alibaba.icbu.iwb.event.keyboard.height"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 538
    if-eqz p0, :cond_0

    .line 539
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 541
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)Lcom/alibaba/icbu/iwb/element/module/CommonData;
    .locals 17
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "jsCallback"    # Lcom/taobao/weex/bridge/JSCallback;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .prologue
    .line 86
    new-instance v10, Lcom/alibaba/icbu/iwb/element/module/CommonData;

    invoke-direct {v10}, Lcom/alibaba/icbu/iwb/element/module/CommonData;-><init>()V

    .line 88
    .local v10, "ret":Lcom/alibaba/icbu/iwb/element/module/CommonData;
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v8

    .line 89
    .local v8, "object":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v13, "scope"

    invoke-virtual {v8, v13}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 90
    .local v11, "scope":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 91
    const-string/jumbo v13, "IWB_FAILURE"

    iput-object v13, v10, Lcom/alibaba/icbu/iwb/element/module/CommonData;->code:Ljava/lang/String;

    .line 92
    const-string/jumbo v13, "scope is null"

    iput-object v13, v10, Lcom/alibaba/icbu/iwb/element/module/CommonData;->msg:Ljava/lang/String;

    .line 185
    :goto_0
    return-object v10

    .line 93
    :cond_0
    if-nez p2, :cond_1

    .line 94
    const-string/jumbo v13, "IWB_FAILURE"

    iput-object v13, v10, Lcom/alibaba/icbu/iwb/element/module/CommonData;->code:Ljava/lang/String;

    .line 95
    const-string/jumbo v13, "callback is null"

    iput-object v13, v10, Lcom/alibaba/icbu/iwb/element/module/CommonData;->msg:Ljava/lang/String;

    goto :goto_0

    .line 97
    :cond_1
    const-string/jumbo v13, "event"

    invoke-virtual {v8, v13}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, "event":Ljava/lang/String;
    const/4 v13, -0x1

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v13, :pswitch_data_0

    .line 182
    :cond_3
    :goto_2
    const-string/jumbo v13, "IWB_SUCCESS"

    iput-object v13, v10, Lcom/alibaba/icbu/iwb/element/module/CommonData;->code:Ljava/lang/String;

    goto :goto_0

    .line 98
    :sswitch_0
    const-string/jumbo v14, "global"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v13, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v14, "app"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v13, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v14, "page"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v13, 0x2

    goto :goto_1

    .line 101
    :pswitch_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mGlobalContainerBR:Landroid/content/BroadcastReceiver;

    if-nez v13, :cond_6

    .line 102
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mGlobalContainerBR:Landroid/content/BroadcastReceiver;

    if-nez v13, :cond_4

    .line 104
    new-instance v13, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule$GlobalContainerBroadcastReceiver;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule$GlobalContainerBroadcastReceiver;-><init>(Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mGlobalContainerBR:Landroid/content/BroadcastReceiver;

    .line 106
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v13, :cond_5

    .line 107
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v13}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mGlobalContainerBR:Landroid/content/BroadcastReceiver;

    new-instance v15, Landroid/content/IntentFilter;

    const-string/jumbo v16, "com.taobao.qianniu.qap.broadcast.action_global"

    invoke-direct/range {v15 .. v16}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14, v15}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 109
    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mGlobalCallBack:Ljava/util/Map;

    invoke-interface {v13, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 112
    .local v5, "globalList":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/bridge/JSCallback;>;"
    if-nez v5, :cond_7

    .line 113
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "globalList":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/bridge/JSCallback;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .restart local v5    # "globalList":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/bridge/JSCallback;>;"
    :cond_7
    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mGlobalCallBack:Ljava/util/Map;

    invoke-interface {v13, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 117
    .end local v5    # "globalList":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/bridge/JSCallback;>;"
    :catch_0
    move-exception v3

    .line 118
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v13, "IWB_FAILURE"

    iput-object v13, v10, Lcom/alibaba/icbu/iwb/element/module/CommonData;->code:Ljava/lang/String;

    .line 119
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v10, Lcom/alibaba/icbu/iwb/element/module/CommonData;->msg:Ljava/lang/String;

    goto/16 :goto_0

    .line 109
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v13
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 126
    :pswitch_1
    :try_start_5
    const-string/jumbo v13, "appId"

    invoke-virtual {v8, v13}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "appId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 128
    const-string/jumbo v13, "IWB_FAILURE"

    iput-object v13, v10, Lcom/alibaba/icbu/iwb/element/module/CommonData;->code:Ljava/lang/String;

    .line 129
    const-string/jumbo v13, "appId is null"

    iput-object v13, v10, Lcom/alibaba/icbu/iwb/element/module/CommonData;->msg:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 159
    .end local v1    # "appId":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 160
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v13, "IWB_FAILURE"

    iput-object v13, v10, Lcom/alibaba/icbu/iwb/element/module/CommonData;->code:Ljava/lang/String;

    .line 161
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v10, Lcom/alibaba/icbu/iwb/element/module/CommonData;->msg:Ljava/lang/String;

    goto/16 :goto_0

    .line 132
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "appId":Ljava/lang/String;
    :cond_8
    :try_start_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mAppContainerBR:Landroid/content/BroadcastReceiver;

    if-nez v13, :cond_b

    .line 133
    monitor-enter p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 134
    :try_start_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mAppContainerBR:Landroid/content/BroadcastReceiver;

    if-nez v13, :cond_9

    .line 135
    new-instance v13, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule$AppContainerBroadcastReceiver;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v1}, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule$AppContainerBroadcastReceiver;-><init>(Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mAppContainerBR:Landroid/content/BroadcastReceiver;

    .line 137
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v13, :cond_a

    .line 138
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v13}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mAppContainerBR:Landroid/content/BroadcastReceiver;

    new-instance v15, Landroid/content/IntentFilter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->genAppBroadcastAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14, v15}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 140
    :cond_a
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 143
    :cond_b
    :try_start_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mAppCallBack:Ljava/util/Map;

    invoke-interface {v13, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 144
    .local v2, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/bridge/JSCallback;>;"
    if-nez v2, :cond_c

    .line 145
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "appList":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/bridge/JSCallback;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .restart local v2    # "appList":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/bridge/JSCallback;>;"
    :cond_c
    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mAppCallBack:Ljava/util/Map;

    invoke-interface {v13, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 150
    :try_start_9
    new-instance v6, Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->genAppBroadcastAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    .local v6, "intent":Landroid/content/Intent;
    const-string/jumbo v13, "com.taobao.qianniu.qap.broadcast.type"

    const/4 v14, 0x1

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 152
    const-string/jumbo v13, "com.taobao.qianniu.qap.broadcast.value"

    invoke-virtual {v8}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v13, :cond_3

    .line 154
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v13}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v13

    invoke-virtual {v13, v6}, Ldq;->a(Landroid/content/Intent;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_2

    .end local v6    # "intent":Landroid/content/Intent;
    :catch_2
    move-exception v13

    goto/16 :goto_2

    .line 140
    .end local v2    # "appList":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/bridge/JSCallback;>;"
    :catchall_1
    move-exception v13

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v13
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 167
    .end local v1    # "appId":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mPageCallBack:Ljava/util/Map;

    invoke-interface {v13, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 168
    .local v9, "pageList":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/bridge/JSCallback;>;"
    if-nez v9, :cond_d

    .line 169
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "pageList":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/bridge/JSCallback;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .restart local v9    # "pageList":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/bridge/JSCallback;>;"
    :cond_d
    move-object/from16 v0, p2

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mPageCallBack:Ljava/util/Map;

    invoke-interface {v13, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mPageSticky:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_e
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 174
    .local v7, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v12

    .line 175
    .local v12, "stickyJson":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v13, "event"

    invoke-virtual {v12, v13}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 176
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/taobao/weex/bridge/JSCallback;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->fireEvent(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)Lcom/alibaba/icbu/iwb/element/module/CommonData;

    goto :goto_3

    .line 98
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4a16fc5d -> :sswitch_0
        0x17a21 -> :sswitch_1
        0x34628f -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bindKeyBoard()V
    .locals 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 348
    iget-object v0, p0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->sKeyboardBR:Lcom/alibaba/icbu/iwb/element/module/IWBEventModule$KeyboroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 350
    iget-object v0, p0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->sKeyboardBR:Lcom/alibaba/icbu/iwb/element/module/IWBEventModule$KeyboroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.alibaba.icbu.iwb.event.keyboard"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 352
    :cond_0
    return-void
.end method

.method public fireEvent(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)Lcom/alibaba/icbu/iwb/element/module/CommonData;
    .locals 17
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "jsCallback"    # Lcom/taobao/weex/bridge/JSCallback;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .prologue
    .line 244
    new-instance v11, Lcom/alibaba/icbu/iwb/element/module/CommonData;

    invoke-direct {v11}, Lcom/alibaba/icbu/iwb/element/module/CommonData;-><init>()V

    .line 246
    .local v11, "ret":Lcom/alibaba/icbu/iwb/element/module/CommonData;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    const/high16 v14, 0x100000

    if-lt v13, v14, :cond_0

    .line 247
    const-string/jumbo v13, "IWB_INVALID_PARAM"

    iput-object v13, v11, Lcom/alibaba/icbu/iwb/element/module/CommonData;->code:Ljava/lang/String;

    .line 248
    const-string/jumbo v13, "\u53c2\u6570\u8d85\u8fc71M"

    iput-object v13, v11, Lcom/alibaba/icbu/iwb/element/module/CommonData;->msg:Ljava/lang/String;

    .line 343
    :goto_0
    return-object v11

    .line 252
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v8

    .line 253
    .local v8, "object":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v13, "scope"

    invoke-virtual {v8, v13}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 254
    .local v12, "scope":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 255
    const-string/jumbo v13, "IWB_FAILURE"

    iput-object v13, v11, Lcom/alibaba/icbu/iwb/element/module/CommonData;->code:Ljava/lang/String;

    .line 256
    const-string/jumbo v13, "scope is null"

    iput-object v13, v11, Lcom/alibaba/icbu/iwb/element/module/CommonData;->msg:Ljava/lang/String;

    goto :goto_0

    .line 258
    :cond_1
    const-string/jumbo v13, "event"

    invoke-virtual {v8, v13}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 260
    .local v5, "event":Ljava/lang/String;
    const/4 v13, -0x1

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v13, :pswitch_data_0

    .line 340
    :cond_3
    :goto_2
    const-string/jumbo v13, "IWB_SUCCESS"

    iput-object v13, v11, Lcom/alibaba/icbu/iwb/element/module/CommonData;->code:Ljava/lang/String;

    goto :goto_0

    .line 260
    :sswitch_0
    const-string/jumbo v14, "global"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v13, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v14, "app"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v13, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v14, "page"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v13, 0x2

    goto :goto_1

    .line 263
    :pswitch_0
    :try_start_0
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v13, "com.taobao.qianniu.qap.broadcast.action_global"

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 264
    .local v6, "intent":Landroid/content/Intent;
    const-string/jumbo v13, "com.taobao.qianniu.qap.broadcast.key"

    invoke-virtual {v6, v13, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    const-string/jumbo v13, "com.taobao.qianniu.qap.broadcast.value"

    invoke-virtual {v8}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v13, :cond_3

    .line 267
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v13}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v13

    invoke-virtual {v13, v6}, Ldq;->a(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 269
    .end local v6    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v4

    .line 270
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v13, "IWB_FAILURE"

    iput-object v13, v11, Lcom/alibaba/icbu/iwb/element/module/CommonData;->code:Ljava/lang/String;

    .line 271
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lcom/alibaba/icbu/iwb/element/module/CommonData;->msg:Ljava/lang/String;

    goto/16 :goto_0

    .line 277
    .end local v4    # "e":Ljava/lang/Exception;
    :pswitch_1
    const-string/jumbo v13, "appId"

    invoke-virtual {v8, v13}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, "appId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 279
    const-string/jumbo v13, "IWB_FAILURE"

    iput-object v13, v11, Lcom/alibaba/icbu/iwb/element/module/CommonData;->code:Ljava/lang/String;

    .line 280
    const-string/jumbo v13, "appId is null"

    iput-object v13, v11, Lcom/alibaba/icbu/iwb/element/module/CommonData;->msg:Ljava/lang/String;

    goto/16 :goto_0

    .line 284
    :cond_4
    const-string/jumbo v13, "sticky"

    invoke-virtual {v8, v13}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 285
    if-eqz p2, :cond_5

    .line 286
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mAppSticky:Ljava/util/Map;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mAppContainerBR:Landroid/content/BroadcastReceiver;

    if-nez v13, :cond_8

    .line 289
    monitor-enter p0

    .line 290
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mAppContainerBR:Landroid/content/BroadcastReceiver;

    if-nez v13, :cond_6

    .line 291
    new-instance v13, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule$AppContainerBroadcastReceiver;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v2}, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule$AppContainerBroadcastReceiver;-><init>(Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mAppContainerBR:Landroid/content/BroadcastReceiver;

    .line 293
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v13, :cond_7

    .line 294
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v13}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mAppContainerBR:Landroid/content/BroadcastReceiver;

    new-instance v15, Landroid/content/IntentFilter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->genAppBroadcastAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14, v15}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 296
    :cond_7
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 300
    :cond_8
    :try_start_2
    new-instance v6, Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->genAppBroadcastAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 301
    .restart local v6    # "intent":Landroid/content/Intent;
    const-string/jumbo v13, "com.taobao.qianniu.qap.broadcast.key"

    invoke-virtual {v6, v13, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    const-string/jumbo v13, "com.taobao.qianniu.qap.broadcast.type"

    const/4 v14, 0x0

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 303
    const-string/jumbo v13, "com.taobao.qianniu.qap.broadcast.value"

    invoke-virtual {v8}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v13, :cond_3

    .line 305
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v13}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v13

    invoke-virtual {v13, v6}, Ldq;->a(Landroid/content/Intent;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 307
    .end local v6    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v4

    .line 308
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v13, "IWB_FAILURE"

    iput-object v13, v11, Lcom/alibaba/icbu/iwb/element/module/CommonData;->code:Ljava/lang/String;

    .line 309
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lcom/alibaba/icbu/iwb/element/module/CommonData;->msg:Ljava/lang/String;

    goto/16 :goto_0

    .line 296
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v13

    .line 316
    .end local v2    # "appId":Ljava/lang/String;
    :pswitch_2
    new-instance v7, Lcom/alibaba/icbu/iwb/element/module/CommonData;

    invoke-direct {v7}, Lcom/alibaba/icbu/iwb/element/module/CommonData;-><init>()V

    .line 317
    .local v7, "notifyData":Lcom/alibaba/icbu/iwb/element/module/CommonData;
    const-string/jumbo v13, "IWB_SUCCESS"

    iput-object v13, v7, Lcom/alibaba/icbu/iwb/element/module/CommonData;->code:Ljava/lang/String;

    .line 318
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v10

    .line 319
    .local v10, "pageObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v13, "name"

    invoke-virtual {v8, v13, v10}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    iput-object v8, v7, Lcom/alibaba/icbu/iwb/element/module/CommonData;->data:Ljava/lang/Object;

    .line 322
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mPageCallBack:Ljava/util/Map;

    invoke-interface {v13, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 323
    .local v9, "pageList":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/bridge/JSCallback;>;"
    if-eqz v9, :cond_9

    .line 324
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/weex/bridge/JSCallback;

    .line 325
    .local v3, "callback":Lcom/taobao/weex/bridge/JSCallback;
    invoke-interface {v3, v7}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    goto :goto_3

    .line 328
    .end local v3    # "callback":Lcom/taobao/weex/bridge/JSCallback;
    :cond_9
    const-string/jumbo v13, "sticky"

    invoke-virtual {v8, v13}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 329
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mPageSticky:Ljava/util/Map;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 331
    :cond_a
    const-string/jumbo v13, "IWB_FAILURE"

    iput-object v13, v11, Lcom/alibaba/icbu/iwb/element/module/CommonData;->code:Ljava/lang/String;

    .line 332
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "event listener not registered:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lcom/alibaba/icbu/iwb/element/module/CommonData;->msg:Ljava/lang/String;

    goto/16 :goto_0

    .line 260
    :sswitch_data_0
    .sparse-switch
        -0x4a16fc5d -> :sswitch_0
        0x17a21 -> :sswitch_1
        0x34628f -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected genAppBroadcastAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "com.taobao.qianniu.qap.broadcast.action_app_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 357
    invoke-super {p0}, Lcom/taobao/weex/common/WXModule;->onActivityDestroy()V

    .line 359
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mAppContainerBR:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mAppContainerBR:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 361
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mAppContainerBR:Landroid/content/BroadcastReceiver;

    .line 364
    :cond_0
    iget-object v1, p0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mGlobalContainerBR:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v1, :cond_1

    .line 365
    iget-object v1, p0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mGlobalContainerBR:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 366
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mGlobalContainerBR:Landroid/content/BroadcastReceiver;

    .line 369
    :cond_1
    iget-object v1, p0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->sKeyboardBR:Lcom/alibaba/icbu/iwb/element/module/IWBEventModule$KeyboroadcastReceiver;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->sKeyboardBR:Lcom/alibaba/icbu/iwb/element/module/IWBEventModule$KeyboroadcastReceiver;

    if-eqz v1, :cond_2

    .line 370
    iget-object v1, p0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->sKeyboardBR:Lcom/alibaba/icbu/iwb/element/module/IWBEventModule$KeyboroadcastReceiver;

    invoke-virtual {v1, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 371
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->sKeyboardBR:Lcom/alibaba/icbu/iwb/element/module/IWBEventModule$KeyboroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    :cond_2
    :goto_0
    return-void

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public removeListener(Ljava/lang/String;)Lcom/alibaba/icbu/iwb/element/module/CommonData;
    .locals 7
    .param p1, "params"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 190
    new-instance v2, Lcom/alibaba/icbu/iwb/element/module/CommonData;

    invoke-direct {v2}, Lcom/alibaba/icbu/iwb/element/module/CommonData;-><init>()V

    .line 191
    .local v2, "ret":Lcom/alibaba/icbu/iwb/element/module/CommonData;
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 192
    .local v1, "object":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v4, "scope"

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 193
    .local v3, "scope":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 194
    const-string/jumbo v4, "IWB_FAILURE"

    iput-object v4, v2, Lcom/alibaba/icbu/iwb/element/module/CommonData;->code:Ljava/lang/String;

    .line 195
    const-string/jumbo v4, "scope is null"

    iput-object v4, v2, Lcom/alibaba/icbu/iwb/element/module/CommonData;->msg:Ljava/lang/String;

    .line 239
    :goto_0
    return-object v2

    .line 197
    :cond_0
    const-string/jumbo v4, "event"

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "event":Ljava/lang/String;
    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 236
    :cond_2
    :goto_2
    const-string/jumbo v4, "IWB_SUCCESS"

    iput-object v4, v2, Lcom/alibaba/icbu/iwb/element/module/CommonData;->code:Ljava/lang/String;

    goto :goto_0

    .line 198
    :sswitch_0
    const-string/jumbo v5, "global"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v5, "app"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v5, "page"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x2

    goto :goto_1

    .line 200
    :pswitch_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 201
    iget-object v4, p0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mGlobalCallBack:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 205
    :goto_3
    iget-object v4, p0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mGlobalCallBack:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mGlobalContainerBR:Landroid/content/BroadcastReceiver;

    if-eqz v4, :cond_2

    .line 206
    iget-object v4, p0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v4, :cond_3

    .line 207
    iget-object v4, p0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v4}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mGlobalContainerBR:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 209
    :cond_3
    iput-object v6, p0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mGlobalContainerBR:Landroid/content/BroadcastReceiver;

    goto :goto_2

    .line 203
    :cond_4
    iget-object v4, p0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mGlobalCallBack:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 214
    :pswitch_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 215
    iget-object v4, p0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mAppCallBack:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 219
    :goto_4
    iget-object v4, p0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mAppCallBack:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mAppContainerBR:Landroid/content/BroadcastReceiver;

    if-eqz v4, :cond_2

    .line 220
    iget-object v4, p0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v4, :cond_5

    .line 221
    iget-object v4, p0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v4}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mAppContainerBR:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 223
    :cond_5
    iput-object v6, p0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mAppContainerBR:Landroid/content/BroadcastReceiver;

    goto/16 :goto_2

    .line 217
    :cond_6
    iget-object v4, p0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mAppCallBack:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 228
    :pswitch_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 229
    iget-object v4, p0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mPageCallBack:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    goto/16 :goto_2

    .line 231
    :cond_7
    iget-object v4, p0, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->mPageCallBack:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 198
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4a16fc5d -> :sswitch_0
        0x17a21 -> :sswitch_1
        0x34628f -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
