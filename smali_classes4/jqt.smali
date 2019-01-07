.class public final Ljqt;
.super Ljava/lang/Object;
.source "PageFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;ZLjava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "supportActionbar"    # Z
    .param p2, "errorCode"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 60
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 61
    .local v0, "args":Landroid/os/Bundle;
    sget-object v1, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    sget-object v1, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    sget-object v1, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->g:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 64
    sget-object v1, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->h:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 65
    const-class v1, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    return-object v1
.end method

.method public static a(ZLandroid/app/Activity;Lcom/taobao/windmill/bundle/container/router/WMLPageModel;)Landroid/support/v4/app/Fragment;
    .locals 5
    .param p0, "supportActionbar"    # Z
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "pageModel"    # Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    .prologue
    .line 36
    invoke-virtual {p2}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->getPageType()Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;

    move-result-object v3

    sget-object v4, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;->H5:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;

    if-ne v3, v4, :cond_3

    .line 38
    invoke-static {}, Ljpo;->a()Ljpo;

    move-result-object v3

    .line 1145
    iget-object v3, v3, Ljpo;->c:Ljpo$a;

    iget-object v3, v3, Ljpo$a;->g:Ljpv;

    .line 38
    if-eqz v3, :cond_1

    .line 39
    if-eqz p0, :cond_0

    const-class v1, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5PageFragment;

    .line 45
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/support/v4/app/Fragment;>;"
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 46
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v3, "key_page_model"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 47
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, v0}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 55
    .local v2, "f":Landroid/support/v4/app/Fragment;
    :goto_1
    return-object v2

    .line 39
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/support/v4/app/Fragment;>;"
    .end local v2    # "f":Landroid/support/v4/app/Fragment;
    :cond_0
    const-class v1, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;

    goto :goto_0

    .line 42
    :cond_1
    if-eqz p0, :cond_2

    const-class v1, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5PageFragment;

    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/support/v4/app/Fragment;>;"
    :goto_2
    goto :goto_0

    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/support/v4/app/Fragment;>;"
    :cond_2
    const-class v1, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;

    goto :goto_2

    .line 49
    :cond_3
    if-eqz p0, :cond_4

    const-class v1, Lcom/taobao/windmill/bundle/container/router/fragment/WMLPageFragment;

    .line 51
    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/support/v4/app/Fragment;>;"
    :goto_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 52
    .restart local v0    # "args":Landroid/os/Bundle;
    const-string/jumbo v3, "key_page_model"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 53
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, v0}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .restart local v2    # "f":Landroid/support/v4/app/Fragment;
    goto :goto_1

    .line 49
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/support/v4/app/Fragment;>;"
    .end local v2    # "f":Landroid/support/v4/app/Fragment;
    :cond_4
    const-class v1, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    goto :goto_3
.end method
