.class public Lcom/taobao/weex/WXGlobalEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WXGlobalEventReceiver.java"


# static fields
.field public static final EVENT_ACTION:Ljava/lang/String; = "wx_global_action"

.field public static final EVENT_NAME:Ljava/lang/String; = "eventName"

.field public static final EVENT_PARAMS:Ljava/lang/String; = "eventParams"

.field public static final EVENT_WX_INSTANCEID:Ljava/lang/String; = "wx_instanceid"


# instance fields
.field private mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;)V
    .locals 0
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/taobao/weex/WXGlobalEventReceiver;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 43
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 47
    const-string/jumbo v4, "eventName"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "eventName":Ljava/lang/String;
    const-string/jumbo v4, "eventParams"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, "params":Ljava/lang/String;
    :try_start_0
    const-class v4, Ljava/util/HashMap;

    invoke-static {v3, v4}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 52
    .local v2, "maps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v4, p0, Lcom/taobao/weex/WXGlobalEventReceiver;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v4, v1, v2}, Lcom/taobao/weex/WXSDKInstance;->fireGlobalEventCallback(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v2    # "maps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "global-receive"

    invoke-static {v4, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
