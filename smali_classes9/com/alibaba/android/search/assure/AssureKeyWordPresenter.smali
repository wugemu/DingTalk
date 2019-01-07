.class public final Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;
.super Ljava/lang/Object;
.source "AssureKeyWordPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;,
        Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$AssureComparator;
    }
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/alibaba/android/search/assure/model/AssureModel;",
            ">;"
        }
    .end annotation
.end field

.field final d:J

.field public final e:I

.field private final f:J

.field private final g:J

.field private final h:J

.field private final i:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 14
    .param p1, "keyword"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    const/4 v10, 0x1

    :goto_0
    const-string/jumbo v11, "keyword is empty"

    invoke-static {v10, v11}, Lcom/alibaba/doraemon/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 109
    new-instance v0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;

    const/4 v10, 0x3

    invoke-direct {v0, p0, v10}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;-><init>(Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;I)V

    .line 111
    .local v0, "contactAssureArea":Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;
    new-instance v4, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;

    invoke-direct {v4, p0, v0}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;-><init>(Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;)V

    .line 113
    .local v4, "groupAssureArea":Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;
    new-instance v3, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;

    invoke-direct {v3, p0, v4}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;-><init>(Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;)V

    .line 115
    .local v3, "functionAssureArea":Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;
    const/4 v10, 0x3

    invoke-static {v10}, Lcpd;->a(I)Ljava/util/ArrayList;

    move-result-object v10

    iput-object v10, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->b:Ljava/util/List;

    .line 116
    iget-object v10, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->b:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v10, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->b:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v10, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->b:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v10, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$1;

    invoke-direct {v10, p0}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$1;-><init>(Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;)V

    iput-object v10, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->c:Ljava/util/Set;

    .line 132
    const-class v10, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v10}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v11, "dt_search"

    const-string/jumbo v12, "dt_search_assure_count_reset_time"

    invoke-interface {v10, v11, v12}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v8

    .line 134
    .local v8, "resetTimeCfg":Lcom/alibaba/wukong/settings/CloudSetting;
    if-nez v8, :cond_1

    const-wide/32 v10, 0x36ee80

    .line 135
    :goto_1
    iput-wide v10, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->d:J

    .line 138
    const-class v10, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v10}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v11, "dt_search"

    const-string/jumbo v12, "dt_search_assure_eliminate_min_time"

    invoke-interface {v10, v11, v12}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v2

    .line 140
    .local v2, "evictMinTime":Lcom/alibaba/wukong/settings/CloudSetting;
    if-nez v2, :cond_2

    const-wide/32 v10, 0xea60

    .line 141
    :goto_2
    iput-wide v10, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->f:J

    .line 144
    const-class v10, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v10}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v11, "dt_search"

    const-string/jumbo v12, "dt_search_assure_eliminate_MAX_time"

    invoke-interface {v10, v11, v12}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v1

    .line 146
    .local v1, "evictMaxTime":Lcom/alibaba/wukong/settings/CloudSetting;
    if-nez v1, :cond_3

    const-wide/32 v10, 0xf731400

    .line 147
    :goto_3
    iput-wide v10, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->g:J

    .line 149
    const-class v10, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v10}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v11, "dt_search"

    const-string/jumbo v12, "dt_search_assure_qualified_time"

    invoke-interface {v10, v11, v12}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v7

    .line 152
    .local v7, "qualifiedEffective":Lcom/alibaba/wukong/settings/CloudSetting;
    if-nez v7, :cond_4

    const-wide v10, 0x1cf7c5800L

    .line 153
    :goto_4
    iput-wide v10, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->h:J

    .line 155
    const-class v10, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v10}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v11, "dt_search"

    const-string/jumbo v12, "dt_search_assure_qualified_confirm_time"

    invoke-interface {v10, v11, v12}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v6

    .line 157
    .local v6, "qualifiedConfirmTime":Lcom/alibaba/wukong/settings/CloudSetting;
    if-nez v6, :cond_5

    const-wide/32 v10, 0x493e0

    .line 158
    :goto_5
    iput-wide v10, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->i:J

    .line 160
    const-class v10, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v10}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v11, "dt_search"

    const-string/jumbo v12, "dt_search_assure_prefix_cache_count"

    invoke-interface {v10, v11, v12}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v5

    .line 163
    .local v5, "prefixCount":Lcom/alibaba/wukong/settings/CloudSetting;
    if-eqz v5, :cond_6

    invoke-interface {v5}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x5

    invoke-static {v10, v11}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v9

    .line 166
    .local v9, "value":I
    :goto_6
    if-lez v9, :cond_7

    .end local v9    # "value":I
    :goto_7
    iput v9, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->e:I

    .line 167
    return-void

    .line 107
    .end local v0    # "contactAssureArea":Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;
    .end local v1    # "evictMaxTime":Lcom/alibaba/wukong/settings/CloudSetting;
    .end local v2    # "evictMinTime":Lcom/alibaba/wukong/settings/CloudSetting;
    .end local v3    # "functionAssureArea":Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;
    .end local v4    # "groupAssureArea":Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;
    .end local v5    # "prefixCount":Lcom/alibaba/wukong/settings/CloudSetting;
    .end local v6    # "qualifiedConfirmTime":Lcom/alibaba/wukong/settings/CloudSetting;
    .end local v7    # "qualifiedEffective":Lcom/alibaba/wukong/settings/CloudSetting;
    .end local v8    # "resetTimeCfg":Lcom/alibaba/wukong/settings/CloudSetting;
    :cond_0
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 135
    .restart local v0    # "contactAssureArea":Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;
    .restart local v3    # "functionAssureArea":Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;
    .restart local v4    # "groupAssureArea":Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;
    .restart local v8    # "resetTimeCfg":Lcom/alibaba/wukong/settings/CloudSetting;
    :cond_1
    invoke-interface {v8}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v10

    const-wide/32 v12, 0x36ee80

    invoke-static {v10, v12, v13}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v10

    goto/16 :goto_1

    .line 141
    .restart local v2    # "evictMinTime":Lcom/alibaba/wukong/settings/CloudSetting;
    :cond_2
    invoke-interface {v2}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v10

    const-wide/32 v12, 0xea60

    invoke-static {v10, v12, v13}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v10

    goto/16 :goto_2

    .line 147
    .restart local v1    # "evictMaxTime":Lcom/alibaba/wukong/settings/CloudSetting;
    :cond_3
    invoke-interface {v1}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v10

    const-wide/32 v12, 0xf731400

    invoke-static {v10, v12, v13}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v10

    goto/16 :goto_3

    .line 153
    .restart local v7    # "qualifiedEffective":Lcom/alibaba/wukong/settings/CloudSetting;
    :cond_4
    invoke-interface {v7}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v10

    const-wide v12, 0x1cf7c5800L

    invoke-static {v10, v12, v13}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v10

    goto :goto_4

    .line 158
    .restart local v6    # "qualifiedConfirmTime":Lcom/alibaba/wukong/settings/CloudSetting;
    :cond_5
    invoke-interface {v6}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v10

    const-wide/32 v12, 0x493e0

    invoke-static {v10, v12, v13}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v10

    goto :goto_5

    .line 163
    .restart local v5    # "prefixCount":Lcom/alibaba/wukong/settings/CloudSetting;
    :cond_6
    const/4 v9, 0x5

    goto :goto_6

    .line 166
    .restart local v9    # "value":I
    :cond_7
    const/4 v9, 0x5

    goto :goto_7
.end method

.method static synthetic a(Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;Lcom/alibaba/android/search/assure/model/AssureModel;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;
    .param p1, "x1"    # Lcom/alibaba/android/search/assure/model/AssureModel;

    .prologue
    .line 66
    .line 9171
    invoke-virtual {p1}, Lcom/alibaba/android/search/assure/model/AssureModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcpr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    return-object v0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/assure/model/AssureModel;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/assure/model/AssureModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p1, "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/assure/model/AssureModel;>;"
    const-wide/16 v12, 0x0

    const/4 v10, 0x0

    .line 477
    invoke-static {p1}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 491
    :cond_0
    return-object p1

    .line 479
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 480
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/android/search/assure/model/AssureModel;>;"
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 481
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/assure/model/AssureModel;

    .line 482
    .local v0, "assureModel":Lcom/alibaba/android/search/assure/model/AssureModel;
    if-eqz v0, :cond_2

    .line 483
    invoke-virtual {v0}, Lcom/alibaba/android/search/assure/model/AssureModel;->getBaseModel()Lcom/alibaba/android/search/model/BaseModel;

    move-result-object v1

    .line 484
    .local v1, "baseModel":Lcom/alibaba/android/search/model/BaseModel;
    if-eqz v1, :cond_2

    .line 485
    invoke-virtual {v1}, Lcom/alibaba/android/search/model/BaseModel;->isDemissionColleague()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 486
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 487
    iget-object v3, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->b:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;

    invoke-virtual {v3, v0}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;->remove(Ljava/lang/Object;)V

    .line 488
    invoke-virtual {v1}, Lcom/alibaba/android/search/model/BaseModel;->getId()Ljava/lang/String;

    move-result-object v3

    .line 8109
    invoke-static {v3, v12, v13}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v6

    .line 8562
    cmp-long v3, v6, v12

    if-lez v3, :cond_2

    .line 8566
    iget-object v3, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->b:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;

    .line 8568
    invoke-virtual {v3}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 8570
    const/4 v4, 0x0

    .line 8572
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8573
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/search/assure/model/AssureModel;

    .line 8574
    instance-of v8, v3, Lcom/alibaba/android/search/assure/model/ContactAssureModel;

    if-eqz v8, :cond_4

    .line 8575
    check-cast v3, Lcom/alibaba/android/search/assure/model/ContactAssureModel;

    .line 8576
    invoke-virtual {v3}, Lcom/alibaba/android/search/assure/model/ContactAssureModel;->getSearchId()Ljava/lang/String;

    move-result-object v8

    .line 8577
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 8579
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    :goto_2
    move-object v4, v3

    .line 8582
    goto :goto_1

    .line 8584
    :cond_3
    if-eqz v4, :cond_2

    .line 8585
    invoke-static {}, Lend;->b()Lend;

    move-result-object v3

    invoke-virtual {v3, v4}, Lend;->a(Lcom/alibaba/android/search/assure/model/AssureModel;)V

    goto :goto_0

    :cond_4
    move-object v3, v4

    goto :goto_2
.end method


# virtual methods
.method public a(Lcom/alibaba/android/search/SearchGroupType;)Ljava/util/List;
    .locals 13
    .param p1, "groupType"    # Lcom/alibaba/android/search/SearchGroupType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/search/SearchGroupType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/assure/model/AssureModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x3

    const/4 v9, 0x0

    .line 495
    sget-object v7, Lcom/alibaba/android/search/SearchGroupType;->CONTACT:Lcom/alibaba/android/search/SearchGroupType;

    if-ne p1, v7, :cond_0

    .line 496
    iget-object v7, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->b:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;

    invoke-virtual {v7}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;->snapshot()Ljava/util/List;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 539
    :goto_0
    return-object v7

    .line 497
    :cond_0
    sget-object v7, Lcom/alibaba/android/search/SearchGroupType;->MY_GROUP:Lcom/alibaba/android/search/SearchGroupType;

    if-ne p1, v7, :cond_1

    .line 498
    iget-object v7, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->b:Ljava/util/List;

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;

    invoke-virtual {v7}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;->snapshot()Ljava/util/List;

    move-result-object v7

    goto :goto_0

    .line 499
    :cond_1
    sget-object v7, Lcom/alibaba/android/search/SearchGroupType;->FUNCTION:Lcom/alibaba/android/search/SearchGroupType;

    if-ne p1, v7, :cond_2

    .line 500
    iget-object v7, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->b:Ljava/util/List;

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;

    invoke-virtual {v7}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;->snapshot()Ljava/util/List;

    move-result-object v7

    goto :goto_0

    .line 501
    :cond_2
    sget-object v7, Lcom/alibaba/android/search/SearchGroupType;->ALL:Lcom/alibaba/android/search/SearchGroupType;

    if-eq p1, v7, :cond_3

    .line 502
    const/4 v7, 0x0

    goto :goto_0

    .line 505
    :cond_3
    new-instance v4, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;

    iget-object v7, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->b:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    invoke-direct {v4, p0, v7}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;-><init>(Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;I)V

    .line 507
    .local v4, "result":Lcom/alibaba/android/search/assure/LimitSortedSet;, "Lcom/alibaba/android/search/assure/LimitSortedSet<Lcom/alibaba/android/search/assure/model/AssureModel;>;"
    iget-object v7, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->b:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 508
    .local v6, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v6, :cond_8

    .line 509
    iget-object v7, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->b:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;

    .line 511
    .local v5, "serialLimitedSortedSet":Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;
    invoke-virtual {v5}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;->snapshot()Ljava/util/List;

    move-result-object v1

    .line 512
    .local v1, "assureModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/assure/model/AssureModel;>;"
    if-nez v3, :cond_4

    .line 513
    invoke-direct {p0, v1}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->a(Ljava/util/List;)Ljava/util/List;

    .line 516
    :cond_4
    invoke-static {v1}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 520
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/assure/model/AssureModel;

    .line 521
    .local v0, "assureModel":Lcom/alibaba/android/search/assure/model/AssureModel;
    if-eqz v0, :cond_5

    .line 526
    invoke-virtual {v0}, Lcom/alibaba/android/search/assure/model/AssureModel;->getBaseModel()Lcom/alibaba/android/search/model/BaseModel;

    move-result-object v2

    .line 527
    .local v2, "baseModel":Lcom/alibaba/android/search/model/BaseModel;
    if-eqz v2, :cond_6

    .line 528
    iget-object v8, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->a:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/alibaba/android/search/model/BaseModel;->setKeyword(Ljava/lang/String;)V

    .line 531
    :cond_6
    invoke-virtual {v4, v0}, Lcom/alibaba/android/search/assure/LimitSortedSet;->add(Ljava/lang/Object;)V

    goto :goto_2

    .line 508
    .end local v0    # "assureModel":Lcom/alibaba/android/search/assure/model/AssureModel;
    .end local v2    # "baseModel":Lcom/alibaba/android/search/model/BaseModel;
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 535
    .end local v1    # "assureModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/assure/model/AssureModel;>;"
    .end local v5    # "serialLimitedSortedSet":Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;
    :cond_8
    invoke-virtual {v4}, Lcom/alibaba/android/search/assure/LimitSortedSet;->getSize()I

    move-result v7

    if-le v7, v10, :cond_9

    .line 536
    new-array v7, v10, [Ljava/lang/String;

    const-string/jumbo v8, "[query] result is more than "

    aput-object v8, v7, v9

    const-string/jumbo v8, "3"

    aput-object v8, v7, v11

    const-string/jumbo v8, " take top ones"

    aput-object v8, v7, v12

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->a(Ljava/lang/String;)V

    .line 537
    invoke-virtual {v4}, Lcom/alibaba/android/search/assure/LimitSortedSet;->snapshot()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v9, v10}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    goto/16 :goto_0

    .line 539
    :cond_9
    invoke-virtual {v4}, Lcom/alibaba/android/search/assure/LimitSortedSet;->snapshot()Ljava/util/List;

    move-result-object v7

    goto/16 :goto_0
.end method

.method a(Lcom/alibaba/android/search/assure/model/AssureModel;Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;)V
    .locals 18
    .param p1, "watched"    # Lcom/alibaba/android/search/assure/model/AssureModel;
    .param p2, "assureArea"    # Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;

    .prologue
    .line 306
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;->snapshot()Ljava/util/List;

    move-result-object v4

    .line 307
    .local v4, "assureAreaData":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/assure/model/AssureModel;>;"
    if-nez v4, :cond_0

    .line 414
    :goto_0
    return-void

    .line 310
    :cond_0
    const/4 v5, 0x0

    .line 2018
    .local v5, "contains":Z
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .local v6, "deleted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/search/assure/model/AssureModel;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/search/assure/model/AssureModel;

    .line 314
    .local v7, "model":Lcom/alibaba/android/search/assure/model/AssureModel;
    if-eqz v7, :cond_1

    .line 317
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lcom/alibaba/android/search/assure/model/AssureModel;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 318
    const/4 v5, 0x1

    .line 320
    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "[add] "

    aput-object v13, v11, v12

    const/4 v12, 0x1

    .line 2171
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/search/assure/model/AssureModel;->getTitle()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcpr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 320
    aput-object v13, v11, v12

    const/4 v12, 0x2

    const-string/jumbo v13, " is contained in assure area, incClickTimes, before times = "

    aput-object v13, v11, v12

    const/4 v12, 0x3

    invoke-virtual {v7}, Lcom/alibaba/android/search/assure/model/AssureModel;->getClickAtMills()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->a(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v7}, Lcom/alibaba/android/search/assure/model/AssureModel;->incClickTimes()V

    .line 324
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/search/assure/model/AssureModel;->getClickAtMills()J

    move-result-wide v12

    invoke-virtual {v7, v12, v13}, Lcom/alibaba/android/search/assure/model/AssureModel;->updateClickAtMills(J)V

    goto :goto_1

    .line 328
    :cond_2
    invoke-virtual {v7}, Lcom/alibaba/android/search/assure/model/AssureModel;->isExpireOrWrongClick()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 329
    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "[add]"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    .line 3171
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/search/assure/model/AssureModel;->getTitle()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcpr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 329
    aput-object v13, v11, v12

    const/4 v12, 0x2

    const-string/jumbo v13, " is expire or wrong click, duration = "

    aput-object v13, v11, v12

    const/4 v12, 0x3

    .line 330
    invoke-static {}, Lcms;->u()J

    move-result-wide v14

    invoke-virtual {v7}, Lcom/alibaba/android/search/assure/model/AssureModel;->getClickAtMills()J

    move-result-wide v16

    sub-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x4

    const-string/jumbo v13, " remove from assure to temp"

    aput-object v13, v11, v12

    .line 329
    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->a(Ljava/lang/String;)V

    .line 333
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;->remove(Ljava/lang/Object;)V

    .line 334
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 339
    .end local v7    # "model":Lcom/alibaba/android/search/assure/model/AssureModel;
    :cond_3
    if-eqz v5, :cond_5

    .line 340
    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "[add] "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    .line 4171
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/search/assure/model/AssureModel;->getTitle()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcpr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 340
    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string/jumbo v12, " has already contains in area area, resorting..."

    aput-object v12, v10, v11

    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->a(Ljava/lang/String;)V

    .line 342
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;->resort()V

    .line 343
    invoke-static {}, Lend;->b()Lend;

    move-result-object v11

    .line 5061
    if-eqz p1, :cond_5

    .line 5092
    iget-object v10, v11, Lend;->a:Landroid/os/Handler;

    const/4 v12, 0x0

    invoke-static {v10, v12}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v12

    .line 5175
    iget-object v10, v11, Lend;->b:Lfu$b;

    invoke-virtual {v10}, Lfu$b;->a()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    .line 5176
    if-nez v10, :cond_4

    .line 5177
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 5095
    :cond_4
    const-string/jumbo v13, "AssureModel"

    move-object/from16 v0, p1

    invoke-virtual {v10, v13, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5096
    invoke-virtual {v12, v10}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 5097
    iget-object v10, v11, Lend;->a:Landroid/os/Handler;

    invoke-virtual {v10, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 347
    :cond_5
    invoke-static {v6}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 349
    invoke-static {}, Lcms;->u()J

    move-result-wide v8

    .line 350
    .local v8, "time":J
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_6
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/search/assure/model/AssureModel;

    .line 351
    .restart local v7    # "model":Lcom/alibaba/android/search/assure/model/AssureModel;
    if-eqz v7, :cond_6

    .line 354
    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "[add] "

    aput-object v13, v11, v12

    const/4 v12, 0x1

    .line 6171
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/search/assure/model/AssureModel;->getTitle()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcpr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 354
    aput-object v13, v11, v12

    const/4 v12, 0x2

    const-string/jumbo v13, " old value "

    aput-object v13, v11, v12

    const/4 v12, 0x3

    .line 7171
    invoke-virtual {v7}, Lcom/alibaba/android/search/assure/model/AssureModel;->getTitle()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcpr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 354
    aput-object v13, v11, v12

    const/4 v12, 0x4

    const-string/jumbo v13, " is expire or wrong click, evict to temp area "

    aput-object v13, v11, v12

    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->a(Ljava/lang/String;)V

    .line 355
    invoke-virtual {v7, v8, v9}, Lcom/alibaba/android/search/assure/model/AssureModel;->updateEvictTimes(J)V

    goto :goto_2

    .line 358
    .end local v7    # "model":Lcom/alibaba/android/search/assure/model/AssureModel;
    :cond_7
    invoke-static {}, Lend;->b()Lend;

    move-result-object v10

    invoke-virtual {v10, v6}, Lend;->a(Ljava/util/ArrayList;)V

    .line 362
    .end local v8    # "time":J
    :cond_8
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->h:J

    new-instance v12, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v12, v0, v1, v2}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$3;-><init>(Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;Lcom/alibaba/android/search/assure/model/AssureModel;Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$SerialLimitedSortedSet;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v12}, Lcom/alibaba/android/search/assure/model/AssureModel;->qualifiedCheck(JLcom/alibaba/android/search/assure/model/AssureModel$a;)V

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 273
    iget-object v0, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;->a:Ljava/lang/String;

    .line 1277
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1278
    :cond_0
    :goto_0
    return-void

    .line 1280
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    sget v2, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v1, v2, :cond_2

    .line 1281
    const-string/jumbo v1, "AssureKeyWordPresenter"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "keyword = "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string/jumbo v3, ", msg = "

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object p1, v2, v0

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    :cond_2
    const-string/jumbo v0, "search_assure"

    const-string/jumbo v1, "AssureKeyWordPresenter"

    invoke-static {v0, v1, p1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
