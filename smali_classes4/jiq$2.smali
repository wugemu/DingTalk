.class final Ljiq$2;
.super Ljava/lang/Object;
.source "MsgDistribute.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljiq;->b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Landroid/content/Intent;

.field final synthetic d:Ljiq;


# direct methods
.method constructor <init>(Ljiq;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, Ljiq$2;->d:Ljiq;

    iput-object p2, p0, Ljiq$2;->a:Ljava/lang/String;

    iput-object p3, p0, Ljiq$2;->b:Landroid/content/Context;

    iput-object p4, p0, Ljiq$2;->c:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 428
    invoke-static {}, Ljiq;->d()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 429
    invoke-static {}, Ljiq;->d()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Ljiq$2;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    const-string/jumbo v0, "MsgDistribute"

    const-string/jumbo v1, "routing msg time out, try election"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "dataId"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Ljiq$2;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 431
    invoke-static {}, Ljiq;->d()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Ljiq$2;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 432
    iget-object v0, p0, Ljiq$2;->d:Ljiq;

    iget-object v1, p0, Ljiq$2;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Ljiq;->a(Ljiq;Landroid/content/Context;)V

    .line 433
    const-string/jumbo v0, "accs"

    const-string/jumbo v1, "ele_routing_rate"

    const-string/jumbo v2, ""

    const-string/jumbo v3, "timeout"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "pkg:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Ljiq$2;->c:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    :cond_0
    return-void
.end method
