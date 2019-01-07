.class public final Lkbw;
.super Lcom/xiaomi/push/service/XMPushService$h;


# instance fields
.field final synthetic a:I

.field final synthetic b:[B

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;II[BLjava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lkbw;->d:Lcom/xiaomi/push/service/XMPushService;

    iput p3, p0, Lkbw;->a:I

    iput-object p4, p0, Lkbw;->b:[B

    iput-object p5, p0, Lkbw;->c:Ljava/lang/String;

    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService$h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 0
    iget-object v0, p0, Lkbw;->d:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lkcq;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/xiaomi/push/service/aq;->a()Lcom/xiaomi/push/service/aq;

    move-result-object v0

    const-string/jumbo v1, "5"

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/aq;->a(Ljava/lang/String;)V

    iget v0, p0, Lkbw;->a:I

    invoke-static {v0}, Ljux;->a(I)V

    iget-object v0, p0, Lkbw;->d:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->c(Lcom/xiaomi/push/service/XMPushService;)Lkdf;

    move-result-object v0

    invoke-static {}, Lkdf;->b()Ljava/lang/String;

    move-result-object v1

    .line 1000
    iput-object v1, v0, Lkdf;->e:Ljava/lang/String;

    .line 0
    iget-object v0, p0, Lkbw;->d:Lcom/xiaomi/push/service/XMPushService;

    iget-object v1, p0, Lkbw;->b:[B

    iget-object v2, p0, Lkbw;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->a([BLjava/lang/String;)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "clear account cache."

    return-object v0
.end method
