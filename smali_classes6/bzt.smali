.class public final Lbzt;
.super Ljava/lang/Object;
.source "XiaomiPermissionPage.java"

# interfaces
.implements Lbzo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()I
    .locals 3

    .prologue
    .line 18
    const/4 v0, -0x1

    .line 20
    .local v0, "version":I
    :try_start_0
    const-string/jumbo v2, "ro.miui.ui.version.name"

    invoke-static {v2}, Lcab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 21
    .local v1, "versionStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 22
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 27
    .end local v1    # "versionStr":Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 32
    invoke-static {}, Lbzt;->a()I

    move-result v1

    .line 33
    .local v1, "version":I
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 48
    :goto_0
    return-object v0

    .line 37
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 1059
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "miui.intent.action.APP_PERM_EDITOR"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "com.miui.securitycenter"

    const-string/jumbo v4, "com.miui.permcenter.permissions.PermissionsEditorActivity"

    .line 1060
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "extra_pkgname"

    .line 1062
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 45
    .local v0, "intent":Landroid/content/Intent;
    goto :goto_0

    .line 1052
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.miui.securitycenter"

    const-string/jumbo v4, "com.miui.permcenter.permissions.AppPermissionsEditorActivity"

    .line 1053
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "extra_pkgname"

    .line 1055
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 41
    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 37
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
