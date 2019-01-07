.class final Lbmh$2;
.super Ljava/lang/Object;
.source "DeviceNpcWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbmh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest;

.field final synthetic b:Lbmh;


# direct methods
.method constructor <init>(Lbmh;Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest;)V
    .locals 0
    .param p1, "this$0"    # Lbmh;

    .prologue
    .line 165
    iput-object p1, p0, Lbmh$2;->b:Lbmh;

    iput-object p2, p0, Lbmh$2;->a:Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 168
    iget-object v0, p0, Lbmh$2;->b:Lbmh;

    .line 1033
    iget-object v0, v0, Lbmh;->b:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface;

    .line 168
    if-nez v0, :cond_0

    .line 169
    const-string/jumbo v0, "DeviceNpcWrapper"

    const-string/jumbo v1, "AlphaInterface is null"

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lbmh$2;->b:Lbmh;

    .line 2033
    iget-object v0, v0, Lbmh;->c:Lblr;

    .line 172
    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lbmh$2;->b:Lbmh;

    .line 3033
    iget-object v0, v0, Lbmh;->c:Lblr;

    .line 173
    iget-object v1, p0, Lbmh$2;->a:Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest;

    invoke-interface {v0, v1}, Lblr;->a(Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest;)V

    goto :goto_0

    .line 175
    :cond_1
    iget-object v0, p0, Lbmh$2;->b:Lbmh;

    .line 4033
    iget-object v0, v0, Lbmh;->b:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface;

    .line 175
    invoke-interface {v0}, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface;->isAlphaRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 176
    const-string/jumbo v0, "DeviceNpcWrapper"

    const-string/jumbo v1, "alpha is stopped"

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_2
    const-string/jumbo v0, "DeviceNpcWrapper"

    const-string/jumbo v1, "start alpha bindAndActive"

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lbmh$2;->b:Lbmh;

    .line 5033
    iget-object v1, v1, Lbmh;->a:Landroid/content/Context;

    .line 180
    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/devicebindui"

    new-instance v2, Lbmh$2$1;

    invoke-direct {v2, p0}, Lbmh$2$1;-><init>(Lbmh$2;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method
