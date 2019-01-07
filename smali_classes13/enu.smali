.class public final Lenu;
.super Ljava/lang/Object;
.source "SearchHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(IILjava/lang/String;Lcca;)V
    .locals 8
    .param p0, "offset"    # I
    .param p1, "size"    # I
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "searchTaskListener"    # Lcca;

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 80
    .line 1486
    if-eqz p3, :cond_1

    .line 1490
    invoke-static {}, Leue;->a()Leue;

    move-result-object v0

    .line 1965
    new-instance v1, Lcom/alibaba/android/searchengine/models/SearchTask;

    invoke-direct {v1}, Lcom/alibaba/android/searchengine/models/SearchTask;-><init>()V

    .line 1966
    const-string/jumbo v2, "ding"

    iput-object v2, v1, Lcom/alibaba/android/searchengine/models/SearchTask;->group:Ljava/lang/String;

    .line 1967
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->h()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/searchengine/models/SearchTask;->bizType:Ljava/lang/String;

    .line 1969
    new-instance v2, Lcom/alibaba/android/searchengine/models/SearchTable;

    const-string/jumbo v3, "tbdingcontent"

    invoke-direct {v2, v3}, Lcom/alibaba/android/searchengine/models/SearchTable;-><init>(Ljava/lang/String;)V

    .line 1970
    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, "content"

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Lcom/alibaba/android/searchengine/models/SearchTable;->addQueryColumns([Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 1971
    new-array v3, v5, [Ljava/lang/String;

    const-string/jumbo v4, "content"

    aput-object v4, v3, v6

    const-string/jumbo v4, "msgCreatedAt"

    aput-object v4, v3, v7

    invoke-virtual {v2, v3}, Lcom/alibaba/android/searchengine/models/SearchTable;->addOutColumns([Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 1973
    new-instance v3, Lcom/alibaba/android/searchengine/models/SearchTable;

    const-string/jumbo v4, "tbdinglist"

    invoke-direct {v3, v4}, Lcom/alibaba/android/searchengine/models/SearchTable;-><init>(Ljava/lang/String;)V

    .line 1974
    new-array v4, v5, [Ljava/lang/String;

    const-string/jumbo v5, "senderId"

    aput-object v5, v4, v6

    const-string/jumbo v5, "dingId"

    aput-object v5, v4, v7

    invoke-virtual {v3, v4}, Lcom/alibaba/android/searchengine/models/SearchTable;->addOutColumns([Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 1975
    if-ltz p0, :cond_0

    if-lez p1, :cond_0

    .line 1976
    invoke-virtual {v2, p0, p1}, Lcom/alibaba/android/searchengine/models/SearchTable;->addLimitClause(II)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 1978
    :cond_0
    const-string/jumbo v4, "dingId"

    const-string/jumbo v5, "dingId"

    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/android/searchengine/models/SearchTable;->union(Lcom/alibaba/android/searchengine/models/SearchTable;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 1980
    iput-object v2, v1, Lcom/alibaba/android/searchengine/models/SearchTask;->searchTable:Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 1490
    new-instance v2, Lenr$8;

    invoke-direct {v2, p3}, Lenr$8;-><init>(Lcca;)V

    invoke-virtual {v0, p2, v1, v2}, Leue;->a(Ljava/lang/String;Lcom/alibaba/android/searchengine/models/SearchTask;Leug;)V

    .line 81
    :cond_1
    return-void
.end method

.method public static a(IILjava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Lcca;)V
    .locals 0
    .param p0, "offset"    # I
    .param p1, "size"    # I
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "ownerId"    # Ljava/lang/Long;
    .param p4, "tag"    # Ljava/lang/Integer;
    .param p5, "searchTaskListener"    # Lcca;

    .prologue
    .line 149
    invoke-static/range {p0 .. p5}, Lenr;->a(IILjava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Lcca;)V

    .line 150
    return-void
.end method

.method public static a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLcca;)V
    .locals 12
    .param p0, "offset"    # I
    .param p1, "size"    # I
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "tableName"    # Ljava/lang/String;
    .param p4, "field"    # Ljava/lang/String;
    .param p5, "tableCount"    # I
    .param p6, "isMergeRow"    # Z
    .param p7, "searchTaskListener"    # Lcca;

    .prologue
    .line 157
    .line 7324
    if-eqz p7, :cond_0

    .line 7328
    invoke-static {}, Leue;->a()Leue;

    move-result-object v2

    .line 8051
    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    move v3, p0

    move v4, p1

    move-object v5, p3

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-static/range {v3 .. v11}, Lenr;->a(IILjava/lang/String;IZLjava/util/List;Ljava/util/List;J)Lcom/alibaba/android/searchengine/models/SearchTask;

    move-result-object v3

    .line 7328
    new-instance v4, Lenr$4;

    move-object/from16 v0, p7

    invoke-direct {v4, v0}, Lenr$4;-><init>(Lcca;)V

    invoke-virtual {v2, p2, v3, v4}, Leue;->a(Ljava/lang/String;Lcom/alibaba/android/searchengine/models/SearchTask;Leug;)V

    .line 158
    :cond_0
    return-void
.end method

.method public static b(IILjava/lang/String;Lcca;)V
    .locals 8
    .param p0, "offset"    # I
    .param p1, "size"    # I
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "searchTaskListener"    # Lcca;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 84
    .line 2511
    if-eqz p3, :cond_1

    .line 2515
    invoke-static {}, Leue;->a()Leue;

    move-result-object v0

    .line 2987
    new-instance v1, Lcom/alibaba/android/searchengine/models/SearchTask;

    invoke-direct {v1}, Lcom/alibaba/android/searchengine/models/SearchTask;-><init>()V

    .line 2988
    const-string/jumbo v2, "ding_sender"

    iput-object v2, v1, Lcom/alibaba/android/searchengine/models/SearchTask;->group:Ljava/lang/String;

    .line 2989
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->g()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/searchengine/models/SearchTask;->bizType:Ljava/lang/String;

    .line 2990
    new-instance v2, Lcom/alibaba/android/searchengine/models/SearchTable;

    const-string/jumbo v3, "tbuser"

    invoke-direct {v2, v3}, Lcom/alibaba/android/searchengine/models/SearchTable;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/alibaba/android/searchengine/models/SearchTask;->searchTable:Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 2991
    iget-object v2, v1, Lcom/alibaba/android/searchengine/models/SearchTask;->searchTable:Lcom/alibaba/android/searchengine/models/SearchTable;

    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, "nick"

    aput-object v4, v3, v5

    const-string/jumbo v4, "alias"

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Lcom/alibaba/android/searchengine/models/SearchTable;->addQueryColumns([Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 2992
    iget-object v2, v1, Lcom/alibaba/android/searchengine/models/SearchTask;->searchTable:Lcom/alibaba/android/searchengine/models/SearchTable;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "uid"

    aput-object v4, v3, v5

    const-string/jumbo v4, "nick"

    aput-object v4, v3, v6

    const-string/jumbo v4, "alias"

    aput-object v4, v3, v7

    invoke-virtual {v2, v3}, Lcom/alibaba/android/searchengine/models/SearchTable;->addOutColumns([Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 2993
    if-ltz p0, :cond_0

    if-lez p1, :cond_0

    .line 2994
    iget-object v2, v1, Lcom/alibaba/android/searchengine/models/SearchTask;->searchTable:Lcom/alibaba/android/searchengine/models/SearchTable;

    invoke-virtual {v2, p0, p1}, Lcom/alibaba/android/searchengine/models/SearchTable;->addLimitClause(II)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 2515
    :cond_0
    new-instance v2, Lenr$9;

    invoke-direct {v2, p3}, Lenr$9;-><init>(Lcca;)V

    invoke-virtual {v0, p2, v1, v2}, Leue;->a(Ljava/lang/String;Lcom/alibaba/android/searchengine/models/SearchTask;Leug;)V

    .line 85
    :cond_1
    return-void
.end method

.method public static c(IILjava/lang/String;Lcca;)V
    .locals 10
    .param p0, "offset"    # I
    .param p1, "size"    # I
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "searchTaskListener"    # Lcca;

    .prologue
    const/4 v6, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 88
    .line 3536
    if-eqz p3, :cond_1

    .line 3540
    invoke-static {}, Leue;->a()Leue;

    move-result-object v0

    .line 4002
    new-instance v1, Lcom/alibaba/android/searchengine/models/SearchTask;

    invoke-direct {v1}, Lcom/alibaba/android/searchengine/models/SearchTask;-><init>()V

    .line 4003
    const-string/jumbo v2, "ding_body"

    iput-object v2, v1, Lcom/alibaba/android/searchengine/models/SearchTask;->group:Ljava/lang/String;

    .line 4004
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->h()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/searchengine/models/SearchTask;->bizType:Ljava/lang/String;

    .line 4006
    new-instance v2, Lcom/alibaba/android/searchengine/models/SearchTable;

    const-string/jumbo v3, "tbdingcontent"

    invoke-direct {v2, v3}, Lcom/alibaba/android/searchengine/models/SearchTable;-><init>(Ljava/lang/String;)V

    .line 4007
    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v4, "content"

    aput-object v4, v3, v7

    invoke-virtual {v2, v3}, Lcom/alibaba/android/searchengine/models/SearchTable;->addQueryColumns([Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 4008
    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v4, "content"

    aput-object v4, v3, v7

    invoke-virtual {v2, v3}, Lcom/alibaba/android/searchengine/models/SearchTable;->addOutColumns([Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 4009
    if-ltz p0, :cond_0

    if-lez p1, :cond_0

    .line 4010
    invoke-virtual {v2, p0, p1}, Lcom/alibaba/android/searchengine/models/SearchTable;->addLimitClause(II)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 4013
    :cond_0
    new-instance v3, Lcom/alibaba/android/searchengine/models/SearchTable;

    const-string/jumbo v4, "tbdinglist"

    invoke-direct {v3, v4}, Lcom/alibaba/android/searchengine/models/SearchTable;-><init>(Ljava/lang/String;)V

    .line 4014
    new-array v4, v6, [Ljava/lang/String;

    const-string/jumbo v5, "senderId"

    aput-object v5, v4, v7

    const-string/jumbo v5, "dingId"

    aput-object v5, v4, v8

    const-string/jumbo v5, "dingCreatedAt"

    aput-object v5, v4, v9

    invoke-virtual {v3, v4}, Lcom/alibaba/android/searchengine/models/SearchTable;->addOutColumns([Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 4016
    new-instance v4, Lcom/alibaba/android/searchengine/models/SearchTable;

    const-string/jumbo v5, "tbuser"

    invoke-direct {v4, v5}, Lcom/alibaba/android/searchengine/models/SearchTable;-><init>(Ljava/lang/String;)V

    .line 4017
    new-array v5, v6, [Ljava/lang/String;

    const-string/jumbo v6, "uid"

    aput-object v6, v5, v7

    const-string/jumbo v6, "nick"

    aput-object v6, v5, v8

    const-string/jumbo v6, "alias"

    aput-object v6, v5, v9

    invoke-virtual {v4, v5}, Lcom/alibaba/android/searchengine/models/SearchTable;->addOutColumns([Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 4019
    const-string/jumbo v5, "senderId"

    const-string/jumbo v6, "uid"

    invoke-virtual {v3, v4, v5, v6}, Lcom/alibaba/android/searchengine/models/SearchTable;->union(Lcom/alibaba/android/searchengine/models/SearchTable;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 4020
    const-string/jumbo v4, "dingId"

    const-string/jumbo v5, "dingId"

    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/android/searchengine/models/SearchTable;->union(Lcom/alibaba/android/searchengine/models/SearchTable;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 4022
    iput-object v2, v1, Lcom/alibaba/android/searchengine/models/SearchTask;->searchTable:Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 3540
    new-instance v2, Lenr$10;

    invoke-direct {v2, p3}, Lenr$10;-><init>(Lcca;)V

    invoke-virtual {v0, p2, v1, v2}, Leue;->a(Ljava/lang/String;Lcom/alibaba/android/searchengine/models/SearchTask;Leug;)V

    .line 89
    :cond_1
    return-void
.end method

.method public static d(IILjava/lang/String;Lcca;)V
    .locals 9
    .param p0, "offset"    # I
    .param p1, "size"    # I
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "searchTaskListener"    # Lcca;

    .prologue
    const/4 v5, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 92
    .line 4561
    if-eqz p3, :cond_1

    .line 4565
    invoke-static {}, Leue;->a()Leue;

    move-result-object v0

    .line 5029
    new-instance v1, Lcom/alibaba/android/searchengine/models/SearchTask;

    invoke-direct {v1}, Lcom/alibaba/android/searchengine/models/SearchTask;-><init>()V

    .line 5030
    const-string/jumbo v2, "ding_attachment"

    iput-object v2, v1, Lcom/alibaba/android/searchengine/models/SearchTask;->group:Ljava/lang/String;

    .line 5031
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->i()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/searchengine/models/SearchTask;->bizType:Ljava/lang/String;

    .line 5033
    new-instance v2, Lcom/alibaba/android/searchengine/models/SearchTable;

    const-string/jumbo v3, "tbdinglist"

    invoke-direct {v2, v3}, Lcom/alibaba/android/searchengine/models/SearchTable;-><init>(Ljava/lang/String;)V

    .line 5034
    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, "dingAttachments"

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Lcom/alibaba/android/searchengine/models/SearchTable;->addQueryColumns([Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 5035
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "dingId"

    aput-object v4, v3, v6

    const-string/jumbo v4, "senderId"

    aput-object v4, v3, v7

    const-string/jumbo v4, "dingAttachments"

    aput-object v4, v3, v8

    const-string/jumbo v4, "dingCreatedAt"

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lcom/alibaba/android/searchengine/models/SearchTable;->addOutColumns([Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 5036
    if-ltz p0, :cond_0

    if-lez p1, :cond_0

    .line 5037
    invoke-virtual {v2, p0, p1}, Lcom/alibaba/android/searchengine/models/SearchTable;->addLimitClause(II)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 5040
    :cond_0
    new-instance v3, Lcom/alibaba/android/searchengine/models/SearchTable;

    const-string/jumbo v4, "tbuser"

    invoke-direct {v3, v4}, Lcom/alibaba/android/searchengine/models/SearchTable;-><init>(Ljava/lang/String;)V

    .line 5041
    new-array v4, v5, [Ljava/lang/String;

    const-string/jumbo v5, "uid"

    aput-object v5, v4, v6

    const-string/jumbo v5, "nick"

    aput-object v5, v4, v7

    const-string/jumbo v5, "alias"

    aput-object v5, v4, v8

    invoke-virtual {v3, v4}, Lcom/alibaba/android/searchengine/models/SearchTable;->addOutColumns([Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 5043
    const-string/jumbo v4, "senderId"

    const-string/jumbo v5, "uid"

    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/android/searchengine/models/SearchTable;->union(Lcom/alibaba/android/searchengine/models/SearchTable;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 5045
    iput-object v2, v1, Lcom/alibaba/android/searchengine/models/SearchTask;->searchTable:Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 4565
    new-instance v2, Lenr$11;

    invoke-direct {v2, p3}, Lenr$11;-><init>(Lcca;)V

    invoke-virtual {v0, p2, v1, v2}, Leue;->a(Ljava/lang/String;Lcom/alibaba/android/searchengine/models/SearchTask;Leug;)V

    .line 93
    :cond_1
    return-void
.end method

.method public static e(IILjava/lang/String;Lcca;)V
    .locals 8
    .param p0, "offset"    # I
    .param p1, "size"    # I
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "searchTaskListener"    # Lcca;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 96
    .line 5224
    if-eqz p3, :cond_1

    .line 5228
    invoke-static {}, Leue;->a()Leue;

    move-result-object v0

    .line 5845
    new-instance v1, Lcom/alibaba/android/searchengine/models/SearchTask;

    invoke-direct {v1}, Lcom/alibaba/android/searchengine/models/SearchTask;-><init>()V

    .line 5846
    const-string/jumbo v2, "friend"

    iput-object v2, v1, Lcom/alibaba/android/searchengine/models/SearchTask;->group:Ljava/lang/String;

    .line 5847
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->g()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/searchengine/models/SearchTask;->bizType:Ljava/lang/String;

    .line 5849
    new-instance v2, Lcom/alibaba/android/searchengine/models/SearchTable;

    const-string/jumbo v3, "tbuser"

    invoke-direct {v2, v3}, Lcom/alibaba/android/searchengine/models/SearchTable;-><init>(Ljava/lang/String;)V

    .line 5850
    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, "nick"

    aput-object v4, v3, v5

    const-string/jumbo v4, "alias"

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Lcom/alibaba/android/searchengine/models/SearchTable;->addQueryColumns([Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 5851
    const/16 v3, 0x1b

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "uid"

    aput-object v4, v3, v5

    const-string/jumbo v4, "profileType"

    aput-object v4, v3, v6

    const-string/jumbo v4, "tag"

    aput-object v4, v3, v7

    const/4 v4, 0x3

    const-string/jumbo v5, "iconMediaId"

    aput-object v5, v3, v4

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

    .line 5856
    new-instance v3, Lcom/alibaba/android/searchengine/models/SearchTable;

    const-string/jumbo v4, "tb_friend_connection"

    invoke-direct {v3, v4}, Lcom/alibaba/android/searchengine/models/SearchTable;-><init>(Ljava/lang/String;)V

    .line 5857
    if-ltz p0, :cond_0

    if-lez p1, :cond_0

    .line 5858
    invoke-virtual {v3, p0, p1}, Lcom/alibaba/android/searchengine/models/SearchTable;->addLimitClause(II)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 5860
    :cond_0
    const-string/jumbo v4, "uid"

    const-string/jumbo v5, "uid"

    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/android/searchengine/models/SearchTable;->union(Lcom/alibaba/android/searchengine/models/SearchTable;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 5862
    iput-object v2, v1, Lcom/alibaba/android/searchengine/models/SearchTask;->searchTable:Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 5228
    new-instance v2, Lenr$19;

    invoke-direct {v2, p3}, Lenr$19;-><init>(Lcca;)V

    invoke-virtual {v0, p2, v1, v2}, Leue;->a(Ljava/lang/String;Lcom/alibaba/android/searchengine/models/SearchTask;Leug;)V

    .line 97
    :cond_1
    return-void
.end method

.method public static f(IILjava/lang/String;Lcca;)V
    .locals 10
    .param p0, "offset"    # I
    .param p1, "size"    # I
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "searchTaskListener"    # Lcca;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 104
    const/16 v0, 0x64

    .line 6461
    if-eqz p3, :cond_1

    .line 6465
    invoke-static {}, Leue;->a()Leue;

    move-result-object v1

    .line 6930
    new-instance v2, Lcom/alibaba/android/searchengine/models/SearchTask;

    invoke-direct {v2}, Lcom/alibaba/android/searchengine/models/SearchTask;-><init>()V

    .line 6931
    const-string/jumbo v3, "common_contact"

    iput-object v3, v2, Lcom/alibaba/android/searchengine/models/SearchTask;->group:Ljava/lang/String;

    .line 6932
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->g()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/searchengine/models/SearchTask;->bizType:Ljava/lang/String;

    .line 6934
    new-instance v3, Lcom/alibaba/android/searchengine/models/SearchTable;

    const-string/jumbo v4, "tbuser"

    invoke-direct {v3, v4}, Lcom/alibaba/android/searchengine/models/SearchTable;-><init>(Ljava/lang/String;)V

    .line 6935
    new-array v4, v9, [Ljava/lang/String;

    const-string/jumbo v5, "nick"

    aput-object v5, v4, v7

    const-string/jumbo v5, "alias"

    aput-object v5, v4, v8

    invoke-virtual {v3, v4}, Lcom/alibaba/android/searchengine/models/SearchTable;->addQueryColumns([Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 6936
    const/16 v4, 0x1b

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "uid"

    aput-object v5, v4, v7

    const-string/jumbo v5, "profileType"

    aput-object v5, v4, v8

    const-string/jumbo v5, "tag"

    aput-object v5, v4, v9

    const/4 v5, 0x3

    const-string/jumbo v6, "iconMediaId"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "nick"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string/jumbo v6, "nickpinyin"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string/jumbo v6, "nickAlpha"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string/jumbo v6, "gender"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string/jumbo v6, "city"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string/jumbo v6, "stateCode"

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string/jumbo v6, "mobile"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const-string/jumbo v6, "modifyTime"

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string/jumbo v6, "labels"

    aput-object v6, v4, v5

    const/16 v5, 0xd

    const-string/jumbo v6, "data_complete"

    aput-object v6, v4, v5

    const/16 v5, 0xe

    const-string/jumbo v6, "is_orguser"

    aput-object v6, v4, v5

    const/16 v5, 0xf

    const-string/jumbo v6, "is_active"

    aput-object v6, v4, v5

    const/16 v5, 0x10

    const-string/jumbo v6, "real_name"

    aput-object v6, v4, v5

    const/16 v5, 0x11

    const-string/jumbo v6, "user_type"

    aput-object v6, v4, v5

    const/16 v5, 0x12

    const-string/jumbo v6, "extensation"

    aput-object v6, v4, v5

    const/16 v5, 0x13

    const-string/jumbo v6, "alias"

    aput-object v6, v4, v5

    const/16 v5, 0x14

    const-string/jumbo v6, "aliaspinyin"

    aput-object v6, v4, v5

    const/16 v5, 0x15

    const-string/jumbo v6, "dingtaklId"

    aput-object v6, v4, v5

    const/16 v5, 0x16

    const-string/jumbo v6, "email"

    aput-object v6, v4, v5

    const/16 v5, 0x17

    const-string/jumbo v6, "authOrg"

    aput-object v6, v4, v5

    const/16 v5, 0x18

    const-string/jumbo v6, "activeTime"

    aput-object v6, v4, v5

    const/16 v5, 0x19

    const-string/jumbo v6, "status"

    aput-object v6, v4, v5

    const/16 v5, 0x1a

    const-string/jumbo v6, "orgEmail"

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/alibaba/android/searchengine/models/SearchTable;->addOutColumns([Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 6941
    new-instance v4, Lcom/alibaba/android/searchengine/models/SearchTable;

    const-string/jumbo v5, "tb_common_contact"

    invoke-direct {v4, v5}, Lcom/alibaba/android/searchengine/models/SearchTable;-><init>(Ljava/lang/String;)V

    .line 6942
    new-array v5, v9, [Ljava/lang/String;

    const-string/jumbo v6, "orgName"

    aput-object v6, v5, v7

    const-string/jumbo v6, "orgTitle"

    aput-object v6, v5, v8

    invoke-virtual {v4, v5}, Lcom/alibaba/android/searchengine/models/SearchTable;->addOutColumns([Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 6943
    const-string/jumbo v5, "uid"

    const-string/jumbo v6, "237050"

    const-string/jumbo v7, "!="

    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/android/searchengine/models/SearchTable;->addWhereClause(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 6944
    const-string/jumbo v5, "uid"

    const-string/jumbo v6, "165511"

    const-string/jumbo v7, "!="

    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/android/searchengine/models/SearchTable;->addWhereClause(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 6945
    const-string/jumbo v5, "uid"

    const-string/jumbo v6, "4248001"

    const-string/jumbo v7, "!="

    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/android/searchengine/models/SearchTable;->addWhereClause(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 6946
    const-string/jumbo v5, "uid"

    const-string/jumbo v6, "20999"

    const-string/jumbo v7, "!="

    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/android/searchengine/models/SearchTable;->addWhereClause(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 6947
    const-string/jumbo v5, "uid"

    const-string/jumbo v6, "20981"

    const-string/jumbo v7, "!="

    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/android/searchengine/models/SearchTable;->addWhereClause(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 6948
    const-string/jumbo v5, "uid"

    const-string/jumbo v6, "20993"

    const-string/jumbo v7, "!="

    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/android/searchengine/models/SearchTable;->addWhereClause(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 6949
    const-string/jumbo v5, "uid"

    const-string/jumbo v6, "20986"

    const-string/jumbo v7, "!="

    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/android/searchengine/models/SearchTable;->addWhereClause(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 6950
    const-string/jumbo v5, "uid"

    const-string/jumbo v6, "168717220"

    const-string/jumbo v7, "!="

    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/android/searchengine/models/SearchTable;->addWhereClause(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 6951
    const-string/jumbo v5, "count"

    sget-object v6, Lcom/alibaba/android/searchengine/models/SearchTable$OrderByType;->DESC:Lcom/alibaba/android/searchengine/models/SearchTable$OrderByType;

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/android/searchengine/models/SearchTable;->addOrdeyByClause(Ljava/lang/String;Lcom/alibaba/android/searchengine/models/SearchTable$OrderByType;)Lcom/alibaba/android/searchengine/models/SearchTable;

    move-result-object v5

    const-string/jumbo v6, "modifyTime"

    sget-object v7, Lcom/alibaba/android/searchengine/models/SearchTable$OrderByType;->DESC:Lcom/alibaba/android/searchengine/models/SearchTable$OrderByType;

    .line 6952
    invoke-virtual {v5, v6, v7}, Lcom/alibaba/android/searchengine/models/SearchTable;->addOrdeyByClause(Ljava/lang/String;Lcom/alibaba/android/searchengine/models/SearchTable$OrderByType;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 6953
    if-ltz p0, :cond_0

    .line 6954
    invoke-virtual {v4, p0, v0}, Lcom/alibaba/android/searchengine/models/SearchTable;->addLimitClause(II)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 6956
    :cond_0
    const-string/jumbo v0, "uid"

    const-string/jumbo v5, "uid"

    invoke-virtual {v3, v4, v0, v5}, Lcom/alibaba/android/searchengine/models/SearchTable;->union(Lcom/alibaba/android/searchengine/models/SearchTable;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 6958
    iput-object v3, v2, Lcom/alibaba/android/searchengine/models/SearchTask;->searchTable:Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 6465
    new-instance v0, Lenr$7;

    invoke-direct {v0, p3}, Lenr$7;-><init>(Lcca;)V

    invoke-virtual {v1, p2, v2, v0}, Leue;->a(Ljava/lang/String;Lcom/alibaba/android/searchengine/models/SearchTask;Leug;)V

    .line 105
    :cond_1
    return-void
.end method

.method public static g(IILjava/lang/String;Lcca;)V
    .locals 8
    .param p0, "offset"    # I
    .param p1, "size"    # I
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "searchTaskListener"    # Lcca;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 169
    const/16 v0, 0x64

    .line 8199
    if-eqz p3, :cond_1

    .line 8203
    invoke-static {}, Leue;->a()Leue;

    move-result-object v1

    .line 8795
    new-instance v2, Lcom/alibaba/android/searchengine/models/SearchTask;

    invoke-direct {v2}, Lcom/alibaba/android/searchengine/models/SearchTask;-><init>()V

    .line 8796
    const-string/jumbo v3, "wukong_user"

    iput-object v3, v2, Lcom/alibaba/android/searchengine/models/SearchTask;->group:Ljava/lang/String;

    .line 8797
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->k()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/searchengine/models/SearchTask;->bizType:Ljava/lang/String;

    .line 8798
    new-instance v3, Lcom/alibaba/android/searchengine/models/SearchTable;

    const-string/jumbo v4, "tbuser"

    invoke-direct {v3, v4}, Lcom/alibaba/android/searchengine/models/SearchTable;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lcom/alibaba/android/searchengine/models/SearchTask;->searchTable:Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 8799
    iget-object v3, v2, Lcom/alibaba/android/searchengine/models/SearchTask;->searchTable:Lcom/alibaba/android/searchengine/models/SearchTable;

    new-array v4, v7, [Ljava/lang/String;

    const-string/jumbo v5, "alias"

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Lcom/alibaba/android/searchengine/models/SearchTable;->addQueryColumns([Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 8800
    iget-object v3, v2, Lcom/alibaba/android/searchengine/models/SearchTask;->searchTable:Lcom/alibaba/android/searchengine/models/SearchTable;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "openId"

    aput-object v5, v4, v6

    const-string/jumbo v5, "avatar"

    aput-object v5, v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, "nickname"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string/jumbo v6, "alias"

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/alibaba/android/searchengine/models/SearchTable;->addOutColumns([Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 8803
    if-ltz p0, :cond_0

    .line 8804
    iget-object v3, v2, Lcom/alibaba/android/searchengine/models/SearchTask;->searchTable:Lcom/alibaba/android/searchengine/models/SearchTable;

    invoke-virtual {v3, p0, v0}, Lcom/alibaba/android/searchengine/models/SearchTable;->addLimitClause(II)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 8203
    :cond_0
    new-instance v0, Lenr$18;

    invoke-direct {v0, p3}, Lenr$18;-><init>(Lcca;)V

    invoke-virtual {v1, p2, v2, v0}, Leue;->a(Ljava/lang/String;Lcom/alibaba/android/searchengine/models/SearchTask;Leug;)V

    .line 170
    :cond_1
    return-void
.end method
