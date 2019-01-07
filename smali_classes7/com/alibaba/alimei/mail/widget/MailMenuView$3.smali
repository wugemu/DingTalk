.class final Lcom/alibaba/alimei/mail/widget/MailMenuView$3;
.super Ljava/lang/Object;
.source "MailMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/widget/MailMenuView;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/widget/AccountItemView;

.field final synthetic b:Lcom/alibaba/alimei/mail/widget/MailMenuView;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/widget/MailMenuView;Lcom/alibaba/alimei/mail/widget/AccountItemView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/widget/MailMenuView;

    .prologue
    .line 376
    iput-object p1, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView$3;->b:Lcom/alibaba/alimei/mail/widget/MailMenuView;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView$3;->a:Lcom/alibaba/alimei/mail/widget/AccountItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 2313
    const-string/jumbo v0, "mail_folderlist_account"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "pref_key_mail_account_new_dot"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView$3;->a:Lcom/alibaba/alimei/mail/widget/AccountItemView;

    invoke-virtual {v3}, Lcom/alibaba/alimei/mail/widget/AccountItemView;->getAccountName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 381
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView$3;->b:Lcom/alibaba/alimei/mail/widget/MailMenuView;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/widget/MailMenuView;->c(Lcom/alibaba/alimei/mail/widget/MailMenuView;)Lcom/alibaba/alimei/mail/widget/MailMenuView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView$3;->b:Lcom/alibaba/alimei/mail/widget/MailMenuView;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/widget/MailMenuView;->c(Lcom/alibaba/alimei/mail/widget/MailMenuView;)Lcom/alibaba/alimei/mail/widget/MailMenuView$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView$3;->a:Lcom/alibaba/alimei/mail/widget/AccountItemView;

    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/widget/AccountItemView;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/mail/widget/MailMenuView$a;->b(Ljava/lang/String;)V

    .line 384
    :cond_0
    return-void
.end method
