.class public abstract Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "BaseConnectWifiActivity.java"


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Landroid/app/Activity;

.field protected c:Lbni$a;

.field protected d:Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;

.field private e:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field private f:Z

.field private g:Landroid/content/DialogInterface$OnClickListener;

.field private h:Landroid/content/DialogInterface$OnClickListener;

.field private i:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 43
    iput-object p0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->a:Landroid/content/Context;

    .line 44
    iput-object p0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->b:Landroid/app/Activity;

    .line 46
    new-instance v0, Lbni$a;

    invoke-direct {v0}, Lbni$a;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->c:Lbni$a;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->f:Z

    .line 53
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$1;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->g:Landroid/content/DialogInterface$OnClickListener;

    .line 60
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$2;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->h:Landroid/content/DialogInterface$OnClickListener;

    .line 67
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$3;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->i:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;

    .prologue
    .line 37
    .line 2233
    sget v0, Lbrx$g;->dt_alpha_open_wifi:I

    sget v1, Lbrx$g;->dt_alpha_cannot_open_wifi:I

    sget v2, Lbrx$g;->dt_alpha_goto_open:I

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->g:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->a(IIILandroid/content/DialogInterface$OnClickListener;)V

    .line 2234
    const-string/jumbo v0, "BaseConnectWifiActivity"

    const-string/jumbo v1, "alpha_open_wifi_dialog_enter"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 37
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "positiveBtn"    # Ljava/lang/String;
    .param p4, "onPositiveClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p5, "onNegativeClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 265
    .line 1324
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 265
    :goto_0
    if-eqz v0, :cond_1

    .line 266
    const-string/jumbo v0, "BaseConnectWifiActivity"

    const-string/jumbo v1, "alertDialog is showing, return"

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    :goto_1
    return-void

    .line 1324
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    if-nez v0, :cond_2

    .line 270
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    .line 272
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 273
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 275
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 276
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    new-instance v1, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$6;

    invoke-direct {v1, p0, p4, p2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$6;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)V

    invoke-virtual {v0, p3, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 298
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    sget v1, Lbrx$g;->cancel:I

    new-instance v2, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$7;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, p2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$7;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 320
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;

    .prologue
    const/4 v1, 0x0

    .line 37
    .line 2238
    sget v0, Lbrx$g;->dt_alpha_no_wifi_permission_alert:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lbrx$g;->dt_alpha_goto_open:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->h:Landroid/content/DialogInterface$OnClickListener;

    move-object v0, p0

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2239
    const-string/jumbo v0, "BaseConnectWifiActivity"

    const-string/jumbo v2, "alpha_open_wifi_permission_dialog_enter"

    invoke-static {v0, v2, v1}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 37
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;

    .prologue
    const/4 v1, 0x0

    .line 37
    .line 2243
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->f:Z

    if-nez v0, :cond_0

    .line 2244
    sget v0, Lbrx$g;->dt_alpha_no_location_permission_alert:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lbrx$g;->dt_alpha_goto_open:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->h:Landroid/content/DialogInterface$OnClickListener;

    move-object v0, p0

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2245
    const-string/jumbo v0, "BaseConnectWifiActivity"

    const-string/jumbo v2, "alpha_open_location_permission_dialog_enter"

    invoke-static {v0, v2, v1}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->f:Z

    .line 37
    :cond_0
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 337
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    .line 339
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;

    .prologue
    .line 37
    .line 2251
    const/4 v0, 0x0

    sget v1, Lbrx$g;->dt_alpha_connect_wifi_fail_alert:I

    sget v2, Lbrx$g;->dt_alpha_connect_wifi_list:I

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->g:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->a(IIILandroid/content/DialogInterface$OnClickListener;)V

    .line 2252
    const-string/jumbo v0, "BaseConnectWifiActivity"

    const-string/jumbo v1, "alpha_connect_wifi_fail_dialog_enter"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 37
    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->d()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;)Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;
    .locals 1
    .param p1, "layout"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;
    .param p2, "callback"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;

    .prologue
    .line 151
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$5;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;)V

    return-object v0
.end method

.method protected final a(IIILandroid/content/DialogInterface$OnClickListener;)V
    .locals 6
    .param p1, "title"    # I
    .param p2, "msg"    # I
    .param p3, "positiveBtn"    # I
    .param p4, "onClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 256
    if-lez p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, "titleStr":Ljava/lang/String;
    :goto_0
    if-lez p2, :cond_1

    invoke-virtual {p0, p2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 258
    .local v2, "msgStr":Ljava/lang/String;
    :goto_1
    if-lez p3, :cond_2

    invoke-virtual {p0, p3}, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "positiveStr":Ljava/lang/String;
    :goto_2
    move-object v0, p0

    move-object v4, p4

    .line 259
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    .line 260
    return-void

    .end local v1    # "titleStr":Ljava/lang/String;
    .end local v2    # "msgStr":Ljava/lang/String;
    .end local v3    # "positiveStr":Ljava/lang/String;
    :cond_0
    move-object v1, v5

    .line 256
    goto :goto_0

    .restart local v1    # "titleStr":Ljava/lang/String;
    :cond_1
    move-object v2, v5

    .line 257
    goto :goto_1

    .restart local v2    # "msgStr":Ljava/lang/String;
    :cond_2
    move-object v3, v5

    .line 258
    goto :goto_2
.end method

.method public final a(ZLbzc;)V
    .locals 5
    .param p1, "useAdapter"    # Z
    .param p2, "callback"    # Lbzc;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->a()Z

    move-result v0

    .line 85
    .local v0, "hasLocationPermission":Z
    if-nez v0, :cond_2

    .line 86
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v4, v2, v3

    .line 89
    .local v2, "permissions":[Ljava/lang/String;
    move-object v1, p2

    .line 90
    .local v1, "permissionCallback":Lbzc;
    if-eqz p1, :cond_0

    .line 1112
    new-instance v1, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$4;

    .end local v1    # "permissionCallback":Lbzc;
    invoke-direct {v1, p0, p2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$4;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;Lbzc;)V

    .line 93
    .restart local v1    # "permissionCallback":Lbzc;
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->b:Landroid/app/Activity;

    const/16 v4, 0x3e8

    invoke-static {v3, v4, v2, v1}, Lbyy;->a(Landroid/app/Activity;I[Ljava/lang/String;Lbzc;)V

    .line 100
    .end local v1    # "permissionCallback":Lbzc;
    .end local v2    # "permissions":[Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 96
    :cond_2
    if-eqz p2, :cond_1

    .line 97
    invoke-interface {p2}, Lbzc;->grant()V

    goto :goto_0
.end method

.method protected final a()Z
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 75
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->a:Landroid/content/Context;

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v3, v2, v4

    const-string/jumbo v3, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    .line 78
    .local v0, "hasLocationPermission":Z
    const-string/jumbo v1, "BaseConnectWifiActivity"

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "hasLocationPermission:"

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return v0
.end method

.method protected final b()Z
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 103
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->a:Landroid/content/Context;

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.ACCESS_WIFI_STATE"

    aput-object v3, v2, v4

    const-string/jumbo v3, "android.permission.CHANGE_WIFI_STATE"

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    .line 106
    .local v0, "hasWifiPermission":Z
    const-string/jumbo v1, "BaseConnectWifiActivity"

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "hasWifiPermission:"

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return v0
.end method

.method protected final c()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 228
    sget v0, Lbrx$g;->dt_alpha_location_service_closed_alert:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lbrx$g;->dt_alpha_goto_open:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->i:Landroid/content/DialogInterface$OnClickListener;

    move-object v0, p0

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    .line 229
    const-string/jumbo v0, "BaseConnectWifiActivity"

    const-string/jumbo v2, "alpha_open_location_service_dialog_enter"

    invoke-static {v0, v2, v1}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 230
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 329
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 330
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->d()V

    .line 331
    invoke-static {}, Lbmc;->a()Lbmc;

    move-result-object v0

    invoke-virtual {v0}, Lbmc;->b()V

    .line 332
    return-void
.end method
