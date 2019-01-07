.class final Lcom/cmic/sso/sdk/b/f$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "WifiNetworkUtils.java"


# instance fields
.field final synthetic a:Lcom/cmic/sso/sdk/b/f$a;


# direct methods
.method constructor <init>(Lcom/cmic/sso/sdk/b/f$a;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/cmic/sso/sdk/b/f$1;->a:Lcom/cmic/sso/sdk/b/f$a;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 61
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 62
    sget-object v0, Lcom/cmic/sso/sdk/b/f;->b:Landroid/net/Network;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cmic/sso/sdk/b/f;->b:Landroid/net/Network;

    invoke-virtual {v0, p1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 64
    :cond_0
    sput-object p1, Lcom/cmic/sso/sdk/b/f;->b:Landroid/net/Network;

    .line 65
    sget-object v0, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    if-eqz v0, :cond_1

    .line 66
    sget-object v0, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    const-string/jumbo v1, "WifiNetworkUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "validate : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/cmic/sso/sdk/auth/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/cmic/sso/sdk/b/f;->a(Landroid/net/Network;)Landroid/net/Network;

    .line 69
    iget-object v0, p0, Lcom/cmic/sso/sdk/b/f$1;->a:Lcom/cmic/sso/sdk/b/f$a;

    invoke-interface {v0, p1}, Lcom/cmic/sso/sdk/b/f$a;->a(Landroid/net/Network;)V

    .line 72
    :cond_2
    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 76
    sget-object v0, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    if-eqz v0, :cond_0

    .line 77
    sget-object v0, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    const-string/jumbo v1, "WifiNetworkUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "lost-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/cmic/sso/sdk/auth/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_0
    invoke-static {p1}, Lcom/cmic/sso/sdk/b/f;->a(Landroid/net/Network;)Landroid/net/Network;

    .line 80
    return-void
.end method
