.class public final Lhfv;
.super Ljava/lang/Object;
.source "FunctionController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 37
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v4

    sget v5, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v4, v5, :cond_1

    .line 51
    .local v0, "disableErrorPage":Z
    :cond_0
    :goto_0
    return v2

    .line 42
    .end local v0    # "disableErrorPage":Z
    :cond_1
    const/4 v0, 0x0

    .line 45
    .restart local v0    # "disableErrorPage":Z
    :try_start_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    const-string/jumbo v5, "disable_custom_error_page_v437"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 49
    :goto_1
    const-string/jumbo v4, "WebConfig"

    const/4 v5, 0x0

    const-string/jumbo v6, "customErrorPage"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "disableErrorPage="

    aput-object v8, v7, v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v4, v5, v6, v7}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    if-eqz v0, :cond_0

    move v2, v3

    goto :goto_0

    .line 46
    :catch_0
    move-exception v1

    .line 47
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
