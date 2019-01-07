.class public final Lgmp;
.super Lgly;
.source "SpaceMenuEmailHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lgly;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 130
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 131
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfzu;->a(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {p0, v2, v3, v0}, Lfzu;->a(Landroid/content/Context;JLjava/util/List;)V

    .line 133
    return-void
.end method

.method private b(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    .line 85
    const/4 v1, 0x0

    sget v2, Lfzs$h;->loading_tip:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p1, v1, v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    .line 86
    .local v0, "progressDialog":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v1

    invoke-virtual {p2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v2

    .line 1109
    invoke-static {v2, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 86
    invoke-virtual {p2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v4

    .line 2109
    invoke-static {v4, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 86
    new-instance v6, Lgmp$1;

    invoke-direct {v6, p0, v0, p2, p1}, Lgmp$1;-><init>(Lgmp;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;Lcom/alibaba/alimei/cspace/model/DentryModel;Landroid/content/Context;)V

    invoke-virtual/range {v1 .. v6}, Lgon;->a(JJLcma;)V

    .line 127
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lgmb;Ljava/lang/Object;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paramModel"    # Lgmb;
    .param p3, "willChange"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    .line 52
    if-nez p2, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    iget v1, p2, Lgmb;->o:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 58
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "space_filelist_sendmail_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 63
    :cond_2
    :goto_1
    invoke-static {p1, p2, v3}, Lgmp;->a(Landroid/content/Context;Lgmb;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    iget-object v0, p2, Lgmb;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 69
    .local v0, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgpx;->j(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthPicUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 70
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-lez v1, :cond_4

    .line 71
    invoke-direct {p0, p1, v0}, Lgmp;->b(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    goto :goto_0

    .line 59
    .end local v0    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_3
    iget v1, p2, Lgmb;->o:I

    if-ne v1, v3, :cond_2

    .line 60
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "space_previewpage_sendmail_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto :goto_1

    .line 75
    .restart local v0    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_4
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgpx;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthPicUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 76
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-lez v1, :cond_5

    .line 77
    invoke-direct {p0, p1, v0}, Lgmp;->b(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    goto :goto_0

    .line 81
    :cond_5
    invoke-static {p1, v0}, Lgmp;->a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    goto/16 :goto_0
.end method
