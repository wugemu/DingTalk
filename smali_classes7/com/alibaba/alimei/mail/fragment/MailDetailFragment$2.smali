.class final Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$2;
.super Ljava/lang/Object;
.source "MailDetailFragment.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;
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
        "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
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
    .line 1127
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 3
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1165
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v1, "CMail"

    const-string/jumbo v2, "mail.maildetail.appear"

    invoke-static {v0, v1, v2}, Lyn;->c(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1175
    :goto_0
    return-void

    .line 1171
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->C:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 1172
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->C:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1174
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;ZZ)V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 1127
    check-cast p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    .line 2130
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v1, "CMail"

    const-string/jumbo v2, "mail.maildetail.appear"

    const-string/jumbo v3, "loadFromEmlFile"

    invoke-static {v0, v1, v2, v3}, Lyn;->b(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2132
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v1, "CMail"

    const-string/jumbo v2, "mail.maildetail.appear"

    invoke-static {v0, v1, v2}, Lyn;->b(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 2135
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->F()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2139
    if-nez p1, :cond_1

    .line 2140
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    sget v1, Laxo$i;->alm_load_failed:I

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    .line 2142
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v0, p1}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;Lcom/alibaba/alimei/sdk/model/MailDetailModel;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    .line 2143
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->q(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)V

    .line 2145
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->t(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2146
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2147
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$a;->b()V

    .line 2150
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->C:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 2151
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->C:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2154
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->e(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    move-result-object v0

    iget-boolean v0, v0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->hasMailHtmlBodyLoaded:Z

    if-eqz v0, :cond_0

    .line 2157
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v0, v4, v4}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;ZZ)V

    .line 2158
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->e(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->textContent:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->e(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->htmlContent:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
