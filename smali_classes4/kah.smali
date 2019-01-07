.class final Lkah;
.super Lcom/xiaomi/push/service/XMPushService$h;


# instance fields
.field final synthetic a:Lcom/xiaomi/push/service/XMPushService;

.field final synthetic b:Lcom/xiaomi/xmpush/thrift/af;

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:Z

.field final synthetic f:Z


# direct methods
.method constructor <init>(ILcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/af;ZZZZ)V
    .locals 1

    iput-object p2, p0, Lkah;->a:Lcom/xiaomi/push/service/XMPushService;

    iput-object p3, p0, Lkah;->b:Lcom/xiaomi/xmpush/thrift/af;

    iput-boolean p4, p0, Lkah;->c:Z

    iput-boolean p5, p0, Lkah;->d:Z

    iput-boolean p6, p0, Lkah;->e:Z

    iput-boolean p7, p0, Lkah;->f:Z

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService$h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    :try_start_0
    iget-object v0, p0, Lkah;->a:Lcom/xiaomi/push/service/XMPushService;

    iget-object v1, p0, Lkah;->b:Lcom/xiaomi/xmpush/thrift/af;

    iget-boolean v2, p0, Lkah;->c:Z

    iget-boolean v3, p0, Lkah;->d:Z

    iget-boolean v4, p0, Lkah;->e:Z

    invoke-static {v0, v1, v2, v3, v4}, Lkcv;->a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/af;ZZZ)Lcom/xiaomi/xmpush/thrift/af;

    move-result-object v0

    iget-boolean v1, p0, Lkah;->f:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/af;->m()Lcom/xiaomi/xmpush/thrift/u;

    move-result-object v1

    const-string/jumbo v2, "permission_to_location"

    sget-object v3, Lkay;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lkah;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v1, v0}, Lkai;->a(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/af;)V
    :try_end_0
    .catch Lcom/xiaomi/smack/l; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lkah;->a:Lcom/xiaomi/push/service/XMPushService;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "send wrong message ack for message."

    return-object v0
.end method
