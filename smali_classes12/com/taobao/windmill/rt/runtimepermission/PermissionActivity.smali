.class public Lcom/taobao/windmill/rt/runtimepermission/PermissionActivity;
.super Landroid/app/Activity;
.source "PermissionActivity.java"

# interfaces
.implements Lcd$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a([Ljava/lang/String;)Z
    .locals 5
    .param p1, "permissions"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 97
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 98
    .local v0, "permission":Ljava/lang/String;
    invoke-static {p0, v0}, Lcd;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 100
    const/4 v1, 0x1

    .line 103
    .end local v0    # "permission":Ljava/lang/String;
    :cond_0
    return v1

    .line 97
    .restart local v0    # "permission":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 66
    const/16 v0, 0x7b

    if-ne p1, v0, :cond_2

    .line 2078
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 2080
    invoke-static {v2}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2197
    :cond_0
    iput-object v2, v2, Ljsc$a;->a:Landroid/content/Context;

    .line 2198
    iput-object v2, v2, Ljsc$a;->b:Ljava/lang/Runnable;

    .line 2199
    iput-object v2, v2, Ljsc$a;->c:Ljava/lang/Runnable;

    .line 2082
    :cond_1
    sput-object v2, Ljsc;->a:Ljsc$a;

    .line 69
    :cond_2
    invoke-virtual {p0}, Lcom/taobao/windmill/rt/runtimepermission/PermissionActivity;->finish()V

    .line 70
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 31
    .local v1, "frameLayout":Landroid/widget/FrameLayout;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    invoke-virtual {p0, v1}, Lcom/taobao/windmill/rt/runtimepermission/PermissionActivity;->setContentView(Landroid/view/View;)V

    .line 35
    invoke-virtual {p0}, Lcom/taobao/windmill/rt/runtimepermission/PermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "permissions"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 36
    .local v3, "permissions":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/taobao/windmill/rt/runtimepermission/PermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "explain"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "explain":Ljava/lang/String;
    if-eqz v3, :cond_0

    array-length v4, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    aget-object v4, v3, v7

    const-string/jumbo v5, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 38
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "package:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/taobao/windmill/rt/runtimepermission/PermissionActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 39
    .local v2, "intent":Landroid/content/Intent;
    const/16 v4, 0x7b

    invoke-virtual {p0, v2, v4}, Lcom/taobao/windmill/rt/runtimepermission/PermissionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1090
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 1077
    :cond_0
    invoke-direct {p0, v3}, Lcom/taobao/windmill/rt/runtimepermission/PermissionActivity;->a([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1078
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v5, "\u6211\u77e5\u9053\u4e86"

    new-instance v6, Lcom/taobao/windmill/rt/runtimepermission/PermissionActivity$1;

    invoke-direct {v6, p0, v3}, Lcom/taobao/windmill/rt/runtimepermission/PermissionActivity$1;-><init>(Lcom/taobao/windmill/rt/runtimepermission/PermissionActivity;[Ljava/lang/String;)V

    .line 1079
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 1087
    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 1088
    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 1089
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 1091
    :cond_1
    invoke-static {p0, v3, v7}, Lcd;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_1

    .end local v0    # "explain":Ljava/lang/String;
    .end local v3    # "permissions":[Ljava/lang/String;
    :catch_0
    move-exception v4

    goto/16 :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 47
    if-nez p1, :cond_0

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/windmill/rt/runtimepermission/PermissionActivity;->finish()V

    .line 51
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 61
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 56
    return-void
.end method
