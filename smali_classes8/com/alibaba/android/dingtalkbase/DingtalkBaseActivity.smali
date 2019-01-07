.class public Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.super Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;
.source "DingtalkBaseActivity.java"


# static fields
.field private static final DIALOG_SHOW_DELAY:I = 0x1f4

.field private static final TAG:Ljava/lang/String;

.field private static final TOKEN_DELAY_SHOW:Ljava/lang/String; = "token_delay_show"

.field private static final UT_MAP:Ljava/lang/String; = "ut-map"


# instance fields
.field public mActionBar:Landroid/support/v7/app/ActionBar;

.field private mCheckNecessaryPermissionsRunnable:Ljava/lang/Runnable;

.field private mDestroyed:Z

.field private mIsWindowAttached:Z

.field protected mLoadingDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field protected mNeedBaseUt:Z

.field private mPageName:Ljava/lang/String;

.field private mSpmCnt:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 43
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->mLoadingDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 53
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->mNeedBaseUt:Z

    .line 54
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->mDestroyed:Z

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->mIsWindowAttached:Z

    .line 211
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->mPageName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p1, "x1"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialogInternal(I)V

    return-void
.end method

.method private overwriteConfigurationLocale()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 95
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 96
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 98
    .local v1, "locale":Ljava/util/Locale;
    if-nez v0, :cond_1

    .line 99
    const-string/jumbo v2, "dingtalkbase"

    sget-object v3, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->TAG:Ljava/lang/String;

    new-array v4, v8, [Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const-string/jumbo v5, " config:null"

    aput-object v5, v4, v7

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    if-nez v1, :cond_2

    .line 104
    const-string/jumbo v2, "dingtalkbase"

    sget-object v3, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->TAG:Ljava/lang/String;

    new-array v4, v8, [Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const-string/jumbo v5, " locale:null"

    aput-object v5, v4, v7

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_2
    const-string/jumbo v3, "dingtalkbase"

    sget-object v4, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->TAG:Ljava/lang/String;

    const/4 v2, 0x5

    new-array v5, v2, [Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    const-string/jumbo v2, " locale:"

    aput-object v2, v5, v7

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v8

    const/4 v2, 0x3

    const-string/jumbo v6, " config.locale"

    aput-object v6, v5, v2

    const/4 v6, 0x4

    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v2, :cond_4

    const-string/jumbo v2, "null"

    :goto_1
    aput-object v2, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v2, :cond_3

    .line 112
    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 113
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 119
    :cond_3
    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 120
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 121
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    goto/16 :goto_0

    .line 108
    :cond_4
    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private postDelayCheckNecessaryPermissions()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 397
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getNecessaryPermissionsDelayMillis()J

    move-result-wide v0

    .line 398
    .local v0, "delayMillis":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    invoke-static {p0}, Lbzm;->a(Landroid/content/Context;)Lbzm;

    move-result-object v2

    .line 2095
    iget-boolean v2, v2, Lbzm;->b:Z

    .line 402
    if-nez v2, :cond_0

    .line 406
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->mCheckNecessaryPermissionsRunnable:Ljava/lang/Runnable;

    if-nez v2, :cond_2

    .line 407
    new-instance v2, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity$3;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->mCheckNecessaryPermissionsRunnable:Ljava/lang/Runnable;

    .line 415
    :cond_2
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->mCheckNecessaryPermissionsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private removeCheckNecessaryPermissions()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 419
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->mCheckNecessaryPermissionsRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 420
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->mCheckNecessaryPermissionsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 421
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->mCheckNecessaryPermissionsRunnable:Ljava/lang/Runnable;

    .line 423
    :cond_0
    return-void
.end method

.method private showLoadingDialogInternal(I)V
    .locals 3
    .param p1, "resId"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 372
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->mLoadingDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-nez v0, :cond_0

    .line 373
    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v2, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->mLoadingDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->mLoadingDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    .line 377
    return-void
.end method

.method private updateFontScale()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 131
    const-string/jumbo v2, "pref_font_scale"

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p0, v2, v3}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;F)F

    move-result v1

    .line 132
    .local v1, "scale":F
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 133
    .local v0, "config":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_0

    .line 134
    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 135
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 137
    :cond_0
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 3
    .param p1, "newBase"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 388
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getLocale()Ljava/util/Locale;

    move-result-object v1

    .line 389
    .local v1, "locale":Ljava/util/Locale;
    move-object v0, p1

    .line 390
    .local v0, "context":Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 391
    invoke-static {p1, v1}, Lcom/alibaba/android/dingtalkbase/DingtalkContextWrapper;->a(Landroid/content/Context;Ljava/util/Locale;)Landroid/content/ContextWrapper;

    move-result-object v0

    .line 393
    :cond_0
    invoke-super {p0, v0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->attachBaseContext(Landroid/content/Context;)V

    .line 394
    return-void
.end method

.method public dismissLoadingDialog()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 380
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    const-string/jumbo v1, "token_delay_show"

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 381
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->mLoadingDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->mLoadingDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->mLoadingDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 384
    :cond_0
    return-void
.end method

.method protected getNecessaryPermissionsDelayMillis()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 426
    const-wide/16 v0, 0x320

    return-wide v0
.end method

.method public getPageArgs()Ljava/util/Map;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->mPageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPageSpmCnt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->mSpmCnt:Ljava/lang/String;

    return-object v0
.end method

.method public isAttachedToWindow()Z
    .locals 1

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->mIsWindowAttached:Z

    return v0
.end method

.method public isDestroyed()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 234
    iget-boolean v4, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->mDestroyed:Z

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    move v0, v3

    .line 235
    .local v0, "destroyed":Z
    :goto_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v4, v5, :cond_2

    .line 238
    if-nez v0, :cond_1

    :try_start_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->isDestroyed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_4

    :cond_1
    move v0, v3

    .line 243
    :cond_2
    :goto_1
    return v0

    .end local v0    # "destroyed":Z
    :cond_3
    move v0, v2

    .line 234
    goto :goto_0

    .restart local v0    # "destroyed":Z
    :cond_4
    move v0, v2

    .line 238
    goto :goto_1

    .line 239
    :catch_0
    move-exception v1

    .line 240
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public isFixedOrientation()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 275
    invoke-super {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->onAttachedToWindow()V

    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->mIsWindowAttached:Z

    .line 277
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 264
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    :try_start_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->mDestroyed:Z

    .line 67
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->updateFontScale()V

    .line 68
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->setLocale()V

    .line 69
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->overwriteConfigurationLocale()V

    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 72
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->postDelayCheckNecessaryPermissions()V

    .line 73
    return-void
.end method

.method public onDestroy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 248
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->mDestroyed:Z

    .line 251
    :try_start_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 255
    :goto_0
    invoke-static {}, Lcjh;->a()V

    .line 256
    invoke-static {}, Lckh;->a()Lckh;

    move-result-object v1

    .line 2036
    :try_start_1
    iget-object v1, v1, Lckh;->a:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lckg;

    .line 2037
    invoke-interface {v1}, Lckg;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2038
    invoke-interface {v1}, Lckg;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2041
    :catch_0
    move-exception v1

    .line 2042
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 257
    :cond_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    const-string/jumbo v2, "token_delay_show"

    invoke-virtual {v1, v2}, Lhcv;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 258
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->removeCheckNecessaryPermissions()V

    .line 259
    return-void

    .line 252
    :catch_1
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->mIsWindowAttached:Z

    .line 282
    invoke-super {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->onDetachedFromWindow()V

    .line 283
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 154
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 159
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 156
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->finish()V

    goto :goto_0

    .line 154
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 165
    :try_start_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->onPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->mNeedBaseUt:Z

    if-eqz v1, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->trackPageLeave()V

    .line 172
    :cond_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 320
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 321
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 177
    :try_start_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->mNeedBaseUt:Z

    if-eqz v1, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->trackPageEnter()V

    .line 184
    :cond_0
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 315
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 316
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->isFixedOrientation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    invoke-static {p0}, Lcpa;->a(Landroid/app/Activity;)V

    .line 88
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->onStart()V

    .line 89
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .param p1, "layoutRes"    # I

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->setContentView(I)V

    .line 127
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    .line 128
    return-void
.end method

.method public setUseBaseUt(Z)V
    .locals 0
    .param p1, "needBaseUt"    # Z

    .prologue
    .line 230
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->mNeedBaseUt:Z

    .line 231
    return-void
.end method

.method public showLoadingDialog()V
    .locals 1

    .prologue
    .line 324
    sget v0, Lcig$j;->loading:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog(I)V

    .line 325
    return-void
.end method

.method public showLoadingDialog(I)V
    .locals 2
    .param p1, "resId"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 328
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialogDelay(IJ)V

    .line 329
    return-void
.end method

.method public showLoadingDialogDelay(IJ)V
    .locals 8
    .param p1, "resId"    # I
    .param p2, "delay"    # J

    .prologue
    .line 348
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 349
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    const-string/jumbo v1, "token_delay_show"

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 350
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity$1;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;I)V

    const-string/jumbo v2, "token_delay_show"

    .line 355
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    add-long/2addr v4, p2

    .line 350
    invoke-virtual {v0, v1, v2, v4, v5}, Lhcv;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 358
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialogInternal(I)V

    goto :goto_0

    .line 359
    :cond_2
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    const-string/jumbo v1, "token_delay_show"

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 361
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity$2;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;I)V

    const-string/jumbo v2, "token_delay_show"

    .line 366
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x1f4

    add-long/2addr v4, v6

    .line 361
    invoke-virtual {v0, v1, v2, v4, v5}, Lhcv;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_0
.end method

.method public showLoadingDialogDelay(J)V
    .locals 1
    .param p1, "delay"    # J

    .prologue
    .line 337
    sget v0, Lcig$j;->loading:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialogDelay(IJ)V

    .line 338
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 288
    :try_start_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :goto_0
    return-void

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    sget v2, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v1, v2, :cond_0

    .line 291
    throw v0

    .line 293
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 300
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :goto_0
    return-void

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    sget v2, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v1, v2, :cond_0

    .line 303
    throw v0

    .line 305
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected trackPageEnter()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 206
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 207
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getPageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v0}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->trackPageEnter(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 208
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getPageSpmCnt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getPageArgs()Ljava/util/Map;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->updatePageSpmCnt(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 209
    return-void
.end method

.method protected trackPageLeave()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 188
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 190
    .local v2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    const-string/jumbo v4, "ut-map"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 191
    const-string/jumbo v4, "ut-map"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/util/Map;

    if-eqz v4, :cond_0

    .line 193
    :try_start_0
    const-string/jumbo v4, "ut-map"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 194
    .local v3, "utMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .end local v3    # "utMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :goto_0
    const-string/jumbo v4, "STATISTICS"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/statistics/Statistics;

    const/4 v5, 0x0

    invoke-interface {v4, p0, v5, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->leavePage(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 202
    return-void

    .line 195
    :catch_0
    move-exception v1

    .line 196
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "DingtalkBase"

    sget-object v5, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "[DingtalkBaseActivity]trackPageLeave : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected updateSystemUiVisibility()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 141
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    .line 1072
    iget-object v0, v1, Lcid;->b:Lckd;

    .line 142
    .local v0, "featureImpl":Lckd;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lckd;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    or-int/lit16 v2, v2, 0x100

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v0    # "featureImpl":Lckd;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method
