.class final Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$a;
.super Ljava/lang/Object;
.source "WPSUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Z

.field b:Z

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field final synthetic e:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;


# direct methods
.method private constructor <init>(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;)V
    .locals 0

    .prologue
    .line 598
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$a;->e:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    .prologue
    .line 598
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$a;-><init>(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;)V

    return-void
.end method


# virtual methods
.method final a(Landroid/content/Context;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 646
    const/4 v1, 0x0

    .line 649
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "cn.wps.moffice_eng"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 654
    :goto_0
    if-eqz v1, :cond_0

    :goto_1
    return v2

    .line 650
    :catch_0
    move-exception v0

    .line 651
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "CSpace"

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$a;->e:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    invoke-static {v5}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->f(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "isWPSInstalled exception"

    aput-object v7, v6, v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    move v2, v3

    .line 654
    goto :goto_1
.end method

.method final a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcma;)Z
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const/4 v10, 0x0

    const/4 v1, 0x1

    .line 606
    if-nez p1, :cond_0

    .line 607
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$a;->e:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    const-string/jumbo v2, "appOpen"

    const-string/jumbo v3, ""

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v4, Lfzs$h;->dt_cspace_local_edit_app_open_failed:I

    invoke-virtual {v1, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->a(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    move v0, v10

    .line 642
    :goto_0
    return v0

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$a;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$a;->d:Ljava/lang/String;

    invoke-static {v0}, Lgpv;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 612
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$a;->e:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    const-string/jumbo v2, "appOpen"

    const-string/jumbo v3, ""

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v4, Lfzs$h;->dt_cspace_local_edit_error_invalid_file_path:I

    invoke-virtual {v1, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->a(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    move v0, v10

    .line 613
    goto :goto_0

    .line 616
    :cond_2
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 617
    .local v8, "intent":Landroid/content/Intent;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 619
    .local v6, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "OpenMode"

    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$a;->a:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "ReadOnly"

    :goto_1
    invoke-virtual {v6, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    const-string/jumbo v0, "SendCloseBroad"

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 621
    const-string/jumbo v0, "SendSaveBroad"

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 622
    const-string/jumbo v0, "ThirdPackage"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const-string/jumbo v0, "ClearTrace"

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 625
    invoke-virtual {v8, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 626
    const/high16 v0, 0x10000000

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 627
    const-string/jumbo v0, "android.intent.action.VIEW"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 629
    const-string/jumbo v0, "cn.wps.moffice_eng"

    const-string/jumbo v2, "cn.wps.moffice.documentmanager.PreStartActivity2"

    invoke-virtual {v8, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 631
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$a;->d:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    .line 632
    .local v9, "uri":Landroid/net/Uri;
    invoke-virtual {v8, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 635
    :try_start_0
    invoke-virtual {p1, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 642
    goto/16 :goto_0

    .line 619
    .end local v9    # "uri":Landroid/net/Uri;
    :cond_3
    const-string/jumbo v0, "EditMode"

    goto :goto_1

    .line 636
    .restart local v9    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v7

    .line 637
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "CSpace"

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$a;->e:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->f(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "open wps failed : "

    aput-object v4, v3, v10

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$a;->e:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    const-string/jumbo v2, "appOpen"

    const-string/jumbo v3, ""

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v4, Lfzs$h;->dt_cspace_local_edit_app_open_failed:I

    invoke-virtual {v1, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->a(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    move v0, v10

    .line 639
    goto/16 :goto_0
.end method
