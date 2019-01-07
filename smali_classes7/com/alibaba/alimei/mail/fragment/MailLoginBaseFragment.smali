.class public abstract Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;
.super Lcom/alibaba/alimei/mail/fragment/MailBaseFragment;
.source "MailLoginBaseFragment.java"


# instance fields
.field protected a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field protected b:Landroid/os/Handler;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected e:I

.field public f:Z

.field public g:Ljava/lang/String;

.field protected h:Ljava/lang/String;

.field protected i:Ljava/lang/String;

.field protected j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected k:Ljava/lang/String;

.field protected l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Labf;",
            ">;"
        }
    .end annotation
.end field

.field protected m:Ljava/lang/String;

.field protected n:Z

.field protected o:Ljava/lang/String;

.field protected p:Ljava/lang/String;

.field protected q:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailBaseFragment;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 50
    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->b:Landroid/os/Handler;

    .line 51
    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->c:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->d:Ljava/util/List;

    .line 54
    const/16 v0, 0x64

    iput v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->e:I

    .line 55
    iput-boolean v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->f:Z

    .line 65
    iput-boolean v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->n:Z

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->q:I

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0
    .param p1, "mailLoginType"    # I

    .prologue
    .line 169
    iput p1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->e:I

    .line 170
    return-void
.end method

.method protected abstract a(Landroid/view/View;)V
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V
    .locals 0
    .param p1, "baseActivity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 77
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .param p1, "mailAddressInputHintString"    # Ljava/lang/String;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->h:Ljava/lang/String;

    .line 186
    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "isAgent"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 157
    invoke-static {}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->a()Lcom/alibaba/alimei/mail/utils/MailLoginTrace;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 159
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->j:Ljava/util/Map;

    const-string/jumbo v1, "MailLoginNativeFragment.handleMessage"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "errorCode:"

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    const-string/jumbo v3, ", errorMsg:"

    aput-object v3, v2, v6

    aput-object p2, v2, v7

    .line 161
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2720
    const-string/jumbo v3, "mail_login_fail_mailbox_click"

    invoke-static {v3, v0}, Lafe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 2722
    new-array v0, v7, [Ljava/lang/String;

    aput-object v1, v0, v4

    const-string/jumbo v1, ", "

    aput-object v1, v0, v5

    aput-object v2, v0, v6

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lafg;->a(Ljava/lang/String;)V

    .line 2724
    if-eqz v2, :cond_0

    const-string/jumbo v0, "1101"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2727
    :cond_0
    const/16 v0, 0x64a

    const-string/jumbo v1, "\u767b\u5f55\u5931\u8d25"

    invoke-static {v0, v2, v1}, Lajg;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "defaultEmail"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p2, "distributionMailList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->c:Ljava/lang/String;

    .line 94
    iput-object p2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->d:Ljava/util/List;

    .line 95
    return-void
.end method

.method public abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public final a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, "statisticArgsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->j:Ljava/util/Map;

    .line 194
    return-void
.end method

.method protected final a(Z)V
    .locals 7
    .param p1, "isAgent"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 132
    invoke-static {}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->a()Lcom/alibaba/alimei/mail/utils/MailLoginTrace;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->a(Z)V

    .line 133
    invoke-static {}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->a()Lcom/alibaba/alimei/mail/utils/MailLoginTrace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->b()V

    .line 135
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->j:Ljava/util/Map;

    .line 1959
    const-string/jumbo v3, "mail_login_success_mailbox_click"

    invoke-static {v3, v2}, Lafe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1960
    if-eqz v2, :cond_0

    .line 1961
    const-string/jumbo v3, "type"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1962
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1963
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "mail_login_success_mailbox_click"

    aput-object v4, v3, v6

    const/4 v4, 0x1

    const-string/jumbo v5, "_"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v2, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lafe;->a(Ljava/lang/String;)V

    .line 137
    :cond_0
    iget-boolean v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->f:Z

    if-eqz v2, :cond_1

    .line 138
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v6, v6}, Lacg;->a(Landroid/content/Context;IZ)V

    .line 142
    :cond_1
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v1

    .line 143
    .local v1, "mailInterface":Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->h()V

    .line 145
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "mail_login_success"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "mail_request_ticket"

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->g:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    invoke-virtual {v2, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 148
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->k()Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->b()V

    .line 150
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->k()Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->i()V

    .line 151
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .param p1, "loginTipsLink"    # Ljava/lang/String;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->i:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Labf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p1, "unEditableMails":Ljava/util/List;, "Ljava/util/List<Labf;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->l:Ljava/util/List;

    .line 202
    return-void
.end method

.method public final b(Z)V
    .locals 0
    .param p1, "isOperable"    # Z

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->n:Z

    .line 210
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0
    .param p1, "mailLoginFailedTipsString"    # Ljava/lang/String;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->k:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->b:Landroid/os/Handler;

    .line 166
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0
    .param p1, "editableMails"    # Ljava/lang/String;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->m:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0
    .param p1, "defaultDomain"    # Ljava/lang/String;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->o:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0
    .param p1, "loginTips"    # Ljava/lang/String;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->p:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public final f()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 173
    const/4 v0, 0x3

    iget v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->q:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/fragment/MailBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 101
    .local v0, "activity":Landroid/app/Activity;
    instance-of v1, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v1, :cond_0

    .line 102
    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 1076
    .end local v0    # "activity":Landroid/app/Activity;
    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 104
    :cond_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 109
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/alimei/mail/fragment/MailBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 110
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->G:Landroid/app/Application;

    .line 111
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->b:Landroid/os/Handler;

    .line 112
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->I:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->a(Landroid/view/View;)V

    .line 113
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->I:Landroid/view/View;

    return-object v0
.end method
