.class public Lcom/alibaba/security/biometrics/build/cl;
.super Landroid/app/Dialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/security/biometrics/build/cl$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/content/DialogInterface$OnClickListener;

.field private j:Landroid/content/DialogInterface$OnClickListener;

.field private k:Lcom/alibaba/security/biometrics/build/cl;

.field private l:Z

.field private m:Landroid/view/View;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 1

    sget v0, Lhyx$h;->ConfirmDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/alibaba/security/biometrics/build/cl;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/alibaba/security/biometrics/build/cl;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/security/biometrics/build/cl;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/security/biometrics/build/cl;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/alibaba/security/biometrics/build/cl;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/security/biometrics/build/cl;->i:Landroid/content/DialogInterface$OnClickListener;

    iput-object p7, p0, Lcom/alibaba/security/biometrics/build/cl;->j:Landroid/content/DialogInterface$OnClickListener;

    iput-object p0, p0, Lcom/alibaba/security/biometrics/build/cl;->k:Lcom/alibaba/security/biometrics/build/cl;

    iput-boolean p8, p0, Lcom/alibaba/security/biometrics/build/cl;->l:Z

    return-void
.end method

.method public static synthetic a(Lcom/alibaba/security/biometrics/build/cl;)Lcom/alibaba/security/biometrics/build/cl;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/cl;->k:Lcom/alibaba/security/biometrics/build/cl;

    return-object v0
.end method

.method public static synthetic b(Lcom/alibaba/security/biometrics/build/cl;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/cl;->i:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method public static synthetic c(Lcom/alibaba/security/biometrics/build/cl;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/cl;->j:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method public static synthetic d(Lcom/alibaba/security/biometrics/build/cl;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/cl;->g:Landroid/view/View;

    return-object v0
.end method

.method public static synthetic e(Lcom/alibaba/security/biometrics/build/cl;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/cl;->h:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v7, 0x8

    .line 0
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 1000
    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/cl;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Lhyx$e;->face_confirm_dialog:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/alibaba/security/biometrics/build/cl;->setContentView(Landroid/view/View;)V

    sget v0, Lhyx$d;->abface_dialog_ok_text:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/security/biometrics/build/cl;->n:Landroid/widget/TextView;

    sget v0, Lhyx$d;->abface_dialog_cancel_text:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/security/biometrics/build/cl;->o:Landroid/widget/TextView;

    sget v0, Lhyx$d;->abface_dialog_msg:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/security/biometrics/build/cl;->p:Landroid/widget/TextView;

    sget v0, Lhyx$d;->abface_dialog_msg_2:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/security/biometrics/build/cl;->q:Landroid/widget/TextView;

    sget v0, Lhyx$d;->abface_dialog_split:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    sget v0, Lhyx$d;->abface_dialog_ok:I

    invoke-virtual {p0, v0}, Lcom/alibaba/security/biometrics/build/cl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/security/biometrics/build/cl;->g:Landroid/view/View;

    sget v0, Lhyx$d;->abface_dialog_cancel:I

    invoke-virtual {p0, v0}, Lcom/alibaba/security/biometrics/build/cl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/security/biometrics/build/cl;->h:Landroid/view/View;

    sget v0, Lhyx$d;->abface_dialog_msg_icons:I

    invoke-virtual {p0, v0}, Lcom/alibaba/security/biometrics/build/cl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/security/biometrics/build/cl;->f:Landroid/view/View;

    sget v0, Lhyx$d;->abface_dialog_button_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/security/biometrics/build/cl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/security/biometrics/build/cl;->m:Landroid/view/View;

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/cl;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    iget-object v3, p0, Lcom/alibaba/security/biometrics/build/cl;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_0
    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/cl;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/cl;->g:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    move v0, v2

    move v3, v1

    :goto_0
    iget-object v5, p0, Lcom/alibaba/security/biometrics/build/cl;->e:Ljava/lang/String;

    if-eqz v5, :cond_1

    const-string/jumbo v5, ""

    iget-object v6, p0, Lcom/alibaba/security/biometrics/build/cl;->e:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_1
    iget-object v2, p0, Lcom/alibaba/security/biometrics/build/cl;->h:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/alibaba/security/biometrics/build/cl;->o:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    move v2, v1

    :goto_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/cl;->m:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/cl;->p:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alibaba/security/biometrics/build/cl;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/cl;->c:Ljava/lang/String;

    invoke-static {v0}, Lhwu;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/cl;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/cl;->g:Landroid/view/View;

    new-instance v4, Lhxp;

    invoke-direct {v4, p0}, Lhxp;-><init>(Lcom/alibaba/security/biometrics/build/cl;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/cl;->h:Landroid/view/View;

    new-instance v4, Lhxq;

    invoke-direct {v4, p0}, Lhxq;-><init>(Lcom/alibaba/security/biometrics/build/cl;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v2, :cond_3

    if-nez v3, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/cl;->m:Landroid/view/View;

    new-instance v2, Lhxr;

    invoke-direct {v2, p0}, Lhxr;-><init>(Lcom/alibaba/security/biometrics/build/cl;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/build/cl;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "message:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alibaba/security/biometrics/build/cl;->p:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/security/biometrics/build/cl;->f:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v1, p0, Lcom/alibaba/security/biometrics/build/cl;->l:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/alibaba/security/biometrics/build/cl;->f:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 0
    return-void

    .line 1000
    :cond_6
    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/cl;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/cl;->n:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/security/biometrics/build/cl;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v1

    move v3, v2

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/cl;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/cl;->o:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alibaba/security/biometrics/build/cl;->e:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v1

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/cl;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/cl;->q:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alibaba/security/biometrics/build/cl;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
