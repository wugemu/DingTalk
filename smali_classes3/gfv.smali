.class public final Lgfv;
.super Lgfu;
.source "VideoFilePreviewWebViewWrapper.java"


# instance fields
.field private o:Landroid/widget/ImageView;

.field private p:I

.field private final q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/cspace/model/DentryModel;I)V
    .locals 1
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p2, "urlType"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lgfu;-><init>(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 37
    const-string/jumbo v0, "VideoFilePreviewWebViewWrapper"

    iput-object v0, p0, Lgfv;->q:Ljava/lang/String;

    .line 42
    iput p2, p0, Lgfv;->p:I

    .line 43
    return-void
.end method

.method static synthetic a(Lgfv;F)Z
    .locals 3
    .param p0, "x0"    # Lgfv;
    .param p1, "x1"    # F

    .prologue
    const/4 v0, 0x0

    .line 33
    .line 2236
    iget-object v1, p0, Lgfv;->d:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgfv;->c:Landroid/view/View;

    if-nez v1, :cond_1

    .line 2245
    :cond_0
    :goto_0
    return v0

    .line 2240
    :cond_1
    iget-object v1, p0, Lgfv;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lgfv;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 2244
    iget-object v1, p0, Lgfv;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v2, p0, Lgfv;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpg-float v1, p1, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lgfv;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    cmpl-float v1, p1, v1

    if-gez v1, :cond_0

    .line 2248
    const/4 v0, 0x1

    .line 33
    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 182
    iget-object v0, p0, Lgfv;->b:Lcom/alibaba/dingtalk/cspace/functions/preview/FilePreviewRootView;

    if-eqz v0, :cond_0

    iget v0, p0, Lgfv;->p:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    iget-object v0, p0, Lgfv;->b:Lcom/alibaba/dingtalk/cspace/functions/preview/FilePreviewRootView;

    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lgfv;->a:Landroid/app/Activity;

    new-instance v3, Lgfv$3;

    invoke-direct {v3, p0}, Lgfv$3;-><init>(Lgfv;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/functions/preview/FilePreviewRootView;->setGestureDetector(Landroid/view/GestureDetector;)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;Landroid/view/View;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "previewUrl"    # Ljava/lang/String;
    .param p3, "baseInfoView"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;
    .param p4, "baseInfoRootView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 93
    :try_start_0
    invoke-static {}, Lcom/laiwang/protocol/android/LWP;->getSessionId()Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "sid":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 96
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "dd_sid="

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "; HttpOnly; secure"

    aput-object v5, v3, v4

    invoke-static {v3}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "cookieStr":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    const-string/jumbo v4, "https://preview.dingtalk.com"

    invoke-virtual {v3, v4, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    const-string/jumbo v4, "https://pre-preview.dingtalk.com"

    invoke-virtual {v3, v4, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v0    # "cookieStr":Ljava/lang/String;
    .end local v2    # "sid":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lgfu;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;Landroid/view/View;)V

    .line 109
    return-void

    .line 101
    :catch_0
    move-exception v1

    .line 102
    .local v1, "exception":Ljava/lang/Exception;
    const-string/jumbo v3, "CSpace"

    const-string/jumbo v4, "VideoFilePreviewWebViewWrapper"

    new-array v5, v6, [Ljava/lang/String;

    const-string/jumbo v6, "video file preview: "

    aput-object v6, v5, v7

    aput-object p2, v5, v8

    .line 103
    invoke-static {v5}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    const-string/jumbo v7, "set cookie failed"

    .line 102
    invoke-static {v5, v6, v7, v1}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(I)Z
    .locals 3
    .param p1, "newScreenOrientation"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x1

    .line 163
    invoke-super {p0, p1}, Lgfu;->a(I)Z

    .line 166
    sget v0, Lfzs$c;->uidic_global_color_6_6:I

    invoke-virtual {p0, v0}, Lgfv;->b(I)V

    .line 168
    if-ne p1, v2, :cond_0

    .line 169
    iget-object v0, p0, Lgfv;->o:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 177
    :goto_0
    return v2

    .line 171
    :cond_0
    iget-object v0, p0, Lgfv;->c:Landroid/view/View;

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 172
    iget-object v0, p0, Lgfv;->d:Landroid/view/View;

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 173
    iget-object v0, p0, Lgfv;->o:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 174
    iget-object v0, p0, Lgfv;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/dingtalk/cspace/functions/preview/FilePreviewRootView;Landroid/view/View;Landroid/view/View;)Z
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "containerView"    # Lcom/alibaba/dingtalk/cspace/functions/preview/FilePreviewRootView;
    .param p3, "bottomView"    # Landroid/view/View;
    .param p4, "toolbarView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v9, -0x2

    const/4 v5, 0x0

    .line 47
    invoke-super {p0, p1, p2, p3, p4}, Lgfu;->a(Landroid/app/Activity;Lcom/alibaba/dingtalk/cspace/functions/preview/FilePreviewRootView;Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    .line 49
    .local v1, "initSuccess":Z
    if-nez v1, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v5

    .line 53
    :cond_1
    iget-object v6, p0, Lgfv;->b:Lcom/alibaba/dingtalk/cspace/functions/preview/FilePreviewRootView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lgfv;->e:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    if-eqz v6, :cond_0

    .line 57
    new-instance v0, Lecw;

    iget-object v6, p0, Lgfv;->a:Landroid/app/Activity;

    sget v7, Lfzs$h;->icon_minimize:I

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lgfv;->a:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lfzs$c;->ui_common_white_icon_bg:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {v0, v6, v7}, Lecw;-><init>(Ljava/lang/String;I)V

    .line 58
    .local v0, "exitFullScreenDrawable":Lecw;
    iget-object v6, p0, Lgfv;->a:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lfzs$d;->space_video_online_preview_exit_full_screen_icon_size:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v4, v6

    .line 1079
    .local v4, "size":I
    iput v4, v0, Lecw;->b:I

    .line 2070
    iput v4, v0, Lecw;->a:I

    .line 62
    new-instance v6, Landroid/widget/ImageView;

    iget-object v7, p0, Lgfv;->a:Landroid/app/Activity;

    invoke-direct {v6, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lgfv;->o:Landroid/widget/ImageView;

    .line 63
    iget-object v6, p0, Lgfv;->o:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    iget-object v6, p0, Lgfv;->o:Landroid/widget/ImageView;

    new-instance v7, Lgfv$1;

    invoke-direct {v7, p0}, Lgfv$1;-><init>(Lgfv;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 72
    .local v2, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xa

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 73
    const/16 v6, 0x9

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 74
    iget-object v6, p0, Lgfv;->a:Landroid/app/Activity;

    .line 75
    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lfzs$d;->space_video_online_preview_exit_full_screen_icon_margin_left:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iget-object v7, p0, Lgfv;->a:Landroid/app/Activity;

    .line 76
    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lfzs$d;->space_video_online_preview_exit_full_screen_icon_margin_top:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    .line 74
    invoke-virtual {v2, v6, v7, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 78
    iget-object v5, p0, Lgfv;->a:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lfzs$d;->space_video_online_preview_exit_full_screen_icon_padding:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v3, v5

    .line 79
    .local v3, "padding":I
    iget-object v5, p0, Lgfv;->o:Landroid/widget/ImageView;

    invoke-virtual {v5, v3, v3, v3, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 81
    iget-object v5, p0, Lgfv;->b:Lcom/alibaba/dingtalk/cspace/functions/preview/FilePreviewRootView;

    iget-object v6, p0, Lgfv;->o:Landroid/widget/ImageView;

    invoke-virtual {v5, v6, v2}, Lcom/alibaba/dingtalk/cspace/functions/preview/FilePreviewRootView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    iget-object v5, p0, Lgfv;->o:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    const/4 v5, 0x1

    goto/16 :goto_0
.end method

.method protected final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 113
    iget v0, p0, Lgfv;->p:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 127
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lgfv$2;

    invoke-direct {v1, p0}, Lgfv$2;-><init>(Lgfv;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected final i()V
    .locals 0

    .prologue
    .line 131
    invoke-super {p0}, Lgfu;->i()V

    .line 132
    return-void
.end method

.method protected final j()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 136
    invoke-super {p0}, Lgfu;->j()V

    .line 138
    sget v0, Lfzs$c;->uidic_global_color_6_6:I

    invoke-virtual {p0, v0}, Lgfv;->b(I)V

    .line 139
    iget-object v0, p0, Lgfv;->o:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 140
    return-void
.end method

.method protected final k()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 144
    invoke-super {p0}, Lgfu;->k()V

    .line 146
    sget v0, Lfzs$c;->uidic_global_color_6_5:I

    invoke-virtual {p0, v0}, Lgfv;->b(I)V

    .line 147
    iget-object v0, p0, Lgfv;->o:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 148
    return-void
.end method

.method protected final l()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 152
    invoke-super {p0}, Lgfu;->l()V

    .line 153
    iget-object v0, p0, Lgfv;->o:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 154
    return-void
.end method
