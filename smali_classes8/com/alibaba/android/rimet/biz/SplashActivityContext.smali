.class public Lcom/alibaba/android/rimet/biz/SplashActivityContext;
.super Lcom/alibaba/android/rimet/biz/SplashActivity$a;
.source "SplashActivityContext.java"

# interfaces
.implements Lcih;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/rimet/biz/SplashActivityContext$a;
    }
.end annotation


# static fields
.field public static final COLD_LAUNCH:I = 0x1

.field public static final HOT_LAUNCH:I = 0x2

.field private static final SKIP_BUTTON_UPDATE_INTERVAL:J = 0x3e8L

.field private static final SPLASH_MAX_DURATION:J = 0x2710L

.field private static final TAG:Ljava/lang/String; = "SplashActivityContext"

.field private static sJumpButtonClicked:Z

.field public static sLaunchStatus:I

.field public static sSplashCostTime:J

.field private static sSplashOnCreateStartTime:J


# instance fields
.field private mButtonSkip:Landroid/widget/Button;

.field private mCheckLaunchRunnable:Ljava/lang/Runnable;

.field private mImageEventListener:Lcom/alibaba/doraemon/image/ImageEventListener;

.field private mImageMagician:Lcom/alibaba/doraemon/image/ImageMagician;

.field private mImageViewScreen:Lcom/alibaba/android/rimet/biz/splash/SplashImageView;

.field private mIsCheckRequested:Z

.field private mIsDestroyed:Z

.field private mIsRunMethodDoneExecuted:Z

.field private mIsShowTimeDone:Z

.field private mLaunchRecorded:Z

.field private mSkipButtonTime:J

.field private mSplashDataObject:Lekr;

.field private mSplashLogoIv:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private mUpdateSkipButtonRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 98
    sput-boolean v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->sJumpButtonClicked:Z

    .line 101
    sput v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->sLaunchStatus:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    .line 150
    invoke-direct {p0, p1}, Lcom/alibaba/android/rimet/biz/SplashActivity$a;-><init>(Landroid/app/Activity;)V

    .line 92
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mSkipButtonTime:J

    .line 102
    iput-boolean v2, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mLaunchRecorded:Z

    .line 103
    iput-boolean v2, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mIsRunMethodDoneExecuted:Z

    .line 104
    iput-boolean v2, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mIsShowTimeDone:Z

    .line 108
    iput-boolean v2, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mIsDestroyed:Z

    .line 109
    iput-boolean v2, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mIsCheckRequested:Z

    .line 119
    new-instance v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/rimet/biz/SplashActivityContext$1;-><init>(Lcom/alibaba/android/rimet/biz/SplashActivityContext;)V

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mUpdateSkipButtonRunnable:Ljava/lang/Runnable;

    .line 137
    new-instance v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/rimet/biz/SplashActivityContext$2;-><init>(Lcom/alibaba/android/rimet/biz/SplashActivityContext;)V

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mCheckLaunchRunnable:Ljava/lang/Runnable;

    .line 151
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/android/rimet/biz/SplashActivityContext;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mSkipButtonTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/alibaba/android/rimet/biz/SplashActivityContext;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/SplashActivityContext;
    .param p1, "x1"    # J

    .prologue
    .line 84
    iput-wide p1, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mSkipButtonTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/alibaba/android/rimet/biz/SplashActivityContext;J)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/SplashActivityContext;
    .param p1, "x1"    # J

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->updateSkipButton(J)V

    return-void
.end method

.method static synthetic access$1000(Lcom/alibaba/android/rimet/biz/SplashActivityContext;)Lcom/alibaba/doraemon/image/ImageMagician;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mImageMagician:Lcom/alibaba/doraemon/image/ImageMagician;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/alibaba/android/rimet/biz/SplashActivityContext;Lekr;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/SplashActivityContext;
    .param p1, "x1"    # Lekr;
    .param p2, "x2"    # Z

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->trackSplashView(Lekr;Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/alibaba/android/rimet/biz/SplashActivityContext;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/alibaba/android/rimet/biz/SplashActivityContext;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/SplashActivityContext;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->isNewUser(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/alibaba/android/rimet/biz/SplashActivityContext;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/SplashActivityContext;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->createSyncAccount(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/android/rimet/biz/SplashActivityContext;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mCheckLaunchRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/android/rimet/biz/SplashActivityContext;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mUpdateSkipButtonRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alibaba/android/rimet/biz/SplashActivityContext;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mIsDestroyed:Z

    return v0
.end method

.method static synthetic access$502(Lcom/alibaba/android/rimet/biz/SplashActivityContext;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/SplashActivityContext;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mIsShowTimeDone:Z

    return p1
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 84
    sget-boolean v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->sJumpButtonClicked:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 84
    sput-boolean p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->sJumpButtonClicked:Z

    return p0
.end method

.method static synthetic access$700(Lcom/alibaba/android/rimet/biz/SplashActivityContext;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->performOnLaunch()V

    return-void
.end method

.method static synthetic access$800(Lcom/alibaba/android/rimet/biz/SplashActivityContext;)Lekr;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mSplashDataObject:Lekr;

    return-object v0
.end method

.method static synthetic access$900(Lcom/alibaba/android/rimet/biz/SplashActivityContext;)Lcom/alibaba/doraemon/image/ImageEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mImageEventListener:Lcom/alibaba/doraemon/image/ImageEventListener;

    return-object v0
.end method

.method static synthetic access$902(Lcom/alibaba/android/rimet/biz/SplashActivityContext;Lcom/alibaba/doraemon/image/ImageEventListener;)Lcom/alibaba/doraemon/image/ImageEventListener;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/SplashActivityContext;
    .param p1, "x1"    # Lcom/alibaba/doraemon/image/ImageEventListener;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mImageEventListener:Lcom/alibaba/doraemon/image/ImageEventListener;

    return-object p1
.end method

.method private checkPreStartToolsProcess()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 538
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mActivity:Landroid/app/Activity;

    const-string/jumbo v1, "PREF_KEY_SHOW_VERSION3_SLIDE"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mActivity:Landroid/app/Activity;

    .line 540
    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/alibaba/android/dingtalkbase/service/DDBabysitterService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 539
    invoke-static {v0, v1}, Lcms;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 542
    :cond_0
    return-void
.end method

.method private createSyncAccount(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 192
    new-instance v3, Landroid/accounts/Account;

    const-string/jumbo v5, "dingtalk"

    const-string/jumbo v6, "com.alibaba.android.rimet"

    invoke-direct {v3, v5, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .local v3, "newAccount":Landroid/accounts/Account;
    const-string/jumbo v5, "account"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    .line 199
    .local v0, "accountManager":Landroid/accounts/AccountManager;
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v0, v3, v5, v6}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 206
    const-string/jumbo v5, "com.alibaba.android.rimet.syncadapter.provider"

    const/4 v6, 0x1

    invoke-static {v3, v5, v6}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 207
    const-string/jumbo v5, "com.alibaba.android.rimet.syncadapter.provider"

    const/4 v6, 0x1

    invoke-static {v3, v5, v6}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 208
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 209
    .local v4, "random":Ljava/util/Random;
    const/16 v5, 0x258

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit16 v2, v5, 0x708

    .line 210
    .local v2, "interval":I
    const-string/jumbo v5, "com.alibaba.android.rimet.syncadapter.provider"

    sget-object v6, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    int-to-long v8, v2

    invoke-static {v3, v5, v6, v8, v9}, Landroid/content/ContentResolver;->addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .end local v2    # "interval":I
    .end local v4    # "random":Ljava/util/Random;
    :cond_0
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v1

    .line 218
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "SplashActivity"

    const-string/jumbo v6, "createSyncAccount err"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getPreferenceKey()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 557
    const-string/jumbo v1, "pref_already_show_slide_"

    .line 559
    .local v1, "key":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 560
    .local v2, "pInfo":Landroid/content/pm/PackageInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 564
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "pInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v1

    .line 561
    .restart local v1    # "key":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 562
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private isNewUser(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)Z
    .locals 6
    .param p1, "currentUser"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 545
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mActivity:Landroid/app/Activity;

    const-string/jumbo v2, "pref_logout_phone_number"

    invoke-static {v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 546
    .local v0, "phoneNum":Ljava/lang/String;
    if-eqz p1, :cond_0

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 548
    :cond_1
    const/4 v1, 0x0

    .line 550
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private performOnLaunch()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 179
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lbzm;->a(Landroid/content/Context;)Lbzm;

    move-result-object v0

    invoke-virtual {v0}, Lbzm;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 180
    iget-boolean v0, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mIsCheckRequested:Z

    if-nez v0, :cond_0

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mIsCheckRequested:Z

    .line 182
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lbzm;->a(Landroid/content/Context;)Lbzm;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lbzm;->a(Landroid/app/Activity;)V

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mIsShowTimeDone:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mIsRunMethodDoneExecuted:Z

    if-eqz v0, :cond_0

    .line 187
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->startAppActivity()V

    goto :goto_0
.end method

.method private showSplash()V
    .locals 25

    .prologue
    .line 262
    const-string/jumbo v2, "PreferenceForAppStart"

    invoke-static {v2}, Lcpl;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 1072
    .local v18, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "pref_key_is_ali_staff"

    invoke-static {v2}, Lcpl;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1073
    const-string/jumbo v2, "splash"

    const-string/jumbo v3, "splash"

    const-string/jumbo v5, "is ali staff"

    invoke-static {v2, v3, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    const/4 v2, 0x0

    .line 263
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mSplashDataObject:Lekr;

    .line 264
    invoke-static {}, Lela;->a()Lela;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mSplashDataObject:Lekr;

    .line 1138
    if-eqz v2, :cond_c

    .line 1142
    iget-object v3, v2, Lekr;->c:Ljava/lang/String;

    invoke-static {v3}, Lcpx;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 1143
    iget v3, v2, Lekr;->m:I

    sget-object v5, Lcom/alibaba/android/rimet/biz/splash/SplashDataService$SplashDataStatus;->DOWNLOADED:Lcom/alibaba/android/rimet/biz/splash/SplashDataService$SplashDataStatus;

    invoke-virtual {v5}, Lcom/alibaba/android/rimet/biz/splash/SplashDataService$SplashDataStatus;->getValue()I

    move-result v5

    if-ne v3, v5, :cond_c

    .line 1144
    iget-wide v6, v2, Lekr;->l:J

    iget-object v3, v2, Lekr;->a:Ljava/lang/String;

    iget-object v2, v2, Lekr;->c:Ljava/lang/String;

    .line 1344
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5}, Lhcs;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    .line 1345
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_a

    .line 1346
    :cond_1
    const/16 v19, 0x0

    .line 265
    .local v19, "splashImagePath":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mSplashDataObject:Lekr;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mSplashDataObject:Lekr;

    iget-object v2, v2, Lekr;->c:Ljava/lang/String;

    invoke-static {v2}, Lcpx;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 267
    .local v4, "splashImageUrl":Ljava/lang/String;
    :goto_2
    const-string/jumbo v3, "splash"

    const-string/jumbo v5, "SplashActivityContext"

    const/4 v2, 0x4

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v7, "show splash : splashImagePath = "

    aput-object v7, v6, v2

    const/4 v2, 0x1

    aput-object v19, v6, v2

    const/4 v2, 0x2

    const-string/jumbo v7, " mSplashDataObject = "

    aput-object v7, v6, v2

    const/4 v7, 0x3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mSplashDataObject:Lekr;

    if-nez v2, :cond_e

    const-string/jumbo v2, "null"

    .line 268
    :goto_3
    aput-object v2, v6, v7

    .line 267
    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v5, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcms;->e(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 271
    :cond_2
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mSkipButtonTime:J

    .line 272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mUpdateSkipButtonRunnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 400
    :goto_4
    return-void

    .line 1077
    .end local v4    # "splashImageUrl":Ljava/lang/String;
    .end local v19    # "splashImagePath":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcms;->u()J

    move-result-wide v6

    .line 1078
    const-string/jumbo v2, "pref_key_main_org_id"

    invoke-static {v2}, Lcpl;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v8, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v2, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 1099
    const-string/jumbo v2, "splash"

    const-string/jumbo v3, "SplashDataService"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/16 v21, 0x0

    const-string/jumbo v22, "getSplashDataFromSP and mainOrgId = "

    aput-object v22, v5, v21

    const/16 v21, 0x1

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v5, v21

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    const-string/jumbo v2, "pref_key_splash_data"

    invoke-static {v2}, Lcpl;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    move-object/from16 v0, v18

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1102
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1103
    const/4 v2, 0x0

    .line 1080
    :cond_4
    :goto_5
    const-string/jumbo v5, "splash"

    const-string/jumbo v21, "splash"

    const-string/jumbo v22, "splash from SP: %b"

    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    if-eqz v2, :cond_8

    const/4 v3, 0x1

    :goto_6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-static {v5, v0, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    if-nez v2, :cond_6

    const-string/jumbo v3, "pref_key_has_splash_data"

    .line 1082
    invoke-static {v3}, Lcpl;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1083
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/alibaba/bee/DBManager;->enableDebuggable(Z)V

    .line 1084
    invoke-static {v8, v9, v6, v7}, Lcom/alibaba/android/rimet/biz/splash/SplashDataService;->a(JJ)Lekr;

    move-result-object v3

    .line 1085
    sget v2, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v5

    if-ne v2, v5, :cond_5

    .line 1086
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/alibaba/bee/DBManager;->enableDebuggable(Z)V

    .line 1088
    :cond_5
    const-string/jumbo v5, "splash"

    const-string/jumbo v8, "splash"

    const-string/jumbo v9, "splash from DB: %b"

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    if-eqz v3, :cond_9

    const/4 v2, 0x1

    :goto_7
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v21, v22

    move-object/from16 v0, v21

    invoke-static {v9, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v8, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 1091
    :cond_6
    if-eqz v2, :cond_0

    iget v3, v2, Lekr;->b:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 1092
    const-string/jumbo v3, "PreferenceForAppStart"

    const-string/jumbo v5, "pref_key_last_operation_splash_time"

    invoke-static {v3, v5, v6, v7}, Lcpl;->a(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1106
    :cond_7
    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/splash/SplashDataService;->a(Ljava/lang/String;)Lekr;

    move-result-object v2

    .line 1107
    invoke-static {v2, v8, v9, v6, v7}, Lcom/alibaba/android/rimet/biz/splash/SplashDataService;->a(Lekr;JJ)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1108
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 1080
    :cond_8
    const/4 v3, 0x0

    goto :goto_6

    .line 1088
    :cond_9
    const/4 v2, 0x0

    goto :goto_7

    .line 1349
    :cond_a
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v8

    .line 1350
    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v9

    const-string/jumbo v21, "splash_image"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v9

    sget-object v21, Ljava/io/File;->separator:Ljava/lang/String;

    .line 1351
    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v9

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    .line 1352
    invoke-virtual {v6, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    .line 1353
    invoke-virtual {v3, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1355
    new-instance v2, Ljava/io/File;

    invoke-virtual {v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1356
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_b

    .line 1357
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 1360
    :cond_b
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_1

    .line 1147
    :cond_c
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 265
    .restart local v19    # "splashImagePath":Ljava/lang/String;
    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 267
    .restart local v4    # "splashImageUrl":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mSplashDataObject:Lekr;

    .line 268
    invoke-virtual {v2}, Lekr;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 276
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mActivity:Landroid/app/Activity;

    const v3, 0x7f040032

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0xf06

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 290
    :cond_10
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mActivity:Landroid/app/Activity;

    const v3, 0x7f110215

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/rimet/biz/splash/SplashImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mImageViewScreen:Lcom/alibaba/android/rimet/biz/splash/SplashImageView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mActivity:Landroid/app/Activity;

    const v3, 0x7f110216

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mButtonSkip:Landroid/widget/Button;

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mActivity:Landroid/app/Activity;

    const v3, 0x7f110217

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mSplashLogoIv:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mSplashLogoIv:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/RelativeLayout$LayoutParams;

    .line 298
    .local v15, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02101f

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 299
    .local v11, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    .line 300
    .local v20, "width":I
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    .line 301
    .local v14, "height":I
    if-nez v15, :cond_17

    .line 302
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v15    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    move/from16 v0, v20

    invoke-direct {v15, v0, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 303
    .restart local v15    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mSplashLogoIv:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v2, v15}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    :goto_9
    const-string/jumbo v2, "IMAGE"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/image/ImageMagician;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mImageMagician:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mImageMagician:Lcom/alibaba/doraemon/image/ImageMagician;

    if-eqz v2, :cond_11

    .line 311
    const-string/jumbo v2, "pref_key_main_org_logo_url"

    invoke-static {v2}, Lcpl;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    move-object/from16 v0, v18

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 312
    .local v16, "mainOrgLogoUrl":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mSplashLogoIv:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const-string/jumbo v3, ""

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 317
    .end local v16    # "mainOrgLogoUrl":Ljava/lang/String;
    :cond_11
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 320
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mImageViewScreen:Lcom/alibaba/android/rimet/biz/splash/SplashImageView;

    if-eqz v2, :cond_12

    .line 321
    invoke-static/range {v19 .. v19}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 322
    .local v12, "bm":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mImageViewScreen:Lcom/alibaba/android/rimet/biz/splash/SplashImageView;

    invoke-virtual {v2, v12}, Lcom/alibaba/android/rimet/biz/splash/SplashImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    .line 332
    .end local v12    # "bm":Landroid/graphics/Bitmap;
    :cond_12
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mSplashDataObject:Lekr;

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mSplashDataObject:Lekr;

    iget v2, v2, Lekr;->b:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_13

    .line 333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mActivity:Landroid/app/Activity;

    const v3, 0x7f110218

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 373
    :cond_13
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mSplashDataObject:Lekr;

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mSplashDataObject:Lekr;

    iget v2, v2, Lekr;->b:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_14

    .line 374
    const-string/jumbo v2, "pref_key_user_nick"

    invoke-static {v2}, Lcpl;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    move-object/from16 v0, v18

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 375
    .local v17, "nick":Ljava/lang/String;
    const-string/jumbo v2, "pref_key_user_avatar_media_id"

    invoke-static {v2}, Lcpl;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    move-object/from16 v0, v18

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 376
    .local v10, "avatarMediaId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mSplashDataObject:Lekr;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v2, v1, v10}, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->updateBirthdayView(Lekr;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    .end local v10    # "avatarMediaId":Ljava/lang/String;
    .end local v17    # "nick":Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mSkipButtonTime:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-lez v2, :cond_15

    .line 380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mButtonSkip:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 384
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mImageViewScreen:Lcom/alibaba/android/rimet/biz/splash/SplashImageView;

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mSplashDataObject:Lekr;

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mSplashDataObject:Lekr;

    iget-object v2, v2, Lekr;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 385
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mImageViewScreen:Lcom/alibaba/android/rimet/biz/splash/SplashImageView;

    new-instance v3, Lcom/alibaba/android/rimet/biz/SplashActivityContext$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/alibaba/android/rimet/biz/SplashActivityContext$4;-><init>(Lcom/alibaba/android/rimet/biz/SplashActivityContext;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/rimet/biz/splash/SplashImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mUpdateSkipButtonRunnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_4

    .line 291
    .end local v11    # "bitmap":Landroid/graphics/Bitmap;
    .end local v14    # "height":I
    .end local v15    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v20    # "width":I
    :catch_0
    move-exception v13

    .line 292
    .local v13, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "splash"

    const-string/jumbo v3, "SplashActivityContext"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "showSplash init mImageViewScreen error: "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 305
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v11    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v14    # "height":I
    .restart local v15    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v20    # "width":I
    :cond_17
    move/from16 v0, v20

    iput v0, v15, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 306
    iput v14, v15, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto/16 :goto_9

    .line 324
    :catch_1
    move-exception v13

    .line 325
    .restart local v13    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "splash"

    const-string/jumbo v3, "SplashActivityContext"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "showSplash BitmapFactory.decodeFile exception: "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 327
    .end local v13    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v13

    .line 328
    .local v13, "e":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v2, "splash"

    const-string/jumbo v3, "SplashActivityContext"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "showSplash BitmapFactory.decodeFile OutOfMemoryError: "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v13}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 335
    .end local v13    # "e":Ljava/lang/OutOfMemoryError;
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mSplashDataObject:Lekr;

    if-eqz v2, :cond_1b

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mImageMagician:Lcom/alibaba/doraemon/image/ImageMagician;

    if-eqz v2, :cond_19

    .line 337
    new-instance v2, Lcom/alibaba/android/rimet/biz/SplashActivityContext$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v4}, Lcom/alibaba/android/rimet/biz/SplashActivityContext$3;-><init>(Lcom/alibaba/android/rimet/biz/SplashActivityContext;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mImageEventListener:Lcom/alibaba/doraemon/image/ImageEventListener;

    .line 365
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mImageMagician:Lcom/alibaba/doraemon/image/ImageMagician;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mImageEventListener:Lcom/alibaba/doraemon/image/ImageEventListener;

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/image/ImageMagician;->registerEventListener(Lcom/alibaba/doraemon/image/ImageEventListener;)V

    .line 366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mImageMagician:Lcom/alibaba/doraemon/image/ImageMagician;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mImageViewScreen:Lcom/alibaba/android/rimet/biz/splash/SplashImageView;

    const/4 v5, 0x0

    const/16 v6, 0x14

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v2 .. v9}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 368
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mSplashDataObject:Lekr;

    iget-wide v2, v2, Lekr;->h:J

    const-wide/16 v6, 0x2710

    cmp-long v2, v2, v6

    if-lez v2, :cond_1a

    const-wide/16 v2, 0x2710

    :goto_c
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mSkipButtonTime:J

    goto/16 :goto_b

    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mSplashDataObject:Lekr;

    iget-wide v2, v2, Lekr;->h:J

    goto :goto_c

    .line 370
    :cond_1b
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mSkipButtonTime:J

    goto/16 :goto_b
.end method

.method private startAppActivity()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 481
    iget-boolean v0, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    .line 535
    :goto_0
    return-void

    .line 485
    :cond_0
    const-class v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/rimet/biz/SplashActivityContext$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/biz/SplashActivityContext$5;-><init>(Lcom/alibaba/android/rimet/biz/SplashActivityContext;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private trackSplashView(Lekr;Z)V
    .locals 5
    .param p1, "splashDataObject"    # Lekr;
    .param p2, "isClick"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 410
    if-eqz p1, :cond_0

    .line 411
    if-nez p2, :cond_2

    .line 413
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 414
    .local v1, "splashArgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "sid"

    iget-object v3, p1, Lekr;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    const-string/jumbo v2, "mediaId"

    iget-object v3, p1, Lekr;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "dingtalk_launch_screen_show_all"

    invoke-interface {v2, v3, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 418
    iget v2, p1, Lekr;->b:I

    if-eq v2, v4, :cond_1

    .line 420
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "dingtalk_launch_screen_show_crop"

    invoke-interface {v2, v3, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 444
    .end local v1    # "splashArgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 423
    .restart local v1    # "splashArgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "dingtalk_launch_screen_show_dd"

    invoke-interface {v2, v3, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 441
    .end local v1    # "splashArgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 442
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SplashActivityContext"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 427
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 428
    .restart local v1    # "splashArgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "sid"

    iget-object v3, p1, Lekr;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    const-string/jumbo v2, "url"

    iget-object v3, p1, Lekr;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "dingtalk_launch_screen_show_all_click"

    invoke-interface {v2, v3, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 432
    iget v2, p1, Lekr;->b:I

    if-eq v2, v4, :cond_3

    .line 434
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "dingtalk_launch_screen_show_crop_click"

    invoke-interface {v2, v3, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 437
    :cond_3
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "dingtalk_launch_screen_show_dd_click"

    invoke-interface {v2, v3, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private updateBirthdayView(Lekr;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "splashDataObject"    # Lekr;
    .param p2, "nick"    # Ljava/lang/String;
    .param p3, "avatarMediaId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 449
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 477
    :goto_0
    return-void

    .line 454
    :cond_0
    iget-object v6, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mActivity:Landroid/app/Activity;

    const v7, 0x7f11021a

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 455
    .local v1, "displayAvatar":Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    invoke-virtual {v1, p2, p3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    iget-object v6, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mActivity:Landroid/app/Activity;

    const v7, 0x7f110219

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/DecorationRelativeLayout;

    .line 459
    .local v0, "decorationForAvatar":Lcom/alibaba/android/dingtalkbase/widgets/DecorationRelativeLayout;
    if-eqz p1, :cond_1

    iget-object v6, p1, Lekr;->j:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 460
    iget-object v6, p1, Lekr;->j:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Lcom/alibaba/android/dingtalkbase/widgets/DecorationRelativeLayout;->a(Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 464
    :cond_1
    const-string/jumbo v5, "FF7A5B31"

    .line 465
    .local v5, "textColorStr":Ljava/lang/String;
    if-eqz p1, :cond_2

    iget-object v6, p1, Lekr;->k:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 466
    iget-object v5, p1, Lekr;->k:Ljava/lang/String;

    .line 468
    :cond_2
    invoke-static {v5}, Lcmq;->a(Ljava/lang/String;)I

    move-result v4

    .line 470
    .local v4, "textColor":I
    iget-object v6, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mActivity:Landroid/app/Activity;

    const v7, 0x7f11021b

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 471
    .local v3, "nickTv":Landroid/widget/TextView;
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 474
    iget-object v6, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mActivity:Landroid/app/Activity;

    const v7, 0x7f11021c

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 475
    .local v2, "happyBirthdayTv":Landroid/widget/TextView;
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private updateSkipButton(J)V
    .locals 5
    .param p1, "time"    # J

    .prologue
    .line 248
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mButtonSkip:Landroid/widget/Button;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mButtonSkip:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mActivity:Landroid/app/Activity;

    const v3, 0x7f091da0

    .line 253
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, "("

    .line 254
    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 255
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    .line 256
    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 257
    .local v0, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mButtonSkip:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public applicationRunMethodDone()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v8, 0x1

    .line 587
    invoke-static {}, Lcmw;->a()Lcmv;

    .line 588
    invoke-static {}, Lcmw;->b()Lcmv;

    .line 589
    iput-boolean v8, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mIsRunMethodDoneExecuted:Z

    .line 590
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->performOnLaunch()V

    .line 591
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mButtonSkip:Landroid/widget/Button;

    if-eqz v3, :cond_0

    .line 592
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mButtonSkip:Landroid/widget/Button;

    new-instance v4, Lcom/alibaba/android/rimet/biz/SplashActivityContext$6;

    invoke-direct {v4, p0}, Lcom/alibaba/android/rimet/biz/SplashActivityContext$6;-><init>(Lcom/alibaba/android/rimet/biz/SplashActivityContext;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 603
    :cond_0
    const-string/jumbo v3, "THREAD"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 604
    .local v2, "queueThread":Lcom/alibaba/doraemon/threadpool/Thread;
    const-class v3, Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 605
    new-instance v3, Lcom/alibaba/android/rimet/biz/SplashActivityContext$7;

    invoke-direct {v3, p0}, Lcom/alibaba/android/rimet/biz/SplashActivityContext$7;-><init>(Lcom/alibaba/android/rimet/biz/SplashActivityContext;)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 639
    iget-boolean v3, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mLaunchRecorded:Z

    if-nez v3, :cond_1

    .line 640
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 641
    .local v0, "currentTime":J
    sget v3, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->sLaunchStatus:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    sget-wide v4, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->sSplashOnCreateStartTime:J

    sub-long v4, v0, v4

    :goto_0
    sput-wide v4, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->sSplashCostTime:J

    .line 642
    const-string/jumbo v3, "launch_time"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "sSplashCostTime "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v6, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->sSplashCostTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " status "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->sLaunchStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iput-boolean v8, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mLaunchRecorded:Z

    .line 645
    .end local v0    # "currentTime":J
    :cond_1
    return-void

    .line 641
    .restart local v0    # "currentTime":J
    :cond_2
    sget-wide v4, Lcom/alibaba/android/rimet/RimetDDContext;->sOncreateStartTime:J

    sub-long v4, v0, v4

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v2, 0x400

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->sSplashOnCreateStartTime:J

    .line 158
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->isOncreateDone()Z

    move-result v0

    if-nez v0, :cond_2

    .line 159
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lchy;->setOnCreateMethodStatusListenerlistener(Lcih;)V

    .line 164
    :goto_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->isOncreateDone()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    :goto_1
    sput v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->sLaunchStatus:I

    .line 168
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->showSplash()V

    .line 169
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->checkPreStartToolsProcess()V

    .line 170
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcpy;->b(Landroid/content/Context;)V

    .line 172
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 176
    :cond_1
    return-void

    .line 161
    :cond_2
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lchy;->setOnCreateMethodStatusListenerlistener(Lcih;)V

    goto :goto_0

    .line 165
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 575
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mImageMagician:Lcom/alibaba/doraemon/image/ImageMagician;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mImageEventListener:Lcom/alibaba/doraemon/image/ImageEventListener;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mImageMagician:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mImageEventListener:Lcom/alibaba/doraemon/image/ImageEventListener;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/image/ImageMagician;->unregisterEventListener(Lcom/alibaba/doraemon/image/ImageEventListener;)V

    .line 577
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mImageEventListener:Lcom/alibaba/doraemon/image/ImageEventListener;

    .line 580
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mIsDestroyed:Z

    .line 581
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mCheckLaunchRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 582
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mCheckLaunchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 584
    :cond_1
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 569
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->performOnLaunch()V

    .line 570
    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 243
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->leavePage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 232
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->isOncreateDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->applicationRunMethodDone()V

    .line 236
    :cond_0
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->enterPage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mSplashDataObject:Lekr;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->trackSplashView(Lekr;Z)V

    .line 238
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 224
    sget-boolean v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->sJumpButtonClicked:Z

    if-eqz v0, :cond_0

    .line 225
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->performOnLaunch()V

    .line 227
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->sJumpButtonClicked:Z

    .line 228
    return-void
.end method
