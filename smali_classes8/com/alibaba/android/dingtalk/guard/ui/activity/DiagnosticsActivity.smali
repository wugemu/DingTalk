.class public Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "DiagnosticsActivity.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;

.field private c:Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

.field private d:Z

.field private e:Landroid/support/v4/app/Fragment;

.field private f:Landroid/support/v4/app/Fragment;

.field private g:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->d:Z

    .line 337
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity$4;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->g:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private static a(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 5
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 364
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 365
    .local v0, "ss":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const/high16 v2, -0x10000

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 366
    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;)Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->c:Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

    return-object p1
.end method

.method private a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 192
    sget v1, Lbrx$d;->text4:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 193
    .local v0, "textView":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->c:Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

    if-eqz v1, :cond_1

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u53d1\u73b0\u8bbe\u5907 "

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->c:Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->deviceNick:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->c:Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->mac:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    :goto_1
    return-void

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->c:Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->deviceNick:Ljava/lang/String;

    goto :goto_0

    .line 196
    :cond_1
    const-string/jumbo v1, "\u5f53\u524d\u6ca1\u6709\u53d1\u73b0\u8bbe\u5907"

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->a(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;

    .prologue
    .line 52
    .line 8097
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 8098
    const-string/jumbo v1, "\u662f\u5426\u6e05\u7a7a\u65e5\u5fd7?"

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 8099
    const-string/jumbo v1, "\u786e\u8ba4"

    new-instance v2, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity$2;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 8105
    const-string/jumbo v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 8106
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 333
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->a:Landroid/widget/TextView;

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 335
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method private b()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 203
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->d:Z

    if-eqz v2, :cond_0

    .line 235
    :goto_0
    return-void

    .line 206
    :cond_0
    iput-boolean v6, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->d:Z

    .line 208
    const-string/jumbo v2, "\u6b63\u5728\u8bca\u65ad..."

    invoke-direct {p0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->a(Ljava/lang/CharSequence;)V

    .line 2149
    sget v2, Lbrx$d;->text1:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2150
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    .line 2151
    if-nez v3, :cond_3

    .line 2152
    const-string/jumbo v3, "\u83b7\u53d6\u84dd\u7259\u6a21\u5757\u5931\u8d25"

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->a(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2166
    :goto_1
    invoke-static {p0}, Lbte;->a(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2167
    const-string/jumbo v3, "\n\u5f53\u524d\u8bbe\u5907\u4e0d\u652f\u6301ble\u529f\u80fd"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 2173
    :cond_1
    sget v2, Lbrx$d;->text2:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2174
    invoke-static {p0}, Lalg;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2175
    const-string/jumbo v3, "\u5df2\u8fde\u63a5\u7f51\u7edc"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3127
    :goto_2
    sget v2, Lbrx$d;->text3:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 3129
    invoke-static {}, Lcms;->o()Z

    move-result v3

    if-nez v3, :cond_7

    .line 3130
    const-string/jumbo v3, "\u4f4d\u7f6e\u670d\u52a1\u672a\u6253\u5f00"

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->a(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3131
    new-instance v3, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity$3;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity$3;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4110
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":beacon"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4112
    const-string/jumbo v2, "activity"

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 4113
    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v8

    move v3, v4

    move v5, v4

    .line 4114
    :goto_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_8

    .line 4115
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 4116
    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v5, v6

    .line 4114
    :cond_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_4

    .line 2154
    :cond_3
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_5

    .line 2155
    const-string/jumbo v5, "\u5f53\u524d\u84dd\u7259\u6ca1\u6253\u5f00\uff0c\u8bf7\u5728\u8bf7\u6c42\u6253\u5f00\u84dd\u7259"

    invoke-direct {p0, v5}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->a(Ljava/lang/CharSequence;)V

    .line 2156
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 2157
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 2158
    const-string/jumbo v3, "\u84dd\u7259\u672a\u6253\u5f00"

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->a(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 2160
    :cond_4
    const-string/jumbo v3, "\u84dd\u7259\u5df2\u6253\u5f00"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 2163
    :cond_5
    const-string/jumbo v3, "\u84dd\u7259\u5df2\u6253\u5f00"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 2177
    :cond_6
    const-string/jumbo v3, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->a(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 3141
    :cond_7
    const-string/jumbo v3, "\u4f4d\u7f6e\u670d\u52a1\u5df2\u7ecf\u6253\u5f00"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3142
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 4120
    :cond_8
    if-nez v5, :cond_9

    .line 4121
    const-string/jumbo v2, "Beacon\u670d\u52a1\u672a\u6253\u5f00"

    invoke-direct {p0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->a(Ljava/lang/CharSequence;)V

    .line 4122
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->b:Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;

    invoke-virtual {v2, p0}, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;->startBeaconService(Landroid/content/Context;)V

    .line 4183
    :cond_9
    invoke-static {}, Lbtk;->b()I

    move-result v2

    .line 4184
    if-nez v2, :cond_c

    .line 4185
    const-string/jumbo v2, "\u5f53\u524dBeacon\u670d\u52a1\u72b6\u6001\u4e3a\u672a\u5f00\u542f"

    invoke-direct {p0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->a(Ljava/lang/CharSequence;)V

    .line 215
    :cond_a
    :goto_5
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->b:Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;->getEnterRangeDevice()Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

    move-result-object v1

    .line 217
    .local v1, "deviceModelBean":Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;
    iput-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->c:Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

    .line 219
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->a()V

    .line 221
    if-nez v1, :cond_b

    .line 225
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->b:Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;->getAllActivityDevice()Ljava/util/List;

    move-result-object v0

    .line 226
    .local v0, "all":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;>;"
    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u53d1\u73b0\u4e86"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u4e2a\u8bbe\u5907,\u4f46\u83b7\u53d6\u8bbe\u5907\u4fe1\u606f\u5931\u8d25"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->a(Ljava/lang/CharSequence;)V

    .line 232
    .end local v0    # "all":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;>;"
    :cond_b
    :goto_6
    iput-boolean v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->d:Z

    .line 233
    const-string/jumbo v2, "\u8bca\u65ad\u7ed3\u675f"

    invoke-direct {p0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 4186
    .end local v1    # "deviceModelBean":Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;
    :cond_c
    const/4 v3, -0x1

    if-ne v2, v3, :cond_a

    .line 4187
    const-string/jumbo v2, "\u5f53\u524dBeacon\u670d\u52a1\u72b6\u6001\u4e3a\u672a\u521d\u59cb\u5316"

    invoke-direct {p0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->a(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 229
    .restart local v0    # "all":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;>;"
    .restart local v1    # "deviceModelBean":Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;
    :cond_d
    const-string/jumbo v2, "\u5f53\u524d\u6ca1\u6709\u53d1\u73b0\u8bbe\u5907"

    invoke-direct {p0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->a(Ljava/lang/CharSequence;)V

    goto :goto_6
.end method

.method private c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 360
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 361
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->a()V

    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;)Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->c:Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 239
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->finish()V

    .line 240
    const/4 v0, 0x0

    .line 5013
    sput-boolean v0, Lbth;->a:Z

    .line 241
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->c()V

    .line 242
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-static {}, Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;

    move-result-object v0

    .line 71
    .local v0, "doorGuard":Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;

    if-nez v1, :cond_1

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->finish()V

    .line 94
    .end local v0    # "doorGuard":Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;
    :goto_0
    return-void

    .line 75
    .restart local v0    # "doorGuard":Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;
    :cond_1
    check-cast v0, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;

    .end local v0    # "doorGuard":Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;
    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->b:Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;

    .line 77
    sget v1, Lbrx$e;->activity_guard_diagnostics:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->setContentView(I)V

    .line 79
    const/4 v1, 0x1

    .line 1013
    sput-boolean v1, Lbth;->a:Z

    .line 81
    sget v1, Lbrx$d;->text5:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->a:Landroid/widget/TextView;

    .line 83
    sget v1, Lbrx$d;->log_layout:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity$1;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1355
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->g:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "com.alibaba.dingtalk.ACTION_ENTER_DOOR_RANGE_UPDATE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 93
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->b()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 253
    const-string/jumbo v1, "\u8bca\u65ad"

    invoke-interface {p1, v3, v2, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 254
    .local v0, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 256
    const-string/jumbo v1, "\u7ed1\u5b9a\u6d4b\u8bd5"

    invoke-interface {p1, v3, v4, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 257
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 259
    const/4 v1, 0x3

    const-string/jumbo v2, "\u8bbe\u5907\u5217\u8868"

    invoke-interface {p1, v3, v5, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 260
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 262
    const/4 v1, 0x6

    const-string/jumbo v2, "Ble\u6d4b\u8bd5"

    invoke-interface {p1, v3, v1, v4, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 263
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 265
    const/4 v1, 0x7

    const-string/jumbo v2, "\u626b\u63cfBeacon"

    invoke-interface {p1, v3, v1, v5, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 266
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 268
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 246
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 247
    const/4 v0, 0x0

    .line 6013
    sput-boolean v0, Lbth;->a:Z

    .line 248
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->c()V

    .line 249
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x1

    .line 276
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 277
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->b()V

    move v1, v3

    .line 307
    :goto_0
    return v1

    .line 279
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 280
    invoke-static {}, Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;

    move-result-object v1

    const-string/jumbo v2, "ble"

    invoke-virtual {v1, p0, v2}, Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;->startBindDevice(Landroid/app/Activity;Ljava/lang/String;)V

    move v1, v3

    .line 281
    goto :goto_0

    .line 282
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    .line 7054
    sget-object v1, Lbry$c;->a:Lbry;

    .line 7422
    new-instance v2, Ljava/util/ArrayList;

    iget-object v1, v1, Lbry;->c:Ljava/util/List;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6314
    new-instance v4, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 6315
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6316
    const-string/jumbo v1, "\u6ca1\u6709\u8bbe\u5907"

    invoke-virtual {v4, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 6324
    :cond_2
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6325
    const-string/jumbo v2, "\u8bbe\u5907\u5217\u8868"

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 6326
    invoke-virtual {v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 6327
    const-string/jumbo v2, "\u6211\u77e5\u9053\u4e86"

    invoke-virtual {v1, v2, v10}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 6328
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move v1, v3

    .line 284
    goto :goto_0

    .line 6318
    :cond_3
    const/4 v1, 0x0

    .line 6319
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v1

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbto;

    .line 6320
    add-int/lit8 v2, v2, 0x1

    .line 6321
    invoke-virtual {v4, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    const-string/jumbo v7, ":devId="

    invoke-virtual {v6, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    .line 8021
    iget-wide v8, v1, Lbto;->b:J

    .line 6321
    invoke-virtual {v6, v8, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v6, "\n"

    invoke-virtual {v1, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_1

    .line 285
    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_6

    .line 286
    const-string/jumbo v0, "beacon_test"

    .line 287
    .local v0, "tag":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->e:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_5

    .line 288
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->getSupportFragmentManager()Lcn;

    move-result-object v1

    invoke-virtual {v1}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 289
    iput-object v10, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->e:Landroid/support/v4/app/Fragment;

    :goto_2
    move v1, v3

    .line 295
    goto/16 :goto_0

    .line 291
    :cond_5
    new-instance v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->e:Landroid/support/v4/app/Fragment;

    .line 292
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->getSupportFragmentManager()Lcn;

    move-result-object v1

    invoke-virtual {v1}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lbrx$d;->container:I

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2, v4, v0}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->c()I

    goto :goto_2

    .line 296
    .end local v0    # "tag":Ljava/lang/String;
    :cond_6
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_8

    .line 297
    const-string/jumbo v0, "ble_test"

    .line 298
    .restart local v0    # "tag":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->f:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_7

    .line 299
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->getSupportFragmentManager()Lcn;

    move-result-object v1

    invoke-virtual {v1}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->f:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 300
    iput-object v10, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->f:Landroid/support/v4/app/Fragment;

    :goto_3
    move v1, v3

    .line 305
    goto/16 :goto_0

    .line 302
    :cond_7
    new-instance v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->f:Landroid/support/v4/app/Fragment;

    .line 303
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->getSupportFragmentManager()Lcn;

    move-result-object v1

    invoke-virtual {v1}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lbrx$d;->container:I

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->f:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2, v4, v0}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->c()I

    goto :goto_3

    .line 307
    .end local v0    # "tag":Ljava/lang/String;
    :cond_8
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto/16 :goto_0
.end method
