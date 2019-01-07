.class public Lcom/taobao/windmill/bundle/alive/WMLActivity1;
.super Lcom/taobao/windmill/bundle/WMLActivity;
.source "WMLActivity1.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/taobao/windmill/bundle/WMLActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public closeApp()V
    .locals 0

    .prologue
    .line 19
    invoke-super {p0}, Lcom/taobao/windmill/bundle/WMLActivity;->finish()V

    .line 20
    return-void
.end method

.method public finish()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 15
    invoke-static {}, Ljqb;->a()Ljqb;

    move-result-object v2

    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/alive/WMLActivity1;->getAppCode()Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    move-result-object v1

    .line 1082
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_1

    .line 1083
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    .line 1090
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getFrameTempType()Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;

    move-result-object v0

    sget-object v3, Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;->PriArea:Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;

    if-ne v0, v3, :cond_2

    .line 1091
    sget v0, Ljrg$a;->wml_temp:I

    sget v3, Ljrg$a;->wml_pri_exit_down_out:I

    invoke-virtual {p0, v0, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 1096
    :goto_1
    iget-object v3, v1, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->appCode:Ljava/lang/String;

    .line 1097
    iget-object v0, v2, Ljqb;->b:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1098
    iget-object v0, v2, Ljqb;->b:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1099
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 1100
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_2

    .line 1085
    :cond_1
    instance-of v0, p0, Lcom/taobao/windmill/bundle/alive/WMLActivity1;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 1086
    check-cast v0, Lcom/taobao/windmill/bundle/alive/WMLActivity1;

    invoke-virtual {v0}, Lcom/taobao/windmill/bundle/alive/WMLActivity1;->closeApp()V

    goto :goto_0

    .line 1093
    :cond_2
    sget v0, Ljrg$a;->wml_push_right_in:I

    sget v3, Ljrg$a;->wml_push_right_out:I

    invoke-virtual {p0, v0, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_1

    .line 1102
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1105
    :cond_4
    iget-object v0, v2, Ljqb;->b:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1106
    iget-object v0, v2, Ljqb;->a:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1107
    iget-object v0, v2, Ljqb;->d:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1108
    iget-object v0, v2, Ljqb;->c:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    return-void
.end method

.method protected onAppOpen(Landroid/content/Intent;)Lcom/taobao/windmill/bundle/container/core/AppCodeModel;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 24
    const-string/jumbo v1, "appCode"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    .line 25
    .local v0, "appCode":Lcom/taobao/windmill/bundle/container/core/AppCodeModel;
    invoke-static {}, Ljqb;->a()Ljqb;

    move-result-object v1

    .line 2076
    iget-object v2, v1, Ljqb;->a:Ljava/util/Map;

    iget-object v3, v0, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->appCode:Ljava/lang/String;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2077
    iget-object v1, v1, Ljqb;->d:Ljava/util/List;

    iget-object v2, v0, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->appCode:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    return-object v0
.end method

.method public onBackToExternalPage(Ljava/lang/String;)Z
    .locals 4
    .param p1, "toExternalUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 37
    invoke-static {}, Ljqb;->a()Ljqb;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/alive/WMLActivity1;->getAppCode()Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    move-result-object v1

    .line 4134
    iget-object v0, v0, Ljqb;->b:Ljava/util/Map;

    iget-object v1, v1, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->appCode:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 4135
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 4137
    if-eqz v0, :cond_0

    .line 4139
    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    check-cast v1, Landroid/app/ActivityManager;

    .line 4140
    invoke-virtual {v0}, Landroid/app/Activity;->getTaskId()I

    move-result v3

    .line 4141
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 4142
    invoke-virtual {v1, v3, v2}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    .line 4143
    sget v0, Ljrg$a;->wml_push_right_in:I

    sget v1, Ljrg$a;->wml_push_right_out:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 4144
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 37
    goto :goto_0
.end method

.method public onStartActivityByUrl(Ljava/lang/String;)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 31
    invoke-static {}, Ljqb;->a()Ljqb;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/alive/WMLActivity1;->getAppCode()Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    move-result-object v1

    .line 2152
    iget-object v0, v0, Ljqb;->b:Ljava/util/Map;

    iget-object v1, v1, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->appCode:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2153
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_2

    :cond_0
    move-object v0, p0

    .line 2158
    :goto_0
    invoke-static {}, Ljpo;->a()Ljpo;

    move-result-object v1

    .line 3137
    iget-object v1, v1, Ljpo;->c:Ljpo$a;

    iget-object v1, v1, Ljpo$a;->e:Ljpw;

    .line 2159
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 2160
    invoke-interface {v1, v0, p1}, Ljpw;->openURL(Landroid/content/Context;Ljava/lang/String;)V

    .line 2161
    sget v0, Ljrg$a;->wml_push_left_in:I

    sget v1, Ljrg$a;->wml_push_left_out:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 32
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 2156
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0
.end method
