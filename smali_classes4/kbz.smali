.class public final Lkbz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/push/service/module/PushChannelRegion;

.field final synthetic b:J

.field final synthetic c:I

.field final synthetic d:Lcom/xiaomi/push/service/a;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/a;Lcom/xiaomi/push/service/module/PushChannelRegion;JI)V
    .locals 1

    iput-object p1, p0, Lkbz;->d:Lcom/xiaomi/push/service/a;

    iput-object p2, p0, Lkbz;->a:Lcom/xiaomi/push/service/module/PushChannelRegion;

    iput-wide p3, p0, Lkbz;->b:J

    iput p5, p0, Lkbz;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    iget-object v0, p0, Lkbz;->d:Lcom/xiaomi/push/service/a;

    iget-object v1, p0, Lkbz;->d:Lcom/xiaomi/push/service/a;

    invoke-static {v1}, Lcom/xiaomi/push/service/a;->a(Lcom/xiaomi/push/service/a;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lkbz;->a:Lcom/xiaomi/push/service/module/PushChannelRegion;

    invoke-static {v0, v1, v2}, Lcom/xiaomi/push/service/a;->a(Lcom/xiaomi/push/service/a;Landroid/content/Context;Lcom/xiaomi/push/service/module/PushChannelRegion;)V

    iget-object v0, p0, Lkbz;->d:Lcom/xiaomi/push/service/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/a;->b(Lcom/xiaomi/push/service/a;Z)Z

    iget-object v0, p0, Lkbz;->d:Lcom/xiaomi/push/service/a;

    invoke-static {v0}, Lcom/xiaomi/push/service/a;->d(Lcom/xiaomi/push/service/a;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lkbz;->d:Lcom/xiaomi/push/service/a;

    invoke-static {v0}, Lcom/xiaomi/push/service/a;->d(Lcom/xiaomi/push/service/a;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lkbz;->b:J

    sub-long v6, v0, v2

    iget v0, p0, Lkbz;->c:I

    int-to-long v0, v0

    cmp-long v0, v6, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lkbz;->d:Lcom/xiaomi/push/service/a;

    invoke-static {v0}, Lcom/xiaomi/push/service/a;->a(Lcom/xiaomi/push/service/a;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "category_region_read"

    const-string/jumbo v3, "region_write_late"

    const-wide/16 v4, 0x1

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lkbi;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
