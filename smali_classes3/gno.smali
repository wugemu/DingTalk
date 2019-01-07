.class public final Lgno;
.super Lgly;
.source "SpaceMenuSendHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lgly;-><init>()V

    return-void
.end method

.method static synthetic a(Lgno;Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lgno;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-static {p1, p2, p3, p4, p5}, Lgno;->c(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p3, "msgId"    # Ljava/lang/String;
    .param p4, "statSrc"    # Ljava/lang/String;
    .param p5, "conversationId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 112
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    const/4 v0, 0x0

    sget v1, Lfzs$h;->loading_tip:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p1, v0, v1, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v2

    .line 117
    .local v2, "progressDialog":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v0

    .line 1109
    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v10

    .line 117
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v0

    .line 2109
    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v12

    .line 117
    new-instance v0, Lgno$1;

    move-object v1, p0

    move-object/from16 v3, p2

    move-object v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lgno$1;-><init>(Lgno;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;Lcom/alibaba/alimei/cspace/model/DentryModel;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v8

    move-wide v4, v10

    move-wide v6, v12

    move-object v8, v0

    invoke-virtual/range {v3 .. v8}, Lgon;->a(JJLcma;)V

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p2, "msgId"    # Ljava/lang/String;
    .param p3, "statSrc"    # Ljava/lang/String;
    .param p4, "conversationId"    # Ljava/lang/String;

    .prologue
    .line 161
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 166
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfzu;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 3109
    .local v2, "orgId":J
    const-wide/16 v0, 0x0

    invoke-static {p2, v0, v1}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v8

    .line 170
    .local v8, "msgIdLong":J
    const-string/jumbo v6, "space_detail_send_contact_success"

    move-object v1, p0

    move-object v5, p3

    move-object v7, p4

    invoke-static/range {v1 .. v9}, Lfzu;->a(Landroid/content/Context;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method


# virtual methods
.method a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p3, "msgId"    # Ljava/lang/String;
    .param p4, "statSrc"    # Ljava/lang/String;
    .param p5, "conversationId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 76
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    invoke-static {p2}, Lgpv;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 81
    sget v1, Lfzs$h;->dt_cspace_invalid_param_tip:I

    invoke-static {v1}, Lcms;->a(I)V

    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {p2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceTypeBelong()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgqu;->a(Ljava/lang/String;)I

    move-result v0

    .line 86
    .local v0, "spaceType":I
    invoke-static {v0}, Lgqu;->e(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v1

    invoke-virtual {p2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfzv;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 87
    sget v1, Lfzs$h;->dt_cspace_no_forward_action_tip_in_read_only_group:I

    invoke-static {v1}, Lcms;->a(I)V

    goto :goto_0

    .line 91
    :cond_3
    invoke-static {p2}, Lgpx;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 92
    invoke-static {p1, p2}, Lgla;->a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    goto :goto_0

    .line 96
    :cond_4
    invoke-virtual {p2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgpx;->j(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthPicUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 97
    invoke-virtual {p2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-lez v1, :cond_5

    .line 98
    invoke-direct/range {p0 .. p5}, Lgno;->b(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_5
    invoke-virtual {p2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgpx;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthPicUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 103
    invoke-virtual {p2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-lez v1, :cond_6

    .line 104
    invoke-direct/range {p0 .. p5}, Lgno;->b(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 108
    :cond_6
    invoke-static {p1, p2, p3, p4, p5}, Lgno;->c(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final a(Landroid/content/Context;Lgmb;Ljava/lang/Object;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paramModel"    # Lgmb;
    .param p3, "willChange"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 57
    if-nez p2, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iget v0, p2, Lgmb;->o:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 63
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "space_filelist_sendtocontact_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 68
    :cond_2
    :goto_1
    invoke-static {p1, p2, v2}, Lgno;->a(Landroid/content/Context;Lgmb;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v2, p2, Lgmb;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-object v3, p2, Lgmb;->e:Ljava/lang/String;

    iget-object v4, p2, Lgmb;->b:Ljava/lang/String;

    iget-object v5, p2, Lgmb;->f:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lgno;->a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_3
    iget v0, p2, Lgmb;->o:I

    if-ne v0, v2, :cond_2

    .line 65
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "space_previewpage_sendtocontact_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto :goto_1
.end method
