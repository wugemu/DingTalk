.class public Lcom/alibaba/laiwang/xpn/xiaomi/XiaomiPushReceiver;
.super Lcom/xiaomi/mipush/sdk/PushMessageReceiver;
.source "XiaomiPushReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "XiaomiPushReceiver"


# instance fields
.field private mAlias:Ljava/lang/String;

.field private mEndTime:Ljava/lang/String;

.field private mRegId:Ljava/lang/String;

.field private mStartTime:Ljava/lang/String;

.field private mTopic:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/PushMessageReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommandResult(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "commandMessage"    # Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x1

    .line 34
    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getCommand()Ljava/lang/String;

    move-result-object v3

    .line 35
    .local v3, "command":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getResultCode()J

    move-result-wide v4

    .line 36
    .local v4, "resultCode":J
    invoke-static {}, Lcom/alibaba/laiwang/xpn/XpnUtils;->isDebug()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 37
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "[onCommandResult] cmd="

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " code="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 39
    :cond_0
    const-wide/16 v8, 0x0

    cmp-long v6, v4, v8

    if-eqz v6, :cond_2

    .line 67
    :cond_1
    :goto_0
    return-void

    .line 42
    :cond_2
    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getCommandArguments()Ljava/util/List;

    move-result-object v0

    .line 43
    .local v0, "arguments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 46
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v1, v6

    .line 47
    .local v1, "cmdArg1":Ljava/lang/String;
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 50
    const-string/jumbo v6, "register"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 51
    iput-object v1, p0, Lcom/alibaba/laiwang/xpn/xiaomi/XiaomiPushReceiver;->mRegId:Ljava/lang/String;

    .line 52
    const-string/jumbo v6, "[TAG] XPN"

    const-string/jumbo v7, "[XPN] reg mi push succ"

    const-string/jumbo v8, "base"

    invoke-static {v6, v7, v8}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/alibaba/laiwang/alive/j;->d()Lcom/alibaba/laiwang/alive/j;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/alibaba/laiwang/alive/j;->b(Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "cmdArg1":Ljava/lang/String;
    :cond_3
    move-object v1, v7

    .line 46
    goto :goto_1

    .line 54
    .restart local v1    # "cmdArg1":Ljava/lang/String;
    :cond_4
    const-string/jumbo v6, "set-alias"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 55
    iput-object v1, p0, Lcom/alibaba/laiwang/xpn/xiaomi/XiaomiPushReceiver;->mAlias:Ljava/lang/String;

    goto :goto_0

    .line 56
    :cond_5
    const-string/jumbo v6, "unset-alias"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 57
    iput-object v1, p0, Lcom/alibaba/laiwang/xpn/xiaomi/XiaomiPushReceiver;->mAlias:Ljava/lang/String;

    goto :goto_0

    .line 58
    :cond_6
    const-string/jumbo v6, "subscribe-topic"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 59
    iput-object v1, p0, Lcom/alibaba/laiwang/xpn/xiaomi/XiaomiPushReceiver;->mTopic:Ljava/lang/String;

    goto :goto_0

    .line 60
    :cond_7
    const-string/jumbo v6, "unsubscibe-topic"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 61
    iput-object v1, p0, Lcom/alibaba/laiwang/xpn/xiaomi/XiaomiPushReceiver;->mTopic:Ljava/lang/String;

    goto :goto_0

    .line 62
    :cond_8
    const-string/jumbo v6, "accept-time"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 63
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v10, :cond_9

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v2, v6

    .line 64
    .local v2, "cmdArg2":Ljava/lang/String;
    :goto_2
    iput-object v1, p0, Lcom/alibaba/laiwang/xpn/xiaomi/XiaomiPushReceiver;->mStartTime:Ljava/lang/String;

    .line 65
    iput-object v2, p0, Lcom/alibaba/laiwang/xpn/xiaomi/XiaomiPushReceiver;->mEndTime:Ljava/lang/String;

    goto/16 :goto_0

    .end local v2    # "cmdArg2":Ljava/lang/String;
    :cond_9
    move-object v2, v7

    .line 63
    goto :goto_2
.end method

.method public onNotificationMessageArrived(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pushMessage"    # Lcom/xiaomi/mipush/sdk/MiPushMessage;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 102
    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getAlias()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "alias":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/laiwang/xpn/XpnUtils;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[onNotificationMessageArrived] alias: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    :cond_0
    return-void
.end method

.method public onNotificationMessageClicked(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pushMessage"    # Lcom/xiaomi/mipush/sdk/MiPushMessage;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 89
    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getAlias()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "alias":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/laiwang/xpn/XpnUtils;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[onNotificationMessageClicked] alias: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    :cond_0
    return-void
.end method

.method public onReceivePassThroughMessage(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pushMessage"    # Lcom/xiaomi/mipush/sdk/MiPushMessage;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 74
    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "content":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/laiwang/xpn/XpnUtils;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[onReceivePassThroughMessage] msg: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    :cond_0
    if-eqz v0, :cond_1

    .line 79
    invoke-static {}, Lcom/alibaba/laiwang/alive/j;->d()Lcom/alibaba/laiwang/alive/j;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/laiwang/alive/j;->a([B)V

    .line 81
    :cond_1
    return-void
.end method
