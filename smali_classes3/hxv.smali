.class public final Lhxv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/alibaba/security/biometrics/build/d;


# direct methods
.method public constructor <init>(Lcom/alibaba/security/biometrics/build/d;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lhxv;->b:Lcom/alibaba/security/biometrics/build/d;

    iput-object p2, p0, Lhxv;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lhxv;->b:Lcom/alibaba/security/biometrics/build/d;

    iget-object v1, v1, Lcom/alibaba/security/biometrics/build/d;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lhxv;->a:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "K_CALLBACK_RESULTDATA"

    iget-object v2, p0, Lhxv;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lhxv;->b:Lcom/alibaba/security/biometrics/build/d;

    iget-object v1, v1, Lcom/alibaba/security/biometrics/build/d;->a:Lcom/alibaba/security/biometrics/AuthContext;

    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/AuthContext;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lhxv;->b:Lcom/alibaba/security/biometrics/build/d;

    iget-object v1, v1, Lcom/alibaba/security/biometrics/build/d;->c:Lhxw;

    if-nez v1, :cond_1

    iget-object v1, p0, Lhxv;->b:Lcom/alibaba/security/biometrics/build/d;

    iget-object v2, p0, Lhxv;->b:Lcom/alibaba/security/biometrics/build/d;

    invoke-virtual {v2}, Lcom/alibaba/security/biometrics/build/d;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lhxw;->a(Landroid/content/Context;)Lhxw;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/security/biometrics/build/d;->c:Lhxw;

    :cond_1
    iget-object v1, p0, Lhxv;->b:Lcom/alibaba/security/biometrics/build/d;

    iget-object v1, v1, Lcom/alibaba/security/biometrics/build/d;->c:Lhxw;

    invoke-virtual {v1, v0}, Lhxw;->a(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendResponse:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhzj;->a(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendResponse:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhzj;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
