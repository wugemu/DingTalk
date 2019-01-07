.class public Lcom/alibaba/android/rimet/biz/update/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljaw;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field public a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field private c:Landroid/content/Context;

.field private d:I

.field private e:Ljay;

.field private f:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field private g:Landroid/os/Handler;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->h:Z

    .line 75
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->c:Landroid/content/Context;

    .line 76
    new-instance v0, Lcom/alibaba/android/rimet/biz/update/DownloadManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/rimet/biz/update/DownloadManager$1;-><init>(Lcom/alibaba/android/rimet/biz/update/DownloadManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->g:Landroid/os/Handler;

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/alibaba/android/rimet/biz/update/DownloadManager;-><init>(Landroid/content/Context;)V

    .line 87
    iput p2, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->d:I

    .line 88
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/update/DownloadManager;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/update/DownloadManager;

    .prologue
    const/4 v5, 0x0

    .line 56
    .line 9382
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->f:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    .line 9383
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->f:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->c:Landroid/content/Context;

    const v2, 0x7f091f1b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->e:Ljay;

    iget-object v4, v4, Ljay;->f:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 9384
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->f:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->c:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040489

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 9385
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->f:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    const v1, 0x7f090342

    new-instance v2, Lcom/alibaba/android/rimet/biz/update/DownloadManager$8;

    invoke-direct {v2, p0}, Lcom/alibaba/android/rimet/biz/update/DownloadManager$8;-><init>(Lcom/alibaba/android/rimet/biz/update/DownloadManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 9392
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->f:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 9393
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->f:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/update/DownloadManager;Landroid/os/Message;)V
    .locals 12
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/update/DownloadManager;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    const v11, 0x7f111492

    const/4 v10, 0x2

    const/16 v4, 0x7dc

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 56
    .line 3091
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 3136
    :cond_0
    :goto_0
    return-void

    .line 3094
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3095
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3096
    const-string/jumbo v2, "to_page"

    const-string/jumbo v3, "to_session"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3097
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3098
    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3100
    new-array v1, v10, [Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const-string/jumbo v2, "%"

    aput-object v2, v1, v9

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3102
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->c:Landroid/content/Context;

    const/high16 v3, 0x8000000

    invoke-static {v2, v4, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 3104
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->c:Landroid/content/Context;

    invoke-static {v2}, Leld;->a(Landroid/content/Context;)Leld;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f091f1b

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->e:Ljay;

    iget-object v6, v6, Ljay;->f:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 4041
    :try_start_0
    invoke-virtual {v2, v3, v1}, Leld;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v4

    .line 4042
    iput-object v3, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 4043
    const/4 v3, 0x2

    iput v3, v4, Landroid/app/Notification;->flags:I

    .line 4044
    iput-object v0, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 4045
    iget-object v0, v2, Leld;->a:Landroid/app/NotificationManager;

    const/16 v2, 0x7dc

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 3107
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->e:Ljay;

    iget v0, v0, Ljay;->g:I

    sget-object v2, Lcom/laiwang/update/base/UpdateEnum;->FORCE:Lcom/laiwang/update/base/UpdateEnum;

    invoke-virtual {v2}, Lcom/laiwang/update/base/UpdateEnum;->value()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 3108
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 4424
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->f:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    if-eqz v0, :cond_0

    .line 4426
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->f:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    .line 4427
    const v0, 0x7f111491

    invoke-virtual {v3, v0}, Landroid/support/v7/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 4428
    if-eqz v0, :cond_1

    .line 4429
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 4431
    :cond_1
    invoke-virtual {v3, v11}, Landroid/support/v7/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4432
    if-eqz v0, :cond_0

    .line 4433
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 3113
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 5153
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5155
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_3

    invoke-static {}, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5156
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.INSTALL_PACKAGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v2, 0x10000001

    .line 5157
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->c:Landroid/content/Context;

    .line 5158
    invoke-static {v3}, Lhcs;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/support/v4/content/FileProvider;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 3117
    :goto_2
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 3125
    :goto_3
    :try_start_2
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->c:Landroid/content/Context;

    const/16 v2, 0x7dc

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 3129
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->c:Landroid/content/Context;

    invoke-static {v1}, Leld;->a(Landroid/content/Context;)Leld;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f091f1b

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->e:Ljay;

    iget-object v6, v6, Ljay;->f:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->c:Landroid/content/Context;

    .line 3130
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0921b6

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->e:Ljay;

    iget-object v7, v7, Ljay;->f:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    .line 6054
    :try_start_3
    invoke-virtual {v1, v2, v3}, Leld;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v3

    .line 6055
    iput-object v2, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 6056
    const/16 v2, 0x11

    iput v2, v3, Landroid/app/Notification;->flags:I

    .line 6057
    iput-object v0, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 6058
    iget-object v0, v1, Leld;->a:Landroid/app/NotificationManager;

    const/16 v1, 0x7dc

    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 3135
    :goto_4
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->e:Ljay;

    iget v0, v0, Ljay;->g:I

    sget-object v1, Lcom/laiwang/update/base/UpdateEnum;->FORCE:Lcom/laiwang/update/base/UpdateEnum;

    invoke-virtual {v1}, Lcom/laiwang/update/base/UpdateEnum;->value()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 6397
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->f:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    if-eqz v0, :cond_0

    .line 6399
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->f:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 6401
    const v0, 0x7f111491

    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 6402
    if-eqz v0, :cond_2

    .line 6403
    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 6405
    :cond_2
    invoke-virtual {v1, v11}, Landroid/support/v7/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 6406
    if-eqz v0, :cond_0

    .line 6407
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->c:Landroid/content/Context;

    const v2, 0x7f090682

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->e:Ljay;

    iget-object v4, v4, Ljay;->f:Ljava/lang/String;

    aput-object v4, v3, v8

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 5160
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    .line 5161
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 5162
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto/16 :goto_2

    .line 3118
    :catch_0
    move-exception v1

    .line 3120
    const-string/jumbo v2, "update_tag"

    const/4 v3, 0x0

    new-array v4, v10, [Ljava/lang/String;

    const-string/jumbo v5, "start install activity failed, error="

    aput-object v5, v4, v8

    .line 3121
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v9

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3120
    invoke-static {v2, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3131
    :catch_1
    move-exception v0

    .line 3132
    const-string/jumbo v1, "update_tag"

    const/4 v2, 0x0

    new-array v3, v10, [Ljava/lang/String;

    const-string/jumbo v4, "start install notification failed, error="

    aput-object v4, v3, v8

    .line 3133
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v9

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3132
    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 3140
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->c:Landroid/content/Context;

    invoke-static {v0}, Leld;->a(Landroid/content/Context;)Leld;

    move-result-object v0

    .line 7065
    iget-object v1, v0, Leld;->a:Landroid/app/NotificationManager;

    if-eqz v1, :cond_4

    .line 7066
    iget-object v0, v0, Leld;->a:Landroid/app/NotificationManager;

    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 3141
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->c:Landroid/content/Context;

    const v1, 0x7f0921b5

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3142
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->e:Ljay;

    iget v0, v0, Ljay;->g:I

    sget-object v1, Lcom/laiwang/update/base/UpdateEnum;->FORCE:Lcom/laiwang/update/base/UpdateEnum;

    invoke-virtual {v1}, Lcom/laiwang/update/base/UpdateEnum;->value()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 7413
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->f:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    if-eqz v0, :cond_0

    .line 7415
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->f:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 7416
    invoke-virtual {v0, v11}, Landroid/support/v7/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 7417
    if-eqz v0, :cond_0

    .line 7418
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0921b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto/16 :goto_4

    :catch_3
    move-exception v0

    goto/16 :goto_1

    .line 3091
    nop

    :pswitch_data_0
    .packed-switch 0x778
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/update/DownloadManager;Ljax$a;)V
    .locals 11
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/update/DownloadManager;
    .param p1, "x1"    # Ljax$a;

    .prologue
    const/4 v10, 0x0

    const-wide/16 v2, 0x0

    .line 56
    .line 8286
    const-string/jumbo v0, "212200"

    invoke-static {}, Lcpy;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8287
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(Landroid/content/Context;)V

    .line 8289
    invoke-virtual {p1}, Ljax$a;->a()V

    .line 9271
    :cond_0
    :goto_0
    return-void

    .line 9267
    :cond_1
    iget-boolean v0, p1, Ljax$a;->a:Z

    if-nez v0, :cond_2

    iget-object v0, p1, Ljax$a;->b:Ljay;

    if-eqz v0, :cond_2

    iget-object v0, p1, Ljax$a;->b:Ljay;

    iget-object v0, v0, Ljay;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Ljax$a;->b:Ljay;

    iget-object v0, v0, Ljay;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 9270
    :cond_2
    iget-object v0, p1, Ljax$a;->f:Ljax;

    invoke-static {v0, v10}, Ljax;->a(Ljax;Z)Z

    goto :goto_0

    .line 9274
    :cond_3
    iget-object v0, p1, Ljax$a;->f:Ljax;

    invoke-static {v0}, Ljax;->b(Ljax;)Ljau;

    move-result-object v0

    new-instance v1, Ljax$a$a;

    invoke-direct {v1, p1}, Ljax$a$a;-><init>(Ljax$a;)V

    invoke-interface {v0, v1}, Ljau;->a(Ljau$a;)V

    .line 9275
    new-instance v4, Ljava/io/File;

    iget-object v0, p1, Ljax$a;->f:Ljax;

    invoke-static {v0}, Ljax;->c(Ljax;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9276
    const/4 v1, 0x0

    .line 9278
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9283
    :goto_1
    if-eqz v0, :cond_6

    .line 9284
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v4

    .line 9285
    :goto_2
    iget-object v4, p1, Ljax$a;->b:Ljay;

    iget-wide v4, v4, Ljay;->d:J

    const-wide/32 v6, 0x200000

    add-long/2addr v4, v6

    sub-long/2addr v0, v4

    .line 9287
    cmp-long v4, v0, v2

    if-ltz v4, :cond_4

    .line 9289
    iget-object v4, p1, Ljax$a;->f:Ljax;

    invoke-static {v4}, Ljax;->b(Ljax;)Ljau;

    move-result-object v4

    iget-object v5, p1, Ljax$a;->b:Ljay;

    iget-object v5, v5, Ljay;->b:Ljava/lang/String;

    iget-object v6, p1, Ljax$a;->f:Ljax;

    invoke-static {v6}, Ljax;->c(Ljax;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Ljax$a;->b:Ljay;

    iget-wide v8, v7, Ljay;->d:J

    invoke-interface {v4, v5, v6, v8, v9}, Ljau;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 9300
    :cond_4
    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 9302
    iget-object v0, p1, Ljax$a;->f:Ljax;

    invoke-static {v0}, Ljax;->d(Ljax;)Ljaw;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 9303
    iget-object v0, p1, Ljax$a;->f:Ljax;

    invoke-static {v0}, Ljax;->d(Ljax;)Ljaw;

    move-result-object v0

    const/4 v1, -0x2

    const-string/jumbo v2, "\u7cfb\u7edf\u7a7a\u95f4\u4e0d\u8db3"

    invoke-interface {v0, v1, v2}, Ljaw;->a(ILjava/lang/String;)V

    .line 9305
    :cond_5
    iget-object v0, p1, Ljax$a;->f:Ljax;

    invoke-static {v0, v10}, Ljax;->a(Ljax;Z)Z

    goto/16 :goto_0

    .line 9279
    :catch_0
    move-exception v0

    .line 9280
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_1

    :cond_6
    move-wide v0, v2

    goto :goto_2
.end method

.method private static a()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 169
    :try_start_0
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v2

    const-string/jumbo v3, "f_base_new_install_action"

    .line 1083
    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lchx;->a(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 174
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    return v1

    .line 170
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 171
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "update_tag"

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isUseNewInstallAction failed, error="

    aput-object v5, v4, v1

    .line 172
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 171
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/update/DownloadManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/update/DownloadManager;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/rimet/biz/update/DownloadManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/update/DownloadManager;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/rimet/biz/update/DownloadManager;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/update/DownloadManager;

    .prologue
    .line 56
    .line 10372
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10373
    const-string/jumbo v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 10374
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 10375
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 10377
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 10378
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 56
    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/rimet/biz/update/DownloadManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/update/DownloadManager;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->h:Z

    return v0
.end method

.method static synthetic e(Lcom/alibaba/android/rimet/biz/update/DownloadManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/update/DownloadManager;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->g:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 4
    .param p1, "progress"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onDownloadProgress:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 312
    const-string/jumbo v1, "update_tag"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onDownloadProgress:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->g:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 314
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x778

    iput v1, v0, Landroid/os/Message;->what:I

    .line 315
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 316
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->g:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 317
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # I
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onDownloadError:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    const-string/jumbo v1, "update_tag"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "error reason\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->g:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 324
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x77a

    iput v1, v0, Landroid/os/Message;->what:I

    .line 325
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 326
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 327
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->g:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 328
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 6
    .param p1, "apkPath"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v5, 0x1a

    .line 332
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onDownloadFinish apkPath:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    const-string/jumbo v2, "update_tag"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onDownloadFinish apkPath:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->g:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 336
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x779

    iput v2, v1, Landroid/os/Message;->what:I

    .line 337
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 339
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->c:Landroid/content/Context;

    invoke-static {v2}, Lbzz;->a(Landroid/content/Context;)I

    move-result v2

    if-lt v2, v5, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v5, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->c:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 342
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 343
    .local v0, "activity":Landroid/app/Activity;
    const/16 v2, 0x7e2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "android.permission.REQUEST_INSTALL_PACKAGES"

    aput-object v5, v3, v4

    new-instance v4, Lcom/alibaba/android/rimet/biz/update/DownloadManager$7;

    invoke-direct {v4, p0, v1}, Lcom/alibaba/android/rimet/biz/update/DownloadManager$7;-><init>(Lcom/alibaba/android/rimet/biz/update/DownloadManager;Landroid/os/Message;)V

    invoke-static {v0, v2, v3, v4}, Lbyy;->a(Landroid/app/Activity;I[Ljava/lang/String;Lbzc;)V

    .line 365
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_0
    return-void

    .line 363
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->g:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final a(Ljay;Ljax$a;I)V
    .locals 8
    .param p1, "updateInfo"    # Ljay;
    .param p2, "downloadConfirm"    # Ljax$a;
    .param p3, "errorCode"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 183
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 186
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " onRequestResult end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    if-eqz p1, :cond_3

    if-nez p3, :cond_3

    .line 1368
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->e:Ljay;

    .line 190
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->f:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    .line 191
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->f:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f091f1b

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Ljay;->f:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p1, Ljay;->h:Ljava/lang/String;

    .line 192
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 193
    iget v0, p1, Ljay;->g:I

    sget-object v1, Lcom/laiwang/update/base/UpdateEnum;->FORCE:Lcom/laiwang/update/base/UpdateEnum;

    invoke-virtual {v1}, Lcom/laiwang/update/base/UpdateEnum;->value()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 194
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->f:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 195
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->f:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    const v1, 0x7f091cec

    new-instance v2, Lcom/alibaba/android/rimet/biz/update/DownloadManager$3;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/rimet/biz/update/DownloadManager$3;-><init>(Lcom/alibaba/android/rimet/biz/update/DownloadManager;Ljax$a;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f091d22

    new-instance v2, Lcom/alibaba/android/rimet/biz/update/DownloadManager$2;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/rimet/biz/update/DownloadManager$2;-><init>(Lcom/alibaba/android/rimet/biz/update/DownloadManager;Ljax$a;)V

    .line 207
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 248
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->f:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    new-instance v1, Lcom/alibaba/android/rimet/biz/update/DownloadManager$6;

    invoke-direct {v1, p0, p2}, Lcom/alibaba/android/rimet/biz/update/DownloadManager$6;-><init>(Lcom/alibaba/android/rimet/biz/update/DownloadManager;Ljax$a;)V

    .line 2173
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a:Landroid/content/DialogInterface$OnDismissListener;

    .line 257
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->f:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 258
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->f:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 281
    :cond_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    const-string/jumbo v1, "TOKEN_MESSAGE_AUTO_UPDATE_DELAY_CHECK"

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 282
    return-void

    .line 221
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->f:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 222
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->f:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    const v1, 0x7f091d48

    new-instance v2, Lcom/alibaba/android/rimet/biz/update/DownloadManager$5;

    invoke-direct {v2, p0, p2, p1}, Lcom/alibaba/android/rimet/biz/update/DownloadManager$5;-><init>(Lcom/alibaba/android/rimet/biz/update/DownloadManager;Ljax$a;Ljay;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0921b4

    new-instance v2, Lcom/alibaba/android/rimet/biz/update/DownloadManager$4;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/rimet/biz/update/DownloadManager$4;-><init>(Lcom/alibaba/android/rimet/biz/update/DownloadManager;Ljax$a;)V

    .line 234
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    goto :goto_0

    .line 260
    :cond_3
    const-string/jumbo v0, "update_tag"

    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v2, "update request result, errorCode:"

    aput-object v2, v1, v5

    .line 263
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string/jumbo v2, "mode:"

    aput-object v2, v1, v4

    iget v2, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->d:I

    .line 265
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 261
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 260
    invoke-static {v0, v1}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget v0, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->d:I

    if-nez v0, :cond_4

    .line 267
    if-eq p3, v7, :cond_7

    .line 269
    if-ne p3, v6, :cond_6

    .line 270
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->c:Landroid/content/Context;

    const v1, 0x7f0921b7

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2296
    :cond_4
    :goto_1
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v0, v1, :cond_5

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_GRAY:I

    if-ne v0, v1, :cond_1

    .line 2298
    :cond_5
    const-string/jumbo v0, "update_tag"

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "debug,gray ,errorCode:"

    aput-object v2, v1, v5

    .line 2299
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2298
    invoke-static {v0, v1}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2300
    if-eqz p3, :cond_1

    const/4 v0, -0x3

    if-eq p3, v0, :cond_1

    const/4 v0, 0x5

    if-eq p3, v0, :cond_1

    const/4 v0, 0x6

    if-eq p3, v0, :cond_1

    const/4 v0, 0x7

    if-eq p3, v0, :cond_1

    if-eq p3, v7, :cond_1

    if-eq p3, v6, :cond_1

    .line 2304
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "App version update failed, error code = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_6
    if-ne p3, v4, :cond_7

    .line 272
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->c:Landroid/content/Context;

    const v1, 0x7f0921b8

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 274
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->c:Landroid/content/Context;

    const v1, 0x7f091f2c

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
