.class final Lcom/alibaba/alimei/mail/activity/MailComposeActivity$5;
.super Ljava/lang/Object;
.source "MailComposeActivity.java"

# interfaces
.implements Lafo;


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
        "Lafo",
        "<",
        "Lsm;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    .prologue
    .line 1207
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$5;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lafn;Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1207
    .line 2210
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$5;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->f:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    if-eqz v0, :cond_1

    .line 2213
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$5;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->c(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3140
    iget-object v1, p1, Lafn;->c:Ljava/lang/String;

    .line 2213
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2214
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$5;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$5;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->c(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4140
    iget-object v2, p1, Lafn;->c:Ljava/lang/String;

    .line 2214
    invoke-static {v0, v1, v2}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->a(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2216
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$5;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->c(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 5140
    iget-object v1, p1, Lafn;->c:Ljava/lang/String;

    .line 2216
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2217
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$5;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    iget-object v1, v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->f:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .line 6140
    iget-object v2, p1, Lafn;->c:Ljava/lang/String;

    .line 6160
    iget-object v0, p1, Lafn;->e:Ljava/lang/Object;

    .line 2217
    check-cast v0, Ljava/lang/String;

    .line 6203
    iget-object v3, v1, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    new-instance v4, Lcom/alibaba/alimei/sdk/model/AddressModel;

    invoke-direct {v4, v2}, Lcom/alibaba/alimei/sdk/model/AddressModel;-><init>(Ljava/lang/String;)V

    iput-object v4, v3, Lagz;->v:Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 6205
    iput-object v0, v1, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->w:Ljava/lang/String;

    .line 1207
    :cond_1
    return-void
.end method
