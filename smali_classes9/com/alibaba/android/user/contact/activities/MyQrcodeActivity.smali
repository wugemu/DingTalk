.class public Lcom/alibaba/android/user/contact/activities/MyQrcodeActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "MyQrcodeActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 15
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    sget v4, Lezg$j;->activity_my_qrcode:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/contact/activities/MyQrcodeActivity;->setContentView(I)V

    .line 18
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/MyQrcodeActivity;->hideToolbarDivide()V

    .line 20
    new-instance v3, Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment;

    invoke-direct {v3}, Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment;-><init>()V

    .line 21
    .local v3, "personalQRcodeFragment":Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment;
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/MyQrcodeActivity;->getSupportFragmentManager()Lcn;

    move-result-object v4

    invoke-virtual {v4}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    sget v5, Lezg$h;->ll_qrcord_container:I

    invoke-virtual {v4, v5, v3}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 24
    :try_start_0
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 25
    .local v0, "config":Landroid/view/ViewConfiguration;
    const-class v4, Landroid/view/ViewConfiguration;

    const-string/jumbo v5, "sHasPermanentMenuKey"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 26
    .local v2, "menuKeyField":Ljava/lang/reflect/Field;
    if-eqz v2, :cond_0

    .line 27
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 28
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .end local v0    # "config":Landroid/view/ViewConfiguration;
    .end local v2    # "menuKeyField":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/MyQrcodeActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 35
    const v4, 0x3f4ccccd    # 0.8f

    invoke-static {p0, v6, v4}, Lcms;->a(Landroid/app/Activity;ZF)V

    .line 36
    return-void

    .line 30
    :catch_0
    move-exception v1

    .line 31
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
