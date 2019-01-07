.class public Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;
.super Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseBleFragment;
.source "WifiFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;,
        Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/view/View;

.field private f:Lcom/alibaba/android/dingtalk/guard/utils/WifiAdminSimple;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Z

.field private l:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;

.field private m:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a;

.field private n:Z

.field private o:I

.field private p:Landroid/widget/TextView$OnEditorActionListener;

.field private q:Lbsy$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseBleFragment;-><init>()V

    .line 58
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->a:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->b:Ljava/lang/String;

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->k:Z

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->o:I

    .line 234
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$6;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$6;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->p:Landroid/widget/TextView$OnEditorActionListener;

    .line 353
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$7;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$7;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->q:Lbsy$c;

    .line 515
    return-void
.end method

.method private E()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 286
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->l:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;

    if-nez v0, :cond_0

    .line 287
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->l:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;

    .line 289
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->l:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;

    .line 2569
    iget-object v0, v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2571
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;->a()V

    .line 2573
    iget-object v0, v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3548
    iget-object v0, v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;->d:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    .line 4049
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->f:Lcom/alibaba/android/dingtalk/guard/utils/WifiAdminSimple;

    .line 3548
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/utils/WifiAdminSimple;->a()Ljava/util/List;

    move-result-object v0

    .line 3549
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 3550
    iget-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3553
    new-instance v3, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$b;

    invoke-direct {v3, v1, v6}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$b;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;B)V

    .line 3554
    iget-object v4, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v4, v3, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$b;->a:Ljava/lang/String;

    .line 3556
    iget-object v4, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 3557
    iget-object v0, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 3558
    const-string/jumbo v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "[ESS]"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3559
    :cond_2
    iput-boolean v5, v3, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$b;->b:Z

    .line 3563
    :cond_3
    iget-object v0, v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2578
    :cond_4
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$b;

    invoke-direct {v0, v1, v6}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$b;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;B)V

    .line 2579
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;->d:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    sget v3, Lbrx$g;->dt_device_config_wifi_other:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$b;->a:Ljava/lang/String;

    .line 2580
    iput-boolean v5, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$b;->b:Z

    .line 2581
    iput-boolean v5, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$b;->c:Z

    .line 2582
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2584
    iget-object v0, v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$c;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$c;->notifyDataSetChanged()V

    .line 1596
    iget-object v0, v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;->c:Landroid/app/Dialog;

    if-nez v0, :cond_5

    .line 1597
    iget-object v0, v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;->d:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lbrx$e;->device_choose_wifi_dialog_layout:I

    invoke-virtual {v0, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1598
    sget v0, Lbrx$d;->list_view:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 1600
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$c;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1601
    new-instance v3, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$1;

    invoke-direct {v3, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$1;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1632
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v3, v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;->d:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1633
    sget v3, Lbrx$g;->dt_device_config_wifi_choose_title:I

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1634
    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1635
    sget v2, Lbrx$g;->cancel:I

    invoke-virtual {v0, v2, v7}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1637
    new-instance v2, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$2;

    invoke-direct {v2, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$2;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;)V

    .line 4173
    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a:Landroid/content/DialogInterface$OnDismissListener;

    .line 1662
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;->c:Landroid/app/Dialog;

    .line 1665
    :cond_5
    iget-object v0, v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 290
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Z)Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;
    .locals 4
    .param p0, "mac"    # Ljava/lang/String;
    .param p1, "isSupport5G"    # Z

    .prologue
    .line 62
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 63
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "mac_address"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string/jumbo v2, "support_5g"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 66
    new-instance v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;-><init>()V

    .line 67
    .local v1, "fragment":Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;
    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->setArguments(Landroid/os/Bundle;)V

    .line 68
    return-object v1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->k:Z

    return p1
.end method

.method private b(I)V
    .locals 3
    .param p1, "state"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 432
    iput p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->o:I

    .line 433
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 435
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->h:Landroid/widget/TextView;

    sget v1, Lbrx$g;->dt_device_config_wifi_connecting:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 446
    :goto_0
    return-void

    .line 436
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 437
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 438
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->h:Landroid/widget/TextView;

    sget v1, Lbrx$g;->dt_door_guard_connected_wifi:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 439
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 440
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 441
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->h:Landroid/widget/TextView;

    sget v1, Lbrx$g;->dt_door_guard_get_activeinfo:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 443
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 444
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->h:Landroid/widget/TextView;

    sget v1, Lbrx$g;->sure:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;Ljava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    .line 5282
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 49
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 275
    if-nez p1, :cond_0

    .line 276
    const-string/jumbo p1, ""

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->k:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->n:Z

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    .prologue
    .line 49
    .line 4247
    iget v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->o:I

    if-nez v0, :cond_0

    .line 4248
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->d:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 4250
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4251
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4254
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4255
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->E()V

    :cond_0
    :goto_0
    return-void

    .line 4257
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 4258
    const-string/jumbo v0, "manager_uid"

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4259
    const-string/jumbo v4, "is_change_network"

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "0"

    :goto_1
    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4260
    const-string/jumbo v0, "_field_event_id"

    const-string/jumbo v4, "2101"

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4261
    const-string/jumbo v0, "log_ding_version"

    const-string/jumbo v4, "1.0"

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4262
    const-string/jumbo v0, "spm"

    const-string/jumbo v4, "a2q0r.11900330.1.click"

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4263
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->m()Lbsw$b;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4264
    const-string/jumbo v0, "device_type"

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->m()Lbsw$b;

    move-result-object v4

    invoke-interface {v4}, Lbsw$b;->c()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4265
    const-string/jumbo v0, "device_server"

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->m()Lbsw$b;

    move-result-object v4

    invoke-interface {v4}, Lbsw$b;->e()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4267
    :cond_2
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v4, "Page_Smart_Device_Set_Network"

    const-string/jumbo v5, "Page_Smart_Device_Set_Network_Button-click"

    invoke-interface {v0, v4, v5, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->customEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 4269
    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4259
    :cond_3
    const-string/jumbo v0, "1"

    goto :goto_1
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    .prologue
    .line 49
    iget v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->o:I

    return v0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->E()V

    return-void
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->n:Z

    return v0
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    .prologue
    .line 49
    .line 4449
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->m:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a;

    if-nez v0, :cond_0

    .line 4450
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;B)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->m:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a;

    .line 4452
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->m:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a;

    .line 4467
    iget-object v0, v2, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a;->a:Landroid/app/Dialog;

    if-nez v0, :cond_1

    .line 4468
    iget-object v0, v2, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lbrx$e;->device_config_wifi_custom:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 4470
    sget v0, Lbrx$d;->ssid_edittext:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 4471
    sget v1, Lbrx$d;->wifi_password_edittext:I

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 4473
    new-instance v4, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v5, v2, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4474
    sget v5, Lbrx$g;->dt_device_config_wifi_custom:I

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 4475
    invoke-virtual {v4, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 4476
    sget v3, Lbrx$g;->dt_common_sure:I

    new-instance v5, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a$1;

    invoke-direct {v5, v2, v0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a$1;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v4, v3, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 4492
    sget v3, Lbrx$g;->cancel:I

    new-instance v5, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a$2;

    invoke-direct {v5, v2, v0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a$2;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v4, v3, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 4501
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    iput-object v1, v2, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a;->a:Landroid/app/Dialog;

    .line 4503
    iget-object v1, v2, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a;->a:Landroid/app/Dialog;

    new-instance v3, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a$3;

    invoke-direct {v3, v2, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a$3;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a;Landroid/widget/EditText;)V

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 4511
    :cond_1
    iget-object v0, v2, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 49
    return-void
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->e:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v3, 0x40

    const/16 v2, 0x20

    const/4 v1, 0x0

    .line 335
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    sget v0, Lbrx$g;->dt_device_config_wifi_ssid_empty:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 351
    :goto_0
    return-void

    .line 340
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 341
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 344
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_2

    .line 345
    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 348
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->b(I)V

    .line 350
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseBleFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 105
    invoke-super/range {p0 .. p1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseBleFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 107
    sget v11, Lbrx$d;->state_loading:I

    invoke-virtual {p0, v11}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->a(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->g:Landroid/view/View;

    .line 108
    sget v11, Lbrx$d;->state_text:I

    invoke-virtual {p0, v11}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->a(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->h:Landroid/widget/TextView;

    .line 110
    sget v11, Lbrx$d;->mac_address_text:I

    invoke-virtual {p0, v11}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->a(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->i:Landroid/widget/TextView;

    .line 112
    sget v11, Lbrx$d;->ssid_edittext:I

    invoke-virtual {p0, v11}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->a(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->c:Landroid/widget/TextView;

    .line 114
    sget v11, Lbrx$d;->password_layout:I

    invoke-virtual {p0, v11}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->a(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->e:Landroid/view/View;

    .line 116
    sget v11, Lbrx$d;->icon_pass_eye:I

    invoke-virtual {p0, v11}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->a(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->j:Landroid/widget/TextView;

    .line 119
    sget v11, Lbrx$d;->wifi_password_edittext:I

    invoke-virtual {p0, v11}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->a(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    iput-object v11, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->d:Landroid/widget/EditText;

    .line 120
    iget-object v11, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->d:Landroid/widget/EditText;

    iget-object v12, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->p:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 122
    sget v11, Lbrx$d;->icon_reset_pass:I

    invoke-virtual {p0, v11}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->a(I)Landroid/view/View;

    move-result-object v11

    new-instance v12, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$1;

    invoke-direct {v12, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$1;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v11, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->j:Landroid/widget/TextView;

    new-instance v12, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$2;

    invoke-direct {v12, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$2;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;)V

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    sget v11, Lbrx$d;->choice_network_tips_text:I

    invoke-virtual {p0, v11}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->a(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 143
    .local v9, "tips":Landroid/widget/TextView;
    sget v11, Lbrx$g;->dt_smartdevice_choose_device_network:I

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->v()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {p0, v11, v12}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    const/4 v2, 0x0

    .line 146
    .local v2, "isSupport5G":Z
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 147
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 148
    const-string/jumbo v11, "mac_address"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, "mac":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 150
    sget v11, Lbrx$g;->dt_smartdevice_bluetooth_macaddress2:I

    invoke-virtual {p0, v11}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 151
    .local v4, "msg":Ljava/lang/String;
    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v4, v11, v12

    const/4 v12, 0x1

    const-string/jumbo v13, "\n"

    aput-object v13, v11, v12

    const/4 v12, 0x2

    aput-object v3, v11, v12

    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 153
    iget-object v11, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->i:Landroid/widget/TextView;

    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    .end local v4    # "msg":Ljava/lang/String;
    :cond_0
    const-string/jumbo v11, "support_5g"

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 158
    .end local v3    # "mac":Ljava/lang/String;
    :cond_1
    sget v11, Lbrx$d;->confirm_button:I

    invoke-virtual {p0, v11}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->a(I)Landroid/view/View;

    move-result-object v11

    new-instance v12, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$3;

    invoke-direct {v12, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$3;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    sget v11, Lbrx$d;->ll_switch_wire_network:I

    invoke-virtual {p0, v11}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->a(I)Landroid/view/View;

    move-result-object v8

    .line 166
    .local v8, "switchWireNetworkView":Landroid/view/View;
    new-instance v11, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$4;

    invoke-direct {v11, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$4;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;)V

    invoke-virtual {v8, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->f()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 173
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    .line 178
    :goto_0
    iget-object v11, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->c:Landroid/widget/TextView;

    new-instance v12, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$5;

    invoke-direct {v12, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$5;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;)V

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    new-instance v11, Lcom/alibaba/android/dingtalk/guard/utils/WifiAdminSimple;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/alibaba/android/dingtalk/guard/utils/WifiAdminSimple;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->f:Lcom/alibaba/android/dingtalk/guard/utils/WifiAdminSimple;

    .line 193
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->b(I)V

    .line 195
    iget-object v11, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->f:Lcom/alibaba/android/dingtalk/guard/utils/WifiAdminSimple;

    invoke-virtual {v11}, Lcom/alibaba/android/dingtalk/guard/utils/WifiAdminSimple;->b()Landroid/net/wifi/WifiInfo;

    move-result-object v10

    .line 196
    .local v10, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v10, :cond_4

    .line 197
    if-nez v2, :cond_2

    iget-object v11, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->f:Lcom/alibaba/android/dingtalk/guard/utils/WifiAdminSimple;

    .line 1076
    if-nez v10, :cond_8

    .line 1077
    const/4 v11, -0x1

    .line 1072
    :goto_1
    const/16 v12, 0x1324

    if-le v11, v12, :cond_b

    const/16 v12, 0x170c

    if-ge v11, v12, :cond_b

    const/4 v11, 0x1

    .line 197
    :goto_2
    if-nez v11, :cond_4

    .line 198
    :cond_2
    iget-object v11, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->f:Lcom/alibaba/android/dingtalk/guard/utils/WifiAdminSimple;

    invoke-virtual {v11, v10}, Lcom/alibaba/android/dingtalk/guard/utils/WifiAdminSimple;->a(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v7

    .line 199
    .local v7, "ssid":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->b(Ljava/lang/String;)V

    .line 200
    iput-object v7, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->b:Ljava/lang/String;

    .line 202
    iget-object v11, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->f:Lcom/alibaba/android/dingtalk/guard/utils/WifiAdminSimple;

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v7, v12}, Lcom/alibaba/android/dingtalk/guard/utils/WifiAdminSimple;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/ScanResult;

    move-result-object v6

    .line 204
    .local v6, "sr":Landroid/net/wifi/ScanResult;
    if-eqz v6, :cond_4

    iget-object v11, v6, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v11, :cond_4

    .line 205
    iget-object v11, v6, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, "capabilities":Ljava/lang/String;
    const-string/jumbo v11, ""

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string/jumbo v11, "[ESS]"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 208
    :cond_3
    iget-object v11, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->e:Landroid/view/View;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 214
    .end local v1    # "capabilities":Ljava/lang/String;
    .end local v6    # "sr":Landroid/net/wifi/ScanResult;
    .end local v7    # "ssid":Ljava/lang/String;
    :cond_4
    iget-object v11, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->q:Lbsy$c;

    invoke-virtual {p0, v11}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->a(Lbsy$a;)V

    .line 216
    iget-object v11, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->c:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->length()I

    move-result v11

    if-nez v11, :cond_c

    .line 217
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->E()V

    .line 218
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 219
    .local v5, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->m()Lbsw$b;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 220
    const-string/jumbo v11, "device_type"

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->m()Lbsw$b;

    move-result-object v12

    invoke-interface {v12}, Lbsw$b;->c()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const-string/jumbo v11, "device_server"

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->m()Lbsw$b;

    move-result-object v12

    invoke-interface {v12}, Lbsw$b;->e()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_5
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v11

    const-string/jumbo v12, "WifiFragment"

    const-string/jumbo v13, "oa_bravo_attendance_wifi_directconnect_click"

    const/4 v14, 0x0

    invoke-interface {v11, v12, v13, v14}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 232
    .end local v5    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    :goto_3
    return-void

    .line 175
    .end local v10    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_7
    const/16 v11, 0x8

    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1079
    .restart local v10    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_8
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x15

    if-lt v12, v13, :cond_9

    .line 1080
    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v11

    goto/16 :goto_1

    .line 1082
    :cond_9
    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/alibaba/android/dingtalk/guard/utils/WifiAdminSimple;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/ScanResult;

    move-result-object v11

    .line 1083
    if-nez v11, :cond_a

    .line 1084
    const/4 v11, -0x1

    goto/16 :goto_1

    .line 1086
    :cond_a
    iget v11, v11, Landroid/net/wifi/ScanResult;->frequency:I

    goto/16 :goto_1

    .line 1072
    :cond_b
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 224
    :cond_c
    iget-object v11, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->e:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_6

    .line 225
    iget-object v11, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->d:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->requestFocus()Z

    .line 227
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    iget-object v12, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->d:Landroid/widget/EditText;

    invoke-static {v11, v12}, Lcms;->b(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_3
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 320
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseBleFragment;->onDestroy()V

    .line 321
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->q:Lbsy$c;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->b(Lbsy$a;)V

    .line 322
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->l:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->l:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;->b()V

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->m:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a;

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->m:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a;->a()V

    .line 331
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 294
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseBleFragment;->onPause()V

    .line 296
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 297
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "spm"

    const-string/jumbo v2, "a2q0r.11900330"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->m()Lbsw$b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 299
    const-string/jumbo v1, "device_type"

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->m()Lbsw$b;

    move-result-object v2

    invoke-interface {v2}, Lbsw$b;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string/jumbo v1, "device_server"

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->m()Lbsw$b;

    move-result-object v2

    invoke-interface {v2}, Lbsw$b;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    :cond_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "Smart_Device_Set_Network"

    invoke-interface {v1, p0, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->leavePage(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 303
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 307
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseBleFragment;->onResume()V

    .line 309
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 310
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "spm"

    const-string/jumbo v2, "a2q0r.11900330"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->m()Lbsw$b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 312
    const-string/jumbo v1, "device_type"

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->m()Lbsw$b;

    move-result-object v2

    invoke-interface {v2}, Lbsw$b;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string/jumbo v1, "device_server"

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->m()Lbsw$b;

    move-result-object v2

    invoke-interface {v2}, Lbsw$b;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    :cond_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "Smart_Device_Set_Network"

    invoke-interface {v1, p0, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->enterPage(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 316
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 100
    sget v0, Lbrx$e;->activity_device_config_wifi:I

    return v0
.end method
