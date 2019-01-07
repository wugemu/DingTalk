.class final Lkdo;
.super Lcom/xiaomi/push/service/XMPushService$h;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lkdn;


# direct methods
.method constructor <init>(Lkdn;IJ)V
    .locals 1

    iput-object p1, p0, Lkdo;->b:Lkdn;

    iput-wide p3, p0, Lkdo;->a:J

    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService$h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    invoke-static {}, Ljava/lang/Thread;->yield()V

    iget-object v0, p0, Lkdo;->b:Lkdn;

    invoke-virtual {v0}, Lkdn;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkdo;->b:Lkdn;

    iget-wide v2, p0, Lkdo;->a:J

    invoke-virtual {v0, v2, v3}, Lkdn;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lkdo;->b:Lkdn;

    iget-object v0, v0, Lkdn;->v:Lcom/xiaomi/push/service/XMPushService;

    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    iget-object v0, p0, Lkdo;->b:Lkdn;

    iget-object v0, v0, Lkdn;->v:Lcom/xiaomi/push/service/XMPushService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->b(Z)V

    :cond_0
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "check the ping-pong."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lkdo;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
