.class public Lcom/alibaba/android/rimet/LauncherApplication;
.super Lcom/alibaba/android/dingtalkbase/multidexsupport/DDApplication;
.source "LauncherApplication.java"


# static fields
.field public static multiDexLoadFail:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDApplication;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 6
    .param p1, "base"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 23
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDApplication;->attachBaseContext(Landroid/content/Context;)V

    .line 26
    :try_start_0
    invoke-static {}, Lcom/taobao/android/runtime/DalvikUtils;->init()Z

    .line 27
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/taobao/android/runtime/DalvikUtils;->setClassVerifyMode(I)Ljava/lang/Boolean;

    .line 28
    invoke-static {p0}, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDMultiDex;->install(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    sget-boolean v3, Lcom/alibaba/android/rimet/LauncherApplication;->multiDexLoadFail:Z

    if-nez v3, :cond_0

    .line 37
    :try_start_1
    const-string/jumbo v3, "com.alibaba.android.rimet.RimetDDContext"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 38
    .local v0, "c":Ljava/lang/Class;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDApplication;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 39
    .local v1, "constructor":Ljava/lang/reflect/Constructor;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDContext;

    invoke-virtual {p0, v3}, Lcom/alibaba/android/rimet/LauncherApplication;->initDDContext(Lcom/alibaba/android/dingtalkbase/multidexsupport/DDContext;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 44
    .end local v0    # "c":Ljava/lang/Class;
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;
    :cond_0
    :goto_1
    return-void

    .line 29
    :catch_0
    move-exception v2

    .line 30
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 31
    sput-boolean v4, Lcom/alibaba/android/rimet/LauncherApplication;->multiDexLoadFail:Z

    goto :goto_0

    .line 40
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 41
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
