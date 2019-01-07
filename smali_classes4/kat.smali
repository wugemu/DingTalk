.class public final Lkat;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/push/service/aq$b$a;


# instance fields
.field final synthetic a:Lcom/xiaomi/push/service/aq$b;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/aq$b;)V
    .locals 0

    iput-object p1, p0, Lkat;->a:Lcom/xiaomi/push/service/aq$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xiaomi/push/service/aq$c;Lcom/xiaomi/push/service/aq$c;I)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 0
    sget-object v0, Lcom/xiaomi/push/service/aq$c;->b:Lcom/xiaomi/push/service/aq$c;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lkat;->a:Lcom/xiaomi/push/service/aq$b;

    .line 1000
    iget-object v0, v0, Lcom/xiaomi/push/service/aq$b;->p:Lcom/xiaomi/push/service/XMPushService;

    .line 0
    iget-object v1, p0, Lkat;->a:Lcom/xiaomi/push/service/aq$b;

    .line 2000
    iget-object v1, v1, Lcom/xiaomi/push/service/aq$b;->t:Lcom/xiaomi/push/service/XMPushService$b;

    .line 0
    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$h;J)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lkat;->a:Lcom/xiaomi/push/service/aq$b;

    .line 3000
    iget-object v0, v0, Lcom/xiaomi/push/service/aq$b;->p:Lcom/xiaomi/push/service/XMPushService;

    .line 0
    iget-object v1, p0, Lkat;->a:Lcom/xiaomi/push/service/aq$b;

    .line 4000
    iget-object v1, v1, Lcom/xiaomi/push/service/aq$b;->t:Lcom/xiaomi/push/service/XMPushService$b;

    .line 0
    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$h;)V

    goto :goto_0
.end method
