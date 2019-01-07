.class public final Ljqq;
.super Ljqn;
.source "TabManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljqn",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private d:Landroid/support/v4/app/Fragment;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcn;Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fragmentManager"    # Lcn;
    .param p3, "manifest"    # Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Ljqn;-><init>(Landroid/app/Activity;Lcn;Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;)V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljqq;->e:Ljava/util/ArrayList;

    .line 27
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Ljqq;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final a(Lcom/taobao/windmill/bundle/container/router/WMLPageModel;)Z
    .locals 6
    .param p1, "pageModel"    # Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 32
    iget-object v3, p0, Ljqq;->a:Lcn;

    invoke-virtual {p1}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->getPageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 34
    .local v2, "page":Landroid/support/v4/app/Fragment;
    iget-object v3, p0, Ljqq;->d:Landroid/support/v4/app/Fragment;

    if-eqz v3, :cond_0

    iget-object v3, p0, Ljqq;->d:Landroid/support/v4/app/Fragment;

    if-ne v3, v2, :cond_0

    .line 71
    :goto_0
    return v5

    .line 38
    :cond_0
    iget-object v3, p0, Ljqq;->a:Lcn;

    invoke-virtual {v3}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 39
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    if-eqz v2, :cond_2

    .line 40
    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 42
    iget-object v3, p0, Ljqq;->d:Landroid/support/v4/app/Fragment;

    if-eqz v3, :cond_1

    .line 43
    iget-object v3, p0, Ljqq;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentTransaction;->b(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 45
    iget-object v3, p0, Ljqq;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->getPageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 47
    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 48
    iget-object v3, p0, Ljqq;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->getPageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    iput-object v2, p0, Ljqq;->d:Landroid/support/v4/app/Fragment;

    goto :goto_0

    .line 53
    :cond_2
    iget-object v3, p0, Ljqq;->c:Landroid/app/Activity;

    .line 1028
    const/4 v4, 0x0

    invoke-static {v4, v3, p1}, Ljqt;->a(ZLandroid/app/Activity;Lcom/taobao/windmill/bundle/container/router/WMLPageModel;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 55
    instance-of v3, v2, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;

    if-eqz v3, :cond_3

    move-object v1, v2

    .line 56
    check-cast v1, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;

    .line 57
    .local v1, "ipf":Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;
    iget-object v3, p0, Ljqq;->c:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->a(Landroid/app/Activity;)V

    .line 60
    .end local v1    # "ipf":Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;
    :cond_3
    sget v3, Ljrg$b;->tab_page_container:I

    invoke-virtual {p1}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->getPageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v4}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentTransaction;->a(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 61
    iget-object v3, p0, Ljqq;->d:Landroid/support/v4/app/Fragment;

    if-eqz v3, :cond_4

    .line 62
    iget-object v3, p0, Ljqq;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentTransaction;->b(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 64
    :cond_4
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 65
    iget-object v3, p0, Ljqq;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->getPageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    iput-object v2, p0, Ljqq;->d:Landroid/support/v4/app/Fragment;

    goto :goto_0
.end method

.method public final b(Lcom/taobao/windmill/bundle/container/router/WMLPageModel;)Z
    .locals 6
    .param p1, "pageModel"    # Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 99
    iget-object v3, p0, Ljqq;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 100
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 101
    if-ne v0, v5, :cond_1

    .line 102
    iget-object v3, p0, Ljqq;->a:Lcn;

    invoke-virtual {v3}, Lcn;->d()Z

    .line 103
    iget-object v3, p0, Ljqq;->e:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 105
    const/4 v3, 0x0

    iput-object v3, p0, Ljqq;->d:Landroid/support/v4/app/Fragment;

    .line 120
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Ljqq;->a(Lcom/taobao/windmill/bundle/container/router/WMLPageModel;)Z

    .line 121
    return v5

    .line 107
    :cond_1
    iget-object v3, p0, Ljqq;->a:Lcn;

    invoke-virtual {v3}, Lcn;->d()Z

    .line 108
    iget-object v3, p0, Ljqq;->e:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 110
    iget-object v3, p0, Ljqq;->e:Ljava/util/ArrayList;

    iget-object v4, p0, Ljqq;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 112
    .local v2, "prePage":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 113
    iget-object v3, p0, Ljqq;->a:Lcn;

    invoke-virtual {v3, v2}, Lcn;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 117
    .local v1, "preFragment":Landroid/support/v4/app/Fragment;
    :goto_1
    iput-object v1, p0, Ljqq;->d:Landroid/support/v4/app/Fragment;

    goto :goto_0

    .line 115
    .end local v1    # "preFragment":Landroid/support/v4/app/Fragment;
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "preFragment":Landroid/support/v4/app/Fragment;
    goto :goto_1
.end method
