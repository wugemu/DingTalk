.class public Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "SpacePicPreviewActivity.java"


# instance fields
.field private A:Z

.field private B:Ljava/lang/String;

.field private C:J

.field private D:Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;

.field private E:J

.field private F:Z

.field private G:Landroid/os/Handler;

.field private H:Landroid/content/BroadcastReceiver;

.field private I:Ljava/lang/String;

.field private J:Z

.field private K:Lgqm;

.field private L:Z

.field private M:J

.field private N:Ljava/lang/String;

.field private O:Lgmb;

.field private P:Lgmc;

.field private Q:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

.field a:Lcom/alibaba/doraemon/image/ImageEventListener;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/LinearLayout;

.field private g:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

.field private h:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:I

.field private m:J

.field private n:J

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Lcom/alibaba/doraemon/image/ImageMagician;

.field private r:Landroid/widget/ImageView;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Z

.field private w:Ljava/lang/String;

.field private x:J

.field private y:J

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 97
    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->i:Ljava/lang/String;

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->j:Z

    .line 109
    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->s:Ljava/lang/String;

    .line 110
    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->t:Ljava/lang/String;

    .line 119
    const-string/jumbo v0, "normal"

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->B:Ljava/lang/String;

    .line 125
    new-instance v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity$1;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->G:Landroid/os/Handler;

    .line 184
    const-string/jumbo v0, "SpacePicPreviewActivity"

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->I:Ljava/lang/String;

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->L:Z

    .line 188
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->M:J

    .line 482
    new-instance v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity$9;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity$9;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->a:Lcom/alibaba/doraemon/image/ImageEventListener;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;
    .param p1, "x1"    # J

    .prologue
    .line 88
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->E:J

    return-wide p1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;)Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;
    .param p1, "x1"    # Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->D:Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->t:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 22

    .prologue
    .line 707
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->g:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    if-eqz v2, :cond_0

    .line 708
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->g:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->h:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->setDentryModel(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 711
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->h:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCommentCount()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 712
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->h:Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->M:J

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setCommentCount(J)V

    .line 715
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->h:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLastCommentId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 716
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->h:Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->N:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setLastCommentId(Ljava/lang/String;)V

    .line 719
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->c:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 720
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->b:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 721
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->f:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 722
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->j:Z

    .line 723
    const-string/jumbo v2, "IMAGE"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/image/ImageMagician;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->q:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 724
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->q:Lcom/alibaba/doraemon/image/ImageMagician;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->a:Lcom/alibaba/doraemon/image/ImageEventListener;

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/image/ImageMagician;->registerEventListener(Lcom/alibaba/doraemon/image/ImageEventListener;)V

    .line 726
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->h:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 727
    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->h:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lgpx;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 726
    invoke-static {v2}, Lgpx;->s(Ljava/lang/String;)Z

    move-result v20

    .line 728
    .local v20, "isGifImage":Z
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->C:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->C:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    .line 729
    .local v10, "previewVersion":Ljava/lang/String;
    :goto_0
    if-eqz v20, :cond_4

    .line 730
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->h:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v2, v10}, Lgpr;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->k:Ljava/lang/String;

    .line 742
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->k:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 743
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->q:Lcom/alibaba/doraemon/image/ImageMagician;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->d:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->k:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 755
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->d:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    new-instance v3, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity$4;

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v3, v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity$4;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;Z)V

    invoke-virtual {v2, v3}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 784
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->g:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(Z)V

    .line 785
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->a(Z)V

    .line 786
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->supportInvalidateOptionsMenu()V

    .line 787
    return-void

    .line 728
    .end local v10    # "previewVersion":Ljava/lang/String;
    :cond_3
    const-string/jumbo v10, ""

    goto :goto_0

    .line 732
    .restart local v10    # "previewVersion":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lgqc;->a()Lgqc;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->h:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 733
    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->h:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 734
    invoke-static {v5}, Lfzu;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->h:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 735
    invoke-virtual {v6}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->h:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lgpx;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x316

    const/16 v8, 0x1000

    const/16 v9, 0x5a

    .line 732
    invoke-virtual/range {v2 .. v10}, Lgqc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->k:Ljava/lang/String;

    goto :goto_1

    .line 3246
    :cond_5
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v2

    .line 745
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->h:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alibaba/alimei/framework/account/AccountApi;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 746
    .local v21, "token":Ljava/lang/String;
    if-eqz v20, :cond_6

    .line 747
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->q:Lcom/alibaba/doraemon/image/ImageMagician;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->d:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->k:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x2

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 748
    invoke-static/range {v21 .. v21}, Lgpr;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v19

    .line 747
    invoke-interface/range {v11 .. v19}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_2

    .line 750
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->q:Lcom/alibaba/doraemon/image/ImageMagician;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->d:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->k:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 751
    invoke-static/range {v21 .. v21}, Lgpr;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v19

    .line 750
    invoke-interface/range {v11 .. v19}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_2
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->a()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;
    .param p1, "x1"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 88
    .line 4549
    if-eqz p1, :cond_0

    .line 4552
    new-instance v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity$11;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity$11;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 4572
    const-class v1, Lcma;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 4573
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lgon;->a(Ljava/lang/String;Ljava/util/List;Lcma;)V

    .line 88
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;
    .param p1, "x1"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 88
    .line 3613
    invoke-static {p0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3616
    if-eqz p1, :cond_1

    .line 3617
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->h:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 3618
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->G:Landroid/os/Handler;

    const/16 v1, 0x6e4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3623
    :cond_0
    :goto_0
    return-void

    .line 3620
    :cond_1
    const-string/jumbo v0, "13020005"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3621
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->G:Landroid/os/Handler;

    const/16 v1, 0x6e6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 3622
    :cond_2
    const-string/jumbo v0, "13023000"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3631
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->h:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->i:Ljava/lang/String;

    const-string/jumbo v0, "EVENTBUTLER"

    .line 3632
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity$2;

    invoke-direct {v4, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity$2;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;)V

    const-class v5, Lcma;

    invoke-interface {v0, v4, v5, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 3631
    invoke-virtual {v1, v2, v3, v0}, Lgon;->b(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0

    .line 3625
    :cond_3
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->G:Landroid/os/Handler;

    const/16 v1, 0x6e5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private a(Z)V
    .locals 6
    .param p1, "isHandleRedNot"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v4, 0x8

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 342
    const-string/jumbo v2, "safe"

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->B:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 343
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->g:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-static {v0, v4}, Lgpk;->a(Landroid/view/View;I)V

    .line 345
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->Q:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    invoke-static {v0, v4}, Lgpk;->a(Landroid/view/View;I)V

    .line 2410
    :goto_0
    return-void

    .line 349
    :cond_0
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->g:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-virtual {v2, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->setMode(I)V

    .line 350
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->g:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->d()V

    .line 352
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->g:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    .line 2356
    new-instance v2, Lgma$a;

    invoke-direct {v2}, Lgma$a;-><init>()V

    .line 2357
    iget v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->z:I

    iput v4, v2, Lgma$a;->a:I

    .line 2358
    iget-wide v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->m:J

    iput-wide v4, v2, Lgma$a;->b:J

    .line 2359
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->o:Ljava/lang/String;

    iput-object v4, v2, Lgma$a;->c:Ljava/lang/String;

    .line 2360
    iget-boolean v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->A:Z

    iput-boolean v4, v2, Lgma$a;->d:Z

    .line 2361
    iput-boolean v0, v2, Lgma$a;->e:Z

    .line 2362
    iput v0, v2, Lgma$a;->f:I

    .line 2363
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->h:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iput-object v4, v2, Lgma$a;->g:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2364
    iput v1, v2, Lgma$a;->h:I

    .line 2365
    iget-boolean v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->F:Z

    iput-boolean v4, v2, Lgma$a;->i:Z

    .line 2367
    invoke-static {v2}, Lgma;->a(Lgma$a;)Ljava/util/List;

    move-result-object v2

    .line 2368
    if-eqz v2, :cond_2

    .line 2369
    iget-boolean v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->j:Z

    if-nez v4, :cond_1

    .line 2370
    const-string/jumbo v4, "action_file_send_to_contact"

    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2371
    const-string/jumbo v4, "action_file_save_to_ding_drive"

    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2373
    :cond_1
    const-string/jumbo v4, "action_file_send_as_email"

    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2374
    const-string/jumbo v4, "action_file_rename"

    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2375
    const-string/jumbo v4, "action_file_re_path"

    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2376
    const-string/jumbo v4, "action_file_delete"

    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2377
    const-string/jumbo v4, "action_file_add_to_favourite"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2380
    :cond_2
    invoke-static {v2, v1}, Lgma;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v4

    .line 2383
    iget v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->z:I

    invoke-static {v2}, Lgqu;->d(I)Z

    move-result v2

    if-nez v2, :cond_6

    iget v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->l:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_6

    move v2, v1

    .line 2385
    :goto_1
    if-eqz v2, :cond_3

    .line 2386
    const/16 v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v5, 0x46

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v2, v5}, Lgpr;->a(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2387
    const/16 v2, 0x122

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v5, 0x12c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v2, v5}, Lgpr;->a(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2389
    :cond_3
    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v5, 0x32

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v2, v5}, Lgpr;->a(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2391
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->h:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v4, v3, v1, v2}, Lgma;->b(Ljava/util/List;Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;ILcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    .line 2394
    const/16 v2, 0x50

    invoke-virtual {v3, v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->b(I)Lgqm;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->K:Lgqm;

    .line 2395
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->K:Lgqm;

    if-eqz v2, :cond_5

    if-eqz p1, :cond_5

    .line 2396
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->K:Lgqm;

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->h:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLastCommentId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->h:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2397
    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLastCommentId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "_new"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v1

    :cond_4
    iput-boolean v0, v2, Lgqm;->e:Z

    .line 2400
    :cond_5
    invoke-virtual {v3, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->setForceDisableSortMenuItem(Z)V

    .line 2406
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->O:Lgmb;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->P:Lgmc;

    if-eqz v0, :cond_7

    .line 2407
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->O:Lgmb;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->k:Ljava/lang/String;

    iput-object v1, v0, Lgmb;->k:Ljava/lang/String;

    .line 2408
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->O:Lgmb;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->h:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iput-object v1, v0, Lgmb;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2409
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->P:Lgmc;

    invoke-virtual {v0}, Lgmc;->a()V

    goto/16 :goto_0

    :cond_6
    move v2, v0

    .line 2383
    goto/16 :goto_1

    .line 2413
    :cond_7
    new-instance v0, Lgmb;

    invoke-direct {v0}, Lgmb;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->O:Lgmb;

    .line 2414
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->O:Lgmb;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->s:Ljava/lang/String;

    iput-object v2, v0, Lgmb;->g:Ljava/lang/String;

    .line 2415
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->O:Lgmb;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->u:Ljava/lang/String;

    iput-object v2, v0, Lgmb;->b:Ljava/lang/String;

    .line 2416
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->O:Lgmb;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->t:Ljava/lang/String;

    iput-object v2, v0, Lgmb;->h:Ljava/lang/String;

    .line 2417
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->O:Lgmb;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->o:Ljava/lang/String;

    iput-object v2, v0, Lgmb;->f:Ljava/lang/String;

    .line 2418
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->O:Lgmb;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->h:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iput-object v2, v0, Lgmb;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2419
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->O:Lgmb;

    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->n:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lgmb;->e:Ljava/lang/String;

    .line 2420
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->O:Lgmb;

    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->m:J

    iput-wide v2, v0, Lgmb;->d:J

    .line 2421
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->O:Lgmb;

    iget v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->z:I

    iput v2, v0, Lgmb;->c:I

    .line 2422
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->O:Lgmb;

    iget-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->A:Z

    iput-boolean v2, v0, Lgmb;->i:Z

    .line 2423
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->O:Lgmb;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->k:Ljava/lang/String;

    iput-object v2, v0, Lgmb;->k:Ljava/lang/String;

    .line 2424
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->O:Lgmb;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->p:Ljava/lang/String;

    iput-object v2, v0, Lgmb;->j:Ljava/lang/String;

    .line 2425
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->O:Lgmb;

    iput-boolean v1, v0, Lgmb;->l:Z

    .line 2426
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->O:Lgmb;

    iput v1, v0, Lgmb;->o:I

    .line 2427
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->O:Lgmb;

    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->E:J

    iput-wide v2, v0, Lgmb;->s:J

    .line 2428
    new-instance v0, Lgmc;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->O:Lgmb;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->g:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-direct {v0, p0, v1, v2}, Lgmc;-><init>(Landroid/content/Context;Lgmb;Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->P:Lgmc;

    .line 2430
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->P:Lgmc;

    invoke-virtual {v0}, Lgmc;->a()V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->F:Z

    return p1
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->c:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->s:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;
    .param p1, "x1"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    .line 88
    .line 4658
    invoke-static {p0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4661
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getModifierEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getModifiedTime()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    .line 4662
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getModifiedTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->x:J

    .line 4663
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExpireTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->y:J

    .line 4664
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getModifierEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfzo;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 4665
    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 4666
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->G:Landroid/os/Handler;

    const/16 v1, 0x6e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4694
    :cond_0
    :goto_0
    return-void

    .line 4669
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity$3;

    invoke-direct {v4, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity$3;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;)V

    const-class v5, Lcma;

    invoke-interface {v0, v4, v5, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto :goto_0

    .line 4695
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->G:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 4696
    const/16 v1, 0x8

    invoke-static {v1, p2, p3}, Lggr;->a(ILjava/lang/String;Ljava/lang/String;)Lggs;

    move-result-object v1

    .line 4697
    const/16 v2, 0x6e7

    iput v2, v0, Landroid/os/Message;->what:I

    .line 4698
    iget-object v1, v1, Lggs;->b:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4699
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->G:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->b:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->w:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->r:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;)Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->g:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->w:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->x:J

    return-wide v0
.end method

.method static synthetic j(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->y:J

    return-wide v0
.end method

.method static synthetic k(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->Q:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;)Lcom/alibaba/alimei/cspace/model/DentryModel;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->h:Lcom/alibaba/alimei/cspace/model/DentryModel;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;)Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->D:Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;

    return-object v0
.end method

.method static synthetic o(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->I:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic p(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;)Lgqm;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->K:Lgqm;

    return-object v0
.end method

.method static synthetic q(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->G:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic r(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->m:J

    return-wide v0
.end method

.method static synthetic s(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;

    .prologue
    const-wide/16 v4, 0x0

    .line 88
    .line 5438
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->h:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->u:Ljava/lang/String;

    invoke-static {v0, v1}, Lgoc;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-result-object v0

    .line 5439
    iget v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->z:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->A:Z

    if-nez v1, :cond_0

    .line 5440
    iput-wide v4, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->uid:J

    .line 5442
    :cond_0
    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->n:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 5443
    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->n:J

    iput-wide v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->id:J

    .line 5445
    :cond_1
    iget-object v1, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    if-nez v1, :cond_2

    .line 5446
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    .line 5448
    :cond_2
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->o:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 5449
    iget-object v1, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v2, "conversation_id"

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->o:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5451
    :cond_3
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->p:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 5452
    iget-object v1, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v2, "favorite_enter_hide"

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->p:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5456
    :cond_4
    iget-object v1, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v2, "space_transfer_src"

    const-string/jumbo v3, "picturepre"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    return-object v0
.end method

.method static synthetic t(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->v:Z

    return v0
.end method

.method static synthetic u(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;

    .prologue
    .line 88
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->z:I

    return v0
.end method

.method static synthetic v(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->A:Z

    return v0
.end method

.method static synthetic w(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;)Lcom/davemorrissey/labs/subscaleview/GestureImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->d:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    .line 196
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 197
    sget v1, Lfzs$g;->activity_space_pic_detail:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->setContentView(I)V

    .line 201
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "SpacePicPreviewActivity"

    const-string/jumbo v3, "cspace_chat_msg_preview_click"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 203
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 204
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "dentry_model"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->h:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 207
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->h:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-nez v1, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->finish()V

    .line 235
    :goto_0
    return-void

    .line 212
    :cond_0
    const-string/jumbo v1, "preview_menu_mode"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->l:I

    .line 213
    const-string/jumbo v1, "org_id"

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->m:J

    .line 214
    const-string/jumbo v1, "message_id"

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->n:J

    .line 215
    const-string/jumbo v1, "conversation_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->o:Ljava/lang/String;

    .line 216
    const-string/jumbo v1, "favorite_enter_hide"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->p:Ljava/lang/String;

    .line 217
    const-string/jumbo v1, "space_transfer_src"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->u:Ljava/lang/String;

    .line 218
    const-string/jumbo v1, "is_space_admin"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->A:Z

    .line 219
    const-string/jumbo v1, "burnChat"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->v:Z

    .line 220
    const-string/jumbo v1, "key_need_dentry_info"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->L:Z

    .line 221
    const-string/jumbo v1, "key_dentry_comment_count"

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->M:J

    .line 222
    const-string/jumbo v1, "key_dentry_last_comment_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->N:Ljava/lang/String;

    .line 223
    const-string/jumbo v1, "space_preview_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->B:Ljava/lang/String;

    .line 224
    const-string/jumbo v1, "space_preview_version"

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->C:J

    .line 226
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->h:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isCrypt()Z

    move-result v1

    if-nez v1, :cond_1

    .line 227
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v2, "msg_reaction_card"

    iget-wide v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->m:J

    invoke-virtual {v1, v2, v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;J)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->J:Z

    .line 1261
    :cond_1
    sget v1, Lfzs$f;->first_guide_print_support:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->Q:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    .line 1262
    new-instance v1, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity$5;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;)V

    .line 1269
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->Q:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1270
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->Q:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setButtOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1274
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->h:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v1, :cond_6

    .line 1277
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->h:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfzv;->d(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->z:I

    .line 1278
    iget v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->z:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 1279
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->h:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceTypeBelong()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgqu;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->z:I

    .line 1281
    :cond_2
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->o:Ljava/lang/String;

    invoke-static {v1}, Lgpt;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1282
    const/4 v1, 0x5

    iput v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->z:I

    .line 1284
    :cond_3
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->t:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 1285
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->h:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCreatorEmail()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfzo;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 1287
    cmp-long v1, v2, v6

    if-nez v1, :cond_4

    .line 1288
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->h:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCreatorNick()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1290
    :cond_4
    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity$6;

    invoke-direct {v4, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity$6;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;)V

    const-class v5, Lcma;

    invoke-interface {v1, v4, v5, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcma;

    .line 1304
    const-wide/16 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lggb;->a(Landroid/app/Activity;JJLcma;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1311
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->s:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 1312
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->h:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->h:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1313
    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->h:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 1312
    invoke-static {v1, v2, v3}, Lfzw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->s:Ljava/lang/String;

    .line 1314
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->s:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1315
    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity$7;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity$7;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;)V

    const-class v3, Lcma;

    invoke-interface {v1, v2, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 1336
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/app/Activity;Lcma;)V

    .line 1462
    :cond_6
    sget v1, Lfzs$f;->space_no_auth_layout:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->b:Landroid/view/View;

    .line 1463
    sget v1, Lfzs$f;->image:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->r:Landroid/widget/ImageView;

    .line 1464
    sget v1, Lfzs$f;->space_pic_preview_layout:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->c:Landroid/view/View;

    .line 1465
    sget v1, Lfzs$f;->space_pic_preview_iv:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->d:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    .line 1466
    sget v1, Lfzs$f;->space_preview_tv:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->e:Landroid/widget/TextView;

    .line 1467
    sget v1, Lfzs$f;->progressContainer:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->f:Landroid/widget/LinearLayout;

    .line 1468
    sget v1, Lfzs$f;->switch_to_menu:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->g:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    .line 1469
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->g:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->h:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->setDentryModel(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 1471
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->g:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    new-instance v2, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity$8;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity$8;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->setOnMoreMenuClickListener(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView$a;)V

    .line 1514
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->h:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1515
    invoke-direct {p0, v8}, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->a(Z)V

    .line 1517
    iget-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->L:Z

    if-nez v1, :cond_7

    .line 1518
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->a()V

    .line 1577
    :goto_2
    new-instance v1, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity$12;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity$12;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;)V

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->H:Landroid/content/BroadcastReceiver;

    .line 1600
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1601
    const-string/jumbo v2, "com.alibaba.alimei_sdk.RELOGIN_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1602
    const-string/jumbo v2, "action_comment_count_change"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1603
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->H:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto/16 :goto_0

    .line 1306
    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->h:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCreatorNick()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->t:Ljava/lang/String;

    goto/16 :goto_1

    .line 1522
    :cond_7
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->h:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->h:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v1

    :goto_3
    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->i:Ljava/lang/String;

    .line 1524
    new-instance v1, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity$10;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity$10;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;)V

    .line 1544
    const-class v2, Lcma;

    invoke-static {v1, v2, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 1545
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->h:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->i:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v1}, Lgon;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_2

    .line 1522
    :cond_8
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->h:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 240
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->g:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->g:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 254
    :goto_0
    return v0

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->g:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->getAllMenuCount()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->g:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->getBottomMenuMax()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 245
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->h:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->g:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-static {p0, v0, v1}, Lgpr;->a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 249
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->Q:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 254
    :goto_1
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0

    .line 251
    :cond_3
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->Q:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 799
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->q:Lcom/alibaba/doraemon/image/ImageMagician;

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->q:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->a:Lcom/alibaba/doraemon/image/ImageEventListener;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/image/ImageMagician;->unregisterEventListener(Lcom/alibaba/doraemon/image/ImageEventListener;)V

    .line 803
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->H:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 804
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->H:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 806
    :cond_1
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 807
    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 791
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onResume()V

    .line 792
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->d:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->d:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->setVisibility(I)V

    .line 795
    :cond_0
    return-void
.end method
