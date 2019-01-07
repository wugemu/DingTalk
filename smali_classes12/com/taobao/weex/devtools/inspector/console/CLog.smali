.class public Lcom/taobao/weex/devtools/inspector/console/CLog;
.super Ljava/lang/Object;
.source "CLog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CLog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeToConsole(Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageLevel;Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageSource;Ljava/lang/String;)V
    .locals 3
    .param p0, "chromePeerManager"    # Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;
    .param p1, "logLevel"    # Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageLevel;
    .param p2, "messageSource"    # Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageSource;
    .param p3, "messageText"    # Ljava/lang/String;

    .prologue
    .line 28
    const-string/jumbo v2, "CLog"

    invoke-static {v2, p3}, Lcom/taobao/weex/devtools/common/LogRedirector;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Console$ConsoleMessage;

    invoke-direct {v0}, Lcom/taobao/weex/devtools/inspector/protocol/module/Console$ConsoleMessage;-><init>()V

    .line 31
    .local v0, "message":Lcom/taobao/weex/devtools/inspector/protocol/module/Console$ConsoleMessage;
    iput-object p2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Console$ConsoleMessage;->source:Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageSource;

    .line 32
    iput-object p1, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Console$ConsoleMessage;->level:Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageLevel;

    .line 33
    iput-object p3, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Console$ConsoleMessage;->text:Ljava/lang/String;

    .line 34
    new-instance v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageAddedRequest;

    invoke-direct {v1}, Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageAddedRequest;-><init>()V

    .line 35
    .local v1, "messageAddedRequest":Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageAddedRequest;
    iput-object v0, v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageAddedRequest;->message:Lcom/taobao/weex/devtools/inspector/protocol/module/Console$ConsoleMessage;

    .line 36
    const-string/jumbo v2, "Console.messageAdded"

    invoke-virtual {p0, v2, v1}, Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;->sendNotificationToPeers(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    return-void
.end method

.method public static writeToConsole(Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageLevel;Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageSource;Ljava/lang/String;)V
    .locals 1
    .param p0, "logLevel"    # Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageLevel;
    .param p1, "messageSource"    # Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageSource;
    .param p2, "messageText"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-static {}, Lcom/taobao/weex/devtools/inspector/console/ConsolePeerManager;->getInstanceOrNull()Lcom/taobao/weex/devtools/inspector/console/ConsolePeerManager;

    move-result-object v0

    .line 45
    .local v0, "peerManager":Lcom/taobao/weex/devtools/inspector/console/ConsolePeerManager;
    if-nez v0, :cond_0

    .line 50
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-static {v0, p0, p1, p2}, Lcom/taobao/weex/devtools/inspector/console/CLog;->writeToConsole(Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageLevel;Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageSource;Ljava/lang/String;)V

    goto :goto_0
.end method
