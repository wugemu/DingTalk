.class public final Lgns;
.super Lgly;
.source "SpaceMenuWebSendHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lgly;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lgmb;Ljava/lang/Object;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paramModel"    # Lgmb;
    .param p3, "willChange"    # Ljava/lang/Object;

    .prologue
    .line 42
    const/4 v3, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v3}, Lgns;->a(Landroid/content/Context;Lgmb;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 71
    :goto_0
    return-void

    .line 46
    :cond_0
    move-object/from16 v0, p2

    iget-object v2, v0, Lgmb;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 48
    .local v2, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceTypeBelong()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lgqu;->a(Ljava/lang/String;)I

    move-result v10

    .line 49
    .local v10, "spaceType":I
    invoke-static {v10}, Lgqu;->e(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v3

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lfzv;->h(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 50
    sget v3, Lfzs$h;->dt_cspace_no_forward_action_tip_in_read_only_group:I

    invoke-static {v3}, Lcms;->a(I)V

    goto :goto_0

    .line 54
    :cond_1
    invoke-static {v2}, Lgpx;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 55
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lgla;->a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    goto :goto_0

    .line 59
    :cond_2
    move-object/from16 v0, p2

    iget-object v3, v0, Lgmb;->e:Ljava/lang/String;

    .line 1109
    const-wide/16 v6, 0x0

    invoke-static {v3, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v8

    .line 61
    .local v8, "messageId":J
    new-instance v4, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 62
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    move-object/from16 v0, p2

    iget-wide v6, v0, Lgmb;->d:J

    const-wide/16 v12, 0x0

    cmp-long v3, v6, v12

    if-nez v3, :cond_3

    .line 65
    move-object/from16 v0, p2

    iget-object v5, v0, Lgmb;->b:Ljava/lang/String;

    const-string/jumbo v6, "space_detail_send_contact_success"

    move-object/from16 v0, p2

    iget-object v7, v0, Lgmb;->f:Ljava/lang/String;

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v9}, Lfzu;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 68
    :cond_3
    move-object/from16 v0, p2

    iget-wide v12, v0, Lgmb;->d:J

    move-object/from16 v0, p2

    iget-object v15, v0, Lgmb;->b:Ljava/lang/String;

    const-string/jumbo v16, "space_detail_send_contact_success"

    move-object/from16 v0, p2

    iget-object v0, v0, Lgmb;->f:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v11, p1

    move-object v14, v4

    move-wide/from16 v18, v8

    invoke-static/range {v11 .. v19}, Lfzu;->a(Landroid/content/Context;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method
