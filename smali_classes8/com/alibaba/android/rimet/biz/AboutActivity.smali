.class public Lcom/alibaba/android/rimet/biz/AboutActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "AboutActivity.java"


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field a:Landroid/widget/TextView;

.field b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private e:Lcom/alibaba/android/rimet/biz/update/DownloadManager;

.field private f:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

.field private g:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/alibaba/android/rimet/biz/AboutActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/rimet/biz/AboutActivity;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 256
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/AboutActivity;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/alibaba/android/rimet/biz/AboutActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/AboutActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/AboutActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/AboutActivity;->b()V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/rimet/biz/AboutActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/AboutActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/AboutActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    return-object v0
.end method

.method private b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 191
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 192
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    const v1, 0x7f0921bd

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 193
    const v1, 0x7f09217c

    new-instance v2, Lcom/alibaba/android/rimet/biz/AboutActivity$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/rimet/biz/AboutActivity$3;-><init>(Lcom/alibaba/android/rimet/biz/AboutActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 219
    const v1, 0x7f09033d

    new-instance v2, Lcom/alibaba/android/rimet/biz/AboutActivity$4;

    invoke-direct {v2, p0}, Lcom/alibaba/android/rimet/biz/AboutActivity$4;-><init>(Lcom/alibaba/android/rimet/biz/AboutActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 226
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 227
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 145
    .local v1, "vid":I
    const v2, 0x7f110224

    if-ne v1, v2, :cond_1

    .line 146
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, p0, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;I)V

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    const v2, 0x7f110223

    if-ne v1, v2, :cond_5

    .line 148
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/AboutActivity;->e:Lcom/alibaba/android/rimet/biz/update/DownloadManager;

    if-nez v2, :cond_2

    .line 149
    new-instance v2, Lcom/alibaba/android/rimet/biz/update/DownloadManager;

    invoke-direct {v2, p0, v5}, Lcom/alibaba/android/rimet/biz/update/DownloadManager;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/alibaba/android/rimet/biz/AboutActivity;->e:Lcom/alibaba/android/rimet/biz/update/DownloadManager;

    .line 151
    :cond_2
    invoke-static {}, Lelc;->a()Lelc;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/AboutActivity;->e:Lcom/alibaba/android/rimet/biz/update/DownloadManager;

    invoke-virtual {v2, p0, v5, v3}, Lelc;->a(Landroid/content/Context;ILjaw;)Z

    move-result v0

    .line 152
    .local v0, "startUpdate":Z
    if-eqz v0, :cond_4

    .line 1230
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/AboutActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v2, :cond_3

    .line 1231
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/AboutActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 1233
    :cond_3
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/alibaba/android/rimet/biz/AboutActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 1234
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/AboutActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090389

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1235
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/AboutActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v2, v5}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setCancelable(Z)V

    .line 1236
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/AboutActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    .line 1237
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/AboutActivity;->e:Lcom/alibaba/android/rimet/biz/update/DownloadManager;

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/AboutActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 2178
    iput-object v3, v2, Lcom/alibaba/android/rimet/biz/update/DownloadManager;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 158
    :goto_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v2

    sget-object v3, Lble;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->clickStatistics(Ljava/lang/String;)V

    .line 159
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v2

    sget-object v3, Lble;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->setWidgetHiden(Ljava/lang/String;Z)V

    goto :goto_0

    .line 155
    :cond_4
    iput-object v4, p0, Lcom/alibaba/android/rimet/biz/AboutActivity;->e:Lcom/alibaba/android/rimet/biz/update/DownloadManager;

    .line 156
    const v2, 0x7f0921bb

    invoke-static {v2}, Lcms;->a(I)V

    goto :goto_1

    .line 160
    .end local v0    # "startUpdate":Z
    :cond_5
    const v2, 0x7f110226

    if-ne v1, v2, :cond_6

    .line 161
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, p0, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;I)V

    goto :goto_0

    .line 162
    :cond_6
    const v2, 0x7f110225

    if-ne v1, v2, :cond_7

    .line 163
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2, p0, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;I)V

    goto/16 :goto_0

    .line 164
    :cond_7
    const v2, 0x7f110227

    if-ne v1, v2, :cond_8

    .line 165
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2, p0, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;I)V

    goto/16 :goto_0

    .line 166
    :cond_8
    const v2, 0x7f110228

    if-ne v1, v2, :cond_9

    .line 167
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v2

    const-string/jumbo v3, "https://tms.dingtalk.com/markets/dingtalk/thanks"

    invoke-virtual {v2, p0, v3, v4}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 168
    :cond_9
    const v2, 0x7f1100b0

    if-ne v1, v2, :cond_b

    .line 169
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/AboutActivity;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 170
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v2

    sget v3, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v2, v3, :cond_a

    .line 171
    invoke-static {}, Lcpy;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcms;->a(Ljava/lang/String;)V

    .line 172
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/AboutActivity;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 173
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a()Lcom/alibaba/android/dingtalk/userbase/AccountInterface;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->b(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 175
    :cond_a
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/AboutActivity;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 176
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/AboutActivity;->b()V

    goto/16 :goto_0

    .line 179
    :cond_b
    const v2, 0x7f110222

    if-ne v1, v2, :cond_c

    .line 180
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v2

    const-string/jumbo v3, "https://tms.dingtalk.com/markets/dingtalk/wb-evalution-phone"

    invoke-static {v3}, Lcom/alibaba/android/user/contact/utils/UserUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3, v4}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 181
    :cond_c
    const v2, 0x7f110229

    if-ne v1, v2, :cond_0

    .line 182
    invoke-static {}, Lcms;->h()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 183
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v2

    const-string/jumbo v3, "https://files.alicdn.com/tpsservice/3f47503f3497b48bd0b09aa2b3f59f56.pdf"

    invoke-virtual {v2, p0, v3, v4}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 185
    :cond_d
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v2

    const-string/jumbo v3, "https://download.alicdn.com/freedom/47937/pdf/dingtalksecuritywhitepaperV1.1.pdf?spm=a3140.8196281.0.0.2aa5a45eTv0DWm&file=dingtalksecuritywhitepaperV1.1.pdf"

    invoke-virtual {v2, p0, v3, v4}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const v5, 0x7f090035

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 81
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const v0, 0x7f040038

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/AboutActivity;->setContentView(I)V

    .line 83
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/AboutActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    const v3, 0x7f0920c9

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v5}, Lcom/alibaba/android/rimet/biz/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/alibaba/android/rimet/biz/AboutActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 84
    const v0, 0x7f110221

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/AboutActivity;->a:Landroid/widget/TextView;

    .line 1126
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/AboutActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/AboutActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1127
    const v3, 0x7f090035

    invoke-virtual {p0, v3}, Lcom/alibaba/android/rimet/biz/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1128
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 1129
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    .line 1130
    invoke-virtual {v4, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1131
    const-string/jumbo v3, " "

    invoke-virtual {v4, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1132
    invoke-virtual {v4, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1133
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v3, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v0, v3, :cond_0

    .line 1134
    const-string/jumbo v0, " dev "

    invoke-virtual {v4, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1135
    const v0, 0x7f092692

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1137
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/AboutActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    const v0, 0x7f1100b0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/alibaba/android/rimet/biz/AboutActivity$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/rimet/biz/AboutActivity$1;-><init>(Lcom/alibaba/android/rimet/biz/AboutActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 105
    const v0, 0x7f110224

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/AboutActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    .line 107
    const v0, 0x7f110223

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/AboutActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    .line 108
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v3, Lble;->f:Ljava/lang/String;

    new-instance v4, Lcom/alibaba/android/rimet/biz/AboutActivity$2;

    invoke-direct {v4, p0}, Lcom/alibaba/android/rimet/biz/AboutActivity$2;-><init>(Lcom/alibaba/android/rimet/biz/AboutActivity;)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->register(Ljava/lang/String;Lblc;)V

    .line 119
    const v0, 0x7f110228

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcms;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 120
    const v0, 0x7f110225

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 121
    const v0, 0x7f110226

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->d()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 122
    return-void

    .line 1138
    :catch_0
    move-exception v0

    .line 1139
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    goto :goto_0

    :cond_1
    move v0, v2

    .line 119
    goto :goto_1

    :cond_2
    move v0, v2

    .line 120
    goto :goto_2

    :cond_3
    move v1, v2

    .line 121
    goto :goto_3
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 248
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/AboutActivity;->e:Lcom/alibaba/android/rimet/biz/update/DownloadManager;

    if-eqz v0, :cond_0

    .line 249
    invoke-static {}, Lelc;->a()Lelc;

    move-result-object v0

    invoke-virtual {v0}, Lelc;->b()V

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/AboutActivity;->e:Lcom/alibaba/android/rimet/biz/update/DownloadManager;

    .line 252
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->unregister(Ljava/lang/String;)V

    .line 253
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 254
    return-void
.end method
