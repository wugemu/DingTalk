.class final Lcom/taobao/accs/internal/ServiceImpl$2;
.super Lkpn$a;
.source "ServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/internal/ServiceImpl;
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
    .line 422
    iput-object p1, p0, Lcom/taobao/accs/internal/ServiceImpl$2;->a:Lcom/taobao/accs/internal/ServiceImpl;

    invoke-direct {p0}, Lkpn$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 430
    const-string/jumbo v0, "ServiceImpl"

    const-string/jumbo v1, "ReceiverImpl probeTaoBao begin......messageServiceBinder [probe]"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 432
    iget-object v0, p0, Lcom/taobao/accs/internal/ServiceImpl$2;->a:Lcom/taobao/accs/internal/ServiceImpl;

    invoke-static {v0}, Lcom/taobao/accs/internal/ServiceImpl;->access$300(Lcom/taobao/accs/internal/ServiceImpl;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/taobao/accs/internal/ServiceImpl$2$1;

    invoke-direct {v1, p0}, Lcom/taobao/accs/internal/ServiceImpl$2$1;-><init>(Lcom/taobao/accs/internal/ServiceImpl$2;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 457
    return-void
.end method
