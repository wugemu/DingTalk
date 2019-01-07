.class final Lcom/alibaba/sdk/android/httpdns/k$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/httpdns/k;->setContext(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/k$1;->isInitialStickyBroadcast()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/a/b;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/k;->d()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "None_Network"

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/k;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "[BroadcastReceiver.onReceive] - Network state changed"

    invoke-static {v1}, Lcom/alibaba/sdk/android/httpdns/g;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/b;->a()Lcom/alibaba/sdk/android/httpdns/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/httpdns/b;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/b;->a()Lcom/alibaba/sdk/android/httpdns/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/httpdns/b;->clear()V

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/b;->a()Lcom/alibaba/sdk/android/httpdns/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/httpdns/b;->a()V

    sget-boolean v2, Lcom/alibaba/sdk/android/httpdns/k;->b:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/alibaba/sdk/android/httpdns/HttpDns;->instance:Lcom/alibaba/sdk/android/httpdns/HttpDns;

    if-eqz v2, :cond_2

    const-string/jumbo v2, "[BroadcastReceiver.onReceive] - refresh host"

    invoke-static {v2}, Lcom/alibaba/sdk/android/httpdns/g;->e(Ljava/lang/String;)V

    sget-object v2, Lcom/alibaba/sdk/android/httpdns/HttpDns;->instance:Lcom/alibaba/sdk/android/httpdns/HttpDns;

    invoke-virtual {v2, v1}, Lcom/alibaba/sdk/android/httpdns/HttpDns;->setPreResolveHosts(Ljava/util/ArrayList;)V

    :cond_2
    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/k;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
