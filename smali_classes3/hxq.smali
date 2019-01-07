.class public final Lhxq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alibaba/security/biometrics/build/cl;


# direct methods
.method public constructor <init>(Lcom/alibaba/security/biometrics/build/cl;)V
    .locals 0

    iput-object p1, p0, Lhxq;->a:Lcom/alibaba/security/biometrics/build/cl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    iget-object v0, p0, Lhxq;->a:Lcom/alibaba/security/biometrics/build/cl;

    invoke-static {v0}, Lcom/alibaba/security/biometrics/build/cl;->a(Lcom/alibaba/security/biometrics/build/cl;)Lcom/alibaba/security/biometrics/build/cl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/build/cl;->dismiss()V

    iget-object v0, p0, Lhxq;->a:Lcom/alibaba/security/biometrics/build/cl;

    invoke-static {v0}, Lcom/alibaba/security/biometrics/build/cl;->c(Lcom/alibaba/security/biometrics/build/cl;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhxq;->a:Lcom/alibaba/security/biometrics/build/cl;

    invoke-static {v0}, Lcom/alibaba/security/biometrics/build/cl;->c(Lcom/alibaba/security/biometrics/build/cl;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lhxq;->a:Lcom/alibaba/security/biometrics/build/cl;

    invoke-static {v1}, Lcom/alibaba/security/biometrics/build/cl;->a(Lcom/alibaba/security/biometrics/build/cl;)Lcom/alibaba/security/biometrics/build/cl;

    move-result-object v1

    const/4 v2, -0x2

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    return-void
.end method
