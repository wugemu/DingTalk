.class final Lcom/alibaba/alimei/mail/activity/MailComposeActivity$10;
.super Ljava/lang/Object;
.source "MailComposeActivity.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MailComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$10;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "e"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 267
    sget-object v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 268
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 242
    check-cast p1, Ljava/util/List;

    .line 1245
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$10;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1248
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_1

    .line 1249
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$10;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    sget v1, Laxo$f;->sender_selecter_icon:I

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1250
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$10;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    sget v1, Laxo$f;->sender_selecter_btn:I

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1251
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$10;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    sget v1, Laxo$f;->sender_selecter_btn:I

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$10$1;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$10$1;-><init>(Lcom/alibaba/alimei/mail/activity/MailComposeActivity$10;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    :goto_0
    return-void

    .line 1260
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$10;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    sget v1, Laxo$f;->sender_selecter_icon:I

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1261
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$10;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    sget v1, Laxo$f;->sender_selecter_btn:I

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1262
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$10;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    sget v1, Laxo$f;->sender_selecter_btn:I

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method
