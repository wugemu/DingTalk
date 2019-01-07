.class public Lcom/alibaba/security/biometrics/build/d;
.super Landroid/app/Activity;


# instance fields
.field public a:Lcom/alibaba/security/biometrics/AuthContext;

.field public b:Ljava/lang/String;

.field public c:Lhxw;

.field protected d:Landroid/os/HandlerThread;

.field protected e:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    const-string/jumbo v1, "K_CALLBACK_TYPE"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "K_CALLBACK_ERRORCODE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/alibaba/security/biometrics/build/d;->b(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/build/d;->finish()V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    const-string/jumbo v1, "K_CALLBACK_TYPE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/alibaba/security/biometrics/build/d;->b(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/build/d;->finish()V

    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/d;->a:Lcom/alibaba/security/biometrics/AuthContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/d;->e:Landroid/os/Handler;

    new-instance v1, Lhxv;

    invoke-direct {v1, p0, p1}, Lhxv;-><init>(Lcom/alibaba/security/biometrics/build/d;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/alibaba/security/biometrics/build/d;->setVolumeControlStream(I)V

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/build/d;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/build/d;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/build/d;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "K_PROCESSOR_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/security/biometrics/build/d;->b:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor;->b(Ljava/lang/String;)Lcom/alibaba/security/biometrics/AuthContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/security/biometrics/build/d;->a:Lcom/alibaba/security/biometrics/AuthContext;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "AuthActivity"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/security/biometrics/build/d;->d:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/d;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/security/biometrics/build/d;->d:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/security/biometrics/build/d;->e:Landroid/os/Handler;

    return-void
.end method
