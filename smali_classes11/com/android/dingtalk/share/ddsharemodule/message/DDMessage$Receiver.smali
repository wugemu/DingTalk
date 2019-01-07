.class public final Lcom/android/dingtalk/share/ddsharemodule/message/DDMessage$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "DDMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dingtalk/share/ddsharemodule/message/DDMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Receiver"
.end annotation


# static fields
.field public static final mCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/dingtalk/share/ddsharemodule/message/DDMessage$CallBack;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCallback:Lcom/android/dingtalk/share/ddsharemodule/message/DDMessage$CallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/dingtalk/share/ddsharemodule/message/DDMessage$Receiver;->mCallbacks:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/dingtalk/share/ddsharemodule/message/DDMessage$Receiver;-><init>(Lcom/android/dingtalk/share/ddsharemodule/message/DDMessage$CallBack;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/android/dingtalk/share/ddsharemodule/message/DDMessage$CallBack;)V
    .locals 0
    .param p1, "callBack"    # Lcom/android/dingtalk/share/ddsharemodule/message/DDMessage$CallBack;

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/android/dingtalk/share/ddsharemodule/message/DDMessage$Receiver;->mCallback:Lcom/android/dingtalk/share/ddsharemodule/message/DDMessage$CallBack;

    .line 68
    return-void
.end method

.method public static registerCallBack(Ljava/lang/String;Lcom/android/dingtalk/share/ddsharemodule/message/DDMessage$CallBack;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "callBack1"    # Lcom/android/dingtalk/share/ddsharemodule/message/DDMessage$CallBack;

    .prologue
    .line 86
    sget-object v0, Lcom/android/dingtalk/share/ddsharemodule/message/DDMessage$Receiver;->mCallbacks:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-void
.end method

.method public static unregisterCallBack(Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 90
    sget-object v0, Lcom/android/dingtalk/share/ddsharemodule/message/DDMessage$Receiver;->mCallbacks:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "receive intent="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v1, p0, Lcom/android/dingtalk/share/ddsharemodule/message/DDMessage$Receiver;->mCallback:Lcom/android/dingtalk/share/ddsharemodule/message/DDMessage$CallBack;

    if-eqz v1, :cond_1

    .line 73
    iget-object v1, p0, Lcom/android/dingtalk/share/ddsharemodule/message/DDMessage$Receiver;->mCallback:Lcom/android/dingtalk/share/ddsharemodule/message/DDMessage$CallBack;

    invoke-interface {v1, p2}, Lcom/android/dingtalk/share/ddsharemodule/message/DDMessage$CallBack;->handleMessage(Landroid/content/Intent;)V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    sget-object v1, Lcom/android/dingtalk/share/ddsharemodule/message/DDMessage$Receiver;->mCallbacks:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dingtalk/share/ddsharemodule/message/DDMessage$CallBack;

    .local v0, "messageCallBack":Lcom/android/dingtalk/share/ddsharemodule/message/DDMessage$CallBack;
    if-eqz v0, :cond_0

    .line 78
    invoke-interface {v0, p2}, Lcom/android/dingtalk/share/ddsharemodule/message/DDMessage$CallBack;->handleMessage(Landroid/content/Intent;)V

    goto :goto_0
.end method
