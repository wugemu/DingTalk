.class public Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;
.super Ljava/lang/Object;
.source "DialogUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;
    }
.end annotation


# static fields
.field private static final DD_DIALOG_TEXT_MAX_LENGTH:I = 0x400

.field private static final FASTCONFIG_JSON_CONTENT:Ljava/lang/String; = "content"

.field private static final FASTCONFIG_JSON_TITLE:Ljava/lang/String; = "title"

.field private static final FASTCONFIG_JSON_URL:Ljava/lang/String; = "url"

.field private static final FASTCONFIG_MODULE:Ljava/lang/String; = "contact"

.field private static final FASTCONFIG_MODULE_KEY:Ljava/lang/String; = "rate_share"

.field private static final FASTCONFIG_MODULE_KEY_CONTENT:Ljava/lang/String; = "rate_share_content"

.field private static final MAX_BANNER_LEN:I = 0xa

.field private static final RATING:Ljava/lang/String; = "rating"

.field private static final RATING_SOURCE:Ljava/lang/String; = "source"

.field private static final TAG:Ljava/lang/String; = "DialogUtils"

.field private static final TRUE:Ljava/lang/String; = "1"

.field private static instance:Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCustomDialog:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->mContext:Landroid/content/Context;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-static {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->traceEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    const-class v1, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;-><init>(Landroid/content/Context;)V

    .line 80
    sput-object v0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->instance:Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initPromptEditText()Landroid/widget/EditText;
    .locals 2

    .prologue
    .line 288
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 289
    const/4 v0, 0x0

    .line 310
    :goto_0
    return-object v0

    .line 292
    :cond_0
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 294
    .local v0, "editText":Landroid/widget/EditText;
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$6;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$6;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0
.end method

.method private popAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "buttonName"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 113
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 128
    :goto_0
    return-void

    .line 116
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 117
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 118
    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 119
    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 120
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$1;

    invoke-direct {v1, p0, p4}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;)V

    .line 1173
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a:Landroid/content/DialogInterface$OnDismissListener;

    .line 127
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method

.method private popConfirmDialog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "buttonLabels"    # [Ljava/lang/String;
    .param p4, "callback"    # Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 171
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 201
    :goto_0
    return-void

    .line 174
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 175
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 176
    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 178
    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v1, "hybrid_dd_confirm_not_cancelable"

    invoke-static {v1, v3}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 182
    :cond_1
    if-eqz p3, :cond_2

    array-length v1, p3

    if-lez v1, :cond_2

    .line 183
    aget-object v1, p3, v2

    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$2;

    invoke-direct {v2, p0, p4}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$2;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 190
    :cond_2
    if-eqz p3, :cond_3

    array-length v1, p3

    if-le v1, v3, :cond_3

    .line 191
    aget-object v1, p3, v3

    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$3;

    invoke-direct {v2, p0, p4}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$3;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 199
    :cond_3
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method

.method private popHighLightUpgradeDialog(Ljava/util/List;Ljava/lang/String;Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;)V
    .locals 3
    .param p2, "highLightBtnText"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 631
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 665
    :goto_0
    return-void

    .line 635
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;-><init>(Landroid/content/Context;)V

    .line 636
    .local v0, "upgradeDialog":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->a(Ljava/util/List;)V

    .line 10103
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->i:Z

    .line 639
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 11087
    iput-object p2, v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->c:Ljava/lang/String;

    .line 642
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$19;

    invoke-direct {v1, p0, v0, p3}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$19;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;)V

    .line 11107
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->f:Landroid/view/View$OnClickListener;

    .line 654
    :goto_1
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$20;

    invoke-direct {v1, p0, v0, p3}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$20;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;)V

    .line 12099
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->g:Landroid/view/View$OnClickListener;

    .line 663
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->setCanceledOnTouchOutside(Z)V

    .line 664
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->show()V

    goto :goto_0

    .line 650
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->dismiss()V

    .line 651
    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "Bad param of buttonLabels"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v1}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;->dialogCallbackFail(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private popPromptDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "defaultText"    # Ljava/lang/String;
    .param p4, "buttonLabels"    # [Ljava/lang/String;
    .param p5, "callback"    # Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 241
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-nez v3, :cond_0

    .line 280
    :goto_0
    return-void

    .line 245
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->initPromptEditText()Landroid/widget/EditText;

    move-result-object v1

    .line 246
    .local v1, "editText":Landroid/widget/EditText;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 247
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 248
    .local v2, "text":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 249
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 253
    .end local v2    # "text":Ljava/lang/String;
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 254
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 255
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 256
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 258
    :cond_2
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 259
    if-eqz p4, :cond_3

    array-length v3, p4

    if-lez v3, :cond_3

    .line 260
    const/4 v3, 0x0

    aget-object v3, p4, v3

    new-instance v4, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$4;

    invoke-direct {v4, p0, p5, v1}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$4;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;Landroid/widget/EditText;)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 269
    :cond_3
    if-eqz p4, :cond_4

    array-length v3, p4

    if-le v3, v5, :cond_4

    .line 270
    aget-object v3, p4, v5

    new-instance v4, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$5;

    invoke-direct {v4, p0, p5, v1}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$5;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;Landroid/widget/EditText;)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 279
    :cond_4
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method

.method private popScrollTextDialog(Landroid/os/Bundle;[Ljava/lang/String;Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "buttonLabels"    # [Ljava/lang/String;
    .param p3, "callback"    # Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 513
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 569
    :goto_0
    return-void

    .line 517
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;-><init>(Landroid/content/Context;)V

    .line 5057
    .local v0, "scrollTextDialog":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;
    iput-object p1, v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->f:Landroid/os/Bundle;

    .line 519
    if-eqz p2, :cond_1

    array-length v1, p2

    if-ne v1, v4, :cond_1

    .line 520
    aget-object v1, p2, v3

    .line 5061
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->a:Ljava/lang/String;

    .line 521
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$11;

    invoke-direct {v1, p0, v0, p3}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$11;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;)V

    .line 5077
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->c:Landroid/view/View$OnClickListener;

    .line 557
    :goto_1
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$14;

    invoke-direct {v1, p0, v0, p3}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$14;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;)V

    .line 7081
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->e:Landroid/view/View$OnClickListener;

    .line 567
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->setCanceledOnTouchOutside(Z)V

    .line 568
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->show()V

    goto :goto_0

    .line 530
    :cond_1
    if-eqz p2, :cond_2

    array-length v1, p2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 531
    aget-object v1, p2, v3

    .line 6065
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->b:Ljava/lang/String;

    .line 532
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$12;

    invoke-direct {v1, p0, v0, p3}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$12;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;)V

    .line 6073
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->d:Landroid/view/View$OnClickListener;

    .line 542
    aget-object v1, p2, v4

    .line 7061
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->a:Ljava/lang/String;

    .line 543
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$13;

    invoke-direct {v1, p0, v0, p3}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$13;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;)V

    .line 7077
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->c:Landroid/view/View$OnClickListener;

    goto :goto_1

    .line 553
    :cond_2
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->dismiss()V

    .line 554
    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "Bad param of buttonLabels"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v1}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;->dialogCallbackFail(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private popUpgradeDialog(Ljava/util/List;[Ljava/lang/String;Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;)V
    .locals 5
    .param p2, "buttonLabels"    # [Ljava/lang/String;
    .param p3, "callback"    # Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;[",
            "Ljava/lang/String;",
            "Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 456
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 508
    :goto_0
    return-void

    .line 460
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;-><init>(Landroid/content/Context;)V

    .line 461
    .local v0, "upgradeDialog":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->a(Ljava/util/List;)V

    .line 464
    if-eqz p2, :cond_1

    array-length v1, p2

    if-ne v1, v4, :cond_1

    .line 465
    aget-object v1, p2, v3

    .line 2079
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->a:Ljava/lang/String;

    .line 466
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$7;

    invoke-direct {v1, p0, v0, p3}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$7;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;)V

    .line 2095
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->d:Landroid/view/View$OnClickListener;

    .line 496
    :goto_1
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$10;

    invoke-direct {v1, p0, v0, p3}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$10;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;)V

    .line 4099
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->g:Landroid/view/View$OnClickListener;

    .line 506
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->setCanceledOnTouchOutside(Z)V

    .line 507
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->show()V

    goto :goto_0

    .line 473
    :cond_1
    if-eqz p2, :cond_2

    array-length v1, p2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 474
    aget-object v1, p2, v3

    .line 3083
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->b:Ljava/lang/String;

    .line 475
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$8;

    invoke-direct {v1, p0, v0, p3}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$8;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;)V

    .line 3091
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->e:Landroid/view/View$OnClickListener;

    .line 483
    aget-object v1, p2, v4

    .line 4079
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->a:Ljava/lang/String;

    .line 484
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$9;

    invoke-direct {v1, p0, v0, p3}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$9;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;)V

    .line 4095
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->d:Landroid/view/View$OnClickListener;

    goto :goto_1

    .line 492
    :cond_2
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->dismiss()V

    .line 493
    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "Bad param of buttonLabels"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v1}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;->dialogCallbackFail(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private static traceEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 795
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 796
    const-string/jumbo v0, "lightapp"

    const-string/jumbo v1, "DialogUtils"

    invoke-static {v0, v1, p1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v0, v1, :cond_1

    .line 799
    const-string/jumbo v0, "DialogUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    :cond_1
    return-object p0
.end method


# virtual methods
.method public doRatingAndFeedback(Lorg/json/JSONObject;JLcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;)V
    .locals 14
    .param p1, "args"    # Lorg/json/JSONObject;
    .param p2, "curTime"    # J
    .param p4, "callback"    # Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;

    .prologue
    .line 668
    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->mContext:Landroid/content/Context;

    instance-of v10, v10, Landroid/app/Activity;

    if-nez v10, :cond_0

    .line 669
    new-instance v10, Ljava/lang/Exception;

    const-string/jumbo v11, "context is not Activity"

    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;->dialogCallbackFail(Ljava/lang/Exception;)V

    .line 792
    :goto_0
    return-void

    .line 672
    :cond_0
    const-string/jumbo v10, "source"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "empty source"

    invoke-static {v10, v11}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->traceEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 674
    .local v8, "source":Ljava/lang/String;
    move-wide/from16 v0, p2

    invoke-static {v0, v1, v8}, Lcom/alibaba/lightapp/runtime/plugin/internal/PraiseDialogTimeRuleUtils;->isExceedOccasionLimit(JLjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 675
    new-instance v10, Ljava/lang/Exception;

    const-string/jumbo v11, "time passed 3 month since last show"

    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;->dialogCallbackFail(Ljava/lang/Exception;)V

    goto :goto_0

    .line 679
    :cond_1
    const-string/jumbo v10, "title"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "empty title"

    invoke-static {v10, v11}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->traceEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 680
    .local v9, "title":Ljava/lang/String;
    const-string/jumbo v10, "description"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "empty description"

    invoke-static {v10, v11}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->traceEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 681
    .local v3, "description":Ljava/lang/String;
    const-string/jumbo v10, "cover_image_url"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "empty cover_image_url"

    invoke-static {v10, v11}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->traceEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 682
    .local v2, "cover_image_url":Ljava/lang/String;
    const-string/jumbo v10, "feedback_url"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "empty feedback_url"

    invoke-static {v10, v11}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->traceEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 683
    .local v6, "feedback_url":Ljava/lang/String;
    const-string/jumbo v10, "feedback_button_title"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "empty feedback_button_title"

    invoke-static {v10, v11}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->traceEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 685
    .local v5, "feedback_button_title":Ljava/lang/String;
    new-instance v7, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$b;

    invoke-direct {v7}, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$b;-><init>()V

    .line 13069
    .local v7, "params":Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$b;
    iput-object v9, v7, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$b;->a:Ljava/lang/String;

    .line 13074
    iput-object v3, v7, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$b;->b:Ljava/lang/String;

    .line 13079
    iput-object v2, v7, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$b;->c:Ljava/lang/String;

    .line 13084
    iput-object v6, v7, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$b;->d:Ljava/lang/String;

    .line 13094
    iput-object v5, v7, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$b;->f:Ljava/lang/String;

    .line 14089
    iput-object v8, v7, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$b;->e:Ljava/lang/String;

    .line 692
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v10

    const-string/jumbo v11, "contact"

    const-string/jumbo v12, "rate_share"

    invoke-virtual {v10, v11, v12}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "1"

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 14099
    const/4 v10, 0x1

    iput-boolean v10, v7, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$b;->g:Z

    .line 695
    :cond_2
    new-instance v4, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;

    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->mContext:Landroid/content/Context;

    invoke-direct {v4, v10, v7}, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;-><init>(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$b;)V

    .line 696
    .local v4, "dialog":Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;
    new-instance v10, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$21;

    invoke-direct {v10, p0}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$21;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;)V

    .line 15057
    iput-object v10, v4, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->b:Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$a;

    .line 784
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v10

    const-string/jumbo v11, "f_rating_bar_merge_more_time"

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_3

    .line 15127
    iget-object v10, v4, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->a:Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;

    if-eqz v10, :cond_3

    .line 15128
    iget-object v10, v4, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->a:Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;

    const/16 v11, 0x64

    invoke-virtual {v10, v11}, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->setMergeTime(I)V

    .line 789
    :cond_3
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->show()V

    .line 791
    move-wide/from16 v0, p2

    invoke-static {v8, v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/PraiseDialogTimeRuleUtils;->saveTime(Ljava/lang/String;J)V

    goto/16 :goto_0
.end method

.method public popAlertDialog(Lorg/json/JSONObject;Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;)V
    .locals 5
    .param p1, "args"    # Lorg/json/JSONObject;
    .param p2, "callback"    # Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 94
    :try_start_0
    const-string/jumbo v4, "message"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "message":Ljava/lang/String;
    const-string/jumbo v4, "title"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, "title":Ljava/lang/String;
    const-string/jumbo v4, "buttonName"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "buttonName":Ljava/lang/String;
    invoke-direct {p0, v2, v3, v0, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->popAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v0    # "buttonName":Ljava/lang/String;
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "title":Ljava/lang/String;
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 101
    invoke-interface {p2, v1}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;->dialogCallbackFail(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public popBigTextDialog(Landroid/os/Bundle;[Ljava/lang/String;Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "buttonLabels"    # [Ljava/lang/String;
    .param p3, "callback"    # Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 574
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 626
    :goto_0
    return-void

    .line 578
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;-><init>(Landroid/content/Context;)V

    .line 8059
    .local v0, "bigTextDialog":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;
    iput-object p1, v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->f:Landroid/os/Bundle;

    .line 582
    if-eqz p2, :cond_1

    array-length v1, p2

    if-ne v1, v4, :cond_1

    .line 583
    aget-object v1, p2, v3

    .line 8063
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->a:Ljava/lang/String;

    .line 584
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$15;

    invoke-direct {v1, p0, v0, p3}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$15;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;)V

    .line 8079
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->c:Landroid/view/View$OnClickListener;

    .line 614
    :goto_1
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$18;

    invoke-direct {v1, p0, v0, p3}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$18;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;)V

    .line 10083
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->e:Landroid/view/View$OnClickListener;

    .line 624
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->setCanceledOnTouchOutside(Z)V

    .line 625
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->show()V

    goto :goto_0

    .line 591
    :cond_1
    if-eqz p2, :cond_2

    array-length v1, p2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 592
    aget-object v1, p2, v3

    .line 9067
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->b:Ljava/lang/String;

    .line 593
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$16;

    invoke-direct {v1, p0, v0, p3}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$16;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;)V

    .line 9075
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->d:Landroid/view/View$OnClickListener;

    .line 601
    aget-object v1, p2, v4

    .line 10063
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->a:Ljava/lang/String;

    .line 602
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$17;

    invoke-direct {v1, p0, v0, p3}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$17;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;)V

    .line 10079
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->c:Landroid/view/View$OnClickListener;

    goto :goto_1

    .line 610
    :cond_2
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->dismiss()V

    .line 611
    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "Bad param of buttonLabels"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v1}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;->dialogCallbackFail(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public popBigTextDialog(Lorg/json/JSONObject;Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;)V
    .locals 11
    .param p1, "args"    # Lorg/json/JSONObject;
    .param p2, "callback"    # Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 427
    :try_start_0
    const-string/jumbo v10, "title"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 428
    .local v9, "title":Ljava/lang/String;
    const-string/jumbo v10, "subTitle"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 429
    .local v8, "subTitle":Ljava/lang/String;
    const-string/jumbo v10, "content"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 430
    .local v3, "content":Ljava/lang/String;
    const-string/jumbo v10, "bigFont"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 432
    .local v0, "bigFont":Z
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 433
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v10, "title"

    invoke-virtual {v1, v10, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const-string/jumbo v10, "subTitle"

    invoke-virtual {v1, v10, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const-string/jumbo v10, "content"

    invoke-virtual {v1, v10, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const-string/jumbo v10, "bigFont"

    invoke-virtual {v1, v10, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 438
    const-string/jumbo v10, "buttonLabels"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 439
    .local v6, "jsonArray":Lorg/json/JSONArray;
    if-eqz v6, :cond_1

    .line 440
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 441
    .local v7, "jsonArrayLength":I
    new-array v2, v7, [Ljava/lang/String;

    .line 442
    .local v2, "buttonLabels":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v7, :cond_0

    .line 443
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v5

    .line 442
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 445
    :cond_0
    invoke-virtual {p0, v1, v2, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->popBigTextDialog(Landroid/os/Bundle;[Ljava/lang/String;Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    .end local v0    # "bigFont":Z
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "buttonLabels":[Ljava/lang/String;
    .end local v3    # "content":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v7    # "jsonArrayLength":I
    .end local v8    # "subTitle":Ljava/lang/String;
    .end local v9    # "title":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 447
    :catch_0
    move-exception v4

    .line 448
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 449
    invoke-interface {p2, v4}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;->dialogCallbackFail(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public popConfirmDialog(Lorg/json/JSONObject;Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;)V
    .locals 11
    .param p1, "args"    # Lorg/json/JSONObject;
    .param p2, "callback"    # Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 136
    :try_start_0
    const-string/jumbo v10, "message"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 137
    .local v7, "message":Ljava/lang/String;
    const-string/jumbo v10, "title"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 138
    .local v9, "title":Ljava/lang/String;
    const-string/jumbo v10, "subTitle"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 139
    .local v8, "subTitle":Ljava/lang/String;
    const-string/jumbo v10, "bigFont"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 140
    .local v0, "bigFont":Z
    const-string/jumbo v10, "buttonLabels"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 141
    .local v5, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    .line 142
    .local v6, "jsonArrayLength":I
    new-array v2, v6, [Ljava/lang/String;

    .line 143
    .local v2, "buttonLabels":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_0

    .line 144
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v4

    .line 143
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 146
    :cond_0
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 147
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 148
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v10, "title"

    invoke-virtual {v1, v10, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string/jumbo v10, "subTitle"

    invoke-virtual {v1, v10, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string/jumbo v10, "content"

    invoke-virtual {v1, v10, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string/jumbo v10, "bigFont"

    invoke-virtual {v1, v10, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 153
    invoke-virtual {p0, v1, v2, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->popBigTextDialog(Landroid/os/Bundle;[Ljava/lang/String;Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;)V

    .line 162
    .end local v0    # "bigFont":Z
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "buttonLabels":[Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    .end local v6    # "jsonArrayLength":I
    .end local v7    # "message":Ljava/lang/String;
    .end local v8    # "subTitle":Ljava/lang/String;
    .end local v9    # "title":Ljava/lang/String;
    :goto_1
    return-void

    .line 155
    .restart local v0    # "bigFont":Z
    .restart local v2    # "buttonLabels":[Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v5    # "jsonArray":Lorg/json/JSONArray;
    .restart local v6    # "jsonArrayLength":I
    .restart local v7    # "message":Ljava/lang/String;
    .restart local v8    # "subTitle":Ljava/lang/String;
    .restart local v9    # "title":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v7, v9, v2, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->popConfirmDialog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 157
    .end local v0    # "bigFont":Z
    .end local v2    # "buttonLabels":[Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    .end local v6    # "jsonArrayLength":I
    .end local v7    # "message":Ljava/lang/String;
    .end local v8    # "subTitle":Ljava/lang/String;
    .end local v9    # "title":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 158
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 160
    invoke-interface {p2, v3}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;->dialogCallbackFail(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public popExtendModalDialog(Lorg/json/JSONObject;Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;)V
    .locals 13
    .param p1, "args"    # Lorg/json/JSONObject;
    .param p2, "callback"    # Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 386
    :try_start_0
    const-string/jumbo v11, "cells"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 387
    .local v7, "jsonCells":Lorg/json/JSONArray;
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    .line 388
    .local v8, "jsonCellsLength":I
    const/16 v11, 0xa

    if-le v8, v11, :cond_0

    .line 389
    const/16 v8, 0xa

    .line 391
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 392
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v8, :cond_1

    .line 393
    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 394
    .local v10, "obj":Lorg/json/JSONObject;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 395
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v11, "image"

    const-string/jumbo v12, "image"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string/jumbo v11, "title"

    const-string/jumbo v12, "title"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const-string/jumbo v11, "content"

    const-string/jumbo v12, "content"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string/jumbo v11, "resource"

    const-string/jumbo v12, "resource"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 399
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 402
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v10    # "obj":Lorg/json/JSONObject;
    :cond_1
    const-string/jumbo v11, "highlightButton"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 403
    .local v3, "highLightBtnText":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 405
    const-string/jumbo v11, "buttonLabels"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 406
    .local v5, "jsonButtons":Lorg/json/JSONArray;
    if-eqz v5, :cond_3

    .line 407
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    .line 408
    .local v6, "jsonButtonsLength":I
    new-array v1, v6, [Ljava/lang/String;

    .line 409
    .local v1, "buttonLabels":[Ljava/lang/String;
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v6, :cond_2

    .line 410
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v1, v4

    .line 409
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 412
    :cond_2
    invoke-direct {p0, v9, v1, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->popUpgradeDialog(Ljava/util/List;[Ljava/lang/String;Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;)V

    .line 423
    .end local v1    # "buttonLabels":[Ljava/lang/String;
    .end local v3    # "highLightBtnText":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "jsonButtons":Lorg/json/JSONArray;
    .end local v6    # "jsonButtonsLength":I
    .end local v7    # "jsonCells":Lorg/json/JSONArray;
    .end local v8    # "jsonCellsLength":I
    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :cond_3
    :goto_2
    return-void

    .line 415
    .restart local v3    # "highLightBtnText":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v7    # "jsonCells":Lorg/json/JSONArray;
    .restart local v8    # "jsonCellsLength":I
    .restart local v9    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :cond_4
    invoke-direct {p0, v9, v3, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->popHighLightUpgradeDialog(Ljava/util/List;Ljava/lang/String;Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 419
    .end local v3    # "highLightBtnText":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v7    # "jsonCells":Lorg/json/JSONArray;
    .end local v8    # "jsonCellsLength":I
    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :catch_0
    move-exception v2

    .line 420
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 421
    invoke-interface {p2, v2}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;->dialogCallbackFail(Ljava/lang/Exception;)V

    goto :goto_2
.end method

.method public popModalDialog(Lorg/json/JSONObject;Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;)V
    .locals 15
    .param p1, "args"    # Lorg/json/JSONObject;
    .param p2, "callback"    # Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 331
    const/4 v7, 0x0

    .line 332
    .local v7, "imageUrl":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v14, "banner"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 333
    .local v1, "banners":Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-lez v14, :cond_0

    .line 334
    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 336
    :cond_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 337
    const-string/jumbo v14, "image"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 339
    :cond_1
    const-string/jumbo v14, "title"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 340
    .local v13, "title":Ljava/lang/String;
    const-string/jumbo v14, "subTitle"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 341
    .local v12, "subTitle":Ljava/lang/String;
    const-string/jumbo v14, "content"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 343
    .local v4, "content":Ljava/lang/String;
    const-string/jumbo v14, "isTextModal"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 344
    .local v8, "isTextModal":Z
    if-eqz v8, :cond_4

    .line 345
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 346
    .local v2, "bundle":Landroid/os/Bundle;
    const-string/jumbo v14, "title"

    invoke-virtual {v2, v14, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string/jumbo v14, "subTitle"

    invoke-virtual {v2, v14, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string/jumbo v14, "content"

    invoke-virtual {v2, v14, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string/jumbo v14, "buttonLabels"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 351
    .local v9, "jsonArray":Lorg/json/JSONArray;
    if-eqz v9, :cond_3

    .line 352
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    .line 353
    .local v10, "jsonArrayLength":I
    new-array v3, v10, [Ljava/lang/String;

    .line 354
    .local v3, "buttonLabels":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v10, :cond_2

    .line 355
    invoke-virtual {v9, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v3, v6

    .line 354
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 357
    :cond_2
    move-object/from16 v0, p2

    invoke-direct {p0, v2, v3, v0}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->popScrollTextDialog(Landroid/os/Bundle;[Ljava/lang/String;Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;)V

    .line 381
    .end local v1    # "banners":Lorg/json/JSONArray;
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "buttonLabels":[Ljava/lang/String;
    .end local v4    # "content":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v8    # "isTextModal":Z
    .end local v9    # "jsonArray":Lorg/json/JSONArray;
    .end local v10    # "jsonArrayLength":I
    .end local v12    # "subTitle":Ljava/lang/String;
    .end local v13    # "title":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    .line 360
    .restart local v1    # "banners":Lorg/json/JSONArray;
    .restart local v4    # "content":Ljava/lang/String;
    .restart local v8    # "isTextModal":Z
    .restart local v12    # "subTitle":Ljava/lang/String;
    .restart local v13    # "title":Ljava/lang/String;
    :cond_4
    new-instance v11, Ljava/util/ArrayList;

    const/4 v14, 0x1

    invoke-direct {v11, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 361
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 362
    .restart local v2    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v14, "image"

    invoke-virtual {v2, v14, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string/jumbo v14, "title"

    invoke-virtual {v2, v14, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string/jumbo v14, "content"

    invoke-virtual {v2, v14, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    const-string/jumbo v14, "buttonLabels"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 368
    .restart local v9    # "jsonArray":Lorg/json/JSONArray;
    if-eqz v9, :cond_3

    .line 369
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    .line 370
    .restart local v10    # "jsonArrayLength":I
    new-array v3, v10, [Ljava/lang/String;

    .line 371
    .restart local v3    # "buttonLabels":[Ljava/lang/String;
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2
    if-ge v6, v10, :cond_5

    .line 372
    invoke-virtual {v9, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v3, v6

    .line 371
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 374
    :cond_5
    move-object/from16 v0, p2

    invoke-direct {p0, v11, v3, v0}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->popUpgradeDialog(Ljava/util/List;[Ljava/lang/String;Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 377
    .end local v1    # "banners":Lorg/json/JSONArray;
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "buttonLabels":[Ljava/lang/String;
    .end local v4    # "content":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v8    # "isTextModal":Z
    .end local v9    # "jsonArray":Lorg/json/JSONArray;
    .end local v10    # "jsonArrayLength":I
    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    .end local v12    # "subTitle":Ljava/lang/String;
    .end local v13    # "title":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 378
    .local v5, "e":Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    .line 379
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;->dialogCallbackFail(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public popPromptDialog(Lorg/json/JSONObject;Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;)V
    .locals 11
    .param p1, "args"    # Lorg/json/JSONObject;
    .param p2, "callback"    # Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v5, 0x400

    .line 209
    :try_start_0
    const-string/jumbo v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "message":Ljava/lang/String;
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, "title":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v5, :cond_0

    .line 213
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v5, :cond_1

    .line 214
    :cond_0
    new-instance v7, Ljava/lang/Exception;

    const-string/jumbo v0, "message or title length greater than 1024"

    invoke-direct {v7, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 215
    .local v7, "exception":Ljava/lang/Exception;
    invoke-interface {p2, v7}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;->dialogCallbackFail(Ljava/lang/Exception;)V

    .line 231
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    .end local v7    # "exception":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 219
    .restart local v1    # "message":Ljava/lang/String;
    .restart local v2    # "title":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "defaultText"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 220
    .local v3, "defaultText":Ljava/lang/String;
    const-string/jumbo v0, "buttonLabels"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 221
    .local v9, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    .line 222
    .local v10, "jsonArrayLength":I
    new-array v4, v10, [Ljava/lang/String;

    .line 223
    .local v4, "buttonLabels":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v10, :cond_2

    .line 224
    invoke-virtual {v9, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 223
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    move-object v0, p0

    move-object v5, p2

    .line 226
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->popPromptDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 227
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    .end local v3    # "defaultText":Ljava/lang/String;
    .end local v4    # "buttonLabels":[Ljava/lang/String;
    .end local v8    # "i":I
    .end local v9    # "jsonArray":Lorg/json/JSONArray;
    .end local v10    # "jsonArrayLength":I
    :catch_0
    move-exception v6

    .line 228
    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 229
    invoke-interface {p2, v6}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;->dialogCallbackFail(Ljava/lang/Exception;)V

    goto :goto_0
.end method
