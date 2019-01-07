.class public final Lhlc;
.super Lhld;
.source "GoogleMap.java"


# instance fields
.field private a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 26
    invoke-direct {p0}, Lhld;-><init>()V

    .line 27
    iput-object p1, p0, Lhlc;->a:Landroid/app/Activity;

    .line 28
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 33
    const/4 v1, 0x0

    .line 34
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, p0, Lhlc;->a:Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 36
    :try_start_0
    iget-object v3, p0, Lhlc;->a:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "com.google.android.apps.maps"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 43
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .line 39
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(DDDDLjava/lang/String;)Z
    .locals 5
    .param p1, "startLatitude"    # D
    .param p3, "startLongitude"    # D
    .param p5, "endLatitude"    # D
    .param p7, "endLongitude"    # D
    .param p9, "endName"    # Ljava/lang/String;

    .prologue
    .line 56
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "com.google.android.apps.maps"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "http://maps.google.com/maps?source=dingtalk&daddr="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p5, p6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p7, p8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 59
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 60
    iget-object v3, p0, Lhlc;->a:Landroid/app/Activity;

    invoke-static {v3, v1}, Lhrf;->a(Landroid/content/Context;Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 64
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_0
    return v3

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string/jumbo v0, "market://details?id=com.google.android.apps.maps"

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 69
    iget-object v0, p0, Lhlc;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lhlc;->a:Landroid/app/Activity;

    sget v1, Lhdn$k;->mapapp_google:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method
