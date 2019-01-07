.class final Lauw$2;
.super Ljava/lang/Object;
.source "ItemSettingHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lauw;->a(Lauz;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lauw;


# direct methods
.method constructor <init>(Lauw;)V
    .locals 0
    .param p1, "this$0"    # Lauw;

    .prologue
    .line 72
    iput-object p1, p0, Lauw$2;->a:Lauw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 75
    const-string/jumbo v0, "pref_key_calendar_shared_calendar_hint"

    invoke-static {v0, v5}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 77
    invoke-static {}, Lavq;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "pref_key_calendar_shared_folder_and_mail_dialog"

    .line 78
    invoke-static {v0, v6}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lauw$2;->a:Lauw;

    iget-object v1, p0, Lauw$2;->a:Lauw;

    .line 1026
    iget-object v1, v1, Lauw;->f:Lava;

    .line 1040
    iget-object v1, v1, Lava;->a:Ljava/lang/String;

    .line 2121
    iget-object v2, v0, Lauw;->b:Landroid/app/Activity;

    invoke-static {v2}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2125
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2129
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v3, v0, Lauw;->b:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2130
    sget v3, Laow$f;->dt_ding_share_schedule_with_alimail:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2131
    sget v3, Laow$f;->dt_ding_share_alimail_schedule_tips:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2132
    sget v3, Laow$f;->ding_alert_text_i_known:I

    new-instance v4, Lauw$3;

    invoke-direct {v4, v0, v1}, Lauw$3;-><init>(Lauw;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2138
    invoke-virtual {v2, v6}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 80
    :cond_0
    const-string/jumbo v0, "pref_key_calendar_shared_folder_and_mail_dialog"

    invoke-static {v0, v5}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 3180
    :goto_0
    const-string/jumbo v0, "ding_calendar_drawer_share_click"

    invoke-static {v0}, Lavw;->c(Ljava/lang/String;)V

    .line 85
    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Lauw$2;->a:Lauw;

    iget-object v0, v0, Lauw;->b:Landroid/app/Activity;

    iget-object v1, p0, Lauw$2;->a:Lauw;

    .line 3026
    iget-object v1, v1, Lauw;->f:Lava;

    .line 3040
    iget-object v1, v1, Lava;->a:Ljava/lang/String;

    .line 82
    invoke-static {v0, v1}, Lavr;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
