.class public final Lkbs;
.super Lcom/xiaomi/push/service/XMPushService$h;


# instance fields
.field final synthetic a:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;I)V
    .locals 1

    iput-object p1, p0, Lkbs;->a:Lcom/xiaomi/push/service/XMPushService;

    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService$h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 0
    iget-object v0, p0, Lkbs;->a:Lcom/xiaomi/push/service/XMPushService;

    .line 1000
    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lkcq;->a(Landroid/content/Context;)Lkcp;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lkcq;->a(Landroid/content/Context;)Lkcp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lkcp;->a(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/aq$b;

    move-result-object v1

    invoke-static {v0, v1}, Lkai;->a(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/aq$b;)V

    invoke-static {}, Lcom/xiaomi/push/service/aq;->a()Lcom/xiaomi/push/service/aq;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/aq;->a(Lcom/xiaomi/push/service/aq$b;)V

    .line 0
    :cond_0
    iget-object v0, p0, Lkbs;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Ljvn;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkbs;->a:Lcom/xiaomi/push/service/XMPushService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->b(Z)V

    :cond_1
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "prepare the mi push account."

    return-object v0
.end method
