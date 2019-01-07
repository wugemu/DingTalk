.class public Lcom/alipay/android/app/safepaybase/alikeyboard/TaoHelper;
.super Ljava/lang/Object;
.source "TaoHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSpecialManuFacturer(Ljava/lang/String;)Z
    .locals 4
    .param p0, "special"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 9
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 10
    .local v1, "manu":Ljava/lang/String;
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 12
    .local v0, "brand":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 20
    :cond_0
    :goto_0
    return v2

    .line 16
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 20
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
