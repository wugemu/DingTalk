.class final Ljit$1;
.super Ljig;
.source "ElectionServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljit;


# direct methods
.method constructor <init>(Ljit;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Ljit$1;->a:Ljit;

    invoke-direct {p0}, Ljig;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBind(Ljava/lang/String;ILcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 0
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "info"    # Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    .prologue
    .line 367
    return-void
.end method

.method public final onData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 0
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "dataId"    # Ljava/lang/String;
    .param p4, "data"    # [B
    .param p5, "info"    # Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    .prologue
    .line 362
    return-void
.end method

.method public final onResponse(Ljava/lang/String;Ljava/lang/String;I[BLcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 2
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "dataId"    # Ljava/lang/String;
    .param p3, "errorCode"    # I
    .param p4, "response"    # [B
    .param p5, "info"    # Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 381
    iget-object v0, p0, Ljit$1;->a:Ljit;

    invoke-static {v0, p4, p3}, Ljit;->access$000(Ljit;[BI)V

    .line 382
    iget-object v0, p0, Ljit$1;->a:Ljit;

    invoke-static {v0}, Ljit;->access$100(Ljit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Ljit$1;->a:Ljit;

    invoke-static {v0}, Ljit;->access$100(Ljit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 385
    :cond_0
    return-void
.end method

.method public final onSendData(Ljava/lang/String;Ljava/lang/String;ILcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 0
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "dataId"    # Ljava/lang/String;
    .param p3, "errorCode"    # I
    .param p4, "info"    # Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    .prologue
    .line 377
    return-void
.end method

.method public final onUnbind(Ljava/lang/String;ILcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 0
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "info"    # Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    .prologue
    .line 372
    return-void
.end method
