.class public interface abstract Ljqe;
.super Ljava/lang/Object;
.source "IWMLPageFrame.java"


# virtual methods
.method public abstract addRightButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
.end method

.method public abstract addRightText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
.end method

.method public abstract closeDrawer()Z
.end method

.method public abstract getActionBarHeight()I
.end method

.method public abstract getView(Landroid/view/View;)Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract hasIndexBadge()Z
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract openDrawer()Z
.end method

.method public abstract resetIndexBadge()V
.end method

.method public abstract resetRightButton()V
.end method

.method public abstract scaleIndexBadge()V
.end method

.method public abstract setActionbarBg(Ljava/lang/String;)V
.end method

.method public abstract setActionbarBgColor(Ljava/lang/String;)V
.end method

.method public abstract setBackgroundTextStyle(Ljava/lang/String;)V
.end method

.method public abstract setData(ZLcom/taobao/windmill/bundle/container/core/AppInfoModel;Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;Lcom/taobao/windmill/bundle/container/router/WMLPageModel;)V
    .param p4    # Lcom/taobao/windmill/bundle/container/router/WMLPageModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setExtendStyle(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setLeftButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setLeftText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setOnBackClickListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setOnCloseClickListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setRightButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setRightText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setTitle(Ljava/lang/String;)V
.end method

.method public abstract setTitleIcon(Ljava/lang/String;)V
.end method

.method public abstract showActionbar(Z)V
.end method

.method public abstract showMenu(Z)V
.end method
