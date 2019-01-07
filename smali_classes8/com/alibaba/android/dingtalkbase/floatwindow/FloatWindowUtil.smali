.class public final Lcom/alibaba/android/dingtalkbase/floatwindow/FloatWindowUtil;
.super Ljava/lang/Object;
.source "FloatWindowUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/floatwindow/FloatWindowUtil$FloatWindowType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static a()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 24
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ge v2, v3, :cond_1

    .line 40
    :cond_0
    :goto_0
    return v0

    .line 29
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-ge v2, v3, :cond_2

    .line 30
    invoke-static {}, Lcof;->h()Z

    move-result v2

    if-nez v2, :cond_2

    .line 31
    invoke-static {}, Lcof;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    :cond_2
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/String;

    const-string/jumbo v4, "android.permission.SYSTEM_ALERT_WINDOW"

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 40
    goto :goto_0
.end method

.method public static b()I
    .locals 3

    .prologue
    const/16 v0, 0x7d3

    .line 53
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_1

    .line 68
    :cond_0
    :goto_0
    return v0

    .line 58
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-ge v1, v2, :cond_2

    .line 59
    invoke-static {}, Lcof;->h()Z

    move-result v1

    if-nez v1, :cond_2

    .line 60
    invoke-static {}, Lcof;->d()Z

    move-result v1

    if-nez v1, :cond_2

    .line 61
    const/16 v0, 0x7d5

    goto :goto_0

    .line 64
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 68
    const/16 v0, 0x7f6

    goto :goto_0
.end method
