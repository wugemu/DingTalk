.class public final Lebu;
.super Lebs;
.source "NormalVideoHandler.java"


# instance fields
.field final b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field final c:Ljava/lang/String;

.field d:Ljava/io/File;

.field e:Z

.field private final f:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

.field private g:Z


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V
    .locals 1
    .param p1, "info"    # Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 47
    invoke-direct {p0}, Lebs;-><init>()V

    .line 48
    iput-object p1, p0, Lebu;->f:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    .line 49
    iput-object p2, p0, Lebu;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 50
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lebu;->c:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 128
    iget-object v2, p0, Lebu;->c:Ljava/lang/String;

    .line 129
    .local v2, "videoUrl":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 130
    invoke-virtual {p0}, Lebu;->e()V

    .line 172
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-static {}, Ldsf;->a()Ldsf;

    iget-object v3, p0, Lebu;->c:Ljava/lang/String;

    invoke-static {v3}, Ldsf;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 135
    iget-object v3, p0, Lebu;->c:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lebu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_1
    invoke-static {v2}, Ljav;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "fileName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    .line 3032
    const-string/jumbo v3, "video"

    invoke-static {v3}, Lebj;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 141
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 143
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v4}, Lebu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :cond_2
    invoke-virtual {p0}, Lebu;->d()V

    .line 148
    new-instance v3, Ljava/io/File;

    .line 4032
    const-string/jumbo v4, "video"

    invoke-static {v4}, Lebj;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 148
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lebu;->d:Ljava/io/File;

    .line 149
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v4

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v3

    new-instance v5, Lebu$2;

    invoke-direct {v5, p0}, Lebu$2;-><init>(Lebu;)V

    const-class v6, Lcma;

    iget-object v7, p0, Lebu;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-interface {v3, v5, v6, v7}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcma;

    invoke-virtual {v4, v2, v1, v3}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method public final a(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 96
    invoke-virtual {p0}, Lebu;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    new-instance v1, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;-><init>(Landroid/content/Context;)V

    .line 100
    .local v1, "menuAdapter":Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;
    new-instance v2, Lcng;

    const/4 v3, 0x5

    sget v4, Lctk$i;->dt_open_with_other_app:I

    invoke-direct {v2, v3, v4}, Lcng;-><init>(II)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Lcng;Z)V

    .line 101
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v2, p0, Lebu;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-direct {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 102
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    new-instance v2, Lebu$1;

    invoke-direct {v2, p0, v1}, Lebu$1;-><init>(Lebu;Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 122
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

    .line 60
    const-string/jumbo v1, "IMAGE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 1069
    .local v0, "im":Lcom/alibaba/doraemon/image/ImageMagician;
    iget-object v1, p0, Lebu;->f:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getVideoPicUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lebu;->f:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getVideoPicAuthUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Ldiq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 2065
    iget-object v1, p0, Lebu;->f:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getAuthType()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lebu;->f:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getAuthEntity()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lebu;->f:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getAuthCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5, v3}, Liaf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    move-object v1, p1

    move-object v5, v3

    .line 61
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;Ljava/util/Map;Ljava/util/Map;)V

    .line 62
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lebu;->a(Landroid/view/View;)V

    .line 56
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lebu;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lebu;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lebu;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 79
    iput-boolean v6, p0, Lebu;->g:Z

    .line 80
    invoke-static {}, Lebn;->a()Lebn;

    move-result-object v1

    iget-object v2, p0, Lebu;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lebn;->b(Ljava/lang/String;)V

    .line 81
    iget-boolean v1, p0, Lebu;->e:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lebu;->d:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lebu;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 83
    .local v0, "deleted":Z
    if-nez v0, :cond_0

    .line 84
    const-string/jumbo v1, "IM"

    const-string/jumbo v2, "NormalVideoHandler"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "delete file error: "

    aput-object v5, v3, v4

    iget-object v4, p0, Lebu;->d:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .end local v0    # "deleted":Z
    :cond_0
    return-void
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    return v0
.end method
