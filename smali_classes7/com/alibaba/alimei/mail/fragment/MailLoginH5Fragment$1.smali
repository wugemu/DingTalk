.class final Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment$1;
.super Ljava/lang/Object;
.source "MailLoginH5Fragment.java"

# interfaces
.implements Lcom/alibaba/alimei/oauth/widget/OAuthWebViewObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 135
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v1, "CMail"

    const-string/jumbo v2, "mail.loginpage.h5"

    invoke-static {v0, v1, v2}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public final a(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 3
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 177
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->F()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    if-eqz p1, :cond_2

    .line 182
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getApiError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getApiError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getApiError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/SDKError;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Laez;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-static {v0, v1}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->a(Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;I)V

    .line 186
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 2
    .param p1, "data"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 169
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->F()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    invoke-static {}, Lacs;->a()Lacs;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lacs;->a(Z)V

    .line 173
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;

    invoke-static {v0, p1}, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->a(Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 140
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->a(Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;I)V

    .line 144
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v1, "CMail"

    const-string/jumbo v2, "mail.loginpage.h5"

    invoke-static {v0, v1, v2}, Lyn;->b(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 149
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->a(Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;I)V

    .line 153
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v1, "CMail"

    const-string/jumbo v2, "mail.loginpage.h5"

    invoke-static {v0, v1, v2}, Lyn;->b(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->F()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    goto :goto_0
.end method
