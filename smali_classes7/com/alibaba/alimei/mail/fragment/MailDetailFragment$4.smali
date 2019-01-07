.class final Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$4;
.super Ljava/lang/Object;
.source "MailDetailFragment.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->g()V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .prologue
    .line 1261
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$4;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 4
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1264
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v1, "CMail"

    const-string/jumbo v2, "mail.maildetail.appear"

    invoke-static {v0, v1, v2}, Lyn;->c(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    const-string/jumbo v0, "MailDetailFragment.loadBodyFromServer"

    .line 1682
    const-string/jumbo v1, "mail_detail_open_fail_click"

    invoke-static {v1}, Lafe;->a(Ljava/lang/String;)V

    .line 1684
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->isCommonProtocolError()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1685
    const-string/jumbo v1, ""

    invoke-static {v0, v1, p1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 1269
    :cond_0
    :goto_0
    const-string/jumbo v0, "MailDetailFragment"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 1272
    const-string/jumbo v0, "mail.detailLoad"

    invoke-static {v0, p1}, Lafe;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 1274
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$4;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1292
    :cond_1
    :goto_1
    return-void

    .line 1688
    :cond_2
    invoke-static {p1}, Lafg;->a(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Ljava/lang/String;

    move-result-object v1

    .line 1689
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    const-string/jumbo v3, ", "

    aput-object v3, v2, v0

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lafg;->a(Ljava/lang/String;)V

    .line 1691
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->isNetworkError()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1692
    const/16 v0, 0x645

    const-string/jumbo v2, "\u90ae\u4ef6\u8be6\u60c5\u6253\u5f00\u5931\u8d25"

    invoke-static {v0, v1, v2}, Lajg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1277
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$4;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1278
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$4;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$4$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$4$1;-><init>(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$4;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1261
    check-cast p1, Ljava/lang/String;

    .line 2296
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v1, "CMail"

    const-string/jumbo v2, "mail.maildetail.appear"

    const-string/jumbo v3, "loadBodyFromServer"

    invoke-static {v0, v1, v2, v3}, Lyn;->b(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2298
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v1, "CMail"

    const-string/jumbo v2, "mail.maildetail.appear"

    invoke-static {v0, v1, v2}, Lyn;->b(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 2678
    const-string/jumbo v0, "mail_detail_open_success_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 2301
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$4;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->F()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2305
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$4;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$4;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$4;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->e(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2306
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$4;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$4$2;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$4$2;-><init>(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1261
    :cond_0
    return-void
.end method
