.class public Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;
.super Ljava/lang/Object;
.source "SpaceRecentPhotoObjectsFetcher.java"

# interfaces
.implements Lcom/alibaba/laiwang/photokit/browser/PhotoObjectsFetcher;


# instance fields
.field public mAccessToken:Ljava/lang/String;

.field public mAccountName:Ljava/lang/String;

.field private mCurrentOperationId:J

.field public mPhotoObjects:[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

.field public final mSpaceDos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;->mPhotoObjects:[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .line 44
    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;->mAccessToken:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;->mAccountName:Ljava/lang/String;

    .line 46
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;->mCurrentOperationId:J

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;->mSpaceDos:Ljava/util/ArrayList;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;ZLjava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/util/List;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;->transferObject(ZLjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private final transferObject(ZLjava/lang/String;Ljava/util/List;)V
    .locals 7
    .param p1, "handleSpaceDos"    # Z
    .param p2, "accessToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/RecentDentryModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 160
    .local p3, "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/RecentDentryModel;>;"
    if-eqz p1, :cond_0

    .line 161
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;->mSpaceDos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 163
    :cond_0
    if-nez p3, :cond_1

    .line 184
    :goto_0
    return-void

    .line 166
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 167
    .local v2, "photoObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/browser/PhotoObject;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;

    .line 168
    .local v0, "dentryModel":Lcom/alibaba/alimei/cspace/model/RecentDentryModel;
    if-eqz v0, :cond_2

    const-string/jumbo v5, "image"

    iget-object v6, v0, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->contentType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 171
    invoke-static {p2, v0}, Lgoc;->a(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/RecentDentryModel;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-result-object v1

    .line 172
    .local v1, "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    if-eqz v1, :cond_2

    .line 175
    invoke-static {v0}, Lgoc;->a(Lcom/alibaba/alimei/cspace/model/RecentDentryModel;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v3

    .line 176
    .local v3, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;->mSpaceDos:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 179
    .end local v0    # "dentryModel":Lcom/alibaba/alimei/cspace/model/RecentDentryModel;
    .end local v1    # "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .end local v3    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 180
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iput-object v4, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;->mPhotoObjects:[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    goto :goto_0

    .line 182
    :cond_4
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;->mPhotoObjects:[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    goto :goto_0
.end method


# virtual methods
.method public fetchPhotoObjects(Lcom/alibaba/wukong/Callback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<[",
            "Lcom/alibaba/laiwang/photokit/browser/PhotoObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;>;"
    const/4 v5, 0x0

    .line 91
    invoke-static {}, Lgfw;->b()Lgfw;

    move-result-object v0

    .line 92
    .local v0, "instance":Lgfw;
    if-nez v0, :cond_1

    .line 93
    if-eqz p1, :cond_0

    .line 94
    invoke-interface {p1, v5}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;->mCurrentOperationId:J

    .line 2189
    iget-object v4, v0, Lgfw;->d:Lfp;

    .line 3096
    invoke-virtual {v4, v2, v3, v5}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2189
    check-cast v1, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    .line 99
    .local v1, "operationModel":Lcom/alibaba/alimei/cspace/model/RecentOperationModel;
    if-eqz v1, :cond_2

    iget v2, v1, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->fileCount:I

    if-nez v2, :cond_4

    .line 100
    :cond_2
    if-eqz p1, :cond_3

    .line 101
    invoke-interface {p1, v5}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 114
    :cond_3
    :goto_1
    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;->mCurrentOperationId:J

    invoke-virtual {v0, v2, v3, v5}, Lgfw;->a(JLcom/alibaba/alimei/cspace/model/RecentOperationModel;)V

    goto :goto_0

    .line 105
    :cond_4
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;->mPhotoObjects:[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    if-eqz v2, :cond_5

    .line 106
    if-eqz p1, :cond_3

    .line 107
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;->mPhotoObjects:[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    invoke-interface {p1, v2}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1

    .line 110
    :cond_5
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p1}, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;->loadPhotoObjects(Lcom/alibaba/alimei/cspace/model/RecentOperationModel;ZLcom/alibaba/wukong/Callback;)V

    goto :goto_1
.end method

.method public loadPhotoObjects(Lcom/alibaba/alimei/cspace/model/RecentOperationModel;ZLcom/alibaba/wukong/Callback;)V
    .locals 6
    .param p1, "operationModel"    # Lcom/alibaba/alimei/cspace/model/RecentOperationModel;
    .param p2, "handleSpaceDos"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/cspace/model/RecentOperationModel;",
            "Z",
            "Lcom/alibaba/wukong/Callback",
            "<[",
            "Lcom/alibaba/laiwang/photokit/browser/PhotoObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 120
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;>;"
    iget-object v0, p1, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->fileList:Ljava/util/List;

    .line 121
    .local v0, "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/RecentDentryModel;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 122
    .local v1, "fileSize":I
    :goto_0
    iget v3, p1, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->fileCount:I

    if-ne v1, v3, :cond_1

    .line 123
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v3

    new-instance v4, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher$1;

    invoke-direct {v4, p0, v0, p3}, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher$1;-><init>(Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;Ljava/util/List;Lcom/alibaba/wukong/Callback;)V

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 157
    :goto_1
    return-void

    .line 121
    .end local v1    # "fileSize":I
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    .line 139
    .restart local v1    # "fileSize":I
    :cond_1
    new-instance v2, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher$2;

    invoke-direct {v2, p0, p2, p3, v0}, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher$2;-><init>(Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;ZLcom/alibaba/wukong/Callback;Ljava/util/List;)V

    .line 155
    .local v2, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/cspace/model/RecentDentryModel;>;>;"
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;->mAccountName:Ljava/lang/String;

    invoke-static {v3}, Lth;->c(Ljava/lang/String;)Lcom/alibaba/alimei/cspace/openapi/IRecentOperationAPI;

    move-result-object v3

    iget-wide v4, p1, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->categoryId:J

    invoke-interface {v3, v4, v5, v2}, Lcom/alibaba/alimei/cspace/openapi/IRecentOperationAPI;->queryRecentOperationFiles(JLxv;)V

    goto :goto_1
.end method

.method public setRecentOperationModel(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/RecentOperationModel;)V
    .locals 8
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accessToken"    # Ljava/lang/String;
    .param p3, "operationModel"    # Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 61
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 62
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;->mAccountName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;->mAccountName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1246
    :cond_0
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v3

    .line 65
    invoke-interface {v3, p1}, Lcom/alibaba/alimei/framework/account/AccountApi;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;->mAccessToken:Ljava/lang/String;

    .line 70
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;->mAccountName:Ljava/lang/String;

    .line 71
    move-object v2, p3

    .line 72
    .local v2, "temp":Lcom/alibaba/alimei/cspace/model/RecentOperationModel;
    const/4 v1, 0x1

    .line 73
    .local v1, "isResetPhotoObject":Z
    if-eqz v2, :cond_6

    .line 74
    invoke-static {}, Lgfw;->b()Lgfw;

    move-result-object v0

    .line 75
    .local v0, "instance":Lgfw;
    if-eqz v0, :cond_2

    .line 76
    iget-wide v4, v2, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->id:J

    invoke-virtual {v0, v4, v5, p3}, Lgfw;->a(JLcom/alibaba/alimei/cspace/model/RecentOperationModel;)V

    .line 78
    :cond_2
    iget-wide v4, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;->mCurrentOperationId:J

    iget-wide v6, v2, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->id:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_5

    const/4 v1, 0x1

    .line 79
    :goto_1
    iget-wide v4, v2, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->id:J

    iput-wide v4, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;->mCurrentOperationId:J

    .line 84
    .end local v0    # "instance":Lgfw;
    :goto_2
    if-eqz v1, :cond_3

    .line 85
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;->mPhotoObjects:[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .line 87
    :cond_3
    return-void

    .line 68
    .end local v1    # "isResetPhotoObject":Z
    .end local v2    # "temp":Lcom/alibaba/alimei/cspace/model/RecentOperationModel;
    :cond_4
    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;->mAccessToken:Ljava/lang/String;

    goto :goto_0

    .line 78
    .restart local v0    # "instance":Lgfw;
    .restart local v1    # "isResetPhotoObject":Z
    .restart local v2    # "temp":Lcom/alibaba/alimei/cspace/model/RecentOperationModel;
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 81
    .end local v0    # "instance":Lgfw;
    :cond_6
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;->mCurrentOperationId:J

    goto :goto_2
.end method
