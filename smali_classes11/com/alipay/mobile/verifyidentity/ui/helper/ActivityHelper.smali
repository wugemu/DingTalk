.class public Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;
.super Ljava/lang/Object;
.source "ActivityHelper.java"


# static fields
.field public static final TASK_MODULENAME:Ljava/lang/String; = "task_modulename"

.field public static final TASK_TOKEN:Ljava/lang/String; = "task_token"

.field public static final TASK_VERIFYID:Ljava/lang/String; = "task_verifyid"

.field private static final a:Ljava/lang/String;

.field private static d:[Ljava/lang/String;


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

.field protected mMicroModuleContext:Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

.field protected mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const-class v0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->a:Ljava/lang/String;

    .line 247
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "com.alipay.mobile.verifyidentity.ui.helper.DialogActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "com.alipay.mobile.verifyidentity.ui.helper.NoticeActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "com.alipay.mobile.verifyidentity.helper.ui.DebugViewerActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "com.alipay.mobile.security.faceauth.ui.bank.WebNavigationActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "com.alipay.mobile.security.faceauth.ui.uniform.FaceLoginActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "com.alipay.mobile.security.faceauth.ui.uniform.FaceSampleActivity"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 7

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->b:Landroid/app/Activity;

    .line 57
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections;->getInstance()Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections;->recordActivity(Landroid/app/Activity;)V

    .line 58
    new-instance v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->c:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    .line 59
    const-string/jumbo v2, ""

    .line 60
    const-string/jumbo v3, ""

    .line 61
    const-string/jumbo v0, ""

    .line 63
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "task_verifyid"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "task_token"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 65
    :try_start_1
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "task_modulename"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 69
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->mMicroModuleContext:Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    .line 70
    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->mMicroModuleContext:Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    invoke-virtual {v3, v2, v1, v0}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->findModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    .line 71
    sget-object v3, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "verifyId: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " token: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " moduleName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->setIsPrevent(Z)V

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->pushActivity(Landroid/app/Activity;)V

    .line 80
    :goto_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void

    .line 66
    :catch_0
    move-exception v1

    move-object v6, v1

    move-object v1, v3

    move-object v3, v6

    .line 67
    :goto_2
    sget-object v4, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->a:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 76
    :cond_1
    sget-object v1, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ActivityHelper mModule is null: "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 77
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {v1, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 77
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_3

    .line 66
    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method public static isInWhiteList(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 209
    sget-object v2, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->d:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 210
    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 211
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "The mModule of a [ "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ] can be null... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const/4 v0, 0x1

    .line 216
    :goto_1
    return v0

    .line 209
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    :cond_1
    sget-object v1, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mModule of [ "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ] is null!!! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->c:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 120
    return-void
.end method

.method public alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->c:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V

    .line 138
    return-void
.end method

.method public dismissProgressDialog()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->c:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->dismissProgressDialog()V

    .line 184
    return-void
.end method

.method public finish()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->removeActivity(Landroid/app/Activity;)V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->c:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->dismissProgressDialog()V

    .line 98
    return-void
.end method

.method public getDialogHelper()Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->c:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    return-object v0
.end method

.method public getMicroModuleContext()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->mMicroModuleContext:Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    return-object v0
.end method

.method public getModule()Lcom/alipay/mobile/verifyidentity/module/MicroModule;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    return-object v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->setIsPrevent(Z)V

    .line 104
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->mMicroModuleContext:Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->updateActivity(Landroid/app/Activity;)Landroid/app/Activity;

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->isNeedReportVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->writeLogFirstModuleVisible()V

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->setNeedReportVisible(Z)V

    .line 88
    :cond_0
    return-void
.end method

.method public showProgressDialog(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->c:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->showProgressDialog(Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->c:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;Z)V

    .line 166
    return-void
.end method

.method public showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;Z)V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->c:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;Z)V

    .line 177
    return-void
.end method

.method public toast(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->c:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->toast(Ljava/lang/String;I)V

    .line 147
    return-void
.end method

.method public whenModuleIsNull()Lcom/alipay/mobile/verifyidentity/module/MicroModule;
    .locals 1

    .prologue
    .line 224
    new-instance v0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper$1;-><init>(Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;)V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    .line 240
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    return-object v0
.end method

.method protected writeLogFirstModuleVisible()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 264
    sget-object v1, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u672c\u6b21task\u7684\u7b2c\u4e00\u4e2aModule\u7684\u7b2c\u4e00\u4e2a\u754c\u9762\u53ef\u89c1\uff0c\u505a\u57cb\u70b9\uff08Activity\uff1a"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->b:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    :goto_0
    invoke-static {v1, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getTask()Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    move-result-object v8

    .line 267
    if-eqz v8, :cond_0

    .line 268
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 269
    const-string/jumbo v0, "sceneId"

    iget-object v1, v8, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->sceneId:Ljava/lang/String;

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const-string/jumbo v0, "bizId"

    iget-object v1, v8, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->bizId:Ljava/lang/String;

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const-string/jumbo v0, "module"

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getModuleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    const-string/jumbo v0, "verifyType"

    invoke-virtual {v8}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getCompatibleVerifyType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;->EVENT:Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;

    const-string/jumbo v1, "UC-MobileIC-160816-1"

    const-string/jumbo v2, "20000666"

    const-string/jumbo v3, "dygjmkj"

    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    .line 274
    invoke-virtual {v4}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getToken()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v5}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getVerifyId()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-virtual {v8}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getTaskCreateTime()J

    move-result-wide v12

    sub-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 273
    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavorLogger;->logBehavorRightAway(Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 275
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u9996\u4e2a\u9875\u9762\u5524\u8d77\u603b\u8017\u65f6\uff1a"

    invoke-virtual {v8}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getTaskCreateTime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/verifyidentity/log/TimeCostLog;->log(Ljava/lang/String;Ljava/lang/String;J)V

    .line 277
    :cond_0
    return-void

    .line 264
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->b:Landroid/app/Activity;

    .line 265
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\uff09"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method
