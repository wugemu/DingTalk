.class public final Lfrk;
.super Ljava/lang/Object;
.source "FaceLoginView.java"

# interfaces
.implements Lfri$b;


# instance fields
.field a:Lfri$a;

.field private b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Lciv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iput-object v0, p0, Lfrk;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 38
    new-instance v0, Lfrj;

    invoke-direct {v0, p1}, Lfrj;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    invoke-direct {p0, v0}, Lfrk;->a(Lfri$a;)V

    .line 39
    return-void
.end method

.method private a(Lfri$a;)V
    .locals 0
    .param p1, "presenter"    # Lfri$a;

    .prologue
    .line 103
    invoke-static {p1}, Lciv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iput-object p1, p0, Lfrk;->a:Lfri$a;

    .line 105
    return-void
.end method


# virtual methods
.method public final H_()V
    .locals 1

    .prologue
    .line 116
    .line 2136
    iget-object v0, p0, Lfrk;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 116
    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lfrk;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 119
    :cond_0
    return-void
.end method

.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 172
    const-string/jumbo v0, ""

    iget-object v1, p0, Lfrk;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v2, Lezg$l;->password_wrong:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lfrk;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public final a(ILjava/lang/String;Lcma;)V
    .locals 2
    .param p1, "action"    # I
    .param p2, "zimId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 52
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    if-nez p3, :cond_0

    .line 57
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lfrk;->a:Lfri$a;

    const/4 v1, 0x3

    invoke-interface {v0, v1, p2, p3}, Lfri$a;->a(ILjava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method public final a(Lcma;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/FaceIdObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/FaceIdObject;>;"
    iget-object v0, p0, Lfrk;->a:Lfri$a;

    invoke-interface {v0, p1}, Lfri$a;->a(Lcma;)V

    .line 66
    return-void
.end method

.method public final a(Ljava/lang/String;ILcma;)V
    .locals 2
    .param p1, "mobile"    # Ljava/lang/String;
    .param p2, "action"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 47
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    iget-object v0, p0, Lfrk;->a:Lfri$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2, p3}, Lfri$a;->a(Ljava/lang/String;ILcma;)V

    .line 48
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 3
    .param p1, "mobile"    # Ljava/lang/String;
    .param p2, "tempCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 72
    .local p3, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;>;"
    if-nez p3, :cond_0

    .line 99
    :goto_0
    return-void

    .line 76
    :cond_0
    new-instance v0, Lfrk$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lfrk$1;-><init>(Lfrk;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 97
    .local v0, "apiEventListener":Lcma;
    const-class v1, Lcma;

    iget-object v2, p0, Lfrk;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apiEventListener":Lcma;
    check-cast v0, Lcma;

    .line 98
    .restart local v0    # "apiEventListener":Lcma;
    iget-object v1, p0, Lfrk;->a:Lfri$a;

    const/4 v2, 0x5

    invoke-interface {v1, p1, v2, v0}, Lfri$a;->a(Ljava/lang/String;ILcma;)V

    goto :goto_0
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 123
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    :goto_0
    return-void

    .line 127
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lfrk;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 128
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    const-string/jumbo v1, "31"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    iget-object v1, p0, Lfrk;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v2, Lezg$l;->dt_face_box_reset_error_no_need:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 131
    :cond_1
    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->sure:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 109
    .line 1136
    iget-object v0, p0, Lfrk;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 109
    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lfrk;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 112
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 159
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lfrk;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 160
    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/user/facebox_result.html"

    new-instance v2, Lfrk$2;

    invoke-direct {v2, p0, p1, p2}, Lfrk$2;-><init>(Lfrk;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 168
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lfrk;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 141
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lfrk;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 142
    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/user/facebox_once_setting.html"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public final f()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 147
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lfrk;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 148
    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/user/facebox_setting.html"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public final g()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 153
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lfrk;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 154
    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/user/facebox_result.html"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public final h()Lcom/alibaba/android/dingtalk/userbase/model/FaceIdObject;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lfrk;->a:Lfri$a;

    invoke-interface {v0}, Lfri$a;->a()Lcom/alibaba/android/dingtalk/userbase/model/FaceIdObject;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 29
    check-cast p1, Lfri$a;

    invoke-direct {p0, p1}, Lfrk;->a(Lfri$a;)V

    return-void
.end method
