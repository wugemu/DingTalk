.class public Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageFrame;
.super Ljava/lang/Object;
.source "WMLPageFrame.java"

# interfaces
.implements Ljqe;


# instance fields
.field private mAppInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

.field private mContent:Landroid/widget/FrameLayout;

.field private mContext:Landroid/content/Context;

.field private mNavBar:Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

.field private mNavContainer:Landroid/view/ViewGroup;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageFrame;->mRootView:Landroid/view/View;

    .line 26
    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageFrame;->mNavContainer:Landroid/view/ViewGroup;

    .line 27
    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageFrame;->mContent:Landroid/widget/FrameLayout;

    .line 30
    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageFrame;->mAppInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    .line 35
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageFrame;->mContext:Landroid/content/Context;

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 38
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lhdn$i;->wml_miniapp_layout:I

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageFrame;->mRootView:Landroid/view/View;

    .line 39
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageFrame;->mRootView:Landroid/view/View;

    sget v3, Lhdn$h;->container:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageFrame;->mContent:Landroid/widget/FrameLayout;

    .line 40
    new-instance v2, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageFrame;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageFrame;->mNavBar:Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

    .line 41
    invoke-static {p1}, Ljqy;->a(Landroid/content/Context;)I

    move-result v1

    .line 42
    .local v1, "statuBarHeight":I
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageFrame;->mNavBar:Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4, v1, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 44
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageFrame;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljrd;->a(Landroid/app/Activity;Z)Z

    .line 45
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageFrame;->mRootView:Landroid/view/View;

    sget v3, Lhdn$h;->nav_container:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageFrame;->mNavContainer:Landroid/view/ViewGroup;

    .line 46
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageFrame;->mNavContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageFrame;->mNavBar:Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

    invoke-virtual {v3}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->getContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 47
    return-void
.end method


# virtual methods
.method public addRightButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "icon"    # Ljava/lang/String;
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageFrame;->mNavBar:Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->addRightButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 149
    return-void
.end method

.method public addRightText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageFrame;->mNavBar:Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->addRightText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 159
    return-void
.end method

.method public closeDrawer()Z
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public getActionBarHeight()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageFrame;->mNavBar:Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getView(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "contentView"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, -0x1

    .line 52
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 53
    .local v0, "fillParent":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageFrame;->mContent:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageFrame;->mRootView:Landroid/view/View;

    return-object v1
.end method

.method public hasIndexBadge()Z
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageFrame;->mNavBar:Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->onResume()V

    .line 208
    return-void
.end method

.method public openDrawer()Z
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public resetIndexBadge()V
    .locals 0

    .prologue
    .line 226
    return-void
.end method

.method public resetRightButton()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageFrame;->mNavBar:Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->resetRightButton()V

    .line 164
    return-void
.end method

.method public scaleIndexBadge()V
    .locals 0

    .prologue
    .line 222
    return-void
.end method

.method public setActionSheet(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public setActionbarBg(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 83
    return-void
.end method

.method public setActionbarBgColor(Ljava/lang/String;)V
    .locals 2
    .param p1, "color"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageFrame;->mNavBar:Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

    invoke-static {p1}, Ljqy;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->resetTitleColor(I)V

    .line 93
    return-void
.end method

.method public setBackgroundTextStyle(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 183
    return-void
.end method

.method public setData(ZLcom/taobao/windmill/bundle/container/core/AppInfoModel;Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;Lcom/taobao/windmill/bundle/container/router/WMLPageModel;)V
    .locals 1
    .param p1, "needHomeBtn"    # Z
    .param p2, "appInfo"    # Lcom/taobao/windmill/bundle/container/core/AppInfoModel;
    .param p3, "data"    # Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;
    .param p4, "pageModel"    # Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    .prologue
    .line 65
    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageFrame;->mAppInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    .line 67
    if-eqz p3, :cond_0

    .line 68
    iget-object v0, p3, Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;->navigationBarTitleText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageFrame;->setTitle(Ljava/lang/String;)V

    .line 69
    iget-boolean v0, p3, Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;->showNavigationBar:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageFrame;->showActionbar(Z)V

    .line 70
    iget-object v0, p3, Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;->navigationBarBackgroundColor:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageFrame;->setActionbarBgColor(Ljava/lang/String;)V

    .line 71
    iget-boolean v0, p3, Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;->translucent:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageFrame;->setTranslucent(Z)V

    .line 73
    :cond_0
    return-void
.end method

.method public setDrawer(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 197
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public setExtendStyle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "styleKey"    # Ljava/lang/String;
    .param p2, "styleValue"    # Ljava/lang/String;

    .prologue
    .line 231
    return-void
.end method

.method public setLeftButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "icon"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageFrame;->mNavBar:Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->setLeftButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 169
    return-void
.end method

.method public setLeftText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageFrame;->mNavBar:Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->setLeftText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 174
    return-void
.end method

.method public setMoreBtnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 178
    return-void
.end method

.method public setOnBackClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "onBackClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 102
    return-void
.end method

.method public setOnCloseClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "onCloseClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 107
    return-void
.end method

.method public setRightButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "icon"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageFrame;->mNavBar:Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->setRightButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 144
    return-void
.end method

.method public setRightText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageFrame;->mNavBar:Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->setRightText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 154
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageFrame;->mNavBar:Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->setTitle(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public setTitleIcon(Ljava/lang/String;)V
    .locals 1
    .param p1, "icon"    # Ljava/lang/String;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageFrame;->mNavBar:Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->setTitleIcon(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public setTranslucent(Z)V
    .locals 4
    .param p1, "isTranslucent"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x3

    .line 121
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageFrame;->mContent:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageFrame;->mNavBar:Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

    if-nez v1, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageFrame;->mNavBar:Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

    invoke-virtual {v1, p1}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->setTranslucent(Z)V

    .line 126
    if-nez p1, :cond_2

    .line 127
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageFrame;->mContent:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 128
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v1, Lhdn$h;->nav_container:I

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 137
    :goto_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageFrame;->mContent:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 131
    .end local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageFrame;->mContent:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 132
    .restart local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_3

    .line 133
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    goto :goto_1

    .line 135
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1
.end method

.method public showActionbar(Z)V
    .locals 1
    .param p1, "isShow"    # Z

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageFrame;->mNavBar:Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->showActionbar(Z)V

    .line 112
    return-void
.end method

.method public showMenu(Z)V
    .locals 1
    .param p1, "is"    # Z

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageFrame;->mNavBar:Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->showMoreView(Z)V

    .line 117
    return-void
.end method
