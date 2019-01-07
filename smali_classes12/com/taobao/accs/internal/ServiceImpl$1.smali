.class final Lcom/taobao/accs/internal/ServiceImpl$1;
.super Ljava/lang/Object;
.source "ServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/accs/internal/ServiceImpl;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/accs/internal/ServiceImpl;


# direct methods
.method constructor <init>(Lcom/taobao/accs/internal/ServiceImpl;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/taobao/accs/internal/ServiceImpl$1;->a:Lcom/taobao/accs/internal/ServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const v8, 0x101d1

    .line 117
    iget-object v2, p0, Lcom/taobao/accs/internal/ServiceImpl$1;->a:Lcom/taobao/accs/internal/ServiceImpl;

    invoke-static {v2}, Lcom/taobao/accs/internal/ServiceImpl;->access$000(Lcom/taobao/accs/internal/ServiceImpl;)V

    .line 118
    iget-object v2, p0, Lcom/taobao/accs/internal/ServiceImpl$1;->a:Lcom/taobao/accs/internal/ServiceImpl;

    iget-object v3, p0, Lcom/taobao/accs/internal/ServiceImpl$1;->a:Lcom/taobao/accs/internal/ServiceImpl;

    invoke-static {v3}, Lcom/taobao/accs/internal/ServiceImpl;->access$100(Lcom/taobao/accs/internal/ServiceImpl;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/taobao/accs/internal/ServiceImpl;->access$200(Lcom/taobao/accs/internal/ServiceImpl;Landroid/content/Context;)V

    .line 119
    invoke-static {}, Ljjo;->a()Ljjo;

    const-string/jumbo v2, "START"

    invoke-static {}, Lcom/taobao/accs/utl/UtilityImpl;->getProxy()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "PROXY"

    invoke-static {v8, v2, v3, v4}, Ljjo;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 121
    iget-object v2, p0, Lcom/taobao/accs/internal/ServiceImpl$1;->a:Lcom/taobao/accs/internal/ServiceImpl;

    invoke-static {v2}, Lcom/taobao/accs/internal/ServiceImpl;->access$100(Lcom/taobao/accs/internal/ServiceImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/accs/utl/UtilityImpl;->getServiceAliveTime(Landroid/content/Context;)J

    move-result-wide v0

    .line 122
    .local v0, "aliveTime":J
    const-string/jumbo v2, "ServiceImpl"

    const-string/jumbo v3, "getServiceAliveTime"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "aliveTime"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    const-wide/16 v2, 0x4e20

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 125
    const-string/jumbo v2, "accs"

    const-string/jumbo v3, "service_alive"

    const-string/jumbo v4, ""

    const-wide/16 v6, 0x3e8

    div-long v6, v0, v6

    long-to-double v6, v6

    invoke-static {v2, v3, v4, v6, v7}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 127
    :cond_0
    iget-object v2, p0, Lcom/taobao/accs/internal/ServiceImpl$1;->a:Lcom/taobao/accs/internal/ServiceImpl;

    invoke-static {v2}, Lcom/taobao/accs/internal/ServiceImpl;->access$100(Lcom/taobao/accs/internal/ServiceImpl;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "service_start"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/taobao/accs/utl/UtilityImpl;->setServiceTime(Landroid/content/Context;Ljava/lang/String;J)V

    .line 129
    invoke-static {}, Ljjo;->a()Ljjo;

    const-string/jumbo v2, "NOTIFY"

    iget-object v3, p0, Lcom/taobao/accs/internal/ServiceImpl$1;->a:Lcom/taobao/accs/internal/ServiceImpl;

    invoke-static {v3}, Lcom/taobao/accs/internal/ServiceImpl;->access$100(Lcom/taobao/accs/internal/ServiceImpl;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/accs/utl/UtilityImpl;->isNotificationEnabled(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v2, v3}, Ljjo;->a(ILjava/lang/String;Ljava/lang/Object;)V

    .line 131
    return-void
.end method
