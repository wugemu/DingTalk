.class public final Ljqo;
.super Ljqn;
.source "PageManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljqn",
        "<",
        "Ljqp$b;",
        ">;"
    }
.end annotation


# instance fields
.field protected d:Landroid/support/v4/app/Fragment;

.field protected e:Ljqp;


# direct methods
.method public constructor <init>(Ljqp;Landroid/support/v4/app/FragmentActivity;Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;)V
    .locals 1
    .param p1, "pageStack"    # Ljqp;
    .param p2, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p3, "manifest"    # Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;

    .prologue
    .line 27
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    invoke-direct {p0, p2, v0, p3}, Ljqn;-><init>(Landroid/app/Activity;Lcn;Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;)V

    .line 28
    iput-object p1, p0, Ljqo;->e:Ljqp;

    .line 29
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
            "Ljqp$b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Ljqo;->e:Ljqp;

    .line 6108
    iget-object v0, v0, Ljqp;->a:Ljava/util/ArrayList;

    .line 211
    return-object v0
.end method

.method public final a(Landroid/support/v4/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 69
    iput-object p1, p0, Ljqo;->d:Landroid/support/v4/app/Fragment;

    .line 70
    return-void
.end method

.method public final a(Lcom/taobao/windmill/bundle/container/router/AnimType;I)Z
    .locals 7
    .param p1, "animType"    # Lcom/taobao/windmill/bundle/container/router/AnimType;
    .param p2, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 146
    iget-object v5, p0, Ljqo;->e:Ljqp;

    .line 5057
    iget-object v5, v5, Ljqp;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 146
    add-int/lit8 v5, v5, -0x1

    if-lt p2, v5, :cond_0

    .line 147
    const/4 v5, 0x0

    .line 188
    :goto_0
    return v5

    .line 151
    :cond_0
    move v4, p2

    .line 152
    .local v4, "realIndex":I
    iget-object v5, p0, Ljqo;->e:Ljqp;

    invoke-virtual {v5, p2}, Ljqp;->a(I)Ljqp$b;

    move-result-object v5

    iget-boolean v5, v5, Ljqp$b;->d:Z

    if-eqz v5, :cond_1

    .line 154
    :goto_1
    iget-object v5, p0, Ljqo;->e:Ljqp;

    invoke-virtual {v5, v4}, Ljqp;->a(I)Ljqp$b;

    move-result-object v5

    iget-boolean v5, v5, Ljqp$b;->d:Z

    if-eqz v5, :cond_1

    .line 155
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 158
    :cond_1
    iget-object v5, p0, Ljqo;->a:Lcn;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 160
    .local v3, "preFragment":Landroid/support/v4/app/Fragment;
    iget-object v5, p0, Ljqo;->a:Lcn;

    invoke-virtual {v5}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 161
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    sget-object v5, Lcom/taobao/windmill/bundle/container/router/AnimType;->POP:Lcom/taobao/windmill/bundle/container/router/AnimType;

    if-ne p1, v5, :cond_4

    .line 162
    sget v5, Ljrg$a;->wml_fade_in:I

    sget v6, Ljrg$a;->wml_fade_out:I

    invoke-virtual {v1, v5, v6}, Landroid/support/v4/app/FragmentTransaction;->a(II)Landroid/support/v4/app/FragmentTransaction;

    .line 170
    :cond_2
    :goto_2
    iget-object v5, p0, Ljqo;->e:Ljqp;

    .line 6057
    iget-object v5, v5, Ljqp;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 170
    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_3
    if-le v2, p2, :cond_6

    .line 171
    iget-object v5, p0, Ljqo;->e:Ljqp;

    invoke-virtual {v5, v2}, Ljqp;->a(I)Ljqp$b;

    move-result-object v5

    iget-boolean v5, v5, Ljqp$b;->d:Z

    if-eqz v5, :cond_5

    .line 172
    iget-object v5, p0, Ljqo;->e:Ljqp;

    invoke-virtual {v5}, Ljqp;->c()Ljqp$b;

    .line 170
    :cond_3
    :goto_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 164
    .end local v2    # "i":I
    :cond_4
    sget-object v5, Lcom/taobao/windmill/bundle/container/router/AnimType;->PUSH:Lcom/taobao/windmill/bundle/container/router/AnimType;

    if-ne p1, v5, :cond_2

    .line 165
    sget v5, Ljrg$a;->wml_push_right_in:I

    sget v6, Ljrg$a;->wml_push_right_out:I

    invoke-virtual {v1, v5, v6}, Landroid/support/v4/app/FragmentTransaction;->a(II)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_2

    .line 174
    .restart local v2    # "i":I
    :cond_5
    iget-object v5, p0, Ljqo;->a:Lcn;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 175
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_3

    .line 176
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 177
    iget-object v5, p0, Ljqo;->e:Ljqp;

    invoke-virtual {v5}, Ljqp;->c()Ljqp$b;

    goto :goto_4

    .line 182
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_6
    if-eqz v3, :cond_7

    .line 183
    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentTransaction;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 185
    :cond_7
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 187
    iput-object v3, p0, Ljqo;->d:Landroid/support/v4/app/Fragment;

    .line 188
    const/4 v5, 0x1

    goto/16 :goto_0
.end method

.method public final a(Lcom/taobao/windmill/bundle/container/router/WMLPageModel;)Z
    .locals 8
    .param p1, "pageModel"    # Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v7, 0x1

    .line 42
    iget-object v3, p0, Ljqo;->c:Landroid/app/Activity;

    .line 1022
    invoke-static {v7, v3, p1}, Ljqt;->a(ZLandroid/app/Activity;Lcom/taobao/windmill/bundle/container/router/WMLPageModel;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 44
    .local v2, "page":Landroid/support/v4/app/Fragment;
    instance-of v3, v2, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 45
    check-cast v1, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;

    .line 46
    .local v1, "ipf":Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;
    iget-object v3, p0, Ljqo;->c:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->a(Landroid/app/Activity;)V

    .line 49
    .end local v1    # "ipf":Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;
    :cond_0
    iget-object v3, p0, Ljqo;->a:Lcn;

    invoke-virtual {v3}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 50
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p1}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->getEnterAnim()I

    move-result v3

    .line 51
    invoke-virtual {p1}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->getExitAnim()I

    move-result v4

    invoke-virtual {p1}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->getPopEnterAnim()I

    move-result v5

    .line 52
    invoke-virtual {p1}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->getPopExitAnim()I

    move-result v6

    .line 50
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/support/v4/app/FragmentTransaction;->a(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 53
    sget v3, Ljrg$b;->tab_page_container:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Ljqo;->e:Ljqp;

    .line 1057
    iget-object v5, v5, Ljqp;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v4}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 54
    iget-object v3, p0, Ljqo;->d:Landroid/support/v4/app/Fragment;

    if-eqz v3, :cond_1

    .line 55
    iget-object v3, p0, Ljqo;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentTransaction;->b(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 57
    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 58
    iget-object v3, p0, Ljqo;->e:Ljqp;

    invoke-virtual {p1}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->getEnterUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljqp;->a(Ljava/lang/String;Ljqn;)V

    .line 60
    iput-object v2, p0, Ljqo;->d:Landroid/support/v4/app/Fragment;

    .line 61
    return v7
.end method

.method public final b()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Ljqo;->d:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public final b(Lcom/taobao/windmill/bundle/container/router/WMLPageModel;)Z
    .locals 5
    .param p1, "pageModel"    # Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 194
    iget-object v1, p0, Ljqo;->a:Lcn;

    invoke-virtual {v1}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 195
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    iget-object v1, p0, Ljqo;->d:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Ljqo;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 197
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 199
    :cond_0
    iget-object v1, p0, Ljqo;->e:Ljqp;

    invoke-virtual {v1}, Ljqp;->c()Ljqp$b;

    .line 201
    const/4 v1, 0x0

    iput-object v1, p0, Ljqo;->d:Landroid/support/v4/app/Fragment;

    .line 203
    sget v1, Ljrg$a;->wml_push_left_in:I

    sget v2, Ljrg$a;->wml_push_left_out:I

    sget v3, Ljrg$a;->wml_push_right_in:I

    sget v4, Ljrg$a;->wml_push_right_out:I

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->setCustomAnimations(IIII)V

    .line 206
    invoke-virtual {p0, p1}, Ljqo;->a(Lcom/taobao/windmill/bundle/container/router/WMLPageModel;)Z

    move-result v1

    return v1
.end method

.method public final c()Lcn;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Ljqo;->a:Lcn;

    return-object v0
.end method

.method public final d()Z
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 79
    iget-object v8, p0, Ljqo;->e:Ljqp;

    .line 2057
    iget-object v8, v8, Ljqp;->a:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 80
    .local v1, "count":I
    if-le v1, v7, :cond_1

    .line 82
    iget-object v8, p0, Ljqo;->e:Ljqp;

    invoke-virtual {v8}, Ljqp;->a()Ljqp$b;

    move-result-object v8

    iget-boolean v8, v8, Ljqp$b;->d:Z

    if-eqz v8, :cond_2

    .line 83
    :goto_0
    iget-object v8, p0, Ljqo;->e:Ljqp;

    invoke-virtual {v8}, Ljqp;->a()Ljqp$b;

    move-result-object v8

    iget-boolean v8, v8, Ljqp$b;->d:Z

    if-eqz v8, :cond_0

    .line 84
    iget-object v8, p0, Ljqo;->e:Ljqp;

    invoke-virtual {v8}, Ljqp;->c()Ljqp$b;

    goto :goto_0

    .line 86
    :cond_0
    iget-object v8, p0, Ljqo;->e:Ljqp;

    .line 3057
    iget-object v8, v8, Ljqp;->a:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 86
    if-gt v8, v7, :cond_2

    .line 141
    :cond_1
    :goto_1
    return v6

    .line 93
    :cond_2
    iget-object v6, p0, Ljqo;->e:Ljqp;

    invoke-virtual {v6}, Ljqp;->b()Ljqp$b;

    move-result-object v4

    .line 94
    .local v4, "prePage":Ljqp$b;
    iget-object v6, p0, Ljqo;->a:Lcn;

    invoke-virtual {v6}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 95
    .local v2, "ft":Landroid/support/v4/app/FragmentTransaction;
    iget-boolean v6, v4, Ljqp$b;->d:Z

    if-eqz v6, :cond_5

    .line 96
    iget-object v6, p0, Ljqo;->c:Landroid/app/Activity;

    check-cast v6, Lcom/taobao/windmill/bundle/WMLActivity;

    iget-object v8, v4, Ljqp$b;->c:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/taobao/windmill/bundle/WMLActivity;->onBackToExternalPage(Ljava/lang/String;)Z

    move-result v0

    .line 97
    .local v0, "backResult":Z
    iget-object v6, p0, Ljqo;->e:Ljqp;

    invoke-virtual {v6}, Ljqp;->c()Ljqp$b;

    .line 98
    iget-object v6, p0, Ljqo;->e:Ljqp;

    invoke-virtual {v6}, Ljqp;->b()Ljqp$b;

    move-result-object v4

    .line 99
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Ljqo;->e:Ljqp;

    .line 3076
    iget-object v8, v8, Ljqp;->a:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 99
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 101
    .local v5, "tag":Ljava/lang/String;
    iget-object v6, p0, Ljqo;->a:Lcn;

    invoke-virtual {v6, v5}, Lcn;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 103
    .local v3, "preFragment":Landroid/support/v4/app/Fragment;
    iget-object v6, p0, Ljqo;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v6}, Landroid/support/v4/app/FragmentTransaction;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 104
    if-eqz v3, :cond_3

    .line 105
    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 108
    :cond_3
    if-eqz v0, :cond_4

    .line 109
    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v8, Ljqo$1;

    invoke-direct {v8, p0, v2, v3}, Ljqo$1;-><init>(Ljqo;Landroid/support/v4/app/FragmentTransaction;Landroid/support/v4/app/Fragment;)V

    const-wide/16 v10, 0xc8

    invoke-virtual {v6, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .end local v0    # "backResult":Z
    :goto_2
    move v6, v7

    .line 139
    goto :goto_1

    .line 118
    .restart local v0    # "backResult":Z
    :cond_4
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 119
    iget-object v6, p0, Ljqo;->e:Ljqp;

    invoke-virtual {v6}, Ljqp;->c()Ljqp$b;

    .line 120
    iput-object v3, p0, Ljqo;->d:Landroid/support/v4/app/Fragment;

    goto :goto_2

    .line 123
    .end local v0    # "backResult":Z
    .end local v3    # "preFragment":Landroid/support/v4/app/Fragment;
    .end local v5    # "tag":Ljava/lang/String;
    :cond_5
    sget v6, Ljrg$a;->wml_push_right_in:I

    sget v8, Ljrg$a;->wml_push_right_out:I

    invoke-virtual {v2, v6, v8}, Landroid/support/v4/app/FragmentTransaction;->a(II)Landroid/support/v4/app/FragmentTransaction;

    .line 125
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Ljqo;->e:Ljqp;

    .line 4057
    iget-object v8, v8, Ljqp;->a:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 125
    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 127
    .restart local v5    # "tag":Ljava/lang/String;
    iget-object v6, p0, Ljqo;->a:Lcn;

    invoke-virtual {v6, v5}, Lcn;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 129
    .restart local v3    # "preFragment":Landroid/support/v4/app/Fragment;
    iget-object v6, p0, Ljqo;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v6}, Landroid/support/v4/app/FragmentTransaction;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 130
    if-eqz v3, :cond_6

    .line 131
    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 134
    :cond_6
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 135
    iget-object v6, p0, Ljqo;->e:Ljqp;

    invoke-virtual {v6}, Ljqp;->c()Ljqp$b;

    .line 136
    iput-object v3, p0, Ljqo;->d:Landroid/support/v4/app/Fragment;

    goto :goto_2
.end method
