.class public final Lhvm;
.super Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/alibaba/security/biometrics/AuthContext;)Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/security/biometrics/AuthContext;->d()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/security/biometrics/AuthContext;->b()Lcom/alibaba/security/biometrics/AuthContext$AuthType;

    move-result-object v2

    sget-object v3, Lcom/alibaba/security/biometrics/AuthContext$AuthType;->BIO_FACE:Lcom/alibaba/security/biometrics/AuthContext$AuthType;

    if-ne v2, v3, :cond_3

    invoke-virtual {p1}, Lcom/alibaba/security/biometrics/AuthContext;->d()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "K_FACEDETECT_ONLY"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/alibaba/security/biometrics/AuthContext;->d()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "SDK_TYPE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v0, :cond_3

    invoke-virtual {p1}, Lcom/alibaba/security/biometrics/AuthContext;->d()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "K_ACTION_T"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method protected final b(Lcom/alibaba/security/biometrics/AuthContext;)Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/security/biometrics/AuthContext;->d()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/security/biometrics/AuthContext;->d()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "K_BACK_CAMERA_CFG"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/security/biometrics/AuthContext;->d()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "K_BACK_CAMERA_CFG"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhyv;->a(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/alibaba/security/biometrics/build/bg;

    invoke-virtual {p1}, Lcom/alibaba/security/biometrics/AuthContext;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/security/biometrics/build/bg;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/alibaba/security/biometrics/AuthContext;->d()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Lhwm;->a(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/security/biometrics/AuthContext;->c()Lcom/alibaba/security/biometrics/AuthContext$b;

    move-result-object v1

    .line 1000
    iget-object v2, p0, Lhwh;->f:Lcom/alibaba/security/biometrics/AuthContext;

    .line 0
    invoke-interface {v0}, Lhwm;->a()I

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/alibaba/security/biometrics/AuthContext$b;->a(Lcom/alibaba/security/biometrics/AuthContext;I)V

    :goto_0
    return v3

    :cond_1
    iget-object v0, p0, Lhvm;->b:Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor$a;

    if-nez v0, :cond_2

    new-instance v0, Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor$a;

    invoke-direct {v0, p0}, Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor$a;-><init>(Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor;)V

    iput-object v0, p0, Lhvm;->b:Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor$a;

    new-instance v0, Landroid/content/IntentFilter;

    iget-object v1, p0, Lhvm;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/security/biometrics/AuthContext;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lhxw;->a(Landroid/content/Context;)Lhxw;

    move-result-object v1

    iget-object v2, p0, Lhvm;->b:Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor$a;

    invoke-virtual {v1, v2, v0}, Lhxw;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_2
    invoke-virtual {p1, p0}, Lcom/alibaba/security/biometrics/AuthContext;->a(Lhwh;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/security/biometrics/AuthContext;->d()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "STEP_NAV"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v3, :cond_3

    invoke-virtual {p1}, Lcom/alibaba/security/biometrics/AuthContext;->a()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/alibaba/security/biometrics/face/auth/view/FaceLivenessNavActitity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "K_PROCESSOR_NAME"

    iget-object v2, p0, Lhvm;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-class v1, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lhvm;->a(Ljava/lang/String;Lcom/alibaba/security/biometrics/AuthContext;)V

    .line 2000
    iget-object v1, p0, Lhwh;->f:Lcom/alibaba/security/biometrics/AuthContext;

    .line 0
    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/AuthContext;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/security/biometrics/AuthContext;->a()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/alibaba/security/biometrics/face/auth/FaceLivenessActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method
