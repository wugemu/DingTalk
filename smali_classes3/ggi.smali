.class public final Lggi;
.super Lggg;
.source "FileRecentViewHolder.java"


# instance fields
.field f:Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

.field g:Ljava/lang/String;

.field h:Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;

.field i:Z

.field private j:Landroid/widget/LinearLayout;

.field private final k:Landroid/view/View$OnClickListener;

.field private l:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x1

    .line 57
    sget v1, Lfzs$g;->cspace_recent_item_content_files:I

    invoke-direct {p0, p1, v2, v1}, Lggg;-><init>(Landroid/app/Activity;II)V

    .line 52
    const/16 v1, 0x10

    iput v1, p0, Lggi;->l:I

    .line 54
    iput-boolean v2, p0, Lggi;->i:Z

    .line 58
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 59
    .local v0, "resources":Landroid/content/res/Resources;
    new-instance v1, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;

    invoke-direct {v1}, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;-><init>()V

    iput-object v1, p0, Lggi;->h:Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;

    .line 60
    sget v1, Lfzs$d;->cspace_recent_item_marginLeft:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lggi;->l:I

    .line 61
    new-instance v1, Lggi$1;

    invoke-direct {v1, p0}, Lggi$1;-><init>(Lggi;)V

    iput-object v1, p0, Lggi;->k:Landroid/view/View$OnClickListener;

    .line 153
    return-void
.end method

.method private a(I)V
    .locals 5
    .param p1, "startIndex"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/16 v4, 0x8

    .line 226
    iget-object v3, p0, Lggi;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 227
    .local v0, "childCount":I
    move v1, p1

    .local v1, "pos":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 228
    iget-object v3, p0, Lggi;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 229
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_0

    .line 230
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 227
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/RecentOperationModel;Landroid/widget/AbsListView;)V
    .locals 12
    .param p1, "baseActivity"    # Landroid/app/Activity;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "operationModel"    # Lcom/alibaba/alimei/cspace/model/RecentOperationModel;
    .param p4, "absListView"    # Landroid/widget/AbsListView;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 163
    iput-object p3, p0, Lggi;->f:Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    .line 164
    iput-object p2, p0, Lggi;->g:Ljava/lang/String;

    .line 165
    iget-object v0, p3, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->fileList:Ljava/util/List;

    if-nez v0, :cond_2

    const/4 v6, 0x0

    .line 166
    .local v6, "fileCount":I
    :goto_0
    const/4 v0, 0x3

    if-le v6, v0, :cond_0

    .line 167
    const/4 v6, 0x3

    .line 169
    :cond_0
    iget-object v0, p0, Lggi;->f:Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    iget v0, v0, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->operationType:I

    invoke-static {v0}, Lggc;->a(I)Z

    move-result v0

    iput-boolean v0, p0, Lggi;->i:Z

    .line 170
    const/4 v7, 0x0

    .line 171
    .local v7, "hiddenStartIndex":I
    if-lez v6, :cond_7

    .line 173
    const/4 v8, 0x0

    .local v8, "index":I
    :goto_1
    if-ge v8, v6, :cond_6

    .line 174
    iget-object v0, p3, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->fileList:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;

    .line 176
    .local v2, "model":Lcom/alibaba/alimei/cspace/model/RecentDentryModel;
    iget v0, p3, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->fileCount:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_3

    add-int/lit8 v0, v8, 0x1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 177
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 178
    .local v9, "resources":Landroid/content/res/Resources;
    sget v0, Lfzs$h;->space_recent_operation_files_more:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p3, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->fileCount:I

    add-int/lit8 v4, v4, -0x3

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v9, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 182
    .end local v9    # "resources":Landroid/content/res/Resources;
    .local v5, "extraNameInfo":Ljava/lang/String;
    :goto_2
    add-int/lit8 v0, v8, 0x1

    if-eq v0, v6, :cond_4

    const/4 v3, 0x1

    :goto_3
    iget-boolean v1, p0, Lggi;->i:Z

    .line 1197
    iget-object v0, p0, Lggi;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 1200
    if-lez v0, :cond_5

    if-le v0, v8, :cond_5

    .line 1201
    iget-object v0, p0, Lggi;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;

    .line 1213
    :goto_4
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_1

    .line 1214
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->setVisibility(I)V

    .line 1216
    :cond_1
    iput v8, v0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->b:I

    .line 1217
    iput-boolean v1, v0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->c:Z

    move-object v1, p2

    move-object/from16 v4, p4

    .line 1218
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->a(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/RecentDentryModel;ZLandroid/widget/AbsListView;Ljava/lang/String;)V

    .line 173
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 165
    .end local v2    # "model":Lcom/alibaba/alimei/cspace/model/RecentDentryModel;
    .end local v5    # "extraNameInfo":Ljava/lang/String;
    .end local v6    # "fileCount":I
    .end local v7    # "hiddenStartIndex":I
    .end local v8    # "index":I
    :cond_2
    iget-object v0, p3, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->fileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    goto :goto_0

    .line 180
    .restart local v2    # "model":Lcom/alibaba/alimei/cspace/model/RecentDentryModel;
    .restart local v6    # "fileCount":I
    .restart local v7    # "hiddenStartIndex":I
    .restart local v8    # "index":I
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "extraNameInfo":Ljava/lang/String;
    goto :goto_2

    .line 182
    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    .line 1204
    :cond_5
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v10, -0x2

    invoke-direct {v4, v0, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1206
    new-instance v0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;

    iget-object v10, p0, Lggi;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;-><init>(Landroid/content/Context;)V

    .line 1207
    iget v10, p0, Lggi;->l:I

    iget v11, p0, Lggi;->l:I

    invoke-virtual {v0, v10, v11}, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->a(II)V

    .line 1208
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->setTag(Ljava/lang/Object;)V

    .line 1209
    iget-object v10, p0, Lggi;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v10}, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1210
    sget v10, Lfzs$e;->alm_bg_recent_file_selector:I

    invoke-virtual {v0, v10}, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->setBackgroundResource(I)V

    .line 1211
    iget-object v10, p0, Lggi;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v0, v8, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .line 185
    .end local v2    # "model":Lcom/alibaba/alimei/cspace/model/RecentDentryModel;
    .end local v5    # "extraNameInfo":Ljava/lang/String;
    :cond_6
    move v7, v8

    .line 187
    .end local v8    # "index":I
    :cond_7
    invoke-direct {p0, v7}, Lggi;->a(I)V

    .line 188
    return-void
.end method

.method protected final a(Landroid/view/View;)V
    .locals 0
    .param p1, "subContentView"    # Landroid/view/View;

    .prologue
    .line 157
    check-cast p1, Landroid/widget/LinearLayout;

    .end local p1    # "subContentView":Landroid/view/View;
    iput-object p1, p0, Lggi;->j:Landroid/widget/LinearLayout;

    .line 158
    return-void
.end method
