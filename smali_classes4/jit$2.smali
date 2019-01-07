.class final Ljit$2;
.super Ljava/lang/Object;
.source "ElectionServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljit;->tryElection(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljit;


# direct methods
.method constructor <init>(Ljit;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, Ljit$2;->b:Ljit;

    iput-object p2, p0, Ljit$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 429
    const-string/jumbo v0, "ElectionServiceImpl"

    const-string/jumbo v1, "tryElection"

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "isPing"

    aput-object v3, v2, v4

    invoke-static {}, Ljit;->access$200()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 430
    invoke-static {}, Ljit;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    const-string/jumbo v0, "ElectionServiceImpl"

    const-string/jumbo v1, "no need election, stop self"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 432
    iget-object v0, p0, Ljit$2;->b:Ljit;

    invoke-virtual {v0, v5}, Ljit;->stopSelf(Z)V

    .line 439
    :goto_0
    return-void

    .line 435
    :cond_0
    const-string/jumbo v0, "ElectionServiceImpl"

    const-string/jumbo v1, "tryElection curr host unreceive ping, try selectAppToElection"

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "curr host"

    aput-object v3, v2, v4

    iget-object v3, p0, Ljit$2;->a:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 436
    iget-object v0, p0, Ljit$2;->b:Ljit;

    iget-object v1, p0, Ljit$2;->b:Ljit;

    invoke-static {v1}, Ljit;->access$300(Ljit;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "host invaid"

    invoke-static {v0, v1, v2}, Ljit;->access$400(Ljit;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
