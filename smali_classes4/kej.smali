.class final Lkej;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/push/service/aq$b$a;


# instance fields
.field a:Lcom/xiaomi/push/service/XMPushService;

.field b:Lcom/xiaomi/push/service/aq$b;

.field c:Lkde;

.field d:Lcom/xiaomi/push/service/aq$c;

.field e:I

.field f:Z


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/aq$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lkej;->f:Z

    iput-object p1, p0, Lkej;->a:Lcom/xiaomi/push/service/XMPushService;

    sget-object v0, Lcom/xiaomi/push/service/aq$c;->b:Lcom/xiaomi/push/service/aq$c;

    iput-object v0, p0, Lkej;->d:Lcom/xiaomi/push/service/aq$c;

    iput-object p2, p0, Lkej;->b:Lcom/xiaomi/push/service/aq$b;

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
    iget-boolean v0, p0, Lkej;->f:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/xiaomi/push/service/aq$c;->b:Lcom/xiaomi/push/service/aq$c;

    if-ne p1, v0, :cond_0

    iput-object p2, p0, Lkej;->d:Lcom/xiaomi/push/service/aq$c;

    iput p3, p0, Lkej;->e:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkej;->f:Z

    :cond_0
    iget-object v0, p0, Lkej;->a:Lcom/xiaomi/push/service/XMPushService;

    new-instance v1, Lkek;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lkek;-><init>(Lkej;I)V

    .line 1000
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$h;J)V

    .line 0
    return-void
.end method
