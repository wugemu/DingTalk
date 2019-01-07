.class public abstract Lbss;
.super Lbsu;
.source "AlphaBaseBindPresenter.java"


# instance fields
.field private c:Landroid/support/v7/app/AlertDialog;

.field private d:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lbsw$e;Lbsw$b;)V
    .locals 0
    .param p2, "dataSource"    # Lbsw$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbsw$e",
            "<",
            "Lbsw$c;",
            ">;",
            "Lbsw$b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "view":Lbsw$e;, "Lbsw$e<Lbsw$c;>;"
    invoke-direct {p0, p1, p2}, Lbsu;-><init>(Lbsw$e;Lbsw$b;)V

    .line 45
    return-void
.end method

.method static synthetic a(Lbss;)V
    .locals 3
    .param p0, "x0"    # Lbss;

    .prologue
    .line 35
    .line 1137
    iget-object v0, p0, Lbss;->c:Landroid/support/v7/app/AlertDialog;

    if-nez v0, :cond_0

    .line 1138
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Lbss;->l()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1139
    sget v1, Lbrx$g;->dt_alpha_set_authorization_range_choose_dialogue_title:I

    invoke-virtual {p0, v1}, Lbss;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1140
    sget v1, Lbrx$g;->dt_alpha_set_authorization_range_choose_dialogue_content:I

    invoke-virtual {p0, v1}, Lbss;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1141
    sget v1, Lbrx$g;->dt_alpha_set_authorization_range_choose_dialogue_button_send:I

    invoke-virtual {p0, v1}, Lbss;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lbss$2;

    invoke-direct {v2, p0}, Lbss$2;-><init>(Lbss;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1149
    sget v1, Lbrx$g;->dt_alpha_set_authorization_range_choose_dialogue_button_dontsend:I

    invoke-virtual {p0, v1}, Lbss;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lbss$3;

    invoke-direct {v2, p0}, Lbss$3;-><init>(Lbss;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1156
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lbss;->c:Landroid/support/v7/app/AlertDialog;

    .line 1158
    :cond_0
    iget-object v0, p0, Lbss;->c:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1159
    iget-object v0, p0, Lbss;->c:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1161
    :cond_1
    const-string/jumbo v0, "AlphaBaseBindPresenter"

    const-string/jumbo v1, "alpha_bind_scope_dialog_hidden"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 35
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 54
    .line 1130
    iget-object v0, p0, Lbss;->d:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1131
    invoke-virtual {p0}, Lbss;->l()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lbss;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 1132
    iput-object v2, p0, Lbss;->d:Landroid/content/BroadcastReceiver;

    .line 55
    :cond_0
    iget-object v0, p0, Lbss;->c:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lbss;->c:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 57
    iput-object v2, p0, Lbss;->c:Landroid/support/v7/app/AlertDialog;

    .line 59
    :cond_1
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-virtual {p0}, Lbss;->b()V

    .line 50
    return-void
.end method

.method protected final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 62
    new-instance v1, Lbss$1;

    invoke-direct {v1, p0}, Lbss$1;-><init>(Lbss;)V

    iput-object v1, p0, Lbss;->d:Landroid/content/BroadcastReceiver;

    .line 124
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 125
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.workapp.choose.people.from.contact"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lbss;->l()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lbss;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 127
    return-void
.end method

.method public c()Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel$ApType;
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel$ApType;->ROUTER:Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel$ApType;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x1

    return v0
.end method
