.class final Lggk$1;
.super Ljava/lang/Object;
.source "ImagesRecentViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lggk;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lggk;


# direct methods
.method constructor <init>(Lggk;)V
    .locals 0
    .param p1, "this$0"    # Lggk;

    .prologue
    .line 67
    iput-object p1, p0, Lggk$1;->a:Lggk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v11, 0x0

    .line 70
    instance-of v10, p1, Lgfz;

    if-eqz v10, :cond_0

    .line 71
    iget-object v10, p0, Lggk$1;->a:Lggk;

    .line 1044
    iget-object v8, v10, Lggk;->g:Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    .line 72
    .local v8, "model":Lcom/alibaba/alimei/cspace/model/RecentOperationModel;
    if-eqz v8, :cond_0

    iget-object v10, v8, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->fileList:Ljava/util/List;

    if-nez v10, :cond_1

    .line 143
    .end local v8    # "model":Lcom/alibaba/alimei/cspace/model/RecentOperationModel;
    :cond_0
    :goto_0
    return-void

    .restart local v8    # "model":Lcom/alibaba/alimei/cspace/model/RecentOperationModel;
    :cond_1
    move-object v6, p1

    .line 75
    check-cast v6, Lgfz;

    .line 76
    .local v6, "frameView":Lgfz;
    iget-object v4, v8, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->fileList:Ljava/util/List;

    .line 77
    .local v4, "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/RecentDentryModel;>;"
    if-nez v4, :cond_2

    const/4 v5, 0x0

    .line 78
    .local v5, "fileSize":I
    :goto_1
    iget v10, v6, Lgfz;->b:I

    iget v12, v6, Lgfz;->a:I

    add-int v3, v10, v12

    .line 79
    .local v3, "fileIndex":I
    if-lez v5, :cond_0

    if-gt v3, v5, :cond_0

    .line 82
    iget-boolean v10, v6, Lgfz;->c:Z

    if-eqz v10, :cond_3

    iget v10, v6, Lgfz;->a:I

    add-int/lit8 v10, v10, 0x1

    const/4 v12, 0x4

    if-ne v10, v12, :cond_3

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lggk$1;->a:Lggk;

    .line 2044
    iget-object v11, v11, Lggk;->h:Ljava/lang/String;

    .line 83
    iget-object v12, p0, Lggk$1;->a:Lggk;

    .line 3044
    iget-object v12, v12, Lggk;->g:Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    .line 83
    invoke-static {v10, v11, v12}, Lggc;->a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/RecentOperationModel;)V

    goto :goto_0

    .line 77
    .end local v3    # "fileIndex":I
    .end local v5    # "fileSize":I
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_1

    .line 85
    .restart local v3    # "fileIndex":I
    .restart local v5    # "fileSize":I
    :cond_3
    iget-object v10, p0, Lggk$1;->a:Lggk;

    .line 4044
    iget-object v10, v10, Lggk;->f:Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;

    .line 85
    iget-object v12, p0, Lggk$1;->a:Lggk;

    .line 5044
    iget-object v12, v12, Lggk;->h:Ljava/lang/String;

    .line 85
    iget-object v13, p0, Lggk$1;->a:Lggk;

    .line 6044
    iget-object v13, v13, Lggk;->g:Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    .line 85
    invoke-virtual {v10, v12, v11, v13}, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;->setRecentOperationModel(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/RecentOperationModel;)V

    .line 86
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;

    .line 87
    .local v1, "currentDentryModel":Lcom/alibaba/alimei/cspace/model/RecentDentryModel;
    invoke-static {}, Lgfw;->b()Lgfw;

    move-result-object v7

    .line 89
    .local v7, "instance":Lgfw;
    if-eqz v7, :cond_4

    .line 90
    invoke-virtual {v7, v1}, Lgfw;->a(Lcom/alibaba/alimei/cspace/model/RecentDentryModel;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 91
    sget v10, Lfzs$h;->space_recent_file_has_deleted:I

    invoke-static {v10}, Lcms;->a(I)V

    goto :goto_0

    .line 95
    :cond_4
    iget-object v10, p0, Lggk$1;->a:Lggk;

    .line 7044
    iget-object v10, v10, Lggk;->f:Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;

    .line 95
    iget-object v10, v10, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;->mAccessToken:Ljava/lang/String;

    invoke-static {v10, v1}, Lgoc;->a(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/RecentDentryModel;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-result-object v9

    .line 96
    .local v9, "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    if-eqz v9, :cond_0

    .line 99
    iget-object v10, p0, Lggk$1;->a:Lggk;

    iget-object v10, v10, Lggk;->d:Landroid/app/Activity;

    instance-of v10, v10, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v10, :cond_6

    iget-object v10, p0, Lggk$1;->a:Lggk;

    iget-object v10, v10, Lggk;->d:Landroid/app/Activity;

    check-cast v10, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    move-object v2, v10

    .line 100
    .local v2, "dingtalkBaseActivity":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    :goto_2
    if-eqz v2, :cond_5

    .line 101
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 104
    :cond_5
    iget-object v10, p0, Lggk$1;->a:Lggk;

    .line 8044
    iget-object v10, v10, Lggk;->f:Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;

    .line 104
    iget-object v10, v10, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;->mSpaceDos:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_7

    .line 105
    new-instance v0, Lggk$1$1;

    invoke-direct {v0, p0, v9, v2}, Lggk$1$1;-><init>(Lggk$1;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    .line 133
    .local v0, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;>;"
    iget-object v10, p0, Lggk$1;->a:Lggk;

    .line 9044
    iget-object v10, v10, Lggk;->f:Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;

    .line 133
    iget-object v11, p0, Lggk$1;->a:Lggk;

    .line 10044
    iget-object v11, v11, Lggk;->g:Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    .line 133
    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12, v0}, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;->loadPhotoObjects(Lcom/alibaba/alimei/cspace/model/RecentOperationModel;ZLcom/alibaba/wukong/Callback;)V

    goto/16 :goto_0

    .end local v0    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;>;"
    .end local v2    # "dingtalkBaseActivity":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    :cond_6
    move-object v2, v11

    .line 99
    goto :goto_2

    .line 135
    .restart local v2    # "dingtalkBaseActivity":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    :cond_7
    iget-object v10, p0, Lggk$1;->a:Lggk;

    .line 11044
    iget-object v10, v10, Lggk;->f:Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;

    .line 135
    iget-object v10, v10, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;->mSpaceDos:Ljava/util/ArrayList;

    iget-object v12, p0, Lggk$1;->a:Lggk;

    .line 12044
    iget-object v12, v12, Lggk;->f:Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;

    .line 135
    invoke-static {v2, v10, v12, v11, v9}, Lggc;->a(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V

    .line 137
    if-eqz v2, :cond_0

    .line 138
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    goto/16 :goto_0
.end method
