.class final Lhqx$1;
.super Ljava/lang/Object;
.source "SafeTunnelManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhqx;-><init>()V
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
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhqx;


# direct methods
.method constructor <init>(Lhqx;)V
    .locals 0
    .param p1, "this$0"    # Lhqx;

    .prologue
    .line 54
    iput-object p1, p0, Lhqx$1;->a:Lhqx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 54
    check-cast p1, Ljava/util/List;

    .line 1057
    if-eqz p1, :cond_2

    .line 1058
    iget-object v0, p0, Lhqx$1;->a:Lhqx;

    invoke-static {v0}, Lhqx;->a(Lhqx;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1059
    iget-object v0, p0, Lhqx$1;->a:Lhqx;

    invoke-static {v0}, Lhqx;->a(Lhqx;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1061
    :cond_0
    iget-object v0, p0, Lhqx$1;->a:Lhqx;

    invoke-static {v0}, Lhqx;->b(Lhqx;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1062
    iget-object v0, p0, Lhqx$1;->a:Lhqx;

    invoke-static {v0}, Lhqx;->b(Lhqx;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1064
    :cond_1
    iget-object v0, p0, Lhqx$1;->a:Lhqx;

    invoke-static {v0, p1}, Lhqx;->a(Lhqx;Ljava/util/List;)V

    .line 54
    :cond_2
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 75
    const-string/jumbo v0, "safeTunnel"

    const-string/jumbo v1, "getSafeTunnelDomains=fail==code=="

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "===reason==="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, p1, v2}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 71
    return-void
.end method
