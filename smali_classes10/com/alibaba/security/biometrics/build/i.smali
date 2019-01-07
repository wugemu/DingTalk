.class public Lcom/alibaba/security/biometrics/build/i;
.super Lcom/alibaba/security/biometrics/build/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/security/biometrics/build/i$a;
    }
.end annotation


# instance fields
.field protected f:I

.field protected g:Lcom/alibaba/security/biometrics/build/i$a;

.field protected h:Lhvj;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/security/biometrics/build/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)Lcom/alibaba/security/biometrics/build/cl;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 0
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/build/i;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/alibaba/security/biometrics/build/cl$a;

    invoke-direct {v0, p0}, Lcom/alibaba/security/biometrics/build/cl$a;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_2

    .line 3000
    iput-object p2, v0, Lcom/alibaba/security/biometrics/build/cl$a;->b:Ljava/lang/String;

    .line 0
    :cond_2
    if-eqz p3, :cond_3

    .line 4000
    iput-object p3, v0, Lcom/alibaba/security/biometrics/build/cl$a;->c:Ljava/lang/String;

    .line 0
    :cond_3
    if-eqz p4, :cond_4

    invoke-virtual {v0, p4, p5}, Lcom/alibaba/security/biometrics/build/cl$a;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/security/biometrics/build/cl$a;

    :cond_4
    if-eqz p6, :cond_5

    invoke-virtual {v0, p6, p7}, Lcom/alibaba/security/biometrics/build/cl$a;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/security/biometrics/build/cl$a;

    .line 5000
    :cond_5
    iput-boolean v1, v0, Lcom/alibaba/security/biometrics/build/cl$a;->h:Z

    .line 0
    iput p1, p0, Lcom/alibaba/security/biometrics/build/i;->f:I

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/build/cl$a;->a()Lcom/alibaba/security/biometrics/build/cl;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/security/biometrics/build/cl;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0, v1}, Lcom/alibaba/security/biometrics/build/cl;->setCancelable(Z)V

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/build/cl;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    goto :goto_0
.end method

.method public final a()Lhvj;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/i;->h:Lhvj;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 0
    invoke-super {p0, p1}, Lcom/alibaba/security/biometrics/build/d;->onCreate(Landroid/os/Bundle;)V

    .line 2000
    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/d;->a:Lcom/alibaba/security/biometrics/AuthContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/d;->a:Lcom/alibaba/security/biometrics/AuthContext;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/AuthContext;->d()Landroid/os/Bundle;

    move-result-object v0

    .line 1000
    :goto_0
    invoke-static {v0}, Lhvj;->a(Landroid/os/Bundle;)Lhvj;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/security/biometrics/build/i;->h:Lhvj;

    .line 0
    return-void

    .line 2000
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/alibaba/security/biometrics/build/d;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/alibaba/security/biometrics/build/d;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/alibaba/security/biometrics/build/d;->onResume()V

    return-void
.end method
