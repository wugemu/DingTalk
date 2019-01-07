.class public Lcom/alibaba/laiwang/xpn/huawei/HwPushReceiver;
.super Lcom/huawei/android/pushagent/PushReceiver;
.source "HwPushReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HwPushReceiver"


# instance fields
.field private mToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/huawei/android/pushagent/PushReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotifyBtnClick(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notifyId"    # I
    .param p3, "eventStr"    # Ljava/lang/String;
    .param p4, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 53
    if-eqz p2, :cond_0

    .line 54
    const-string/jumbo v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 55
    .local v0, "manager":Landroid/app/NotificationManager;
    invoke-virtual {v0, p2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 57
    .end local v0    # "manager":Landroid/app/NotificationManager;
    :cond_0
    invoke-static {}, Lcom/alibaba/laiwang/xpn/XpnUtils;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[onNotifyBtnClick] msg: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    :cond_1
    return-void
.end method

.method public onNotifyClickMsg(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventStr"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 45
    invoke-static {}, Lcom/alibaba/laiwang/xpn/XpnUtils;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[onNotifyClickMsg] msg: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    :cond_0
    return-void
.end method

.method public onPushMsg(Landroid/content/Context;[BLjava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "msg"    # [B
    .param p3, "s"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 36
    const-string/jumbo v0, "[TAG] XPN"

    const-string/jumbo v1, "[XPN] receive hw push"

    const-string/jumbo v2, "base"

    invoke-static {v0, v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcom/alibaba/laiwang/alive/d;->c()Lcom/alibaba/laiwang/alive/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alibaba/laiwang/alive/d;->a([B)V

    .line 38
    invoke-static {}, Lcom/alibaba/laiwang/xpn/XpnUtils;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[onPushMsg], msg: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    :cond_0
    return-void
.end method

.method public onToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "token"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 23
    iput-object p2, p0, Lcom/alibaba/laiwang/xpn/huawei/HwPushReceiver;->mToken:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "[TAG] XPN"

    const-string/jumbo v1, "[XPN] reg hw push succ"

    const-string/jumbo v2, "base"

    invoke-static {v0, v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lcom/alibaba/laiwang/alive/d;->c()Lcom/alibaba/laiwang/alive/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alibaba/laiwang/alive/d;->b(Ljava/lang/String;)V

    .line 26
    invoke-static {}, Lcom/alibaba/laiwang/xpn/XpnUtils;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[onToken] success, token: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    :cond_0
    return-void
.end method
