.class public final Lgsc;
.super Ljava/lang/Object;
.source "AlBeautifyHelper.java"


# static fields
.field private static a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 21
    sget-boolean v2, Lgsc;->a:Z

    if-eqz v2, :cond_0

    .line 36
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    return v1

    .line 26
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/taobao/xsandroidcamerademo/AlBeautify;->RemoveEffect(I)I

    .line 28
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    .line 31
    const/4 v1, 0x1

    sput-boolean v1, Lgsc;->a:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .restart local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    sget-boolean v1, Lgsc;->a:Z

    goto :goto_0

    .line 32
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 33
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 34
    const-string/jumbo v1, "facebox"

    const-string/jumbo v2, "AlBeautify"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "loadLibrary error. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
