.class public final Lhxr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alibaba/security/biometrics/build/cl;


# direct methods
.method public constructor <init>(Lcom/alibaba/security/biometrics/build/cl;)V
    .locals 0

    iput-object p1, p0, Lhxr;->a:Lcom/alibaba/security/biometrics/build/cl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lhxr;->a:Lcom/alibaba/security/biometrics/build/cl;

    invoke-static {v0}, Lcom/alibaba/security/biometrics/build/cl;->a(Lcom/alibaba/security/biometrics/build/cl;)Lcom/alibaba/security/biometrics/build/cl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/build/cl;->dismiss()V

    iget-object v0, p0, Lhxr;->a:Lcom/alibaba/security/biometrics/build/cl;

    invoke-static {v0}, Lcom/alibaba/security/biometrics/build/cl;->d(Lcom/alibaba/security/biometrics/build/cl;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lhxr;->a:Lcom/alibaba/security/biometrics/build/cl;

    invoke-static {v0}, Lcom/alibaba/security/biometrics/build/cl;->d(Lcom/alibaba/security/biometrics/build/cl;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->callOnClick()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lhxr;->a:Lcom/alibaba/security/biometrics/build/cl;

    invoke-static {v0}, Lcom/alibaba/security/biometrics/build/cl;->e(Lcom/alibaba/security/biometrics/build/cl;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lhxr;->a:Lcom/alibaba/security/biometrics/build/cl;

    invoke-static {v0}, Lcom/alibaba/security/biometrics/build/cl;->e(Lcom/alibaba/security/biometrics/build/cl;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->callOnClick()Z

    goto :goto_0
.end method
