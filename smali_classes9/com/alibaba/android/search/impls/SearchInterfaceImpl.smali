.class public Lcom/alibaba/android/search/impls/SearchInterfaceImpl;
.super Lcom/alibaba/android/dingtalk/search/base/SearchInterface;
.source "SearchInterfaceImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;-><init>()V

    return-void
.end method

.method private static d(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    .locals 2
    .param p0, "appId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 577
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;-><init>()V

    .line 578
    .local v0, "filterObject":Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    iput-object p0, v0, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->appId:Ljava/lang/String;

    .line 579
    iput v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->nodeType:I

    .line 580
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->showSubEmp:Z

    .line 581
    return-object v0
.end method


# virtual methods
.method public final a(JLcbz;)Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;
    .locals 3
    .param p1, "orgId"    # J
    .param p3, "listener"    # Lcbz;

    .prologue
    .line 189
    new-instance v1, Lcom/alibaba/android/search/fragment/ExternalContactOrgSearchFragment;

    invoke-direct {v1}, Lcom/alibaba/android/search/fragment/ExternalContactOrgSearchFragment;-><init>()V

    .line 191
    .local v1, "fragment":Lcom/alibaba/android/search/fragment/ExternalContactOrgSearchFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 192
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "org_id"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 193
    invoke-virtual {v1, v0}, Lcom/alibaba/android/search/fragment/ExternalContactOrgSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1129
    iput-object p3, v1, Lcom/alibaba/android/search/fragment/ExternalContactOrgSearchFragment;->E:Lcbz;

    .line 196
    return-object v1
.end method

.method public final a(Lcbz;)Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;
    .locals 1
    .param p1, "listener"    # Lcbz;

    .prologue
    .line 176
    new-instance v0, Lcom/alibaba/android/search/fragment/ExternalContactDetailSearchFragment;

    invoke-direct {v0}, Lcom/alibaba/android/search/fragment/ExternalContactDetailSearchFragment;-><init>()V

    .line 1121
    .local v0, "fragment":Lcom/alibaba/android/search/fragment/ExternalContactDetailSearchFragment;
    iput-object p1, v0, Lcom/alibaba/android/search/fragment/ExternalContactDetailSearchFragment;->D:Lcbz;

    .line 179
    return-object v0
.end method

.method public final a(Landroid/content/Context;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 379
    new-instance v0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;

    invoke-direct {v0, p1}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final a(Landroid/content/Context;Z)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isGroupChat"    # Z
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 385
    if-nez p1, :cond_0

    .line 386
    const/4 v0, 0x0

    .line 388
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;-><init>(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/CharSequence;)Lcom/alibaba/android/dingtalk/search/base/SearchInterface$a;
    .locals 1
    .param p1, "hasRedString"    # Ljava/lang/CharSequence;

    .prologue
    .line 623
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    const/4 v0, 0x0

    .line 626
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Ljava/lang/CharSequence;)Lcom/alibaba/android/dingtalk/search/base/SearchInterface$a;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/search/base/SearchInterface$b$a;)Lcom/alibaba/android/dingtalk/search/base/SearchInterface$b;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "view"    # Lcom/alibaba/android/dingtalk/search/base/SearchInterface$b$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 655
    invoke-static {p1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 656
    const/4 v0, 0x0

    .line 658
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lerb;

    invoke-direct {v0, p1, p2}, Lerb;-><init>(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/search/base/SearchInterface$b$a;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 274
    invoke-static {p1}, Leui;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcco;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 798
    .local p1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v2

    const-string/jumbo v3, "f_search_support_contact_local_enhance"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 800
    new-instance v2, Lesq;

    invoke-direct {v2}, Lesq;-><init>()V

    .line 9218
    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Lesq;->a(ILjava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 802
    .local v1, "userIntimacyPushObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 803
    .local v0, "iUserIntimacyModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcco;>;"
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 806
    .end local v0    # "iUserIntimacyModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcco;>;"
    .end local v1    # "userIntimacyPushObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;>;"
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p2, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 294
    .local p1, "datas":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(IILjava/lang/String;JLcma;)V
    .locals 12
    .param p1, "offset"    # I
    .param p2, "size"    # I
    .param p3, "keyword"    # Ljava/lang/String;
    .param p4, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "J",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 541
    .local p6, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel;>;"
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 543
    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 574
    :goto_0
    return-void

    .line 548
    :cond_0
    new-instance v11, Lcom/alibaba/android/search/impls/SearchInterfaceImpl$7;

    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-direct {v11, p0, v0, p3, v2}, Lcom/alibaba/android/search/impls/SearchInterfaceImpl$7;-><init>(Lcom/alibaba/android/search/impls/SearchInterfaceImpl;Lcma;Ljava/lang/String;I)V

    .line 573
    .local v11, "apiEventListener":Lcmb;
    invoke-static {}, Lenc;->b()Lenb;

    move-result-object v3

    invoke-static {}, Letb;->a()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v8, "0"

    const/16 v9, 0x14

    const-string/jumbo v2, "sys.callback.visible"

    invoke-static {v2}, Lcom/alibaba/android/search/impls/SearchInterfaceImpl;->d(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    move-result-object v10

    move-object v5, p3

    move-wide/from16 v6, p4

    invoke-interface/range {v3 .. v11}, Lenb;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILcom/alibaba/android/dingtalk/userbase/model/FilterObject;Lcmb;)V

    goto :goto_0
.end method

.method public final a(IILjava/lang/String;Lcca;)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "size"    # I
    .param p3, "keyword"    # Ljava/lang/String;
    .param p4, "searchTaskListener"    # Lcca;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 465
    const/4 v0, 0x0

    const/16 v1, 0x3e8

    .line 8112
    invoke-static {v0, v1, p3, p4}, Lenr;->a(IILjava/lang/String;Lcca;)V

    .line 466
    return-void
.end method

.method public final a(IILjava/lang/String;Lcma;)V
    .locals 10
    .param p1, "offset"    # I
    .param p2, "size"    # I
    .param p3, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 494
    .local p4, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel;>;"
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    const/4 v0, 0x0

    invoke-interface {p4, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 527
    :goto_0
    return-void

    .line 501
    :cond_0
    new-instance v9, Lcom/alibaba/android/search/impls/SearchInterfaceImpl$6;

    const/4 v0, 0x0

    invoke-direct {v9, p0, p4, p3, v0}, Lcom/alibaba/android/search/impls/SearchInterfaceImpl$6;-><init>(Lcom/alibaba/android/search/impls/SearchInterfaceImpl;Lcma;Ljava/lang/String;I)V

    .line 526
    .local v9, "apiEventListener":Lcmb;
    invoke-static {}, Lenc;->b()Lenb;

    move-result-object v1

    invoke-static {}, Letb;->a()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, -0x1

    const-string/jumbo v6, "0"

    const/4 v7, 0x3

    const-string/jumbo v0, "sys.recommend.visible"

    invoke-static {v0}, Lcom/alibaba/android/search/impls/SearchInterfaceImpl;->d(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    move-result-object v8

    move-object v3, p3

    invoke-interface/range {v1 .. v9}, Lenb;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILcom/alibaba/android/dingtalk/userbase/model/FilterObject;Lcmb;)V

    goto :goto_0
.end method

.method public final a(IILjava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Lcca;)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "size"    # I
    .param p3, "keyword"    # Ljava/lang/String;
    .param p4, "ownerId"    # Ljava/lang/Long;
    .param p5, "tag"    # Ljava/lang/Integer;
    .param p6, "searchTaskListener"    # Lcca;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 489
    move v1, v0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lenu;->a(IILjava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Lcca;)V

    .line 490
    return-void
.end method

.method public final a(JLcma;)V
    .locals 3
    .param p1, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 418
    .local p3, "apiEventListener":Lcma;, "Lcma<Ljava/lang/Integer;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 448
    :goto_0
    return-void

    .line 422
    :cond_0
    invoke-static {}, Lenc;->b()Lenb;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/search/impls/SearchInterfaceImpl$5;

    invoke-direct {v1, p0, p3}, Lcom/alibaba/android/search/impls/SearchInterfaceImpl$5;-><init>(Lcom/alibaba/android/search/impls/SearchInterfaceImpl;Lcma;)V

    invoke-interface {v0, p1, p2, v1}, Lenb;->a(JLcma;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 254
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/search/category_search.html"

    new-instance v2, Lcom/alibaba/android/search/impls/SearchInterfaceImpl$3;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/search/impls/SearchInterfaceImpl$3;-><init>(Lcom/alibaba/android/search/impls/SearchInterfaceImpl;Landroid/os/Bundle;)V

    .line 255
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 265
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;
    .param p4, "chooseMode"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 234
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/search/category_search.html"

    new-instance v2, Lcom/alibaba/android/search/impls/SearchInterfaceImpl$2;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v2, p0, v3, v4, p3}, Lcom/alibaba/android/search/impls/SearchInterfaceImpl$2;-><init>(Lcom/alibaba/android/search/impls/SearchInterfaceImpl;Ljava/lang/String;ILcom/alibaba/android/dingtalk/search/base/SearchCategoryType;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 250
    return-void
.end method

.method public final a(Lccn;Lcma;)V
    .locals 14
    .param p1, "paramsModel"    # Lccn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccn;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 279
    .local p2, "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel;>;"
    new-instance v1, Lesu;

    invoke-direct {v1}, Lesu;-><init>()V

    .line 2048
    if-eqz p1, :cond_2

    .line 2069
    iget-boolean v0, p1, Lccn;->e:Z

    .line 2052
    if-eqz v0, :cond_1

    .line 3037
    iget-object v2, p1, Lccn;->a:Ljava/lang/String;

    .line 3053
    iget v4, p1, Lccn;->c:I

    .line 3061
    iget v3, p1, Lccn;->d:I

    .line 3071
    new-instance v0, Lesu$1;

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lesu$1;-><init>(Lesu;Ljava/lang/String;IILcma;)V

    .line 4099
    if-eqz v0, :cond_1

    .line 4103
    invoke-static {}, Leue;->a()Leue;

    move-result-object v5

    .line 4718
    new-instance v6, Lcom/alibaba/android/searchengine/models/SearchTask;

    invoke-direct {v6}, Lcom/alibaba/android/searchengine/models/SearchTask;-><init>()V

    .line 4719
    const-string/jumbo v7, "local_contact"

    iput-object v7, v6, Lcom/alibaba/android/searchengine/models/SearchTask;->group:Ljava/lang/String;

    .line 4720
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->e()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/alibaba/android/searchengine/models/SearchTask;->bizType:Ljava/lang/String;

    .line 4721
    new-instance v7, Lcom/alibaba/android/searchengine/models/SearchTable;

    const-string/jumbo v8, "tb_local_contact"

    invoke-direct {v7, v8}, Lcom/alibaba/android/searchengine/models/SearchTable;-><init>(Ljava/lang/String;)V

    iput-object v7, v6, Lcom/alibaba/android/searchengine/models/SearchTask;->searchTable:Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 4722
    iget-object v7, v6, Lcom/alibaba/android/searchengine/models/SearchTask;->searchTable:Lcom/alibaba/android/searchengine/models/SearchTable;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "phonenumber"

    aput-object v10, v8, v9

    invoke-virtual {v7, v8}, Lcom/alibaba/android/searchengine/models/SearchTable;->addQueryColumns([Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 4723
    iget-object v7, v6, Lcom/alibaba/android/searchengine/models/SearchTask;->searchTable:Lcom/alibaba/android/searchengine/models/SearchTable;

    const/16 v8, 0xb

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "cid"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string/jumbo v10, "uid"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v10, "name"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-string/jumbo v10, "pinyin"

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-string/jumbo v10, "phonenumber"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    const-string/jumbo v10, "phonecode"

    aput-object v10, v8, v9

    const/4 v9, 0x6

    const-string/jumbo v10, "relation"

    aput-object v10, v8, v9

    const/4 v9, 0x7

    const-string/jumbo v10, "modifyTime"

    aput-object v10, v8, v9

    const/16 v9, 0x8

    const-string/jumbo v10, "isupload"

    aput-object v10, v8, v9

    const/16 v9, 0x9

    const-string/jumbo v10, "tag"

    aput-object v10, v8, v9

    const/16 v9, 0xa

    const-string/jumbo v10, "phoneunite"

    aput-object v10, v8, v9

    invoke-virtual {v7, v8}, Lcom/alibaba/android/searchengine/models/SearchTable;->addOutColumns([Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 4725
    if-ltz v4, :cond_0

    if-lez v3, :cond_0

    .line 4726
    iget-object v7, v6, Lcom/alibaba/android/searchengine/models/SearchTask;->searchTable:Lcom/alibaba/android/searchengine/models/SearchTable;

    invoke-virtual {v7, v4, v3}, Lcom/alibaba/android/searchengine/models/SearchTable;->addLimitClause(II)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 4103
    :cond_0
    new-instance v3, Lenr$14;

    invoke-direct {v3, v0}, Lenr$14;-><init>(Lcca;)V

    invoke-virtual {v5, v2, v6, v3}, Leue;->a(Ljava/lang/String;Lcom/alibaba/android/searchengine/models/SearchTask;Leug;)V

    .line 5077
    :cond_1
    iget-boolean v0, p1, Lccn;->f:Z

    .line 2056
    if-eqz v0, :cond_2

    .line 6037
    iget-object v2, p1, Lccn;->a:Ljava/lang/String;

    .line 6045
    iget-wide v8, p1, Lccn;->b:J

    .line 6053
    iget v4, p1, Lccn;->c:I

    .line 6061
    iget v3, p1, Lccn;->d:I

    .line 6123
    new-instance v0, Lesu$2;

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lesu$2;-><init>(Lesu;Ljava/lang/String;IILcma;)V

    .line 6162
    const-wide/16 v6, 0x0

    cmp-long v1, v8, v6

    if-lez v1, :cond_3

    .line 6163
    invoke-static {}, Lenc;->b()Lenb;

    move-result-object v6

    invoke-static {}, Lesu;->a()Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    move-result-object v12

    move-object v7, v2

    move v10, v4

    move v11, v3

    move-object v13, v0

    invoke-interface/range {v6 .. v13}, Lenb;->a(Ljava/lang/String;JIILcom/alibaba/android/dingtalk/userbase/model/FilterObject;Lcma;)V

    :cond_2
    :goto_0
    return-void

    .line 6165
    :cond_3
    invoke-static {}, Lenc;->b()Lenb;

    move-result-object v5

    invoke-static {}, Lesu;->a()Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    move-result-object v9

    move-object v6, v2

    move v7, v4

    move v8, v3

    move-object v10, v0

    invoke-interface/range {v5 .. v10}, Lenb;->a(Ljava/lang/String;IILcom/alibaba/android/dingtalk/userbase/model/FilterObject;Lcma;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V
    .locals 6
    .param p1, "userProfileExtensionObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 408
    invoke-static {}, Lesm;->a()Lesm;

    move-result-object v0

    .line 7325
    if-eqz p1, :cond_0

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    .line 7326
    :cond_0
    :goto_0
    return-void

    .line 7329
    :cond_1
    invoke-static {}, Lesm;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lesm$2;

    invoke-direct {v2, v0, p1}, Lesm$2;-><init>(Lesm;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    .locals 0
    .param p1, "dimensionValueSet"    # Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .param p2, "measureValueSet"    # Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .prologue
    .line 369
    invoke-static {p1, p2}, Letb;->a(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 370
    return-void
.end method

.method public final a(Ljava/lang/String;JILcma;)V
    .locals 6
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "orgId"    # J
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 299
    .local p5, "apiEventListener":Lcma;, "Lcma<Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {}, Lenc;->b()Lenb;

    move-result-object v0

    const/4 v4, 0x5

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lenb;->a(Ljava/lang/String;JILcma;)V

    .line 300
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lccm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 594
    .local p3, "apiEventListener":Lcma;, "Lcma<Lccm;>;"
    invoke-static {}, Lenc;->b()Lenb;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lenb;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 595
    return-void
.end method

.method public final a(Landroid/app/Activity;)Z
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 631
    invoke-static {p1}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v1, "search_msg_new_cell"

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 586
    invoke-static {p1, p2, p3}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final b(Landroid/content/Context;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 394
    if-nez p1, :cond_0

    .line 395
    const/4 v0, 0x0

    .line 398
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->a(Landroid/content/Context;)Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;

    move-result-object v0

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 133
    invoke-static {}, Lent;->c()V

    .line 135
    const-string/jumbo v0, "search_rec_use_sync_a"

    .line 136
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v2, "search_rec_use_sync_a"

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v1

    .line 135
    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 137
    return-void
.end method

.method public final b(IILjava/lang/String;Lcca;)V
    .locals 9
    .param p1, "offset"    # I
    .param p2, "size"    # I
    .param p3, "keyword"    # Ljava/lang/String;
    .param p4, "searchTaskListener"    # Lcca;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 473
    .line 8299
    if-eqz p4, :cond_1

    .line 8303
    invoke-static {}, Leue;->a()Leue;

    move-result-object v0

    .line 8828
    new-instance v1, Lcom/alibaba/android/searchengine/models/SearchTask;

    invoke-direct {v1}, Lcom/alibaba/android/searchengine/models/SearchTask;-><init>()V

    .line 8829
    const-string/jumbo v2, "task_user_email"

    iput-object v2, v1, Lcom/alibaba/android/searchengine/models/SearchTask;->group:Ljava/lang/String;

    .line 8830
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->k()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/searchengine/models/SearchTask;->bizType:Ljava/lang/String;

    .line 8831
    new-instance v2, Lcom/alibaba/android/searchengine/models/SearchTable;

    const-string/jumbo v3, "tbuser"

    invoke-direct {v2, v3}, Lcom/alibaba/android/searchengine/models/SearchTable;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/alibaba/android/searchengine/models/SearchTask;->searchTable:Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 8832
    iget-object v2, v1, Lcom/alibaba/android/searchengine/models/SearchTask;->searchTable:Lcom/alibaba/android/searchengine/models/SearchTable;

    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v4, "nick"

    aput-object v4, v3, v6

    const-string/jumbo v4, "alias"

    aput-object v4, v3, v5

    const-string/jumbo v4, "orgEmail"

    aput-object v4, v3, v7

    invoke-virtual {v2, v3}, Lcom/alibaba/android/searchengine/models/SearchTable;->addQueryColumns([Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 8833
    iget-object v2, v1, Lcom/alibaba/android/searchengine/models/SearchTask;->searchTable:Lcom/alibaba/android/searchengine/models/SearchTable;

    const/16 v3, 0x1b

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "uid"

    aput-object v4, v3, v6

    const-string/jumbo v4, "profileType"

    aput-object v4, v3, v5

    const-string/jumbo v4, "tag"

    aput-object v4, v3, v7

    const-string/jumbo v4, "iconMediaId"

    aput-object v4, v3, v8

    const/4 v4, 0x4

    const-string/jumbo v5, "nick"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string/jumbo v5, "nickpinyin"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string/jumbo v5, "nickAlpha"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string/jumbo v5, "gender"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string/jumbo v5, "city"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string/jumbo v5, "stateCode"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string/jumbo v5, "mobile"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const-string/jumbo v5, "modifyTime"

    aput-object v5, v3, v4

    const/16 v4, 0xc

    const-string/jumbo v5, "labels"

    aput-object v5, v3, v4

    const/16 v4, 0xd

    const-string/jumbo v5, "data_complete"

    aput-object v5, v3, v4

    const/16 v4, 0xe

    const-string/jumbo v5, "is_orguser"

    aput-object v5, v3, v4

    const/16 v4, 0xf

    const-string/jumbo v5, "is_active"

    aput-object v5, v3, v4

    const/16 v4, 0x10

    const-string/jumbo v5, "real_name"

    aput-object v5, v3, v4

    const/16 v4, 0x11

    const-string/jumbo v5, "user_type"

    aput-object v5, v3, v4

    const/16 v4, 0x12

    const-string/jumbo v5, "extensation"

    aput-object v5, v3, v4

    const/16 v4, 0x13

    const-string/jumbo v5, "alias"

    aput-object v5, v3, v4

    const/16 v4, 0x14

    const-string/jumbo v5, "aliaspinyin"

    aput-object v5, v3, v4

    const/16 v4, 0x15

    const-string/jumbo v5, "dingtaklId"

    aput-object v5, v3, v4

    const/16 v4, 0x16

    const-string/jumbo v5, "email"

    aput-object v5, v3, v4

    const/16 v4, 0x17

    const-string/jumbo v5, "authOrg"

    aput-object v5, v3, v4

    const/16 v4, 0x18

    const-string/jumbo v5, "activeTime"

    aput-object v5, v3, v4

    const/16 v4, 0x19

    const-string/jumbo v5, "status"

    aput-object v5, v3, v4

    const/16 v4, 0x1a

    const-string/jumbo v5, "orgEmail"

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/alibaba/android/searchengine/models/SearchTable;->addOutColumns([Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 8837
    if-lez p2, :cond_0

    .line 8838
    iget-object v2, v1, Lcom/alibaba/android/searchengine/models/SearchTask;->searchTable:Lcom/alibaba/android/searchengine/models/SearchTable;

    invoke-virtual {v2, v6, p2}, Lcom/alibaba/android/searchengine/models/SearchTable;->addLimitClause(II)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 8303
    :cond_0
    new-instance v2, Lenr$3;

    invoke-direct {v2, p4}, Lenr$3;-><init>(Lcca;)V

    invoke-virtual {v0, p3, v1, v2}, Leue;->a(Ljava/lang/String;Lcom/alibaba/android/searchengine/models/SearchTask;Leug;)V

    .line 474
    :cond_1
    return-void
.end method

.method public final b(IILjava/lang/String;Lcma;)V
    .locals 3
    .param p1, "offset"    # I
    .param p2, "size"    # I
    .param p3, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 536
    .local p4, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel;>;"
    const/4 v0, 0x0

    const/16 v1, 0x14

    .line 9185
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9186
    if-eqz p4, :cond_0

    .line 9187
    const/4 v0, 0x0

    invoke-interface {p4, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 9189
    :cond_0
    :goto_0
    return-void

    .line 9192
    :cond_1
    new-instance v2, Lenu$1;

    invoke-direct {v2, p3, v0, v1, p4}, Lenu$1;-><init>(Ljava/lang/String;IILcma;)V

    .line 9210
    invoke-static {v0, v1, p3, v2}, Lenu;->e(IILjava/lang/String;Lcca;)V

    goto :goto_0
.end method

.method public final b(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 351
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/search/search_global_new.html"

    new-instance v2, Lcom/alibaba/android/search/impls/SearchInterfaceImpl$4;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/search/impls/SearchInterfaceImpl$4;-><init>(Lcom/alibaba/android/search/impls/SearchInterfaceImpl;Landroid/os/Bundle;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 360
    return-void
.end method

.method public final b(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    .locals 0
    .param p1, "dimensionValueSet"    # Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .param p2, "measureValueSet"    # Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .prologue
    .line 374
    invoke-static {p1, p2}, Letb;->c(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 375
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2
    .param p1, "jsonConfig"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 452
    invoke-static {}, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager;->a()Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager;

    move-result-object v0

    .line 8090
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager;->a(Ljava/lang/String;Z)V

    .line 453
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lccm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 602
    .local p3, "apiEventListener":Lcma;, "Lcma<Lccm;>;"
    invoke-static {}, Lenc;->b()Lenb;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lenb;->b(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 603
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 141
    invoke-static {}, Lent;->a()V

    .line 142
    return-void
.end method

.method public final c(IILjava/lang/String;Lcca;)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "size"    # I
    .param p3, "keyword"    # Ljava/lang/String;
    .param p4, "searchTaskListener"    # Lcca;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 481
    move v1, v0

    move-object v2, p3

    move-object v4, v3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lenu;->a(IILjava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Lcca;)V

    .line 482
    return-void
.end method

.method public final c(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 269
    invoke-static {p1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/search/search_ding.html"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lccm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 610
    .local p3, "apiEventListener":Lcma;, "Lcma<Lccm;>;"
    invoke-static {}, Lenc;->b()Lenb;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lenb;->c(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 611
    return-void
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 10
    .param p1, "cid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 848
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 849
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->l()Ljava/lang/String;

    move-result-object v2

    .line 850
    .local v2, "bizType":Ljava/lang/String;
    invoke-static {p1}, Libu$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 851
    .local v3, "bizTableName":Ljava/lang/String;
    invoke-static {}, Leue;->a()Leue;

    move-result-object v0

    .line 852
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->o()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, ""

    sget-object v5, Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;->ForceSync:Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;

    invoke-virtual {v5}, Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;->getValue()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Leue;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    .line 853
    .local v6, "result":I
    const-string/jumbo v0, "search"

    const-string/jumbo v1, "forceFullSyncConversationMsg"

    const-string/jumbo v4, "cid=%s,result=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v8

    .line 854
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 853
    invoke-static {v0, v1, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    if-nez v6, :cond_0

    move v0, v7

    .line 857
    .end local v2    # "bizType":Ljava/lang/String;
    .end local v3    # "bizTableName":Ljava/lang/String;
    .end local v6    # "result":I
    :goto_0
    return v0

    .restart local v2    # "bizType":Ljava/lang/String;
    .restart local v3    # "bizTableName":Ljava/lang/String;
    .restart local v6    # "result":I
    :cond_0
    move v0, v8

    .line 855
    goto :goto_0

    .end local v2    # "bizType":Ljava/lang/String;
    .end local v3    # "bizTableName":Ljava/lang/String;
    .end local v6    # "result":I
    :cond_1
    move v0, v8

    .line 857
    goto :goto_0
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 146
    invoke-static {}, Lent;->d()V

    .line 147
    return-void
.end method

.method public final d(Landroid/content/Context;)V
    .locals 1
    .param p1, "activity"    # Landroid/content/Context;

    .prologue
    .line 346
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/android/search/impls/SearchInterfaceImpl;->b(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 347
    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchProfessionResultObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 618
    .local p3, "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchProfessionResultObject;>;"
    invoke-static {}, Lenc;->b()Lenb;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lenb;->d(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 619
    return-void
.end method

.method public final e()V
    .locals 0

    .prologue
    .line 156
    invoke-static {}, Lent;->b()V

    .line 157
    return-void
.end method

.method public final e(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 364
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/search/search_org_homepage.html"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    .line 365
    return-void
.end method

.method public final f()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 151
    const-string/jumbo v0, "search_engine_use_fts"

    const-string/jumbo v1, "fts=%b"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Letd;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    return-void
.end method

.method public final f(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 694
    if-nez p1, :cond_0

    .line 706
    :goto_0
    return-void

    .line 698
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/search/miniapp_search.html"

    new-instance v2, Lcom/alibaba/android/search/impls/SearchInterfaceImpl$8;

    invoke-direct {v2, p0}, Lcom/alibaba/android/search/impls/SearchInterfaceImpl$8;-><init>(Lcom/alibaba/android/search/impls/SearchInterfaceImpl;)V

    .line 699
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public final g()Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;
    .locals 1

    .prologue
    .line 166
    new-instance v0, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;

    invoke-direct {v0}, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;-><init>()V

    return-object v0
.end method

.method public final h()Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;
    .locals 1

    .prologue
    .line 171
    new-instance v0, Lcom/alibaba/android/search/fragment/ExternalContactDetailSearchFragment;

    invoke-direct {v0}, Lcom/alibaba/android/search/fragment/ExternalContactDetailSearchFragment;-><init>()V

    return-object v0
.end method

.method public final i()Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;
    .locals 1

    .prologue
    .line 201
    new-instance v0, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;

    invoke-direct {v0}, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;-><init>()V

    return-object v0
.end method

.method public init(Landroid/app/Application;)V
    .locals 4
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 120
    invoke-static {}, Lenn;->a()Lenn;

    .line 121
    invoke-static {}, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager;->a()Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager;

    .line 122
    invoke-static {}, Lcom/alibaba/android/search/service/SearchConfigCenter;->a()Lcom/alibaba/android/search/service/SearchConfigCenter;

    move-result-object v0

    .line 1086
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const-string/jumbo v2, "pref_key_msg_search_type_list"

    invoke-static {v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1087
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1088
    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/service/SearchConfigCenter;->b(Ljava/lang/String;)V

    .line 1095
    :goto_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const-string/jumbo v2, "pref_key_msg_debug_white_list"

    invoke-static {v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1096
    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/service/SearchConfigCenter;->a(Ljava/lang/String;)V

    .line 123
    return-void

    .line 1091
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/alibaba/android/search/service/SearchConfigCenter;->a:Ljava/util/List;

    .line 1092
    iget-object v1, v0, Lcom/alibaba/android/search/service/SearchConfigCenter;->a:Ljava/util/List;

    new-instance v2, Lcom/alibaba/android/search/service/SearchConfigCenter$MsgSearchTypeConfig;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/alibaba/android/search/service/SearchConfigCenter$MsgSearchTypeConfig;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final j()Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;
    .locals 1

    .prologue
    .line 206
    new-instance v0, Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment;

    invoke-direct {v0}, Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment;-><init>()V

    return-object v0
.end method

.method public final k()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 221
    const-string/jumbo v1, "updateFunctionTable"

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 222
    .local v0, "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    sget-object v1, Lcom/alibaba/doraemon/Priority;->LOW:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 223
    new-instance v1, Lcom/alibaba/android/search/impls/SearchInterfaceImpl$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/impls/SearchInterfaceImpl$1;-><init>(Lcom/alibaba/android/search/impls/SearchInterfaceImpl;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 229
    return-void
.end method

.method public final l()V
    .locals 0

    .prologue
    .line 315
    invoke-static {}, Less;->a()V

    .line 316
    return-void
.end method

.method public final m()V
    .locals 1

    .prologue
    .line 320
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->m()V

    .line 321
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    invoke-static {}, Lesl;->a()V

    .line 322
    invoke-static {}, Lesd;->a()Lesd;

    invoke-static {}, Lesd;->d()V

    .line 323
    return-void
.end method

.method public final n()V
    .locals 0

    .prologue
    .line 327
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->n()V

    .line 328
    invoke-static {}, Lesd;->a()Lesd;

    invoke-static {}, Lesd;->d()V

    .line 329
    return-void
.end method

.method public final o()V
    .locals 1

    .prologue
    .line 333
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->o()V

    .line 334
    invoke-static {}, Lesd;->a()Lesd;

    move-result-object v0

    invoke-virtual {v0}, Lesd;->e()V

    .line 335
    invoke-static {}, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager;->a()Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager;

    move-result-object v0

    .line 7086
    iget-object v0, v0, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 336
    return-void
.end method

.method public onApplicationCreate()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public final p()V
    .locals 1

    .prologue
    .line 340
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->p()V

    .line 341
    invoke-static {}, Lesd;->a()Lesd;

    move-result-object v0

    invoke-virtual {v0}, Lesd;->b()V

    .line 342
    return-void
.end method

.method public final q()Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;
    .locals 1

    .prologue
    .line 413
    new-instance v0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-direct {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;-><init>()V

    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 457
    invoke-static {}, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager;->a()Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final s()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 637
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_search_filter_optimize"

    invoke-virtual {v1, v2, v0}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 638
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v2, "search_msg_new_narrow"

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final t()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 643
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_search_global_msg_new_style"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final u()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 648
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_search_new_feedback"

    invoke-virtual {v1, v2, v0}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 649
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v2, "search_vvip_feedback_enable"

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final v()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 669
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_search_assure_area"

    invoke-virtual {v1, v2, v0}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 670
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v2, "dt_search_assure_enable_android"

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final w()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 675
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v2, "search_msg_car_brand"

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 676
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_search_msg_car_brand"

    invoke-virtual {v1, v2, v0}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final x()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 682
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v2, "search_date_token"

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 683
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_search_search_date_token"

    invoke-virtual {v1, v2, v0}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final y()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 688
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v2, "search_redundant"

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 689
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_search_redundant"

    invoke-virtual {v1, v2, v0}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final z()Z
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 835
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 836
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->l()Ljava/lang/String;

    move-result-object v0

    .line 837
    .local v0, "bizType":Ljava/lang/String;
    invoke-static {}, Leue;->a()Leue;

    move-result-object v4

    .line 838
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->o()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;->ForceSync:Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;

    invoke-virtual {v6}, Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;->getValue()I

    move-result v6

    invoke-virtual {v4, v5, v0, v6}, Leue;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 839
    .local v1, "result":I
    const-string/jumbo v4, "search"

    const-string/jumbo v5, "forceFullSyncMsgIndex"

    const-string/jumbo v6, "result=%s"

    new-array v7, v2, [Ljava/lang/Object;

    .line 840
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 839
    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    if-nez v1, :cond_0

    .line 843
    .end local v0    # "bizType":Ljava/lang/String;
    .end local v1    # "result":I
    :goto_0
    return v2

    .restart local v0    # "bizType":Ljava/lang/String;
    .restart local v1    # "result":I
    :cond_0
    move v2, v3

    .line 841
    goto :goto_0

    .end local v0    # "bizType":Ljava/lang/String;
    .end local v1    # "result":I
    :cond_1
    move v2, v3

    .line 843
    goto :goto_0
.end method
