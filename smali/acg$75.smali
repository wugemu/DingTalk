.class final Lacg$75;
.super Lcmi;
.source "MailNavigator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lacg;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lcfa;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Landroid/os/Bundle;

.field final synthetic d:Z

.field final synthetic e:I


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;Landroid/content/Context;Landroid/os/Bundle;ZI)V
    .locals 0

    .prologue
    .line 4882
    iput-object p1, p0, Lacg$75;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    iput-object p2, p0, Lacg$75;->b:Landroid/content/Context;

    iput-object p3, p0, Lacg$75;->c:Landroid/os/Bundle;

    iput-boolean p4, p0, Lacg$75;->d:Z

    iput p5, p0, Lacg$75;->e:I

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 4922
    const-string/jumbo v0, "navToCollectionServerConfig, getMailConfigByOrgID:"

    invoke-static {v0, p1, p2, p3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4923
    iget-object v0, p0, Lacg$75;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lacg$75;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4924
    iget-object v0, p0, Lacg$75;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 4925
    :cond_0
    iget-object v0, p0, Lacg$75;->b:Landroid/content/Context;

    iget-object v1, p0, Lacg$75;->c:Landroid/os/Bundle;

    iget v2, p0, Lacg$75;->e:I

    invoke-static {v0, v1, v2}, Lacg;->a(Landroid/content/Context;Landroid/os/Bundle;I)V

    .line 4926
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 4882
    check-cast p1, Lcfa;

    .line 5885
    iget-object v0, p0, Lacg$75;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lacg$75;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5886
    iget-object v0, p0, Lacg$75;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 5887
    :cond_0
    if-nez p1, :cond_1

    .line 5888
    iget-object v0, p0, Lacg$75;->b:Landroid/content/Context;

    iget-object v1, p0, Lacg$75;->c:Landroid/os/Bundle;

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lacg;->a(Landroid/content/Context;Landroid/os/Bundle;I)V

    .line 5895
    :goto_0
    return-void

    .line 5893
    :cond_1
    iget-object v0, p1, Lcfa;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lacg$75;->d:Z

    if-nez v0, :cond_2

    .line 5894
    iget-object v0, p0, Lacg$75;->b:Landroid/content/Context;

    sget v1, Laxo$i;->dt_cmail_server_config_domain_miss:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lacg;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 5898
    :cond_2
    iget-object v0, p1, Lcfa;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5899
    iget-object v0, p0, Lacg$75;->c:Landroid/os/Bundle;

    const-string/jumbo v1, "domain"

    iget-object v2, p1, Lcfa;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5903
    :cond_3
    iget-object v0, p1, Lcfa;->p:Lccx;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcfa;->p:Lccx;

    iget-object v0, v0, Lccx;->a:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcfa;->p:Lccx;

    iget-object v0, v0, Lccx;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_6

    .line 5904
    iget-object v0, p1, Lcfa;->p:Lccx;

    iget-object v0, v0, Lccx;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccw;

    .line 5905
    iget-object v2, v0, Lccw;->a:Lcom/alibaba/android/dingtalk/userbase/idl/AgentSettingTypeEnum;

    sget-object v3, Lcom/alibaba/android/dingtalk/userbase/idl/AgentSettingTypeEnum;->IMAP:Lcom/alibaba/android/dingtalk/userbase/idl/AgentSettingTypeEnum;

    if-ne v2, v3, :cond_5

    .line 5906
    iget-object v2, p0, Lacg$75;->c:Landroid/os/Bundle;

    const-string/jumbo v3, "imap_server"

    iget-object v4, v0, Lccw;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5907
    iget-object v2, p0, Lacg$75;->c:Landroid/os/Bundle;

    const-string/jumbo v3, "imap_port"

    iget-object v4, v0, Lccw;->c:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5908
    iget-object v2, p0, Lacg$75;->c:Landroid/os/Bundle;

    const-string/jumbo v3, "imap_ssl"

    iget-object v0, v0, Lccw;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 5909
    :cond_5
    iget-object v2, v0, Lccw;->a:Lcom/alibaba/android/dingtalk/userbase/idl/AgentSettingTypeEnum;

    sget-object v3, Lcom/alibaba/android/dingtalk/userbase/idl/AgentSettingTypeEnum;->SMTP:Lcom/alibaba/android/dingtalk/userbase/idl/AgentSettingTypeEnum;

    if-ne v2, v3, :cond_4

    .line 5910
    iget-object v2, p0, Lacg$75;->c:Landroid/os/Bundle;

    const-string/jumbo v3, "smtp_server"

    iget-object v4, v0, Lccw;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5911
    iget-object v2, p0, Lacg$75;->c:Landroid/os/Bundle;

    const-string/jumbo v3, "smtp_port"

    iget-object v4, v0, Lccw;->c:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5912
    iget-object v2, p0, Lacg$75;->c:Landroid/os/Bundle;

    const-string/jumbo v3, "smtp_ssl"

    iget-object v0, v0, Lccw;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 5917
    :cond_6
    iget-object v0, p0, Lacg$75;->b:Landroid/content/Context;

    iget-object v1, p0, Lacg$75;->c:Landroid/os/Bundle;

    iget v2, p0, Lacg$75;->e:I

    invoke-static {v0, v1, v2}, Lacg;->a(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto/16 :goto_0
.end method
