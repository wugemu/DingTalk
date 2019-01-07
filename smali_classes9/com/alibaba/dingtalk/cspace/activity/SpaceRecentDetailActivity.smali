.class public Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "SpaceRecentDetailActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

.field private d:Landroid/widget/FrameLayout;

.field private e:Landroid/widget/FrameLayout;

.field private f:Landroid/widget/ImageView;

.field private g:Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView;

.field private h:Landroid/widget/ListView;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/RecentDentryModel;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z

.field private l:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

.field private m:Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;

.field private n:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 70
    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->a:Ljava/lang/String;

    .line 79
    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->i:Ljava/util/List;

    .line 80
    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->j:Ljava/util/ArrayList;

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->k:Z

    .line 82
    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->l:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .line 83
    new-instance v0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->m:Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;

    .line 84
    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->n:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->i:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;I)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;
    .param p1, "x1"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 67
    .line 4162
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 4174
    :cond_0
    :goto_0
    return-void

    .line 4165
    :cond_1
    invoke-static {p0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4168
    packed-switch p1, :pswitch_data_0

    .line 6184
    new-instance v0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentDetailAdapter;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentDetailAdapter;-><init>(Landroid/content/Context;)V

    .line 6185
    iget-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->k:Z

    iput-boolean v2, v0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentDetailAdapter;->b:Z

    .line 6186
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->b:Ljava/lang/String;

    .line 7049
    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentDetailAdapter;->a:Ljava/lang/String;

    .line 6187
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->i:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentDetailAdapter;->a(Ljava/util/List;)V

    .line 6188
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->h:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 6189
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->h:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 6190
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->h:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 6191
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->h:Landroid/widget/ListView;

    new-instance v2, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity$2;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity$2;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 6206
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->h:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 6207
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->h:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 4297
    :pswitch_0
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 4299
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->i:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 4300
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;

    .line 4301
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->f:Landroid/widget/ImageView;

    invoke-interface {v2, v3, v5, v5}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    move-object v4, v0

    .line 4303
    :goto_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 4304
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4306
    :cond_2
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->f:Landroid/widget/ImageView;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lggj;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/doraemon/image/ImageMagician;Landroid/widget/ImageView;Lcom/alibaba/alimei/cspace/model/RecentDentryModel;Landroid/widget/AbsListView;)V

    goto :goto_0

    .line 5215
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->g:Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 5216
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->g:Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView;->setVisibility(I)V

    .line 5218
    :cond_3
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->g:Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView;

    new-instance v2, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity$3;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity$3;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;)V

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 5230
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->g:Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->c:Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->i:Ljava/util/List;

    .line 6075
    iput-object v4, v2, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView;->e:Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    .line 6077
    if-nez v0, :cond_4

    iget-object v0, v2, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView;->e:Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    iget-object v0, v0, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->fileList:Ljava/util/List;

    .line 6078
    :cond_4
    iget-object v4, v2, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView;->e:Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    iget v4, v4, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->operationType:I

    .line 6079
    if-nez v0, :cond_6

    .line 6080
    :goto_2
    iget-object v5, v2, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView;->a:Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView$RecentImageGridAdapter;

    if-nez v5, :cond_7

    .line 6081
    new-instance v5, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView$RecentImageGridAdapter;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView$RecentImageGridAdapter;-><init>(Landroid/content/Context;)V

    iput-object v5, v2, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView;->a:Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView$RecentImageGridAdapter;

    .line 6082
    iget-object v5, v2, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView;->a:Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView$RecentImageGridAdapter;

    iput v4, v5, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView$RecentImageGridAdapter;->a:I

    .line 6083
    iget-object v4, v2, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView;->a:Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView$RecentImageGridAdapter;

    invoke-static {v4, v3}, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView$RecentImageGridAdapter;->a(Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView$RecentImageGridAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 6084
    iget-object v3, v2, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView;->a:Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView$RecentImageGridAdapter;

    invoke-virtual {v3, v0}, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView$RecentImageGridAdapter;->a(Ljava/util/List;)V

    .line 6085
    iget-object v0, v2, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView;->a:Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView$RecentImageGridAdapter;

    invoke-virtual {v2, v0}, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 6092
    :goto_3
    iget v0, v2, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView;->b:I

    div-int v0, v1, v0

    .line 6093
    iget v3, v2, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView;->b:I

    rem-int/2addr v1, v3

    if-eqz v1, :cond_5

    .line 6094
    add-int/lit8 v0, v0, 0x1

    .line 6096
    :cond_5
    sget v1, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView;->d:I

    mul-int/2addr v1, v0

    iget v3, v2, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView;->c:I

    mul-int/2addr v0, v3

    add-int/2addr v0, v1

    .line 6097
    iget v1, v2, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView;->f:I

    add-int/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView;->setMinimumHeight(I)V

    goto/16 :goto_0

    .line 6079
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_2

    .line 6087
    :cond_7
    iget-object v5, v2, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView;->a:Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView$RecentImageGridAdapter;

    iput v4, v5, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView$RecentImageGridAdapter;->a:I

    .line 6088
    iget-object v4, v2, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView;->a:Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView$RecentImageGridAdapter;

    invoke-static {v4, v3}, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView$RecentImageGridAdapter;->a(Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView$RecentImageGridAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 6089
    iget-object v3, v2, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView;->a:Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView$RecentImageGridAdapter;

    invoke-virtual {v3, v0}, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView$RecentImageGridAdapter;->a(Ljava/util/List;)V

    .line 6090
    iget-object v0, v2, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView;->a:Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView$RecentImageGridAdapter;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView$RecentImageGridAdapter;->notifyDataSetChanged()V

    goto :goto_3

    :cond_8
    move-object v4, v5

    goto/16 :goto_1

    .line 4168
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;Lcom/alibaba/alimei/cspace/model/RecentDentryModel;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;
    .param p1, "x1"    # Lcom/alibaba/alimei/cspace/model/RecentDentryModel;

    .prologue
    .line 67
    .line 2239
    if-eqz p1, :cond_0

    .line 2242
    invoke-static {}, Lgfw;->b()Lgfw;

    move-result-object v0

    .line 2244
    if-eqz v0, :cond_1

    .line 2245
    invoke-virtual {v0, p1}, Lgfw;->a(Lcom/alibaba/alimei/cspace/model/RecentDentryModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2246
    sget v0, Lfzs$h;->space_recent_file_has_deleted:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 2288
    :cond_0
    :goto_0
    return-void

    .line 2250
    :cond_1
    const-string/jumbo v0, "image"

    iget-object v1, p1, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2252
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->a:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 3246
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v0

    .line 2253
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/framework/account/AccountApi;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->a:Ljava/lang/String;

    .line 2255
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lgoc;->a(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/RecentDentryModel;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->l:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .line 2256
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->l:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    if-eqz v0, :cond_6

    .line 2261
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->c:Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->i:Ljava/util/List;

    iput-object v1, v0, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->fileList:Ljava/util/List;

    .line 2262
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->m:Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->c:Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;->setRecentOperationModel(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/RecentOperationModel;)V

    .line 2263
    const/4 v0, 0x1

    .line 2264
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->j:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 2265
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->j:Ljava/util/ArrayList;

    .line 2271
    :goto_1
    if-eqz v0, :cond_5

    .line 2272
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity$4;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2266
    :cond_3
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 2267
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 2269
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 2286
    :cond_5
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->n:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2289
    :cond_6
    invoke-static {p0, p1}, Lggc;->a(Landroid/app/Activity;Lcom/alibaba/alimei/cspace/model/RecentDentryModel;)V

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;)Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->m:Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->l:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;)Lcom/alibaba/alimei/cspace/model/RecentOperationModel;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->c:Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->i:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->n:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    sget v2, Lfzs$g;->cspace_recent_detail_activity:I

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->setContentView(I)V

    .line 100
    sget-object v2, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v3, "CSpace"

    const-string/jumbo v4, "space.recent.detail"

    invoke-static {v2, v3, v4}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    if-eqz p1, :cond_0

    .line 102
    const-string/jumbo v2, "space_recent_model"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->c:Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    .line 103
    const-string/jumbo v2, "space_org_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->b:Ljava/lang/String;

    .line 105
    :cond_0
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->c:Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    if-nez v2, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 107
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "space_recent_model"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->c:Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    .line 108
    const-string/jumbo v2, "space_org_id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->b:Ljava/lang/String;

    .line 111
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->c:Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    if-nez v2, :cond_2

    .line 112
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->finish()V

    .line 137
    :goto_0
    return-void

    .line 115
    :cond_2
    new-instance v2, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity$1;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity$1;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;)V

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->n:Landroid/os/Handler;

    .line 126
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->c:Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    iget v2, v2, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->operationType:I

    invoke-static {v2}, Lggc;->a(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->k:Z

    .line 127
    sget v2, Lfzs$f;->header:I

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->d:Landroid/widget/FrameLayout;

    .line 128
    sget v2, Lfzs$f;->content_frame:I

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->e:Landroid/widget/FrameLayout;

    .line 129
    sget v2, Lfzs$f;->image1:I

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->f:Landroid/widget/ImageView;

    .line 130
    sget v2, Lfzs$f;->image:I

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView;

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->g:Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView;

    .line 131
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->g:Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lfzs$d;->cspace_recent_item_marginLeft:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v2, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView;->f:I

    .line 132
    const v2, 0x102000a

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->h:Landroid/widget/ListView;

    .line 1143
    new-instance v2, Lggh;

    invoke-direct {v2, p0}, Lggh;-><init>(Landroid/app/Activity;)V

    .line 1144
    const/4 v3, 0x1

    iput-boolean v3, v2, Lggh;->b:Z

    .line 1145
    invoke-virtual {v2, p0}, Lggh;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v3

    .line 1146
    sget v4, Lfzs$c;->alm_cmail_color_8_5:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1147
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->d:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 1148
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->c:Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    iget-wide v4, v3, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->id:J

    iput-wide v4, v2, Lggh;->e:J

    .line 1149
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->n:Landroid/os/Handler;

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->c:Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lggh;->a(Ljava/lang/String;Landroid/os/Handler;Lcom/alibaba/alimei/cspace/model/RecentOperationModel;Landroid/widget/AbsListView;)V

    .line 1151
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->e:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lfzs$c;->alm_cmail_color_6_5:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1152
    iget-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->k:Z

    if-nez v2, :cond_3

    .line 1154
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lfzs$c;->alm_cmail_color_6_5:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 1155
    const/16 v3, 0x55

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1156
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 135
    :cond_3
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->c:Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    invoke-static {v2}, Lggl;->a(Lcom/alibaba/alimei/cspace/model/RecentOperationModel;)I

    move-result v1

    .line 1335
    .local v1, "viewType":I
    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity$5;

    invoke-direct {v3, p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity$5;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;I)V

    const-class v4, Lxv;

    invoke-interface {v2, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxv;

    .line 1357
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->b:Ljava/lang/String;

    invoke-static {v3}, Lth;->c(Ljava/lang/String;)Lcom/alibaba/alimei/cspace/openapi/IRecentOperationAPI;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->c:Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    iget-wide v4, v4, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->categoryId:J

    invoke-interface {v3, v4, v5, v2}, Lcom/alibaba/alimei/cspace/openapi/IRecentOperationAPI;->queryRecentOperationFiles(JLxv;)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 312
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 313
    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->c:Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    .line 314
    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->d:Landroid/widget/FrameLayout;

    .line 315
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->h:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->h:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 317
    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->h:Landroid/widget/ListView;

    .line 319
    :cond_0
    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->g:Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView;

    .line 320
    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->f:Landroid/widget/ImageView;

    .line 321
    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->l:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .line 322
    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->i:Ljava/util/List;

    .line 323
    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->m:Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;

    .line 324
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->n:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->n:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 326
    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->n:Landroid/os/Handler;

    .line 328
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 89
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->c:Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    if-eqz v0, :cond_0

    .line 90
    const-string/jumbo v0, "space_org_id"

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string/jumbo v0, "space_recent_model"

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->c:Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 94
    :cond_0
    return-void
.end method
