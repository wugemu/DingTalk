.class public final Lebt;
.super Lebs;
.source "LocalVideoPreHandler.java"


# instance fields
.field b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

.field c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V
    .locals 0
    .param p1, "videoPlayInfo"    # Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;
    .param p2, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .prologue
    .line 44
    invoke-direct {p0}, Lebs;-><init>()V

    .line 45
    iput-object p1, p0, Lebt;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    .line 46
    iput-object p2, p0, Lebt;->c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 47
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 65
    invoke-virtual {p0}, Lebt;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lebt;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lebt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-virtual {p0}, Lebt;->e()V

    goto :goto_0
.end method

.method public final a(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 74
    invoke-virtual {p0}, Lebt;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    new-instance v1, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;-><init>(Landroid/content/Context;)V

    .line 78
    .local v1, "menuAdapter":Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;
    new-instance v2, Lcng;

    const/4 v3, 0x4

    sget v4, Lctk$i;->save_to_phone:I

    invoke-direct {v2, v3, v4}, Lcng;-><init>(II)V

    invoke-virtual {v1, v2, v5}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Lcng;Z)V

    .line 79
    new-instance v2, Lcng;

    const/4 v3, 0x5

    sget v4, Lctk$i;->dt_open_with_other_app:I

    invoke-direct {v2, v3, v4}, Lcng;-><init>(II)V

    invoke-virtual {v1, v2, v5}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Lcng;Z)V

    .line 80
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v2, p0, Lebt;->c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-direct {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 81
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    new-instance v2, Lebt$1;

    invoke-direct {v2, p0, v1}, Lebt$1;-><init>(Lebt;Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 104
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

    .line 51
    invoke-virtual {p0}, Lebt;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    const/4 v2, 0x0

    .line 53
    .local v2, "picUrl":Ljava/lang/String;
    iget-object v1, p0, Lebt;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    if-eqz v1, :cond_0

    .line 54
    iget-object v1, p0, Lebt;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getVideoPicUrl()Ljava/lang/String;

    move-result-object v2

    .line 56
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 57
    const-string/jumbo v1, "IMAGE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .local v0, "im":Lcom/alibaba/doraemon/image/ImageMagician;
    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    .line 58
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;Ljava/util/Map;Ljava/util/Map;)V

    .line 61
    .end local v0    # "im":Lcom/alibaba/doraemon/image/ImageMagician;
    .end local v2    # "picUrl":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lebt;->a(Landroid/view/View;)V

    .line 132
    return-void
.end method

.method public final b()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 110
    iget-object v0, p0, Lebt;->c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lebt;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lebt;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    .line 111
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lebt;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    .line 112
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lebt;->a(Lebs$a;)V

    .line 118
    return-void
.end method

.method public final f()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 123
    invoke-virtual {p0}, Lebt;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lebt;->c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v1, p0, Lebt;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lebr;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 126
    :cond_0
    invoke-virtual {p0}, Lebt;->e()V

    .line 127
    return-void
.end method

.method public final h()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 136
    invoke-virtual {p0}, Lebt;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    invoke-super {p0}, Lebs;->h()Z

    move-result v0

    .line 144
    :goto_0
    return v0

    .line 139
    :cond_0
    iget-boolean v0, p0, Lebt;->d:Z

    if-eqz v0, :cond_1

    .line 140
    iget-boolean v0, p0, Lebt;->e:Z

    goto :goto_0

    .line 142
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lebt;->d:Z

    .line 143
    iget-object v0, p0, Lebt;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lebt;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lebt;->e:Z

    .line 144
    iget-boolean v0, p0, Lebt;->e:Z

    goto :goto_0
.end method
