.class public Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;
.super Landroid/widget/RelativeLayout;
.source "SpaceRecentItemFileView.java"


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:I

.field public c:Z

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->b:I

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->c:Z

    .line 65
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lfzs$g;->cspace_recent_item_file:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 66
    sget v0, Lfzs$f;->image:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->d:Landroid/widget/ImageView;

    .line 67
    sget v0, Lfzs$f;->img_encrpt_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->e:Landroid/widget/ImageView;

    .line 68
    sget v0, Lfzs$f;->file_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->a:Landroid/widget/TextView;

    .line 69
    sget v0, Lfzs$f;->file_desc:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->f:Landroid/widget/TextView;

    .line 70
    sget v0, Lfzs$f;->line1:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->g:Landroid/view/View;

    .line 71
    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {p1, v0}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->setMinimumHeight(I)V

    .line 72
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "right"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->setPadding(IIII)V

    .line 81
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/RecentDentryModel;ZLandroid/widget/AbsListView;Ljava/lang/String;)V
    .locals 18
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/RecentDentryModel;
    .param p3, "isShowLine"    # Z
    .param p4, "absListView"    # Landroid/widget/AbsListView;
    .param p5, "extraNameInfo"    # Ljava/lang/String;

    .prologue
    .line 89
    .line 1206
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->e:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 1209
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p2, :cond_3

    .line 1210
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->e:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    :cond_1
    :goto_0
    invoke-static {}, Lgfw;->b()Lgfw;

    move-result-object v15

    .line 94
    .local v15, "instance":Lgfw;
    if-eqz v15, :cond_7

    .line 2119
    iget-object v2, v15, Lgfw;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 94
    if-eqz v2, :cond_7

    .line 3119
    iget-object v14, v15, Lgfw;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 100
    .local v14, "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->d:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 102
    if-eqz p3, :cond_8

    .line 103
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->g:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    .line 104
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->g:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 113
    :cond_2
    :goto_2
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 114
    if-eqz p2, :cond_a

    .line 115
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->name:Ljava/lang/String;

    invoke-static {v2}, Lgpx;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 116
    .local v13, "fileNameExtension":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->a:Landroid/widget/TextView;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->contentType:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->name:Ljava/lang/String;

    invoke-static {v3, v5, v13}, Lgpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->contentType:Ljava/lang/String;

    invoke-static {v2, v13}, Lgpx;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->f:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->f:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lgpk;->a(Landroid/view/View;I)V

    .line 141
    .end local v13    # "fileNameExtension":Ljava/lang/String;
    :goto_3
    if-nez p2, :cond_c

    .line 142
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->d:Landroid/widget/ImageView;

    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-interface {v14, v2, v3, v0}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->d:Landroid/widget/ImageView;

    sget v3, Lfzs$e;->file_unkonwn:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 200
    :goto_4
    return-void

    .line 1213
    .end local v14    # "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    .end local v15    # "instance":Lgfw;
    :cond_3
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->isEncrypt:Z

    .line 1214
    move-object/from16 v0, p2

    iget-boolean v3, v0, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->isESafeNetEncrypt:Z

    .line 1215
    if-nez v2, :cond_4

    if-eqz v3, :cond_6

    .line 1216
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->e:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1217
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->e:Landroid/widget/ImageView;

    if-eqz v3, :cond_5

    sget v2, Lfzs$e;->blue_safe_icon:I

    :goto_5
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_5
    sget v2, Lfzs$e;->avatar_safe_icon:I

    goto :goto_5

    .line 1219
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->e:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 97
    .restart local v15    # "instance":Lgfw;
    :cond_7
    const-string/jumbo v2, "IMAGE"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alibaba/doraemon/image/ImageMagician;

    .restart local v14    # "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    goto/16 :goto_1

    .line 107
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->g:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    .line 108
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->g:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 122
    .restart local v13    # "fileNameExtension":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->f:Landroid/widget/TextView;

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->length:J

    invoke-static {v6, v7}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->f:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lgpk;->a(Landroid/view/View;I)V

    goto/16 :goto_3

    .line 127
    .end local v13    # "fileNameExtension":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->a:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->f:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->f:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lgpk;->a(Landroid/view/View;I)V

    goto/16 :goto_3

    .line 133
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->a:Landroid/widget/TextView;

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->f:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lgpk;->a(Landroid/view/View;I)V

    .line 135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->d:Landroid/widget/ImageView;

    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-interface {v14, v2, v3, v0}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->d:Landroid/widget/ImageView;

    sget v3, Lfzs$e;->file_unkonwn:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 147
    :cond_c
    const-string/jumbo v2, "image"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->contentType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 150
    .local v16, "isImageFile":Z
    if-eqz v16, :cond_e

    .line 151
    sget v17, Lfzs$e;->cspace_recent_default_image:I

    .line 152
    .local v17, "resourceId":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->c:Z

    if-eqz v2, :cond_d

    .line 153
    const/16 v16, 0x1

    .line 173
    :goto_6
    if-eqz v16, :cond_11

    if-eqz v15, :cond_11

    .line 174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->d:Landroid/widget/ImageView;

    move-object/from16 v0, p2

    invoke-static {v2, v0}, Lgfw;->a(Landroid/view/View;Lcom/alibaba/alimei/cspace/model/RecentDentryModel;)V

    .line 175
    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Lgfw;->a(Lcom/alibaba/alimei/cspace/model/RecentDentryModel;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 176
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->d:Landroid/widget/ImageView;

    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-interface {v14, v2, v3, v0}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->d:Landroid/widget/ImageView;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 155
    :cond_d
    const/16 v16, 0x0

    goto :goto_6

    .line 158
    .end local v17    # "resourceId":I
    :cond_e
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->name:Ljava/lang/String;

    invoke-static {v2}, Lgpn;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 160
    .local v12, "extension":Ljava/lang/String;
    invoke-static {v12}, Lgpn;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 161
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->c:Z

    if-eqz v2, :cond_f

    .line 162
    const/16 v16, 0x1

    .line 166
    :goto_7
    sget v17, Lfzs$e;->cspace_recent_default_image:I

    .restart local v17    # "resourceId":I
    goto :goto_6

    .line 164
    .end local v17    # "resourceId":I
    :cond_f
    const/16 v16, 0x0

    goto :goto_7

    .line 168
    :cond_10
    const/16 v16, 0x0

    .line 169
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->name:Ljava/lang/String;

    invoke-static {v2, v12}, Lgpx;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    .restart local v17    # "resourceId":I
    goto :goto_6

    .line 182
    .end local v12    # "extension":Ljava/lang/String;
    :cond_11
    if-eqz v16, :cond_13

    .line 3246
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v2

    .line 183
    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/alibaba/alimei/framework/account/AccountApi;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 184
    .local v11, "accessToken":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->d:Landroid/widget/ImageView;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 186
    invoke-static {}, Lgqc;->a()Lgqc;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->spaceId:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->serverId:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->path:Ljava/lang/String;

    .line 187
    invoke-static {v5, v6}, Lfzu;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->name:Ljava/lang/String;

    const/4 v7, 0x0

    .line 188
    invoke-static {v6, v7}, Lgpx;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x100

    const/16 v8, 0x100

    const/16 v9, 0x3c

    .line 186
    invoke-virtual/range {v2 .. v9}, Lgqc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v4

    .line 189
    .local v4, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->d:Landroid/widget/ImageView;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v11}, Lgpr;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v10

    move-object v2, v14

    move-object/from16 v5, p4

    invoke-interface/range {v2 .. v10}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_4

    .line 191
    .end local v4    # "url":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->d:Landroid/widget/ImageView;

    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-interface {v14, v2, v3, v0}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->d:Landroid/widget/ImageView;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 196
    .end local v11    # "accessToken":Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->d:Landroid/widget/ImageView;

    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-interface {v14, v2, v3, v0}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->d:Landroid/widget/ImageView;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4
.end method
