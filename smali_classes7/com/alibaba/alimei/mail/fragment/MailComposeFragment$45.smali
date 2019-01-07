.class final Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$45;
.super Ljava/lang/Object;
.source "MailComposeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->e(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 1029
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$45;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$45;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 1032
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$45;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$45;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1033
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$45;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->d(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$45;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/AddressModel;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a(Lcom/alibaba/alimei/sdk/model/AddressModel;Z)V

    .line 1034
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$45;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$45;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/AddressModel;

    invoke-static {v1, v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Lcom/alibaba/alimei/sdk/model/AddressModel;)Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 1036
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$45;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->e(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1037
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$45;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->f(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1038
    return-void
.end method
