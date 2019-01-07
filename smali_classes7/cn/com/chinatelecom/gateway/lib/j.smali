.class final Lcn/com/chinatelecom/gateway/lib/j;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "MobileNetManager.java"


# instance fields
.field final synthetic a:Lcn/com/chinatelecom/gateway/lib/h;


# direct methods
.method constructor <init>(Lcn/com/chinatelecom/gateway/lib/h;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcn/com/chinatelecom/gateway/lib/j;->a:Lcn/com/chinatelecom/gateway/lib/h;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 130
    iget-object v2, p0, Lcn/com/chinatelecom/gateway/lib/j;->a:Lcn/com/chinatelecom/gateway/lib/h;

    iget-object v3, p0, Lcn/com/chinatelecom/gateway/lib/j;->a:Lcn/com/chinatelecom/gateway/lib/h;

    invoke-static {v3}, Lcn/com/chinatelecom/gateway/lib/h;->d(Lcn/com/chinatelecom/gateway/lib/h;)J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-static {v2, v0, v1}, Lcn/com/chinatelecom/gateway/lib/h;->a(Lcn/com/chinatelecom/gateway/lib/h;J)J

    .line 131
    iget-object v0, p0, Lcn/com/chinatelecom/gateway/lib/j;->a:Lcn/com/chinatelecom/gateway/lib/h;

    invoke-static {v0}, Lcn/com/chinatelecom/gateway/lib/h;->e(Lcn/com/chinatelecom/gateway/lib/h;)Z

    .line 132
    iget-object v0, p0, Lcn/com/chinatelecom/gateway/lib/j;->a:Lcn/com/chinatelecom/gateway/lib/h;

    invoke-static {v0}, Lcn/com/chinatelecom/gateway/lib/h;->b(Lcn/com/chinatelecom/gateway/lib/h;)Lcn/com/chinatelecom/gateway/lib/h$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcn/com/chinatelecom/gateway/lib/j;->a:Lcn/com/chinatelecom/gateway/lib/h;

    invoke-static {v0}, Lcn/com/chinatelecom/gateway/lib/h;->b(Lcn/com/chinatelecom/gateway/lib/h;)Lcn/com/chinatelecom/gateway/lib/h$a;

    move-result-object v0

    iget-object v1, p0, Lcn/com/chinatelecom/gateway/lib/j;->a:Lcn/com/chinatelecom/gateway/lib/h;

    invoke-static {v1}, Lcn/com/chinatelecom/gateway/lib/h;->f(Lcn/com/chinatelecom/gateway/lib/h;)J

    move-result-wide v2

    invoke-interface {v0, p1, v2, v3}, Lcn/com/chinatelecom/gateway/lib/h$a;->a(Landroid/net/Network;J)V

    .line 135
    :cond_0
    iget-object v0, p0, Lcn/com/chinatelecom/gateway/lib/j;->a:Lcn/com/chinatelecom/gateway/lib/h;

    invoke-static {v0}, Lcn/com/chinatelecom/gateway/lib/h;->g(Lcn/com/chinatelecom/gateway/lib/h;)Landroid/net/ConnectivityManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 137
    :try_start_0
    iget-object v0, p0, Lcn/com/chinatelecom/gateway/lib/j;->a:Lcn/com/chinatelecom/gateway/lib/h;

    invoke-static {v0}, Lcn/com/chinatelecom/gateway/lib/h;->g(Lcn/com/chinatelecom/gateway/lib/h;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 138
    iget-object v0, p0, Lcn/com/chinatelecom/gateway/lib/j;->a:Lcn/com/chinatelecom/gateway/lib/h;

    invoke-static {v0}, Lcn/com/chinatelecom/gateway/lib/h;->h(Lcn/com/chinatelecom/gateway/lib/h;)Landroid/net/ConnectivityManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :cond_1
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    invoke-static {}, Lcn/com/chinatelecom/gateway/lib/h;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "switchToMobileForAboveL"

    invoke-static {v1, v2, v0}, Lcn/com/chinatelecom/gateway/lib/CtAuth;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
