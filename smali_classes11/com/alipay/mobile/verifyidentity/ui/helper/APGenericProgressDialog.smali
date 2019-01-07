.class public Lcom/alipay/mobile/verifyidentity/ui/helper/APGenericProgressDialog;
.super Landroid/app/AlertDialog;
.source "APGenericProgressDialog.java"


# instance fields
.field private a:Landroid/widget/ProgressBar;

.field private b:Landroid/widget/TextView;

.field private c:Ljava/lang/CharSequence;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 22
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 26
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v1, 0x8

    .line 30
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 31
    sget v0, Ligh$g;->generic_progress_dialog:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/APGenericProgressDialog;->setContentView(I)V

    .line 32
    const v0, 0x102000d

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/APGenericProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/APGenericProgressDialog;->a:Landroid/widget/ProgressBar;

    .line 33
    sget v0, Ligh$f;->message:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/APGenericProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/APGenericProgressDialog;->b:Landroid/widget/TextView;

    .line 1040
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/APGenericProgressDialog;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/APGenericProgressDialog;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1042
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/APGenericProgressDialog;->c:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/APGenericProgressDialog;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1043
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/APGenericProgressDialog;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1046
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/APGenericProgressDialog;->a:Landroid/widget/ProgressBar;

    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/APGenericProgressDialog;->e:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 36
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/APGenericProgressDialog;->d:Z

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/APGenericProgressDialog;->setIndeterminate(Z)V

    .line 37
    return-void

    :cond_2
    move v0, v1

    .line 1046
    goto :goto_0
.end method

.method public setIndeterminate(Z)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/APGenericProgressDialog;->a:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/APGenericProgressDialog;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/APGenericProgressDialog;->d:Z

    goto :goto_0
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/APGenericProgressDialog;->c:Ljava/lang/CharSequence;

    .line 52
    return-void
.end method

.method public setProgressVisiable(Z)V
    .locals 0

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/APGenericProgressDialog;->e:Z

    .line 56
    return-void
.end method
