.class public final Lgfr;
.super Lgfu;
.source "AudioFilePreviewWebViewWrapper.java"


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 0
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lgfu;-><init>(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public final a(I)Z
    .locals 1
    .param p1, "newScreenOrientation"    # I

    .prologue
    .line 56
    invoke-super {p0, p1}, Lgfu;->a(I)Z

    .line 58
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 59
    sget v0, Lfzs$c;->uidic_global_color_6_5:I

    invoke-virtual {p0, v0}, Lgfr;->b(I)V

    .line 64
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 60
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 61
    sget v0, Lfzs$c;->uidic_global_color_6_6:I

    invoke-virtual {p0, v0}, Lgfr;->b(I)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/dingtalk/cspace/functions/preview/FilePreviewRootView;Landroid/view/View;Landroid/view/View;)Z
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "containerView"    # Lcom/alibaba/dingtalk/cspace/functions/preview/FilePreviewRootView;
    .param p3, "bottomView"    # Landroid/view/View;
    .param p4, "toolbarView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 25
    invoke-super {p0, p1, p2, p3, p4}, Lgfu;->a(Landroid/app/Activity;Lcom/alibaba/dingtalk/cspace/functions/preview/FilePreviewRootView;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    .line 27
    .local v0, "initSuccess":Z
    if-nez v0, :cond_1

    .line 41
    :cond_0
    :goto_0
    return v2

    .line 31
    :cond_1
    iget-object v3, p0, Lgfr;->b:Lcom/alibaba/dingtalk/cspace/functions/preview/FilePreviewRootView;

    if-eqz v3, :cond_0

    if-eqz p4, :cond_0

    if-eqz p3, :cond_0

    .line 36
    iget-object v2, p0, Lgfr;->e:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 37
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, 0x2

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 38
    const/4 v2, 0x3

    invoke-virtual {p4}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 39
    iget-object v2, p0, Lgfr;->e:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-virtual {v2, v1}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected final b()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method
