.class public Lcom/alibaba/alimei/mail/widget/MailGuideFullScreenDialog;
.super Landroid/app/Dialog;
.source "MailGuideFullScreenDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/mail/widget/MailGuideFullScreenDialog$a;
    }
.end annotation


# instance fields
.field public a:Lcom/alibaba/alimei/mail/widget/MailGuideFullScreenDialog$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    sget v0, Laxo$j;->FullScreenDialog:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/alimei/mail/widget/MailGuideFullScreenDialog;-><init>(Landroid/content/Context;I)V

    .line 25
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 29
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 48
    if-nez p1, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 53
    .local v0, "id":I
    sget v1, Laxo$f;->tv_start:I

    if-ne v0, v1, :cond_2

    .line 2144
    const-string/jumbo v1, "mail_sign_start"

    invoke-static {v1}, Lafe;->a(Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/MailGuideFullScreenDialog;->a:Lcom/alibaba/alimei/mail/widget/MailGuideFullScreenDialog$a;

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/MailGuideFullScreenDialog;->a:Lcom/alibaba/alimei/mail/widget/MailGuideFullScreenDialog$a;

    invoke-interface {v1}, Lcom/alibaba/alimei/mail/widget/MailGuideFullScreenDialog$a;->a()V

    goto :goto_0

    .line 58
    :cond_2
    sget v1, Laxo$f;->tv_skip:I

    if-ne v0, v1, :cond_0

    .line 2148
    const-string/jumbo v1, "mail_sign_skip"

    invoke-static {v1}, Lafe;->a(Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/MailGuideFullScreenDialog;->a:Lcom/alibaba/alimei/mail/widget/MailGuideFullScreenDialog$a;

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/MailGuideFullScreenDialog;->a:Lcom/alibaba/alimei/mail/widget/MailGuideFullScreenDialog$a;

    invoke-interface {v1}, Lcom/alibaba/alimei/mail/widget/MailGuideFullScreenDialog$a;->b()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 34
    sget v0, Laxo$g;->mail_fullscreen_dialog:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/widget/MailGuideFullScreenDialog;->setContentView(I)V

    .line 2040
    sget v0, Laxo$f;->tv_start:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/widget/MailGuideFullScreenDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2041
    sget v1, Laxo$f;->tv_skip:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/widget/MailGuideFullScreenDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2043
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2044
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 68
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 69
    return-void
.end method
