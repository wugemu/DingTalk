.class public final Lawk;
.super Ljava/lang/Object;
.source "VibrateUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(J)V
    .locals 4
    .param p0, "millis"    # J

    .prologue
    .line 17
    invoke-static {}, Lavq;->r()Z

    move-result v2

    if-nez v2, :cond_1

    .line 26
    :cond_0
    :goto_0
    return-void

    .line 21
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 22
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v2, "vibrator"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 23
    .local v1, "vibrator":Landroid/os/Vibrator;
    if-eqz v1, :cond_0

    .line 24
    invoke-virtual {v1, p0, p1}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method
