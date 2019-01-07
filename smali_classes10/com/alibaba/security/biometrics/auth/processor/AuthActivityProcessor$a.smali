.class public Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor$a;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor;


# direct methods
.method public constructor <init>(Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor$a;->a:Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    .prologue
    .line 0
    iget-object v0, p0, Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor$a;->a:Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor;

    .line 6000
    iget-object v0, v0, Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor;->f:Lcom/alibaba/security/biometrics/AuthContext;

    .line 0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor$a;->a:Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor;

    .line 7000
    iget-object v0, v0, Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor;->f:Lcom/alibaba/security/biometrics/AuthContext;

    .line 0
    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/AuthContext;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor$a;->a:Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor;

    .line 8000
    iget-object v0, v0, Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor;->f:Lcom/alibaba/security/biometrics/AuthContext;

    .line 0
    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/AuthContext;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhxw;->a(Landroid/content/Context;)Lhxw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lhxw;->a(Landroid/content/BroadcastReceiver;)V

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v0, -0x1

    .line 0
    iget-object v1, p0, Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor$a;->a:Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor;

    .line 1000
    iget-object v1, v1, Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor;->f:Lcom/alibaba/security/biometrics/AuthContext;

    .line 0
    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/AuthContext;->c()Lcom/alibaba/security/biometrics/AuthContext$b;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "K_CALLBACK_RESULTDATA"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "K_CALLBACK_RESULTDATA"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "K_CALLBACK_TYPE"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_1

    iget-object v0, p0, Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor$a;->a:Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor;

    .line 2000
    iget-object v0, v0, Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor;->f:Lcom/alibaba/security/biometrics/AuthContext;

    .line 0
    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/AuthContext;->c()Lcom/alibaba/security/biometrics/AuthContext$b;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor$a;->a:Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor;

    .line 3000
    iget-object v2, v2, Lhwh;->f:Lcom/alibaba/security/biometrics/AuthContext;

    .line 0
    invoke-interface {v0, v2, v1}, Lcom/alibaba/security/biometrics/AuthContext$b;->a(Lcom/alibaba/security/biometrics/AuthContext;Landroid/os/Bundle;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    if-eqz v1, :cond_2

    const-string/jumbo v2, "K_CALLBACK_ERRORCODE"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :cond_2
    iget-object v1, p0, Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor$a;->a:Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor;

    .line 4000
    iget-object v1, v1, Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor;->f:Lcom/alibaba/security/biometrics/AuthContext;

    .line 0
    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/AuthContext;->c()Lcom/alibaba/security/biometrics/AuthContext$b;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor$a;->a:Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor;

    .line 5000
    iget-object v2, v2, Lhwh;->f:Lcom/alibaba/security/biometrics/AuthContext;

    .line 0
    invoke-interface {v1, v2, v0}, Lcom/alibaba/security/biometrics/AuthContext$b;->a(Lcom/alibaba/security/biometrics/AuthContext;I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    if-ne v2, v0, :cond_0

    if-eqz v1, :cond_0

    const-string/jumbo v0, "K_CALLBACK_MESSAGE"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
