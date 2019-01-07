.class final Lgpk$1;
.super Ljava/lang/Object;
.source "ActivityUtils.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgpk;->a(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel$AlbumSize;Lcom/alibaba/doraemon/image/ImageMagician;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lgrh;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;

.field final synthetic d:Landroid/widget/TextView;

.field final synthetic e:Lcom/alibaba/doraemon/image/ImageMagician;

.field final synthetic f:Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel$AlbumSize;

.field final synthetic g:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;Landroid/widget/TextView;Lcom/alibaba/doraemon/image/ImageMagician;Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel$AlbumSize;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lgpk$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lgpk$1;->b:Landroid/widget/ImageView;

    iput-object p3, p0, Lgpk$1;->c:Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;

    iput-object p4, p0, Lgpk$1;->d:Landroid/widget/TextView;

    iput-object p5, p0, Lgpk$1;->e:Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object p6, p0, Lgpk$1;->f:Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel$AlbumSize;

    iput-object p7, p0, Lgpk$1;->g:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 171
    check-cast p1, Lgrh;

    .line 1174
    iget-object v0, p0, Lgpk$1;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgpk$1;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1178
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lgpk$1;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v2, p1, Lgrh;->j:Ljava/lang/String;

    iget-object v0, p0, Lgpk$1;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1179
    :cond_1
    :goto_0
    return-void

    .line 1182
    :cond_2
    iget-object v0, p0, Lgpk$1;->c:Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;

    iget-object v2, p1, Lgrh;->c:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;->f:Ljava/lang/String;

    .line 1183
    iget-object v0, p0, Lgpk$1;->c:Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;

    iget-wide v2, p1, Lgrh;->a:J

    iput-wide v2, v0, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;->g:J

    .line 1185
    iget-object v0, p0, Lgpk$1;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 1186
    iget-object v0, p0, Lgpk$1;->d:Landroid/widget/TextView;

    iget-wide v2, p1, Lgrh;->a:J

    invoke-static {v2, v3}, Lgqh;->e(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1189
    :cond_3
    iget-object v0, p1, Lgrh;->c:Ljava/lang/String;

    .line 1190
    iget-object v3, p1, Lgrh;->d:Ljava/lang/String;

    .line 1192
    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1198
    :try_start_0
    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->convertToUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    .line 1203
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1204
    const-string/jumbo v0, "DINGDRIVE"

    .line 1205
    invoke-static {}, Lgqc;->a()Lgqc;

    move-result-object v4

    iget-object v5, p0, Lgpk$1;->c:Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;

    iget-object v5, v5, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;->b:Ljava/lang/String;

    iget-object v6, p0, Lgpk$1;->c:Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;

    iget-object v6, v6, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;->c:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lgqc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1204
    invoke-static {v0, v4, v3, v1}, Liaf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 1206
    iget-object v0, p0, Lgpk$1;->e:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Lgpk$1;->b:Landroid/widget/ImageView;

    invoke-static {}, Lgqc;->a()Lgqc;

    iget-object v3, p0, Lgpk$1;->f:Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel$AlbumSize;

    invoke-static {v2, v3}, Lgqc;->a(Ljava/lang/String;Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel$AlbumSize;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lgpk$1;->g:Landroid/view/View;

    check-cast v3, Landroid/widget/AbsListView;

    iget-object v5, p0, Lgpk$1;->c:Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;

    iget-object v5, v5, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;->j:Ljava/util/Map;

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0

    .line 1199
    :catch_0
    move-exception v0

    .line 1200
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v1

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 217
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "ActivityUtils"

    const-string/jumbo v2, "setSpaceAlbumView"

    const/4 v3, 0x0

    invoke-static {v2, p1, p2, v3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 213
    return-void
.end method
