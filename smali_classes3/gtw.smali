.class public final Lgtw;
.super Lgua;
.source "JobItemHolder.java"


# instance fields
.field private C:Landroid/view/View;

.field private D:I

.field private E:I

.field a:Landroid/view/View;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field h:Landroid/widget/TextView;

.field i:Landroid/widget/TextView;

.field j:Landroid/widget/TextView;

.field k:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field l:Landroid/widget/TextView;

.field m:Landroid/widget/TextView;

.field n:Landroid/widget/TextView;

.field o:Landroid/widget/TextView;

.field p:Landroid/view/View;

.field q:[Landroid/widget/ImageView;

.field r:Landroid/widget/LinearLayout;

.field s:Landroid/widget/ImageView;

.field t:Landroid/widget/TextView;

.field u:Landroid/widget/TextView;

.field v:Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;Lgud;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "itemView"    # Landroid/view/View;
    .param p3, "videoView"    # Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;
    .param p4, "absorberController"    # Lgud;
    .param p5, "onInfoListener"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
    .param p6, "onErrorListener"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .prologue
    .line 71
    invoke-direct/range {p0 .. p6}, Lgua;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;Lgud;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 52
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lgtw;->q:[Landroid/widget/ImageView;

    .line 78
    iput-object p2, p0, Lgtw;->a:Landroid/view/View;

    .line 79
    sget v1, Lgtt$d;->job_item_container:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lgtw;->C:Landroid/view/View;

    .line 80
    sget v1, Lgtt$d;->job_item_title:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lgtw;->b:Landroid/widget/TextView;

    .line 81
    sget v1, Lgtt$d;->job_item_enterprisename:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lgtw;->c:Landroid/widget/TextView;

    .line 82
    sget v1, Lgtt$d;->job_item_icon_certification:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lgtw;->d:Landroid/widget/TextView;

    .line 83
    sget v1, Lgtt$d;->job_item_org_auth_level:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lgtw;->e:Landroid/widget/TextView;

    .line 84
    sget v1, Lgtt$d;->job_item_icon_right_level:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lgtw;->f:Landroid/widget/TextView;

    .line 85
    sget v1, Lgtt$d;->job_item_org_right_level:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lgtw;->g:Landroid/widget/TextView;

    .line 86
    sget v1, Lgtt$d;->job_item_salary:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lgtw;->h:Landroid/widget/TextView;

    .line 87
    sget v1, Lgtt$d;->job_item_category_desc:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lgtw;->j:Landroid/widget/TextView;

    .line 88
    sget v1, Lgtt$d;->job_item_desc:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lgtw;->i:Landroid/widget/TextView;

    .line 89
    sget v1, Lgtt$d;->job_item_publisher_avatar:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v1, p0, Lgtw;->k:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 90
    sget v1, Lgtt$d;->job_item_publisher_desc:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lgtw;->l:Landroid/widget/TextView;

    .line 91
    sget v1, Lgtt$d;->job_item_publisher_rate_prefix:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lgtw;->m:Landroid/widget/TextView;

    .line 92
    sget v1, Lgtt$d;->job_item_publisher_rate:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lgtw;->n:Landroid/widget/TextView;

    .line 93
    sget v1, Lgtt$d;->job_item_publisher_active_status:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lgtw;->o:Landroid/widget/TextView;

    .line 95
    sget v1, Lgtt$d;->job_item_image_list:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lgtw;->p:Landroid/view/View;

    .line 96
    iget-object v2, p0, Lgtw;->q:[Landroid/widget/ImageView;

    const/4 v3, 0x0

    sget v1, Lgtt$d;->job_item_image1:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v3

    .line 97
    iget-object v2, p0, Lgtw;->q:[Landroid/widget/ImageView;

    const/4 v3, 0x1

    sget v1, Lgtt$d;->job_item_image2:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v3

    .line 98
    iget-object v2, p0, Lgtw;->q:[Landroid/widget/ImageView;

    const/4 v3, 0x2

    sget v1, Lgtt$d;->job_item_image3:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v3

    .line 100
    sget v1, Lgtt$d;->job_item_video_placeholder:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lgtw;->r:Landroid/widget/LinearLayout;

    .line 101
    sget v1, Lgtt$d;->job_enterprise_logo:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lgtw;->s:Landroid/widget/ImageView;

    .line 102
    sget v1, Lgtt$d;->job_enterprise_name:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lgtw;->t:Landroid/widget/TextView;

    .line 103
    sget v1, Lgtt$d;->job_enterprise_slogan:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lgtw;->u:Landroid/widget/TextView;

    .line 106
    iget-object v1, p0, Lgtw;->w:Landroid/app/Activity;

    invoke-static {v1}, Lcms;->a(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lgtw;->w:Landroid/app/Activity;

    const/high16 v3, 0x42480000    # 50.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    sub-int v0, v1, v2

    .line 107
    .local v0, "maxWidth":I
    div-int/lit8 v1, v0, 0x3

    iput v1, p0, Lgtw;->D:I

    .line 108
    iget-object v1, p0, Lgtw;->w:Landroid/app/Activity;

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lgtw;->E:I

    .line 110
    iget-object v1, p0, Lgtw;->C:Landroid/view/View;

    new-instance v2, Lgtw$1;

    invoke-direct {v2, p0}, Lgtw$1;-><init>(Lgtw;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    return-void
.end method

.method static synthetic a(Lgtw;)Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;
    .locals 1
    .param p0, "x0"    # Lgtw;

    .prologue
    .line 29
    iget-object v0, p0, Lgtw;->v:Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;

    return-object v0
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lgtw;->v:Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;

    if-nez v0, :cond_0

    .line 284
    const/4 v0, 0x0

    .line 286
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgtw;->v:Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->getIntroduceVideoURL()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method a(I)V
    .locals 9
    .param p1, "num"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 251
    iget-object v3, p0, Lgtw;->q:[Landroid/widget/ImageView;

    aget-object v3, v3, v7

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 252
    if-ne p1, v8, :cond_1

    .line 253
    iget-object v3, p0, Lgtw;->q:[Landroid/widget/ImageView;

    aget-object v3, v3, v8

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 254
    iget-object v3, p0, Lgtw;->q:[Landroid/widget/ImageView;

    aget-object v3, v3, v5

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 255
    iget-object v3, p0, Lgtw;->q:[Landroid/widget/ImageView;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 256
    .local v0, "params0":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lgtw;->w:Landroid/app/Activity;

    iget-object v4, p0, Lgtw;->q:[Landroid/widget/ImageView;

    aget-object v4, v4, v7

    iget-object v5, p0, Lgtw;->v:Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;

    invoke-virtual {v5}, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->getVideoWidth()I

    move-result v5

    iget-object v6, p0, Lgtw;->v:Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;

    invoke-virtual {v6}, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->getVideoHeight()I

    move-result v6

    invoke-static {v3, v4, v5, v6, v8}, Lgva;->a(Landroid/content/Context;Landroid/view/View;III)Z

    .line 257
    iget-object v3, p0, Lgtw;->q:[Landroid/widget/ImageView;

    aget-object v3, v3, v7

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 259
    .end local v0    # "params0":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iget-object v3, p0, Lgtw;->q:[Landroid/widget/ImageView;

    aget-object v3, v3, v8

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 260
    iget-object v3, p0, Lgtw;->q:[Landroid/widget/ImageView;

    aget-object v3, v3, v5

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 261
    iget-object v3, p0, Lgtw;->q:[Landroid/widget/ImageView;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 262
    .restart local v0    # "params0":Landroid/widget/LinearLayout$LayoutParams;
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget v4, p0, Lgtw;->D:I

    if-eq v3, v4, :cond_2

    .line 263
    iget v3, p0, Lgtw;->D:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 264
    iget-object v3, p0, Lgtw;->q:[Landroid/widget/ImageView;

    aget-object v3, v3, v7

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    :cond_2
    iget-object v3, p0, Lgtw;->q:[Landroid/widget/ImageView;

    aget-object v3, v3, v8

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 267
    .local v1, "params1":Landroid/widget/LinearLayout$LayoutParams;
    iget v3, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget v4, p0, Lgtw;->D:I

    if-ne v3, v4, :cond_3

    iget v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v4, p0, Lgtw;->E:I

    if-eq v3, v4, :cond_4

    .line 268
    :cond_3
    iget v3, p0, Lgtw;->D:I

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 269
    iget v3, p0, Lgtw;->E:I

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 270
    iget-object v3, p0, Lgtw;->q:[Landroid/widget/ImageView;

    aget-object v3, v3, v8

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    :cond_4
    iget-object v3, p0, Lgtw;->q:[Landroid/widget/ImageView;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 273
    .local v2, "params2":Landroid/widget/LinearLayout$LayoutParams;
    iget v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget v4, p0, Lgtw;->D:I

    if-ne v3, v4, :cond_5

    iget v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v4, p0, Lgtw;->E:I

    if-eq v3, v4, :cond_0

    .line 274
    :cond_5
    iget v3, p0, Lgtw;->D:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 275
    iget v3, p0, Lgtw;->E:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 276
    iget-object v3, p0, Lgtw;->q:[Landroid/widget/ImageView;

    aget-object v3, v3, v5

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
