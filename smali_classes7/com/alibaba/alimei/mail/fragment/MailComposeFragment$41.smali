.class final Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$41;
.super Ljava/lang/Object;
.source "MailComposeFragment.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->j()V
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 4677
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$41;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 6
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 4695
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4696
    .local v1, "extra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "desc"

    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4697
    const/16 v2, 0x642

    const-string/jumbo v3, "\u4fdd\u5b58\u8349\u7a3f\u5931\u8d25"

    invoke-static {v2, v1, v3}, Lajg;->a(ILjava/util/HashMap;Ljava/lang/String;)V

    .line 4698
    const-string/jumbo v2, "write mail topim"

    const-string/jumbo v3, "1"

    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v4}, Lyy;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lyo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4699
    const-string/jumbo v2, "MailComposeFragment"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "save mail draft"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4700
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$41;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-virtual {v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->F()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4707
    :cond_0
    :goto_0
    return-void

    .line 4703
    :cond_1
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$41;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-virtual {v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 4704
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 4705
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 4677
    check-cast p1, Ljava/lang/Long;

    .line 5680
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$41;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->F()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5684
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$41;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->ab(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 5685
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$41;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;J)V

    .line 5687
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$41;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 5688
    if-eqz v0, :cond_1

    .line 5689
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 4677
    :cond_1
    return-void
.end method
