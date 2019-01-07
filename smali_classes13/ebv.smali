.class public final Lebv;
.super Lebs;
.source "OnlineVideoHandler.java"


# instance fields
.field b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

.field c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V
    .locals 0
    .param p1, "videoPlayInfo"    # Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;
    .param p2, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Lebs;-><init>()V

    .line 36
    iput-object p1, p0, Lebv;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    .line 37
    iput-object p2, p0, Lebv;->c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 38
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 59
    invoke-virtual {p0}, Lebv;->d()V

    .line 60
    iget-object v0, p0, Lebv;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lebv;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 66
    invoke-virtual {p0}, Lebv;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    new-instance v1, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;-><init>(Landroid/content/Context;)V

    .line 70
    .local v1, "menuAdapter":Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;
    new-instance v2, Lcng;

    const/4 v3, 0x5

    sget v4, Lctk$i;->dt_open_with_other_app:I

    invoke-direct {v2, v3, v4}, Lcng;-><init>(II)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Lcng;Z)V

    .line 71
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v2, p0, Lebv;->c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-direct {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 72
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    new-instance v2, Lebv$1;

    invoke-direct {v2, p0, v1}, Lebv$1;-><init>(Lebv;Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 92
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0
.end method

.method public final a(Landroid/widget/ImageView;)V
    .locals 6
    .param p1, "imageView"    # Landroid/widget/ImageView;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 43
    const-string/jumbo v1, "IMAGE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 1051
    .local v0, "im":Lcom/alibaba/doraemon/image/ImageMagician;
    iget-object v1, p0, Lebv;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    if-nez v1, :cond_1

    move-object v2, v3

    .line 45
    .local v2, "picUrl":Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    .line 46
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;Ljava/util/Map;Ljava/util/Map;)V

    .line 48
    :cond_0
    return-void

    .line 1054
    .end local v2    # "picUrl":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lebv;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getVideoPicUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public final b(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lebv;->a(Landroid/view/View;)V

    .line 111
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lebv;->c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lebv;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lebv;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    const/4 v0, 0x1

    .line 100
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public final f()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 150
    invoke-virtual {p0}, Lebv;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lebv;->c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v1, p0, Lebv;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lebr;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 153
    :cond_0
    invoke-virtual {p0}, Lebv;->e()V

    .line 154
    return-void
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public final h()Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 120
    invoke-virtual {p0}, Lebv;->b()Z

    move-result v6

    if-nez v6, :cond_1

    .line 121
    invoke-super {p0}, Lebs;->h()Z

    move-result v4

    .line 144
    :cond_0
    :goto_0
    return v4

    .line 125
    :cond_1
    iget-object v6, p0, Lebv;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getVideoUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ldjy;->c(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 127
    :try_start_0
    iget-object v6, p0, Lebv;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getVideoUrl()Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, "url":Ljava/lang/String;
    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 129
    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdObj(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;

    move-result-object v1

    .line 130
    .local v1, "mediaId":Lcom/laiwang/protocol/media/MediaId;
    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaId;->getWidth()I

    move-result v6

    if-lez v6, :cond_2

    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaId;->getHeight()I

    move-result v6

    if-lez v6, :cond_2

    .line 131
    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaId;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaId;->getHeight()I

    move-result v7

    if-gt v6, v7, :cond_0

    :cond_2
    move v4, v5

    goto :goto_0

    .line 133
    .end local v1    # "mediaId":Lcom/laiwang/protocol/media/MediaId;
    :cond_3
    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "mediaId":Ljava/lang/String;
    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdObj(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;

    move-result-object v2

    .line 135
    .local v2, "mediaIdObj":Lcom/laiwang/protocol/media/MediaId;
    invoke-virtual {v2}, Lcom/laiwang/protocol/media/MediaId;->getWidth()I

    move-result v6

    if-lez v6, :cond_4

    invoke-virtual {v2}, Lcom/laiwang/protocol/media/MediaId;->getHeight()I

    move-result v6

    if-lez v6, :cond_4

    .line 136
    invoke-virtual {v2}, Lcom/laiwang/protocol/media/MediaId;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Lcom/laiwang/protocol/media/MediaId;->getHeight()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-gt v6, v7, :cond_0

    :cond_4
    move v4, v5

    goto :goto_0

    .line 138
    .end local v1    # "mediaId":Ljava/lang/String;
    .end local v2    # "mediaIdObj":Lcom/laiwang/protocol/media/MediaId;
    .end local v3    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 139
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v4, v5

    .line 144
    goto :goto_0

    .line 142
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_5
    iget-object v4, p0, Lebv;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getVideoUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lebv;->a(Ljava/lang/String;Z)Z

    move-result v4

    goto :goto_0
.end method
