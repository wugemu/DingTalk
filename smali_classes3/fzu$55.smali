.class final Lfzu$55;
.super Lgqq;
.source "SpaceNavigator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfzu;->b(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;JJLjava/lang/String;Landroid/os/Bundle;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:J

.field final synthetic e:J

.field final synthetic f:Landroid/os/Bundle;

.field final synthetic g:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcma;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Landroid/content/Context;JJLandroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 863
    iput-object p1, p0, Lfzu$55;->a:Lcma;

    iput-object p2, p0, Lfzu$55;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iput-object p3, p0, Lfzu$55;->c:Landroid/content/Context;

    iput-wide p4, p0, Lfzu$55;->d:J

    iput-wide p6, p0, Lfzu$55;->e:J

    iput-object p8, p0, Lfzu$55;->f:Landroid/os/Bundle;

    iput-object p9, p0, Lfzu$55;->g:Ljava/lang/String;

    invoke-direct {p0}, Lgqq;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Void;)V
    .locals 21
    .param p1, "data"    # Ljava/lang/Void;

    .prologue
    .line 866
    move-object/from16 v0, p0

    iget-object v3, v0, Lfzu$55;->a:Lcma;

    if-eqz v3, :cond_0

    .line 867
    move-object/from16 v0, p0

    iget-object v3, v0, Lfzu$55;->a:Lcma;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 871
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lfzu$55;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    .line 872
    move-object/from16 v0, p0

    iget-object v3, v0, Lfzu$55;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-static {v3}, Lgoc;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v2

    .line 874
    .local v2, "model":Lcom/alibaba/alimei/cspace/model/DentryModel;
    move-object/from16 v0, p0

    iget-object v3, v0, Lfzu$55;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lfzu$55;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    invoke-static {v3, v4}, Lgpx;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    .line 875
    .local v20, "resId":I
    sget v3, Lfzs$e;->file_pic:I

    move/from16 v0, v20

    if-ne v0, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lfzu$55;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget v3, v3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->isEncrypt:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 877
    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLocalUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lhcs;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lfzu$55;->c:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-static {v3, v2}, Lfzu;->a(Landroid/app/Activity;Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 948
    :goto_0
    return-void

    .line 881
    :cond_1
    const-string/jumbo v3, "NAVIGATOR"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/navigator/Navigator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lfzu$55;->c:Landroid/content/Context;

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v3

    const-string/jumbo v4, "https://qr.dingtalk.com/space/pic_preview.html"

    .line 883
    invoke-static {}, Lfzu;->b()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lfzu$55$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v2}, Lfzu$55$1;-><init>(Lfzu$55;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 882
    invoke-interface {v3, v4, v5, v7}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    goto :goto_0

    .line 896
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lfzu$55;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->type:Ljava/lang/String;

    const-string/jumbo v4, "folder"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 897
    const/4 v6, 0x1

    .line 898
    .local v6, "spaceMode":I
    const/16 v18, 0x0

    .line 899
    .local v18, "path":Ljava/lang/String;
    const/4 v13, 0x0

    .line 900
    .local v13, "isSpaceAdmin":Z
    const/16 v16, -0x1

    .line 902
    .local v16, "spaceType":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lfzu$55;->f:Landroid/os/Bundle;

    if-eqz v3, :cond_4

    .line 903
    move-object/from16 v0, p0

    iget-object v3, v0, Lfzu$55;->f:Landroid/os/Bundle;

    const-string/jumbo v4, "space_preview_type"

    const-string/jumbo v5, "normal"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 905
    .local v19, "previewType":Ljava/lang/String;
    const-string/jumbo v3, "restrict"

    move-object/from16 v0, v19

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v6, 0x6

    .line 906
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lfzu$55;->f:Landroid/os/Bundle;

    const-string/jumbo v4, "is_space_admin"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "edit"

    move-object/from16 v0, v19

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_3
    const/4 v13, 0x1

    .line 908
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lfzu$55;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget v3, v3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceType:I

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lgqu;->a(IZ)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 909
    move-object/from16 v0, p0

    iget-object v3, v0, Lfzu$55;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget v0, v3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceType:I

    move/from16 v16, v0

    .line 914
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lfzu$55;->f:Landroid/os/Bundle;

    const-string/jumbo v4, "space_preview_path"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 917
    .end local v19    # "previewType":Ljava/lang/String;
    :cond_4
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 918
    move-object/from16 v0, p0

    iget-object v3, v0, Lfzu$55;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v0, v3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->path:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 921
    :cond_5
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string/jumbo v18, ""

    .end local v18    # "path":Ljava/lang/String;
    :cond_6
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

    .line 923
    .local v8, "pathInfo":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lfzu$55;->c:Landroid/content/Context;

    const-wide/16 v4, 0x0

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 924
    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    .line 923
    invoke-static/range {v3 .. v17}, Lfzu;->a(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ZZLjava/lang/String;Lcma;IZ)V

    goto/16 :goto_0

    .line 905
    .end local v8    # "pathInfo":Ljava/lang/String;
    .restart local v18    # "path":Ljava/lang/String;
    .restart local v19    # "previewType":Ljava/lang/String;
    :cond_7
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 906
    :cond_8
    const/4 v13, 0x0

    goto :goto_2

    .line 911
    :cond_9
    if-eqz v13, :cond_a

    const/16 v16, 0x2

    goto :goto_3

    :cond_a
    const/16 v16, -0x1

    goto :goto_3

    .line 927
    .end local v6    # "spaceMode":I
    .end local v13    # "isSpaceAdmin":Z
    .end local v16    # "spaceType":I
    .end local v18    # "path":Ljava/lang/String;
    .end local v19    # "previewType":Ljava/lang/String;
    :cond_b
    invoke-static {v2}, Lgpx;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 928
    move-object/from16 v0, p0

    iget-object v3, v0, Lfzu$55;->c:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lfzu;->a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;Z)V

    goto/16 :goto_0

    .line 932
    :cond_c
    const-string/jumbo v3, "NAVIGATOR"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/navigator/Navigator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lfzu$55;->c:Landroid/content/Context;

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v3

    const-string/jumbo v4, "https://qr.dingtalk.com/space/preview.html"

    .line 934
    invoke-static {}, Lfzu;->b()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lfzu$55$2;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v2}, Lfzu$55$2;-><init>(Lfzu$55;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 933
    invoke-interface {v3, v4, v5, v7}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    goto/16 :goto_0
.end method

.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 863
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfzu$55;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 956
    iget-object v0, p0, Lfzu$55;->a:Lcma;

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Lfzu$55;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 952
    return-void
.end method
