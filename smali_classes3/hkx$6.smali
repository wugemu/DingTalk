.class final Lhkx$6;
.super Ljava/lang/Object;
.source "AutoAttendanceManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhkx;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/List",
        "<",
        "Lhju;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhkx;


# direct methods
.method constructor <init>(Lhkx;)V
    .locals 0
    .param p1, "this$0"    # Lhkx;

    .prologue
    .line 374
    iput-object p1, p0, Lhkx$6;->a:Lhkx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 374
    check-cast p1, Ljava/util/List;

    .line 1378
    invoke-static {}, Lhkw;->a()Lhkw;

    invoke-static {}, Lhkw;->d()V

    .line 1379
    const-string/jumbo v0, "attendance"

    sget-object v1, Lhkx;->a:Ljava/lang/String;

    const-string/jumbo v2, "fetchOACheckInTaskFromServer onDataReceived:"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    if-eqz p1, :cond_0

    .line 1382
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1383
    iget-object v1, p0, Lhkx$6;->a:Lhkx;

    invoke-static {v1, p1, v0}, Lhkx;->a(Lhkx;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 1384
    iget-object v2, p0, Lhkx$6;->a:Lhkx;

    invoke-static {v2, v0}, Lhkx;->a(Lhkx;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1386
    invoke-static {}, Lhkw;->a()Lhkw;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lhkw;->a(Ljava/util/List;Ljava/util/List;)V

    .line 1388
    iget-object v0, p0, Lhkx$6;->a:Lhkx;

    invoke-virtual {v0}, Lhkx;->b()V

    .line 374
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 400
    invoke-static {}, Lhkw;->a()Lhkw;

    invoke-static {}, Lhkw;->d()V

    .line 401
    const-string/jumbo v0, "attendance"

    sget-object v1, Lhkx;->a:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "fetchOACheckInTaskFromServer onException:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ":"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 395
    return-void
.end method
