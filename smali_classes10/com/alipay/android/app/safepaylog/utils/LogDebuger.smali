.class public Lcom/alipay/android/app/safepaylog/utils/LogDebuger;
.super Ljava/lang/Object;
.source "LogDebuger.java"


# static fields
.field private static DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/app/safepaylog/utils/LogDebuger;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    if-nez p0, :cond_0

    .line 15
    :goto_0
    return-void

    .line 14
    :cond_0
    invoke-static {p0}, Lcom/alipay/android/app/safepaylog/utils/LogDebuger;->isDebug(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/alipay/android/app/safepaylog/utils/LogDebuger;->DEBUG:Z

    goto :goto_0
.end method

.method public static isDebug()Z
    .locals 1

    .prologue
    .line 18
    sget-boolean v0, Lcom/alipay/android/app/safepaylog/utils/LogDebuger;->DEBUG:Z

    return v0
.end method

.method private static isDebug(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 25
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 29
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .local v0, "debug":Z
    :goto_0
    return v0

    .line 25
    .end local v0    # "debug":Z
    .restart local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 27
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    const/4 v0, 0x0

    .restart local v0    # "debug":Z
    goto :goto_0
.end method
