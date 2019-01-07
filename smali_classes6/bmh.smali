.class public final Lbmh;
.super Ljava/lang/Object;
.source "DeviceNpcWrapper.java"


# instance fields
.field final a:Landroid/content/Context;

.field b:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface;

.field public c:Lblr;

.field public d:Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest;

.field public e:Lcom/alibaba/android/dingtalk/alpha/npc/DeviceNpc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/android/dingtalk/alpha/AlphaInterface;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "alphaInterface"    # Lcom/alibaba/android/dingtalk/alpha/AlphaInterface;

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lbmh$1;

    invoke-direct {v0, p0}, Lbmh$1;-><init>(Lbmh;)V

    iput-object v0, p0, Lbmh;->e:Lcom/alibaba/android/dingtalk/alpha/npc/DeviceNpc;

    .line 148
    iput-object p1, p0, Lbmh;->a:Landroid/content/Context;

    .line 149
    iput-object p2, p0, Lbmh;->b:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface;

    .line 150
    return-void
.end method

.method static synthetic a(Lbmh;)V
    .locals 2
    .param p0, "x0"    # Lbmh;

    .prologue
    .line 33
    .line 1201
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lbmh$3;

    invoke-direct {v1, p0}, Lbmh$3;-><init>(Lbmh;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 33
    return-void
.end method

.method static synthetic a(Lbmh;Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest;)V
    .locals 2
    .param p0, "x0"    # Lbmh;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest;

    .prologue
    .line 33
    .line 1165
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lbmh$2;

    invoke-direct {v1, p0, p1}, Lbmh$2;-><init>(Lbmh;Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 33
    return-void
.end method

.method static synthetic b(Lbmh;)V
    .locals 1
    .param p0, "x0"    # Lbmh;

    .prologue
    .line 33
    .line 2142
    iget-object v0, p0, Lbmh;->b:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface;

    if-eqz v0, :cond_0

    .line 2143
    iget-object v0, p0, Lbmh;->b:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface;

    invoke-interface {v0}, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface;->reset()V

    .line 33
    :cond_0
    return-void
.end method

.method static synthetic c(Lbmh;)V
    .locals 3
    .param p0, "x0"    # Lbmh;

    .prologue
    .line 33
    .line 2219
    iget-object v0, p0, Lbmh;->c:Lblr;

    if-nez v0, :cond_0

    .line 2220
    const-string/jumbo v0, "DeviceNpcWrapper"

    const-string/jumbo v1, "start alpha mesh"

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2221
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lbmh;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/devicebindui"

    new-instance v2, Lbmh$4;

    invoke-direct {v2, p0}, Lbmh$4;-><init>(Lbmh;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    :goto_0
    return-void

    .line 2232
    :cond_0
    iget-object v0, p0, Lbmh;->c:Lblr;

    invoke-interface {v0}, Lblr;->a()V

    goto :goto_0
.end method
