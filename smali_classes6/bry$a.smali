.class public final Lbry$a;
.super Ljava/lang/Object;
.source "DeviceBeaconHandle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final synthetic b:Lbry;


# direct methods
.method public constructor <init>(Lbry;Ljava/lang/String;)V
    .locals 0
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 430
    iput-object p1, p0, Lbry$a;->b:Lbry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    iput-object p2, p0, Lbry$a;->a:Ljava/lang/String;

    .line 432
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 436
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 437
    const-string/jumbo v1, "xxhandle"

    const-string/jumbo v2, "beacon time out remove ---->"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_0
    iget-object v1, p0, Lbry$a;->b:Lbry;

    .line 1040
    iget-object v1, v1, Lbry;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 439
    iget-object v2, p0, Lbry$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbry$b;

    .line 440
    .local v0, "data":Lbry$b;
    if-eqz v0, :cond_1

    .line 441
    iget-object v1, p0, Lbry$a;->b:Lbry;

    .line 2040
    iget-object v1, v1, Lbry;->a:Landroid/os/Handler;

    .line 2495
    iget-object v2, v0, Lbry$b;->c:Ljava/lang/Runnable;

    .line 441
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 443
    iget-object v1, p0, Lbry$a;->b:Lbry;

    .line 3040
    invoke-virtual {v1, v0}, Lbry;->b(Lbry$b;)V

    .line 445
    :cond_1
    return-void
.end method
