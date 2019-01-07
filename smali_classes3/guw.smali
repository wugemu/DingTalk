.class public final Lguw;
.super Ljava/lang/Object;
.source "ContextUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/app/Activity;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-nez p0, :cond_0

    move-object p0, v0

    .line 22
    .end local p0    # "context":Landroid/content/Context;
    :goto_1
    return-object p0

    .line 16
    .restart local p0    # "context":Landroid/content/Context;
    :cond_0
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 17
    check-cast p0, Landroid/app/Activity;

    goto :goto_1

    .line 19
    :cond_1
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_2

    .line 20
    check-cast p0, Landroid/content/ContextWrapper;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    .restart local p0    # "context":Landroid/content/Context;
    goto :goto_0

    :cond_2
    move-object p0, v0

    .line 22
    goto :goto_1
.end method
