.class final Lgdw$a;
.super Ljava/lang/Object;
.source "DentryListPresenter.java"

# interfaces
.implements Lged$a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgdw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lgdw;


# direct methods
.method private constructor <init>(Lgdw;)V
    .locals 0

    .prologue
    .line 636
    iput-object p1, p0, Lgdw$a;->a:Lgdw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lgdw;B)V
    .locals 0
    .param p1, "x0"    # Lgdw;

    .prologue
    .line 636
    invoke-direct {p0, p1}, Lgdw$a;-><init>(Lgdw;)V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 3
    .param p1, "selectDentryCount"    # I
    .param p2, "allDentryCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 670
    iget-object v0, p0, Lgdw$a;->a:Lgdw;

    invoke-static {v0, p1}, Lgdw;->a(Lgdw;I)V

    .line 671
    if-ne p1, p2, :cond_0

    .line 672
    iget-object v0, p0, Lgdw$a;->a:Lgdw;

    iget-object v0, v0, Lgdw;->c:Lgdu$b;

    invoke-interface {v0, v1}, Lgdu$b;->c(Z)V

    .line 673
    iget-object v0, p0, Lgdw$a;->a:Lgdw;

    iget-object v0, v0, Lgdw;->c:Lgdu$b;

    invoke-interface {v0, v2}, Lgdu$b;->d(Z)V

    .line 678
    :goto_0
    iget-object v0, p0, Lgdw$a;->a:Lgdw;

    iget-object v0, v0, Lgdw;->c:Lgdu$b;

    invoke-interface {v0}, Lgdu$b;->f()V

    .line 679
    return-void

    .line 675
    :cond_0
    iget-object v0, p0, Lgdw$a;->a:Lgdw;

    iget-object v0, v0, Lgdw;->c:Lgdu$b;

    invoke-interface {v0, v2}, Lgdu$b;->c(Z)V

    .line 676
    iget-object v0, p0, Lgdw$a;->a:Lgdw;

    iget-object v0, v0, Lgdw;->c:Lgdu$b;

    invoke-interface {v0, v1}, Lgdu$b;->d(Z)V

    goto :goto_0
.end method

.method public final a(ILjava/util/List;I)V
    .locals 2
    .param p1, "dentryCount"    # I
    .param p3, "mSortType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lgeh;",
            ">;I)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 683
    .local p2, "dentryList":Ljava/util/List;, "Ljava/util/List<Lgeh;>;"
    iget-object v0, p0, Lgdw$a;->a:Lgdw;

    iget-object v0, v0, Lgdw;->c:Lgdu$b;

    invoke-interface {v0}, Lgdu$b;->g()V

    .line 684
    iget-object v1, p0, Lgdw$a;->a:Lgdw;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lgdw;->a(Lgdw;Z)V

    .line 685
    return-void

    .line 684
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/dingtalk/cspace/model/CsDentry;)V
    .locals 2
    .param p1, "csDentry"    # Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 651
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "space_filelist_viewstat_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 652
    iget-object v0, p0, Lgdw$a;->a:Lgdw;

    invoke-static {v0, p1}, Lgdw;->a(Lgdw;Lcom/alibaba/dingtalk/cspace/model/CsDentry;)V

    .line 653
    return-void
.end method

.method public final a(Lcom/alibaba/dingtalk/cspace/model/CsDentry;Lgeh;)V
    .locals 13
    .param p1, "csDentry"    # Lcom/alibaba/dingtalk/cspace/model/CsDentry;
    .param p2, "dentryViewModel"    # Lgeh;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 640
    iget-object v0, p0, Lgdw$a;->a:Lgdw;

    .line 1057
    iget-object v9, v0, Lgdw;->b:Lgdy;

    .line 1068
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v0

    iget-object v1, v9, Lgdy;->a:Lgdw;

    invoke-virtual {v1}, Lgdw;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfzv;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alibaba/dingtalk/cspace/constants/SpaceConstants;->a:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1071
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "cspace_filelist_guidedoc_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1074
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    if-nez v0, :cond_2

    .line 6281
    :cond_1
    :goto_0
    return-void

    .line 1077
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    .line 1079
    invoke-static {v0}, Lgpv;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1088
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1092
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    invoke-static {v0}, Lgpr;->g(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1094
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "cspace_photo_folder_in"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1097
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isSoft()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1146
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1150
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    .line 1151
    iget-object v1, v9, Lgdy;->a:Lgdw;

    invoke-virtual {v1}, Lgdw;->u()Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;

    move-result-object v1

    .line 1153
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->create()Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;

    move-result-object v2

    .line 1154
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->setSpaceId(Ljava/lang/String;)V

    .line 1155
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->setDentryId(Ljava/lang/String;)V

    .line 1156
    invoke-virtual {v9, v0}, Lgdy;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->setAdmin(Z)V

    .line 1157
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->isFromConversation()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->setFromConversation(Z)V

    .line 1158
    if-nez v1, :cond_5

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v2, v0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->setConversationName(Ljava/lang/String;)V

    .line 1160
    iget-object v0, v9, Lgdy;->b:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lfzu;->a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;ZLcma;)V

    goto :goto_0

    .line 1157
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 1158
    :cond_5
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->getConversationName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 2106
    :cond_6
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2110
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    .line 2111
    iget-object v1, v9, Lgdy;->a:Lgdw;

    invoke-virtual {v1}, Lgdw;->u()Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;

    move-result-object v1

    .line 2113
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->create()Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;

    move-result-object v2

    .line 2114
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->setSpaceId(Ljava/lang/String;)V

    .line 2115
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->setDentryId(Ljava/lang/String;)V

    .line 2116
    invoke-virtual {v2, p1}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->setCsDentry(Lcom/alibaba/dingtalk/cspace/model/CsDentry;)V

    .line 2117
    invoke-virtual {v9, v0}, Lgdy;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->setAdmin(Z)V

    .line 2118
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->isFromConversation()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {v2, v0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->setFromConversation(Z)V

    .line 2119
    if-nez v1, :cond_8

    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v2, v0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->setConversationName(Ljava/lang/String;)V

    .line 2120
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->isShowUploadRemindDialog()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {v2, v0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->setShowUploadRemindDialog(Z)V

    .line 2122
    iget-object v0, v9, Lgdy;->b:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lfzu;->a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;ZLcma;)V

    goto/16 :goto_0

    .line 2118
    :cond_7
    const/4 v0, 0x0

    goto :goto_3

    .line 2119
    :cond_8
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->getConversationName()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 2120
    :cond_9
    const/4 v0, 0x0

    goto :goto_5

    .line 1082
    :cond_a
    invoke-static {v0}, Lgpv;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2170
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2173
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v1

    .line 2176
    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lgpx;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2177
    sget v2, Lfzs$e;->file_pic_36:I

    if-ne v0, v2, :cond_b

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isCrypt()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2178
    :cond_b
    iget-object v0, v9, Lgdy;->b:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 2179
    iget-object v0, v9, Lgdy;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v2, v9, Lgdy;->a:Lgdw;

    invoke-virtual {v2}, Lgdw;->A()Z

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v9}, Lgdy;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lgdy;->a:Lgdw;

    .line 2180
    invoke-virtual {v5}, Lgdw;->w()I

    move-result v5

    iget-object v6, v9, Lgdy;->a:Lgdw;

    invoke-virtual {v6}, Lgdw;->x()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getOrgId()J

    move-result-wide v6

    .line 2179
    invoke-static/range {v0 .. v7}, Lfzu;->a(Landroid/app/Activity;Lcom/alibaba/alimei/cspace/model/DentryModel;ZLcma;Ljava/lang/String;IJ)V

    goto/16 :goto_0

    .line 2189
    :cond_c
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2193
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    .line 2486
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lgpr;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2195
    const/4 v1, 0x0

    .line 2197
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2198
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2199
    iget-object v0, v9, Lgdy;->a:Lgdw;

    invoke-virtual {v0}, Lgdw;->C()Lged$a;

    move-result-object v0

    invoke-interface {v0}, Lged$a;->c()Ljava/util/List;

    move-result-object v0

    .line 2201
    if-eqz v0, :cond_18

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_18

    .line 2202
    invoke-virtual {v9}, Lgdy;->a()Ljava/lang/String;

    move-result-object v5

    .line 2204
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_d
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgeh;

    .line 2205
    iget-object v7, v9, Lgdy;->a:Lgdw;

    invoke-virtual {v7}, Lgdw;->C()Lged$a;

    move-result-object v7

    invoke-interface {v7, v0}, Lged$a;->a(Lgeh;)Lgei;

    move-result-object v7

    .line 2206
    if-eqz v7, :cond_d

    .line 3025
    iget-object v0, v7, Lgei;->a:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    .line 2206
    if-eqz v0, :cond_d

    .line 4025
    iget-object v0, v7, Lgei;->a:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    .line 2206
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 5025
    iget-object v8, v7, Lgei;->a:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    .line 5231
    if-eqz v8, :cond_e

    invoke-virtual {v8}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v8}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    invoke-static {v0}, Lgpv;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 5232
    :cond_e
    const/4 v0, 0x0

    .line 2210
    :cond_f
    :goto_7
    if-eqz v0, :cond_d

    .line 2213
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6025
    iget-object v7, v7, Lgei;->a:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    .line 2214
    invoke-virtual {v7}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2215
    iget-object v7, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->originUrl:Ljava/lang/String;

    invoke-static {v7, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_17

    :goto_8
    move-object v1, v0

    .line 2218
    goto :goto_6

    .line 5235
    :cond_10
    invoke-virtual {v8}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    .line 5236
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lgpx;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 5237
    sget v11, Lfzs$e;->file_pic_36:I

    if-eq v10, v11, :cond_11

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getContentType()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "image"

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_11

    .line 5238
    const/4 v0, 0x0

    goto :goto_7

    .line 5241
    :cond_11
    invoke-static {v0, v5}, Lgoc;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-result-object v0

    .line 5242
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    .line 5243
    iget-object v10, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v11, "favorite_enter_hide"

    const-string/jumbo v12, "true"

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5244
    iget-object v10, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v11, "space_transfer_src"

    invoke-virtual {v10, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5246
    iget-object v10, v9, Lgdy;->a:Lgdw;

    invoke-virtual {v10}, Lgdw;->w()I

    move-result v10

    invoke-static {v10}, Lgqu;->d(I)Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-virtual {v8}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getSpace()Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    move-result-object v10

    if-eqz v10, :cond_f

    .line 5247
    invoke-virtual {v8}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getSpace()Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->getCoFolderRole()I

    move-result v8

    .line 5248
    const/16 v10, 0x67

    if-eq v8, v10, :cond_12

    const/16 v10, 0x66

    if-ne v8, v10, :cond_f

    .line 5250
    :cond_12
    const-wide/16 v10, 0x0

    iput-wide v10, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->uid:J

    goto/16 :goto_7

    :cond_13
    move-object v8, v1

    .line 2221
    :goto_9
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2223
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 2224
    const/4 v0, 0x0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    const/4 v1, 0x0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 6258
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 6262
    new-instance v3, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 6263
    invoke-static {v1}, Lgoc;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v2

    .line 6264
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6266
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 6267
    const-string/jumbo v4, "hide_list_button"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6268
    const-string/jumbo v4, "dentry_list"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 6269
    const-string/jumbo v3, "is_space_admin"

    iget-object v4, v9, Lgdy;->a:Lgdw;

    invoke-virtual {v4}, Lgdw;->A()Z

    move-result v4

    if-nez v4, :cond_14

    invoke-static {v1}, Lgpr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v1

    if-eqz v1, :cond_15

    :cond_14
    const/4 v1, 0x1

    :goto_a
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6271
    const/4 v1, 0x1

    new-array v5, v1, [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    const/4 v1, 0x0

    aput-object v0, v5, v1

    .line 6273
    iget-object v0, v9, Lgdy;->b:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 6274
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    iget-object v1, v9, Lgdy;->b:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;ZZ[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V

    goto/16 :goto_0

    .line 6269
    :cond_15
    const/4 v1, 0x0

    goto :goto_a

    .line 6279
    :cond_16
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6280
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 6284
    iget-object v0, v9, Lgdy;->a:Lgdw;

    invoke-virtual {v0}, Lgdw;->v()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v9, Lgdy;->a:Lgdw;

    invoke-virtual {v1}, Lgdw;->z()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfzt;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6285
    invoke-static {v6, v3}, Lfzt;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 6286
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    invoke-static {v6, v0}, Lfzt;->a(Ljava/lang/String;[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V

    .line 6288
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 6289
    const-string/jumbo v0, "is_space_admin"

    iget-object v1, v9, Lgdy;->a:Lgdw;

    invoke-virtual {v1}, Lgdw;->A()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6291
    new-instance v7, Lcom/alibaba/dingtalk/cspace/SpacePhotoObjectsFetcher;

    invoke-direct {v7}, Lcom/alibaba/dingtalk/cspace/SpacePhotoObjectsFetcher;-><init>()V

    .line 6292
    iput-object v6, v7, Lcom/alibaba/dingtalk/cspace/SpacePhotoObjectsFetcher;->cacheKey:Ljava/lang/String;

    .line 6294
    iget-object v0, v9, Lgdy;->b:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 6295
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    iget-object v1, v9, Lgdy;->b:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;ZZZLjava/lang/String;Ljava/lang/Object;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V

    goto/16 :goto_0

    :cond_17
    move-object v0, v1

    goto/16 :goto_8

    :cond_18
    move-object v8, v1

    goto/16 :goto_9
.end method

.method public final a(Lgeh;Lgei;I)V
    .locals 1
    .param p1, "viewModel"    # Lgeh;
    .param p2, "wrapper"    # Lgei;
    .param p3, "selectCount"    # I

    .prologue
    .line 662
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    if-gez p3, :cond_1

    .line 666
    :cond_0
    :goto_0
    return-void

    .line 665
    :cond_1
    iget-object v0, p0, Lgdw$a;->a:Lgdw;

    invoke-static {v0, p3}, Lgdw;->a(Lgdw;I)V

    goto :goto_0
.end method

.method public final b(Lcom/alibaba/dingtalk/cspace/model/CsDentry;Lgeh;)V
    .locals 0
    .param p1, "csDentry"    # Lcom/alibaba/dingtalk/cspace/model/CsDentry;
    .param p2, "dentryViewModel"    # Lgeh;

    .prologue
    .line 645
    invoke-virtual {p0, p1, p2}, Lgdw$a;->c(Lcom/alibaba/dingtalk/cspace/model/CsDentry;Lgeh;)V

    .line 646
    return-void
.end method

.method public final c(Lcom/alibaba/dingtalk/cspace/model/CsDentry;Lgeh;)V
    .locals 6
    .param p1, "csDentry"    # Lcom/alibaba/dingtalk/cspace/model/CsDentry;
    .param p2, "dentryViewModel"    # Lgeh;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 657
    iget-object v0, p0, Lgdw$a;->a:Lgdw;

    .line 7057
    iget-object v1, v0, Lgdw;->b:Lgdy;

    .line 7303
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    if-nez v0, :cond_1

    .line 7327
    :cond_0
    :goto_0
    return-void

    .line 7307
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    .line 7308
    if-eqz v0, :cond_0

    .line 7312
    iget-object v2, v1, Lgdy;->a:Lgdw;

    invoke-virtual {v2}, Lgdw;->w()I

    move-result v2

    invoke-static {v2}, Lgqu;->h(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Lgdy;->a:Lgdw;

    .line 7313
    invoke-virtual {v2}, Lgdw;->w()I

    move-result v2

    invoke-static {v2}, Lgqu;->d(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7314
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgqd;->a(Ljava/lang/String;)Z

    .line 7315
    :cond_2
    invoke-static {v0}, Lgpx;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7335
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7338
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v2

    .line 7340
    new-instance v0, Lgdy$1;

    invoke-direct {v0, v1, v2, p1, p2}, Lgdy$1;-><init>(Lgdy;Lcom/alibaba/alimei/cspace/model/DentryModel;Lcom/alibaba/dingtalk/cspace/model/CsDentry;Lgeh;)V

    .line 7361
    const-class v3, Lcma;

    iget-object v4, v1, Lgdy;->b:Landroid/content/Context;

    invoke-static {v0, v3, v4}, Lgpr;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 7362
    iget-object v3, v1, Lgdy;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher;

    if-nez v3, :cond_3

    .line 7363
    new-instance v3, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher;

    iget-object v4, v1, Lgdy;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher;-><init>(Landroid/content/Context;)V

    iput-object v3, v1, Lgdy;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher;

    .line 7365
    :cond_3
    iget-object v1, v1, Lgdy;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher;

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Lcma;)V

    goto :goto_0

    .line 7320
    :cond_4
    iget-object v0, v1, Lgdy;->a:Lgdw;

    invoke-virtual {v0}, Lgdw;->w()I

    move-result v0

    invoke-static {v0}, Lgqu;->h(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 7369
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7372
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v2

    .line 7374
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v0

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthFlag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgqd;->c(Ljava/lang/String;)Z

    move-result v0

    .line 7376
    invoke-static {v2}, Lgpv;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 7378
    invoke-static {}, Lgqd;->a()Lgqd;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthFlag()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "readOnly"

    invoke-static {v2, v3}, Lgqd;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 7379
    invoke-virtual {v1, p1, v0, v2}, Lgdy;->a(Lcom/alibaba/dingtalk/cspace/model/CsDentry;ZZ)V

    goto/16 :goto_0

    .line 7383
    :cond_5
    new-instance v3, Lgdy$2;

    invoke-direct {v3, v1, p1, p2, v0}, Lgdy$2;-><init>(Lgdy;Lcom/alibaba/dingtalk/cspace/model/CsDentry;Lgeh;Z)V

    .line 7403
    const-class v0, Lcma;

    iget-object v4, v1, Lgdy;->b:Landroid/content/Context;

    invoke-static {v3, v0, v4}, Lgpr;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 7404
    iget-object v3, v1, Lgdy;->d:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher;

    if-nez v3, :cond_6

    .line 7405
    new-instance v3, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher;

    iget-object v4, v1, Lgdy;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher;-><init>(Landroid/content/Context;)V

    iput-object v3, v1, Lgdy;->d:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher;

    .line 7407
    :cond_6
    iget-object v1, v1, Lgdy;->d:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto/16 :goto_0

    .line 7325
    :cond_7
    iget-object v0, v1, Lgdy;->a:Lgdw;

    invoke-virtual {v0}, Lgdw;->w()I

    move-result v0

    invoke-static {v0}, Lgqu;->d(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 7411
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7414
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    .line 7416
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v2

    const-string/jumbo v3, "f_conf_space_acl_permission_setting_enable"

    .line 8083
    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 7416
    if-eqz v2, :cond_8

    .line 7417
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v2

    iget-object v3, v1, Lgdy;->a:Lgdw;

    invoke-virtual {v3}, Lgdw;->v()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgqd;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 7418
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthFlag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lgqd;->c(Ljava/lang/String;)Z

    move-result v0

    .line 7419
    invoke-virtual {v1, p1, v0, v5}, Lgdy;->a(Lcom/alibaba/dingtalk/cspace/model/CsDentry;ZZ)V

    goto/16 :goto_0

    .line 7421
    :cond_8
    iget-object v0, v1, Lgdy;->a:Lgdw;

    invoke-virtual {v0}, Lgdw;->A()Z

    move-result v0

    invoke-virtual {v1, p1, v0, v5}, Lgdy;->a(Lcom/alibaba/dingtalk/cspace/model/CsDentry;ZZ)V

    goto/16 :goto_0

    .line 7330
    :cond_9
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v0

    iget-object v2, v1, Lgdy;->a:Lgdw;

    invoke-virtual {v2}, Lgdw;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lfzv;->h(Ljava/lang/String;)Z

    move-result v0

    .line 7331
    iget-object v2, v1, Lgdy;->a:Lgdw;

    invoke-virtual {v2}, Lgdw;->A()Z

    move-result v2

    invoke-virtual {v1, p1, v2, v0}, Lgdy;->a(Lcom/alibaba/dingtalk/cspace/model/CsDentry;ZZ)V

    goto/16 :goto_0
.end method
