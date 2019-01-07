.class public Lza;
.super Ljava/lang/Object;
.source "FrameworkUtility.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 20
    .line 1010
    const-string/jumbo v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1011
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1012
    if-eqz v1, :cond_0

    .line 1013
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 21
    .local v0, "networkType":I
    :goto_0
    if-ne v0, v2, :cond_1

    move v1, v2

    :goto_1
    return v1

    .end local v0    # "networkType":I
    :cond_0
    move v0, v2

    .line 1016
    goto :goto_0

    .line 21
    .restart local v0    # "networkType":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const-string/jumbo v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 31
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 32
    .local v2, "ni":Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    .line 33
    .local v1, "isConnected":Z
    if-eqz v2, :cond_0

    .line 34
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 51
    :cond_0
    return v1
.end method
