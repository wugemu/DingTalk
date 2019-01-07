.class public Lcom/alibaba/sdk/android/utils/d;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/sdk/android/utils/d;->c:Z

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/alibaba/sdk/android/utils/d;->c:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/alibaba/sdk/android/utils/d;->c:Z

    if-eqz v0, :cond_0

    .line 33
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_0
    return-void
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 12
    sget-boolean v0, Lcom/alibaba/sdk/android/utils/d;->c:Z

    return v0
.end method

.method public static setLogEnabled(Z)V
    .locals 0

    .prologue
    .line 16
    sput-boolean p0, Lcom/alibaba/sdk/android/utils/d;->c:Z

    .line 17
    return-void
.end method
