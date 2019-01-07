.class final Lfzu$54;
.super Lgqq;
.source "SpaceNavigator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfzu;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;JJLjava/lang/String;Landroid/os/Bundle;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

.field final synthetic c:Landroid/os/Bundle;

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:J

.field final synthetic f:J

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:J


# direct methods
.method constructor <init>(Lcma;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Landroid/os/Bundle;Landroid/content/Context;JJLjava/lang/String;J)V
    .locals 1

    .prologue
    .line 715
    iput-object p1, p0, Lfzu$54;->a:Lcma;

    iput-object p2, p0, Lfzu$54;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iput-object p3, p0, Lfzu$54;->c:Landroid/os/Bundle;

    iput-object p4, p0, Lfzu$54;->d:Landroid/content/Context;

    iput-wide p5, p0, Lfzu$54;->e:J

    iput-wide p7, p0, Lfzu$54;->f:J

    iput-object p9, p0, Lfzu$54;->g:Ljava/lang/String;

    iput-wide p10, p0, Lfzu$54;->h:J

    invoke-direct {p0}, Lgqq;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Void;)V
    .locals 21
    .param p1, "data"    # Ljava/lang/Void;

    .prologue
    .line 718
    move-object/from16 v0, p0

    iget-object v3, v0, Lfzu$54;->a:Lcma;

    if-eqz v3, :cond_0

    .line 719
    move-object/from16 v0, p0

    iget-object v3, v0, Lfzu$54;->a:Lcma;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 722
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lfzu$54;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-static {v3}, Lgoc;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v2

    .line 724
    .local v2, "model":Lcom/alibaba/alimei/cspace/model/DentryModel;
    move-object/from16 v0, p0

    iget-object v3, v0, Lfzu$54;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lfzu$54;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    invoke-static {v3, v4}, Lgpx;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    .line 725
    .local v20, "resId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lfzu$54;->c:Landroid/os/Bundle;

    const-string/jumbo v4, "space_preview_type"

    const-string/jumbo v5, "normal"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 727
    .local v19, "previewType":Ljava/lang/String;
    const-string/jumbo v3, "revise"

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lfzu$54;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    invoke-static {v3}, Lgpx;->k(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 728
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->a()Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lfzu$54;->d:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lfzu$54;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    new-instance v7, Lfzu$54$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lfzu$54$1;-><init>(Lfzu$54;)V

    .line 1108
    const/4 v9, 0x0

    invoke-virtual {v3, v4, v5, v9, v7}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lgob;Lcma;)V

    .line 822
    :cond_1
    :goto_0
    return-void

    .line 758
    :cond_2
    sget v3, Lfzs$e;->file_pic:I

    move/from16 v0, v20

    if-ne v0, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lfzu$54;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget v3, v3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->isEncrypt:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    .line 759
    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLocalUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lhcs;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lfzu$54;->d:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-static {v3, v2}, Lfzu;->a(Landroid/app/Activity;Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 764
    :cond_3
    const-string/jumbo v3, "NAVIGATOR"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/navigator/Navigator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lfzu$54;->d:Landroid/content/Context;

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v3

    const-string/jumbo v4, "https://qr.dingtalk.com/space/pic_preview.html"

    .line 766
    invoke-static {}, Lfzu;->b()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lfzu$54$2;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v2}, Lfzu$54$2;-><init>(Lfzu$54;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 765
    invoke-interface {v3, v4, v5, v7}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    goto :goto_0

    .line 778
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lfzu$54;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->type:Ljava/lang/String;

    const-string/jumbo v4, "folder"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 779
    move-object/from16 v0, p0

    iget-object v3, v0, Lfzu$54;->c:Landroid/os/Bundle;

    const-string/jumbo v4, "space_preview_path"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 781
    .local v18, "path":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 782
    move-object/from16 v0, p0

    iget-object v3, v0, Lfzu$54;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v0, v3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->path:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 785
    :cond_5
    const-string/jumbo v3, "restrict"

    move-object/from16 v0, v19

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v6, 0x6

    .line 787
    .local v6, "spaceMode":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lfzu$54;->c:Landroid/os/Bundle;

    const-string/jumbo v4, "is_space_admin"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string/jumbo v3, "edit"

    move-object/from16 v0, v19

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_6
    const/4 v13, 0x1

    .line 790
    .local v13, "isSpaceAdmin":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lfzu$54;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget v3, v3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceType:I

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lgqu;->a(IZ)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 791
    move-object/from16 v0, p0

    iget-object v3, v0, Lfzu$54;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget v0, v3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceType:I

    move/from16 v16, v0

    .line 796
    .local v16, "spaceType":I
    :goto_3
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string/jumbo v18, ""

    .end local v18    # "path":Ljava/lang/String;
    :cond_7
    aput-object v18, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "_"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 798
    .local v8, "pathInfo":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lfzu$54;->d:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lfzu$54;->h:J

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    invoke-static/range {v3 .. v17}, Lfzu;->a(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ZZLjava/lang/String;Lcma;IZ)V

    goto/16 :goto_0

    .line 785
    .end local v6    # "spaceMode":I
    .end local v8    # "pathInfo":Ljava/lang/String;
    .end local v13    # "isSpaceAdmin":Z
    .end local v16    # "spaceType":I
    .restart local v18    # "path":Ljava/lang/String;
    :cond_8
    const/4 v6, 0x1

    goto :goto_1

    .line 787
    .restart local v6    # "spaceMode":I
    :cond_9
    const/4 v13, 0x0

    goto :goto_2

    .line 793
    .restart local v13    # "isSpaceAdmin":Z
    :cond_a
    if-eqz v13, :cond_b

    const/16 v16, 0x2

    goto :goto_3

    :cond_b
    const/16 v16, -0x1

    goto :goto_3

    .line 801
    .end local v6    # "spaceMode":I
    .end local v13    # "isSpaceAdmin":Z
    .end local v18    # "path":Ljava/lang/String;
    :cond_c
    invoke-static {v2}, Lgpx;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 802
    move-object/from16 v0, p0

    iget-object v3, v0, Lfzu$54;->d:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lfzu;->a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;Z)V

    goto/16 :goto_0

    .line 806
    :cond_d
    const-string/jumbo v3, "NAVIGATOR"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/navigator/Navigator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lfzu$54;->d:Landroid/content/Context;

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v3

    const-string/jumbo v4, "https://qr.dingtalk.com/space/preview.html"

    .line 808
    invoke-static {}, Lfzu;->b()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lfzu$54$3;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v2}, Lfzu$54$3;-><init>(Lfzu$54;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 807
    invoke-interface {v3, v4, v5, v7}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    goto/16 :goto_0
.end method

.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 715
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfzu$54;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 831
    iget-object v0, p0, Lfzu$54;->a:Lcma;

    if-eqz v0, :cond_0

    .line 832
    iget-object v0, p0, Lfzu$54;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lfzu$54;->d:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/space/no_auth.html"

    .line 837
    invoke-static {}, Lfzu;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lfzu$54$4;

    invoke-direct {v3, p0}, Lfzu$54$4;-><init>(Lfzu$54;)V

    .line 836
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    .line 846
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 827
    return-void
.end method
