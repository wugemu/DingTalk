.class public final Lebw;
.super Lebs;
.source "TinyVideoPreHandler.java"


# instance fields
.field b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

.field c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field d:Z

.field e:Ljava/lang/String;

.field private f:J


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V
    .locals 2
    .param p1, "videoPlayInfo"    # Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;
    .param p2, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lebs;-><init>()V

    .line 53
    iput-object p1, p0, Lebw;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    .line 54
    iput-object p2, p0, Lebw;->c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lebw;->f:J

    .line 56
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 66
    invoke-virtual {p0}, Lebw;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lebw;->e()V

    .line 98
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lebw;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getVideoAuthUrl()Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "authUrl":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {p0}, Lebw;->e()V

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p0}, Lebw;->d()V

    .line 76
    invoke-static {}, Ldsf;->a()Ldsf;

    invoke-static {v3}, Ldsf;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    invoke-virtual {p0, v3, v5}, Lebw;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2236
    :cond_2
    iget-object v0, p0, Lebw;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    if-eqz v0, :cond_3

    .line 2237
    iget-object v0, p0, Lebw;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getAuthType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lebw;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getAuthEntity()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lebw;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getAuthCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v5}, Liaf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 80
    .local v4, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    invoke-static {}, Ldsf;->a()Ldsf;

    move-result-object v1

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    iget-wide v6, p0, Lebw;->f:J

    iget-object v0, p0, Lebw;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getVideoSize()J

    move-result-wide v8

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v10, Lebw$1;

    invoke-direct {v10, p0}, Lebw$1;-><init>(Lebw;)V

    const-class v11, Ldsf$a;

    iget-object v12, p0, Lebw;->c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-interface {v0, v10, v11, v12}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ldsf$a;

    invoke-virtual/range {v1 .. v10}, Ldsf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;JJLdsf$a;)V

    goto :goto_0

    .end local v4    # "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    move-object v4, v5

    .line 2239
    goto :goto_1
.end method

.method public final a(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 102
    invoke-virtual {p0}, Lebw;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    new-instance v1, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;-><init>(Landroid/content/Context;)V

    .line 107
    .local v1, "menuAdapter":Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;
    iget-object v2, p0, Lebw;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->isHideForward()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lebw;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getMessageId()J

    move-result-wide v2

    cmp-long v2, v2, v8

    if-gtz v2, :cond_2

    iget-object v2, p0, Lebw;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    .line 108
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getVideoMessageObject()Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 109
    :cond_2
    new-instance v2, Lcng;

    sget v3, Lctk$i;->chat_menu_forward:I

    invoke-direct {v2, v6, v3}, Lcng;-><init>(II)V

    invoke-virtual {v1, v2, v5}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Lcng;Z)V

    .line 111
    :cond_3
    iget-object v2, p0, Lebw;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getMessageId()J

    move-result-wide v2

    cmp-long v2, v2, v8

    if-lez v2, :cond_4

    .line 112
    new-instance v2, Lcng;

    const/4 v3, 0x2

    sget v4, Lctk$i;->chat_menu_favorite:I

    invoke-direct {v2, v3, v4}, Lcng;-><init>(II)V

    invoke-virtual {v1, v2, v5}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Lcng;Z)V

    .line 114
    :cond_4
    new-instance v2, Lcng;

    const/4 v3, 0x3

    sget v4, Lctk$i;->space_save:I

    invoke-direct {v2, v3, v4}, Lcng;-><init>(II)V

    invoke-virtual {v1, v2, v5}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Lcng;Z)V

    .line 115
    new-instance v2, Lcng;

    const/4 v3, 0x4

    sget v4, Lctk$i;->save_to_phone:I

    invoke-direct {v2, v3, v4}, Lcng;-><init>(II)V

    invoke-virtual {v1, v2, v5}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Lcng;Z)V

    .line 117
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 118
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v2, p0, Lebw;->c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-direct {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 119
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    new-instance v2, Lebw$2;

    invoke-direct {v2, p0, v1}, Lebw$2;-><init>(Lebw;Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 192
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

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

    .line 60
    const-string/jumbo v1, "IMAGE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 1229
    .local v0, "im":Lcom/alibaba/doraemon/image/ImageMagician;
    iget-object v1, p0, Lebw;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    if-nez v1, :cond_0

    move-object v2, v3

    .line 1243
    :goto_0
    iget-object v1, p0, Lebw;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    if-eqz v1, :cond_1

    .line 1244
    iget-object v1, p0, Lebw;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getAuthType()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lebw;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getAuthEntity()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lebw;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getAuthCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5, v3}, Liaf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    :goto_1
    move-object v1, p1

    move-object v5, v3

    .line 61
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;Ljava/util/Map;Ljava/util/Map;)V

    .line 62
    return-void

    .line 1232
    :cond_0
    iget-object v1, p0, Lebw;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getVideoPicUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lebw;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getVideoPicAuthUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Ldiq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v4, v3

    .line 1246
    goto :goto_1
.end method

.method public final b(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 204
    invoke-virtual {p0, p1}, Lebw;->a(Landroid/view/View;)V

    .line 205
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lebw;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lebw;->c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lebw;->c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lebw;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lebw;->d:Z

    .line 216
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lebw;->a(Lebs$a;)V

    .line 217
    invoke-static {}, Ldsf;->a()Ldsf;

    move-result-object v0

    iget-object v1, p0, Lebw;->c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {p0}, Lebw;->i()Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p0, Lebw;->f:J

    invoke-virtual {v0, v1, v2, v4, v5}, Ldsf;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 218
    invoke-static {}, Ldsf;->a()Ldsf;

    move-result-object v0

    invoke-virtual {v0}, Ldsf;->c()V

    .line 219
    return-void
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x1

    return v0
.end method

.method public final h()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 263
    invoke-virtual {p0}, Lebw;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lebw;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getVideoWidth()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lebw;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getVideoHeight()I

    move-result v0

    if-lez v0, :cond_1

    .line 265
    iget-object v0, p0, Lebw;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getVideoWidth()I

    move-result v0

    iget-object v1, p0, Lebw;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getVideoHeight()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 268
    :goto_0
    return v0

    .line 265
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 268
    :cond_1
    invoke-super {p0}, Lebs;->h()Z

    move-result v0

    goto :goto_0
.end method

.method i()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 222
    iget-object v1, p0, Lebw;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    if-nez v1, :cond_0

    .line 225
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lebw;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lebw;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getVideoAuthUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Ldiq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
