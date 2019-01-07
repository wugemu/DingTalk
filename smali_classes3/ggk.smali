.class public final Lggk;
.super Lggg;
.source "ImagesRecentViewHolder.java"


# instance fields
.field f:Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;

.field g:Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

.field h:Ljava/lang/String;

.field private i:Landroid/widget/LinearLayout;

.field private j:Lgga;

.field private k:Lgga;

.field private l:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    .line 54
    const/4 v0, 0x3

    sget v1, Lfzs$g;->cspace_recent_item_content_images:I

    invoke-direct {p0, p1, v0, v1}, Lggg;-><init>(Landroid/app/Activity;II)V

    .line 49
    iput-object v2, p0, Lggk;->l:Landroid/view/View$OnClickListener;

    .line 50
    iput-object v2, p0, Lggk;->g:Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    .line 51
    iput-object v2, p0, Lggk;->h:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/RecentOperationModel;Landroid/widget/AbsListView;)V
    .locals 16
    .param p1, "baseActivity"    # Landroid/app/Activity;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "operationModel"    # Lcom/alibaba/alimei/cspace/model/RecentOperationModel;
    .param p4, "absListView"    # Landroid/widget/AbsListView;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 150
    move-object/from16 v0, p0

    iget-object v11, v0, Lggk;->g:Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    .line 151
    .local v11, "temp":Lcom/alibaba/alimei/cspace/model/RecentOperationModel;
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lggk;->h:Ljava/lang/String;

    .line 152
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lggk;->g:Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    .line 154
    if-eqz v11, :cond_0

    iget-wide v12, v11, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->id:J

    move-object/from16 v0, p3

    iget-wide v14, v0, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->id:J

    cmp-long v12, v12, v14

    if-eqz v12, :cond_1

    .line 155
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lggk;->f:Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;

    iget-object v12, v12, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;->mSpaceDos:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 156
    move-object/from16 v0, p0

    iget-object v12, v0, Lggk;->f:Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;

    const/4 v13, 0x0

    iput-object v13, v12, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;->mPhotoObjects:[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .line 159
    :cond_1
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->fileList:Ljava/util/List;

    .line 160
    .local v3, "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/RecentDentryModel;>;"
    if-nez v3, :cond_4

    move-object/from16 v0, p3

    iget v4, v0, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->fileCount:I

    .line 161
    .local v4, "fileSize":I
    :goto_0
    move-object/from16 v0, p3

    iget v12, v0, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->fileCount:I

    if-le v12, v4, :cond_5

    const/4 v6, 0x1

    .line 163
    .local v6, "isShowOperation":Z
    :goto_1
    const/4 v12, 0x4

    if-le v4, v12, :cond_6

    const/4 v9, 0x4

    .line 165
    .local v9, "row1Number":I
    :goto_2
    add-int/lit8 v10, v4, -0x4

    .line 168
    .local v10, "row2Number":I
    if-nez v3, :cond_7

    .line 169
    move-object/from16 v0, p0

    iget-object v12, v0, Lggk;->j:Lgga;

    if-eqz v12, :cond_2

    .line 170
    move-object/from16 v0, p0

    iget-object v12, v0, Lggk;->j:Lgga;

    const/4 v13, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v12, v13, v0}, Lgga;->a(ILandroid/widget/AbsListView;)V

    .line 172
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lggk;->k:Lgga;

    if-eqz v12, :cond_3

    .line 173
    move-object/from16 v0, p0

    iget-object v12, v0, Lggk;->k:Lgga;

    const/4 v13, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v12, v13, v0}, Lgga;->a(ILandroid/widget/AbsListView;)V

    .line 174
    move-object/from16 v0, p0

    iget-object v12, v0, Lggk;->k:Lgga;

    invoke-virtual {v12}, Lgga;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_3

    .line 175
    move-object/from16 v0, p0

    iget-object v12, v0, Lggk;->k:Lgga;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Lgga;->setVisibility(I)V

    .line 222
    :cond_3
    :goto_3
    return-void

    .line 160
    .end local v4    # "fileSize":I
    .end local v6    # "isShowOperation":Z
    .end local v9    # "row1Number":I
    .end local v10    # "row2Number":I
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_0

    .line 161
    .restart local v4    # "fileSize":I
    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    .restart local v6    # "isShowOperation":Z
    :cond_6
    move v9, v4

    .line 163
    goto :goto_2

    .line 180
    .restart local v9    # "row1Number":I
    .restart local v10    # "row2Number":I
    :cond_7
    const/4 v8, 0x0

    .line 182
    .local v8, "position":I
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_4
    if-ge v5, v9, :cond_8

    .line 183
    move-object/from16 v0, p0

    iget-object v12, v0, Lggk;->j:Lgga;

    move-object/from16 v0, p0

    iget-object v13, v0, Lggk;->l:Landroid/view/View$OnClickListener;

    iput-object v13, v12, Lgga;->d:Landroid/view/View$OnClickListener;

    .line 184
    move-object/from16 v0, p0

    iget-object v13, v0, Lggk;->j:Lgga;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v13, v0, v5, v12, v1}, Lgga;->a(Ljava/lang/String;ILcom/alibaba/alimei/cspace/model/RecentDentryModel;Landroid/widget/AbsListView;)V

    .line 185
    add-int/lit8 v8, v8, 0x1

    .line 182
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 187
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lggk;->j:Lgga;

    move-object/from16 v0, p4

    invoke-virtual {v12, v5, v0}, Lgga;->a(ILandroid/widget/AbsListView;)V

    .line 188
    if-lez v10, :cond_d

    .line 189
    move-object/from16 v0, p0

    iget-object v12, v0, Lggk;->k:Lgga;

    if-nez v12, :cond_9

    .line 190
    new-instance v12, Lgga;

    move-object/from16 v0, p0

    iget-object v13, v0, Lggk;->d:Landroid/app/Activity;

    invoke-direct {v12, v13}, Lgga;-><init>(Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lggk;->k:Lgga;

    .line 191
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x2

    invoke-direct {v7, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 193
    .local v7, "params":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v12, v0, Lggk;->j:Lgga;

    iget v12, v12, Lgga;->a:I

    iput v12, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 194
    move-object/from16 v0, p0

    iget-object v12, v0, Lggk;->i:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lggk;->k:Lgga;

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 196
    .end local v7    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lggk;->k:Lgga;

    move-object/from16 v0, p0

    iget-object v13, v0, Lggk;->l:Landroid/view/View$OnClickListener;

    iput-object v13, v12, Lgga;->d:Landroid/view/View$OnClickListener;

    .line 197
    move-object/from16 v0, p0

    iget-object v12, v0, Lggk;->k:Lgga;

    iput-boolean v6, v12, Lgga;->b:Z

    .line 198
    move-object/from16 v0, p0

    iget-object v12, v0, Lggk;->k:Lgga;

    iput v9, v12, Lgga;->e:I

    .line 199
    move-object/from16 v0, p3

    iget v12, v0, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->fileCount:I

    sub-int/2addr v12, v9

    sub-int v2, v12, v10

    .line 200
    .local v2, "count":I
    if-lez v2, :cond_a

    .line 201
    move-object/from16 v0, p0

    iget-object v12, v0, Lggk;->k:Lgga;

    add-int/lit8 v13, v2, 0x1

    iput v13, v12, Lgga;->c:I

    .line 205
    :goto_5
    const/4 v5, 0x0

    :goto_6
    if-ge v5, v10, :cond_b

    .line 206
    move-object/from16 v0, p0

    iget-object v13, v0, Lggk;->k:Lgga;

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->fileList:Ljava/util/List;

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v13, v0, v5, v12, v1}, Lgga;->a(Ljava/lang/String;ILcom/alibaba/alimei/cspace/model/RecentDentryModel;Landroid/widget/AbsListView;)V

    .line 207
    add-int/lit8 v8, v8, 0x1

    .line 205
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 203
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lggk;->k:Lgga;

    const/4 v13, 0x0

    iput v13, v12, Lgga;->c:I

    goto :goto_5

    .line 209
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lggk;->k:Lgga;

    invoke-virtual {v12}, Lgga;->getVisibility()I

    move-result v12

    if-eqz v12, :cond_c

    .line 210
    move-object/from16 v0, p0

    iget-object v12, v0, Lggk;->k:Lgga;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lgga;->setVisibility(I)V

    .line 212
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lggk;->k:Lgga;

    move-object/from16 v0, p4

    invoke-virtual {v12, v5, v0}, Lgga;->a(ILandroid/widget/AbsListView;)V

    goto/16 :goto_3

    .line 215
    .end local v2    # "count":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lggk;->k:Lgga;

    if-eqz v12, :cond_3

    .line 216
    move-object/from16 v0, p0

    iget-object v12, v0, Lggk;->k:Lgga;

    invoke-virtual {v12}, Lgga;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_e

    .line 217
    move-object/from16 v0, p0

    iget-object v12, v0, Lggk;->k:Lgga;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Lgga;->setVisibility(I)V

    .line 219
    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lggk;->k:Lgga;

    const/4 v13, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v12, v13, v0}, Lgga;->a(ILandroid/widget/AbsListView;)V

    goto/16 :goto_3
.end method

.method protected final a(Landroid/view/View;)V
    .locals 4
    .param p1, "subContentView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 59
    iget-object v1, p0, Lggk;->f:Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;

    if-nez v1, :cond_0

    .line 60
    new-instance v1, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;

    invoke-direct {v1}, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;-><init>()V

    iput-object v1, p0, Lggk;->f:Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;

    .line 62
    :cond_0
    check-cast p1, Landroid/widget/LinearLayout;

    .end local p1    # "subContentView":Landroid/view/View;
    iput-object p1, p0, Lggk;->i:Landroid/widget/LinearLayout;

    .line 63
    new-instance v1, Lgga;

    iget-object v2, p0, Lggk;->d:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lgga;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lggk;->j:Lgga;

    .line 64
    iget-object v1, p0, Lggk;->j:Lgga;

    iput-boolean v3, v1, Lgga;->b:Z

    .line 65
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 66
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lggk;->i:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lggk;->j:Lgga;

    invoke-virtual {v1, v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 67
    new-instance v1, Lggk$1;

    invoke-direct {v1, p0}, Lggk$1;-><init>(Lggk;)V

    iput-object v1, p0, Lggk;->l:Landroid/view/View$OnClickListener;

    .line 145
    return-void
.end method
