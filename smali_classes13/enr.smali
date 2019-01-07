.class public final Lenr;
.super Ljava/lang/Object;
.source "FTSSearchHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    return-void
.end method

.method public static a(IILjava/lang/Long;JLjava/lang/Integer;)Lcom/alibaba/android/searchengine/models/SearchTask;
    .locals 7
    .param p0, "offset"    # I
    .param p1, "size"    # I
    .param p2, "ownerId"    # Ljava/lang/Long;
    .param p3, "createAt"    # J
    .param p5, "tag"    # Ljava/lang/Integer;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 893
    new-instance v1, Lcom/alibaba/android/searchengine/models/SearchTask;

    invoke-direct {v1}, Lcom/alibaba/android/searchengine/models/SearchTask;-><init>()V

    .line 894
    .local v1, "task":Lcom/alibaba/android/searchengine/models/SearchTask;
    const-string/jumbo v2, "group_conversation"

    iput-object v2, v1, Lcom/alibaba/android/searchengine/models/SearchTask;->group:Ljava/lang/String;

    .line 895
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->j()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/searchengine/models/SearchTask;->bizType:Ljava/lang/String;

    .line 897
    new-instance v0, Lcom/alibaba/android/searchengine/models/SearchTable;

    const-string/jumbo v2, "tbconversation"

    invoke-direct {v0, v2}, Lcom/alibaba/android/searchengine/models/SearchTable;-><init>(Ljava/lang/String;)V

    .line 898
    .local v0, "conversationTable":Lcom/alibaba/android/searchengine/models/SearchTable;
    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "title"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/alibaba/android/searchengine/models/SearchTable;->addQueryColumns([Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 899
    const/16 v2, 0xd

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "cid"

    aput-object v3, v2, v4

    const-string/jumbo v3, "title"

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string/jumbo v4, "status"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "icon"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "tag"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "memberCount"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "ext"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "desc"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "ownerId"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "groupIconType"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "groupIcon"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "createAt"

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/alibaba/android/searchengine/models/SearchTable;->addOutColumns([Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 904
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "2"

    const-string/jumbo v4, "="

    invoke-virtual {v0, v2, v3, v4}, Lcom/alibaba/android/searchengine/models/SearchTable;->addWhereClause(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 905
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "2"

    const-string/jumbo v4, "="

    invoke-virtual {v0, v2, v3, v4}, Lcom/alibaba/android/searchengine/models/SearchTable;->addWhereClause(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 906
    const-string/jumbo v2, "status"

    const-string/jumbo v3, "2"

    const-string/jumbo v4, "!="

    invoke-virtual {v0, v2, v3, v4}, Lcom/alibaba/android/searchengine/models/SearchTable;->addWhereClause(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 907
    const-string/jumbo v2, "status"

    const-string/jumbo v3, "5"

    const-string/jumbo v4, "!="

    invoke-virtual {v0, v2, v3, v4}, Lcom/alibaba/android/searchengine/models/SearchTable;->addWhereClause(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 908
    if-eqz p5, :cond_0

    .line 909
    const-string/jumbo v2, "tag"

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "="

    invoke-virtual {v0, v2, v3, v4}, Lcom/alibaba/android/searchengine/models/SearchTable;->addWhereClause(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 911
    :cond_0
    if-eqz p2, :cond_1

    .line 912
    const-string/jumbo v2, "ownerId"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "="

    invoke-virtual {v0, v2, v3, v4}, Lcom/alibaba/android/searchengine/models/SearchTable;->addWhereClause(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 914
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-lez v2, :cond_3

    .line 915
    const-string/jumbo v2, "createAt"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ">="

    invoke-virtual {v0, v2, v3, v4}, Lcom/alibaba/android/searchengine/models/SearchTable;->addWhereClause(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 916
    const-string/jumbo v2, "createAt"

    sget-object v3, Lcom/alibaba/android/searchengine/models/SearchTable$OrderByType;->DESC:Lcom/alibaba/android/searchengine/models/SearchTable$OrderByType;

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/searchengine/models/SearchTable;->addOrdeyByClause(Ljava/lang/String;Lcom/alibaba/android/searchengine/models/SearchTable$OrderByType;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 920
    :goto_0
    if-ltz p0, :cond_2

    if-lez p1, :cond_2

    .line 921
    invoke-virtual {v0, p0, p1}, Lcom/alibaba/android/searchengine/models/SearchTable;->addLimitClause(II)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 923
    :cond_2
    iput-object v0, v1, Lcom/alibaba/android/searchengine/models/SearchTask;->searchTable:Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 925
    return-object v1

    .line 918
    :cond_3
    const-string/jumbo v2, "createAt"

    sget-object v3, Lcom/alibaba/android/searchengine/models/SearchTable$OrderByType;->DESC:Lcom/alibaba/android/searchengine/models/SearchTable$OrderByType;

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/searchengine/models/SearchTable;->addOrdeyByClause(Ljava/lang/String;Lcom/alibaba/android/searchengine/models/SearchTable$OrderByType;)Lcom/alibaba/android/searchengine/models/SearchTable;

    goto :goto_0
.end method

.method static a(IILjava/lang/String;IZLjava/util/List;Ljava/util/List;J)Lcom/alibaba/android/searchengine/models/SearchTask;
    .locals 17
    .param p0, "offset"    # I
    .param p1, "size"    # I
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "tableCount"    # I
    .param p4, "isMergeRow"    # Z
    .param p7, "fromTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;J)",
            "Lcom/alibaba/android/searchengine/models/SearchTask;"
        }
    .end annotation

    .prologue
    .line 1056
    .local p5, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v8, Lcom/alibaba/android/searchengine/models/SearchTask;

    invoke-direct {v8}, Lcom/alibaba/android/searchengine/models/SearchTask;-><init>()V

    .line 1057
    .local v8, "task":Lcom/alibaba/android/searchengine/models/SearchTask;
    const-string/jumbo v11, "chat_msg"

    iput-object v11, v8, Lcom/alibaba/android/searchengine/models/SearchTask;->group:Ljava/lang/String;

    .line 1058
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->l()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/alibaba/android/searchengine/models/SearchTask;->bizType:Ljava/lang/String;

    .line 1061
    new-instance v5, Lcom/alibaba/android/searchengine/models/SearchTable;

    const-string/jumbo v11, "tbconversation"

    invoke-direct {v5, v11}, Lcom/alibaba/android/searchengine/models/SearchTable;-><init>(Ljava/lang/String;)V

    .line 1062
    .local v5, "conversationTable":Lcom/alibaba/android/searchengine/models/SearchTable;
    const/16 v11, 0x8

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "title"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string/jumbo v13, "icon"

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const-string/jumbo v13, "type"

    aput-object v13, v11, v12

    const/4 v12, 0x3

    const-string/jumbo v13, "tag"

    aput-object v13, v11, v12

    const/4 v12, 0x4

    const-string/jumbo v13, "status"

    aput-object v13, v11, v12

    const/4 v12, 0x5

    const-string/jumbo v13, "ext"

    aput-object v13, v11, v12

    const/4 v12, 0x6

    const-string/jumbo v13, "groupIcon"

    aput-object v13, v11, v12

    const/4 v12, 0x7

    const-string/jumbo v13, "groupIconType"

    aput-object v13, v11, v12

    invoke-virtual {v5, v11}, Lcom/alibaba/android/searchengine/models/SearchTable;->addOutColumns([Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 1066
    const-string/jumbo v11, "status"

    const-string/jumbo v12, "2"

    const-string/jumbo v13, "!="

    invoke-virtual {v5, v11, v12, v13}, Lcom/alibaba/android/searchengine/models/SearchTable;->addWhereClause(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 1083
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1084
    .local v7, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1085
    .local v9, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1086
    .local v4, "comparators":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1088
    .local v6, "joins":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v11, "tag"

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1089
    const-string/jumbo v11, "="

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1090
    const-string/jumbo v11, "0"

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1092
    const-string/jumbo v11, "or"

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1094
    const-string/jumbo v11, "tag"

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1095
    const-string/jumbo v11, "="

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1096
    const-string/jumbo v11, "2"

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1098
    const-string/jumbo v11, "or"

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1100
    const-string/jumbo v11, "tag"

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1101
    const-string/jumbo v11, "="

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1102
    const-string/jumbo v11, "7"

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1104
    const-string/jumbo v11, "or"

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1106
    const-string/jumbo v11, "tag"

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1107
    const-string/jumbo v11, "="

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1108
    const-string/jumbo v11, "9"

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1112
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v11

    invoke-virtual {v11}, Lcid;->b()Lchy;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 1113
    const-string/jumbo v11, "or"

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1114
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v11

    invoke-virtual {v11}, Lcid;->b()Lchy;

    move-result-object v11

    invoke-virtual {v11}, Lchy;->getCurrentUid()J

    move-result-wide v12

    const-wide/32 v14, 0x40d1c1

    invoke-static {v12, v13, v14, v15}, Lcom/alibaba/android/search/utils/SearchUtils;->a(JJ)Ljava/lang/String;

    move-result-object v3

    .line 1115
    .local v3, "cid":Ljava/lang/String;
    const-string/jumbo v11, "cid"

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1116
    const-string/jumbo v11, "="

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1117
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1121
    .end local v3    # "cid":Ljava/lang/String;
    :cond_0
    invoke-virtual {v5, v7, v9, v4, v6}, Lcom/alibaba/android/searchengine/models/SearchTable;->addWhereClause(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 1124
    new-instance v2, Lcom/alibaba/android/searchengine/models/SearchTable;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Lcom/alibaba/android/searchengine/models/SearchTable;-><init>(Ljava/lang/String;)V

    .line 1125
    .local v2, "chatMsgTable":Lcom/alibaba/android/searchengine/models/SearchTable;
    move/from16 v0, p4

    iput-boolean v0, v2, Lcom/alibaba/android/searchengine/models/SearchTable;->mergeRow:Z

    .line 1126
    if-eqz p3, :cond_1

    .line 1127
    move/from16 v0, p3

    iput v0, v2, Lcom/alibaba/android/searchengine/models/SearchTable;->maxTableCount:I

    .line 1140
    :cond_1
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "content"

    aput-object v13, v11, v12

    invoke-virtual {v2, v11}, Lcom/alibaba/android/searchengine/models/SearchTable;->addQueryColumns([Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 1143
    const/16 v11, 0x9

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "mid"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string/jumbo v13, "cid"

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const-string/jumbo v13, "senderId"

    aput-object v13, v11, v12

    const/4 v12, 0x3

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string/jumbo v15, "type"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const-string/jumbo v15, " as "

    aput-object v15, v13, v14

    const/4 v14, 0x2

    const-string/jumbo v15, "msg_type"

    aput-object v15, v13, v14

    .line 1144
    invoke-static {v13}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x4

    const-string/jumbo v13, "content"

    aput-object v13, v11, v12

    const/4 v12, 0x5

    const-string/jumbo v13, "createdAt"

    aput-object v13, v11, v12

    const/4 v12, 0x6

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string/jumbo v15, "ext"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const-string/jumbo v15, " as "

    aput-object v15, v13, v14

    const/4 v14, 0x2

    const-string/jumbo v15, "msg_ext"

    aput-object v15, v13, v14

    .line 1145
    invoke-static {v13}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x7

    const-string/jumbo v13, "contentType"

    aput-object v13, v11, v12

    const/16 v12, 0x8

    const-string/jumbo v13, "recall"

    aput-object v13, v11, v12

    .line 1143
    invoke-virtual {v2, v11}, Lcom/alibaba/android/searchengine/models/SearchTable;->addOutColumns([Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 1148
    if-nez p4, :cond_5

    .line 1149
    const-string/jumbo v11, "createdAt"

    sget-object v12, Lcom/alibaba/android/searchengine/models/SearchTable$OrderByType;->DESC:Lcom/alibaba/android/searchengine/models/SearchTable$OrderByType;

    invoke-virtual {v2, v11, v12}, Lcom/alibaba/android/searchengine/models/SearchTable;->addOrdeyByClause(Ljava/lang/String;Lcom/alibaba/android/searchengine/models/SearchTable$OrderByType;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 1155
    :goto_0
    const-string/jumbo v11, "messageStatus"

    sget-object v12, Lcom/alibaba/wukong/im/Message$MessageStatus;->DELETED:Lcom/alibaba/wukong/im/Message$MessageStatus;

    invoke-virtual {v12}, Lcom/alibaba/wukong/im/Message$MessageStatus;->typeValue()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "!="

    invoke-virtual {v2, v11, v12, v13}, Lcom/alibaba/android/searchengine/models/SearchTable;->addWhereClause(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 1156
    const-string/jumbo v11, "recall"

    const-string/jumbo v12, "1"

    const-string/jumbo v13, "!="

    invoke-virtual {v2, v11, v12, v13}, Lcom/alibaba/android/searchengine/models/SearchTable;->addWhereClause(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 1159
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    .line 1160
    .local v10, "whereInValues":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v11, " in ("

    invoke-virtual {v10, v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v11

    const/4 v12, 0x1

    .line 1161
    invoke-virtual {v11, v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v11

    const-string/jumbo v12, ","

    .line 1162
    invoke-virtual {v11, v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v11

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v11

    const-string/jumbo v12, ","

    .line 1163
    invoke-virtual {v11, v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v11

    const-string/jumbo v12, ","

    .line 1164
    invoke-virtual {v11, v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v11

    const/16 v12, 0xcb

    invoke-virtual {v11, v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v11

    const-string/jumbo v12, ","

    .line 1165
    invoke-virtual {v11, v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v11

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v11

    const-string/jumbo v12, ","

    .line 1166
    invoke-virtual {v11, v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v11

    const/16 v12, 0xcc

    invoke-virtual {v11, v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v11

    const-string/jumbo v12, ","

    .line 1167
    invoke-virtual {v11, v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v11

    const/16 v12, 0x66

    invoke-virtual {v11, v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v11

    const-string/jumbo v12, ","

    .line 1168
    invoke-virtual {v11, v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v11

    const/16 v12, 0x640

    invoke-virtual {v11, v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v11

    const-string/jumbo v12, ","

    .line 1169
    invoke-virtual {v11, v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v11

    const/16 v12, 0x5dc

    invoke-virtual {v11, v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v11

    const-string/jumbo v12, ","

    .line 1170
    invoke-virtual {v11, v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v11

    const/16 v12, 0x4b0

    invoke-virtual {v11, v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v11

    const-string/jumbo v12, ","

    .line 1171
    invoke-virtual {v11, v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v11

    const/16 v12, 0x4b1

    invoke-virtual {v11, v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v11

    const-string/jumbo v12, ","

    .line 1172
    invoke-virtual {v11, v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v11

    const/16 v12, 0x578

    invoke-virtual {v11, v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v11

    const-string/jumbo v12, ","

    .line 1173
    invoke-virtual {v11, v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v11

    const/16 v12, 0x190

    invoke-virtual {v11, v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v11

    const-string/jumbo v12, ","

    .line 1174
    invoke-virtual {v11, v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v11

    const/16 v12, 0x1f4

    invoke-virtual {v11, v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v11

    const-string/jumbo v12, ","

    .line 1175
    invoke-virtual {v11, v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v11

    const/16 v12, 0x1f5

    invoke-virtual {v11, v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v11

    const-string/jumbo v12, ","

    .line 1176
    invoke-virtual {v11, v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v11

    const/16 v12, 0x1f6

    invoke-virtual {v11, v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v11

    const-string/jumbo v12, ","

    .line 1177
    invoke-virtual {v11, v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v11

    const/16 v12, 0x12d

    invoke-virtual {v11, v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v11

    const-string/jumbo v12, ","

    .line 1178
    invoke-virtual {v11, v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v11

    const/16 v12, 0x12c

    invoke-virtual {v11, v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v11

    const-string/jumbo v12, ","

    .line 1179
    invoke-virtual {v11, v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v11

    const/16 v12, 0x2bc

    invoke-virtual {v11, v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v11

    const-string/jumbo v12, ")"

    .line 1180
    invoke-virtual {v11, v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1181
    const-string/jumbo v11, "contentType"

    invoke-virtual {v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, ""

    invoke-virtual {v2, v11, v12, v13}, Lcom/alibaba/android/searchengine/models/SearchTable;->addWhereClause(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 1182
    const-string/jumbo v11, "creatorType"

    sget-object v12, Lcom/alibaba/wukong/im/Message$CreatorType;->SELF:Lcom/alibaba/wukong/im/Message$CreatorType;

    invoke-virtual {v12}, Lcom/alibaba/wukong/im/Message$CreatorType;->typeValue()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "="

    invoke-virtual {v2, v11, v12, v13}, Lcom/alibaba/android/searchengine/models/SearchTable;->addWhereClause(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 1183
    const-string/jumbo v11, "messageStatus"

    sget-object v12, Lcom/alibaba/wukong/im/Message$MessageStatus;->DELETED:Lcom/alibaba/wukong/im/Message$MessageStatus;

    invoke-virtual {v12}, Lcom/alibaba/wukong/im/Message$MessageStatus;->typeValue()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "!="

    invoke-virtual {v2, v11, v12, v13}, Lcom/alibaba/android/searchengine/models/SearchTable;->addWhereClause(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 1184
    const-string/jumbo v11, "recall"

    const-string/jumbo v12, "1"

    const-string/jumbo v13, "!="

    invoke-virtual {v2, v11, v12, v13}, Lcom/alibaba/android/searchengine/models/SearchTable;->addWhereClause(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 1186
    if-ltz p0, :cond_2

    if-lez p1, :cond_2

    .line 1187
    move/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/android/searchengine/models/SearchTable;->addLimitClause(II)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 1190
    :cond_2
    const-string/jumbo v11, "cid"

    const-string/jumbo v12, "cid"

    invoke-virtual {v2, v5, v11, v12}, Lcom/alibaba/android/searchengine/models/SearchTable;->union(Lcom/alibaba/android/searchengine/models/SearchTable;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 1192
    iput-object v2, v8, Lcom/alibaba/android/searchengine/models/SearchTask;->searchTable:Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 2203
    invoke-static/range {p5 .. p5}, Lenr;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v12

    .line 2205
    invoke-static/range {p6 .. p6}, Lenr;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v13

    .line 2206
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 2207
    const/4 v11, 0x2

    new-array v14, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v12, v14, v11

    const/4 v15, 0x1

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    const-string/jumbo v11, ""

    :goto_1
    aput-object v11, v14, v15

    invoke-static {v14}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2208
    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v11, v12, v14

    const/4 v11, 0x1

    aput-object v13, v12, v11

    invoke-static {v12}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2211
    :cond_3
    const/4 v11, 0x0

    .line 2212
    const-wide/16 v14, 0x0

    cmp-long v13, p7, v14

    if-lez v13, :cond_4

    .line 2213
    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "createdAt"

    aput-object v14, v11, v13

    const/4 v13, 0x1

    const-string/jumbo v14, ">="

    aput-object v14, v11, v13

    const/4 v13, 0x2

    invoke-static/range {p7 .. p8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v11, v13

    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2215
    :cond_4
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 2216
    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v12, v13, v14

    const/4 v14, 0x1

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_7

    const-string/jumbo v12, ""

    :goto_2
    aput-object v12, v13, v14

    invoke-static {v13}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2217
    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v12, v13, v14

    const/4 v12, 0x1

    aput-object v11, v13, v12

    invoke-static {v13}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1196
    :goto_3
    iput-object v11, v8, Lcom/alibaba/android/searchengine/models/SearchTask;->indexWhereCondition:Ljava/lang/String;

    .line 1198
    return-object v8

    .line 1151
    .end local v10    # "whereInValues":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_5
    const-string/jumbo v11, "lastModify"

    sget-object v12, Lcom/alibaba/android/searchengine/models/SearchTable$OrderByType;->DESC:Lcom/alibaba/android/searchengine/models/SearchTable$OrderByType;

    invoke-virtual {v5, v11, v12}, Lcom/alibaba/android/searchengine/models/SearchTable;->addOrdeyByClause(Ljava/lang/String;Lcom/alibaba/android/searchengine/models/SearchTable$OrderByType;)Lcom/alibaba/android/searchengine/models/SearchTable;

    goto/16 :goto_0

    .line 2207
    .restart local v10    # "whereInValues":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_6
    const-string/jumbo v11, " AND "

    goto :goto_1

    .line 2216
    :cond_7
    const-string/jumbo v12, " AND "

    goto :goto_2

    :cond_8
    move-object v11, v12

    goto :goto_3
.end method

.method private static a(Ljava/util/List;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 625
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_2

    .line 626
    :cond_0
    const-string/jumbo v1, ""

    .line 643
    :cond_1
    :goto_0
    return-object v1

    .line 629
    :cond_2
    const-string/jumbo v1, ""

    .line 630
    .local v1, "query":Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 631
    .local v0, "cid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 635
    new-array v4, v8, [Ljava/lang/String;

    aput-object v1, v4, v6

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "("

    :goto_2
    aput-object v2, v4, v7

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 636
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    aput-object v1, v2, v6

    const-string/jumbo v4, "cid"

    aput-object v4, v2, v7

    const-string/jumbo v4, "=\'"

    aput-object v4, v2, v8

    const/4 v4, 0x3

    aput-object v0, v2, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "\'"

    aput-object v5, v2, v4

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 637
    goto :goto_1

    .line 635
    :cond_4
    const-string/jumbo v2, " OR "

    goto :goto_2

    .line 639
    .end local v0    # "cid":Ljava/lang/String;
    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 640
    new-array v2, v8, [Ljava/lang/String;

    aput-object v1, v2, v6

    const-string/jumbo v3, ")"

    aput-object v3, v2, v7

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static a(IILjava/lang/String;Lcca;)V
    .locals 8
    .param p0, "offset"    # I
    .param p1, "size"    # I
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "searchTaskListener"    # Lcca;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 74
    if-nez p3, :cond_0

    .line 95
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-static {}, Leue;->a()Leue;

    move-result-object v0

    .line 1703
    new-instance v1, Lcom/alibaba/android/searchengine/models/SearchTask;

    invoke-direct {v1}, Lcom/alibaba/android/searchengine/models/SearchTask;-><init>()V

    .line 1704
    const-string/jumbo v2, "local_contact"

    iput-object v2, v1, Lcom/alibaba/android/searchengine/models/SearchTask;->group:Ljava/lang/String;

    .line 1705
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->e()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/searchengine/models/SearchTask;->bizType:Ljava/lang/String;

    .line 1706
    new-instance v2, Lcom/alibaba/android/searchengine/models/SearchTable;

    const-string/jumbo v3, "tb_local_contact"

    invoke-direct {v2, v3}, Lcom/alibaba/android/searchengine/models/SearchTable;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/alibaba/android/searchengine/models/SearchTask;->searchTable:Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 1707
    iget-object v2, v1, Lcom/alibaba/android/searchengine/models/SearchTask;->searchTable:Lcom/alibaba/android/searchengine/models/SearchTable;

    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, "name"

    aput-object v4, v3, v5

    const-string/jumbo v4, "phonenumber"

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Lcom/alibaba/android/searchengine/models/SearchTable;->addQueryColumns([Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 1708
    iget-object v2, v1, Lcom/alibaba/android/searchengine/models/SearchTask;->searchTable:Lcom/alibaba/android/searchengine/models/SearchTable;

    const/16 v3, 0xb

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "cid"

    aput-object v4, v3, v5

    const-string/jumbo v4, "uid"

    aput-object v4, v3, v6

    const-string/jumbo v4, "name"

    aput-object v4, v3, v7

    const/4 v4, 0x3

    const-string/jumbo v5, "pinyin"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "phonenumber"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string/jumbo v5, "phonecode"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string/jumbo v5, "relation"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string/jumbo v5, "modifyTime"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string/jumbo v5, "isupload"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string/jumbo v5, "tag"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string/jumbo v5, "phoneunite"

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/alibaba/android/searchengine/models/SearchTable;->addOutColumns([Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 1710
    if-ltz p0, :cond_1

    if-lez p1, :cond_1

    .line 1711
    iget-object v2, v1, Lcom/alibaba/android/searchengine/models/SearchTask;->searchTable:Lcom/alibaba/android/searchengine/models/SearchTable;

    invoke-virtual {v2, p0, p1}, Lcom/alibaba/android/searchengine/models/SearchTable;->addLimitClause(II)Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 78
    :cond_1
    new-instance v2, Lenr$12;

    invoke-direct {v2, p3}, Lenr$12;-><init>(Lcca;)V

    invoke-virtual {v0, p2, v1, v2}, Leue;->a(Ljava/lang/String;Lcom/alibaba/android/searchengine/models/SearchTask;Leug;)V

    goto/16 :goto_0
.end method

.method public static a(IILjava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Lcca;)V
    .locals 7
    .param p0, "offset"    # I
    .param p1, "size"    # I
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "ownerId"    # Ljava/lang/Long;
    .param p4, "tag"    # Ljava/lang/Integer;
    .param p5, "searchTaskListener"    # Lcca;

    .prologue
    .line 412
    if-nez p5, :cond_0

    .line 433
    :goto_0
    return-void

    .line 416
    :cond_0
    invoke-static {}, Leue;->a()Leue;

    move-result-object v0

    const-wide/16 v4, 0x0

    move v1, p0

    move v2, p1

    move-object v3, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lenr;->a(IILjava/lang/Long;JLjava/lang/Integer;)Lcom/alibaba/android/searchengine/models/SearchTask;

    move-result-object v1

    new-instance v2, Lenr$5;

    invoke-direct {v2, p5}, Lenr$5;-><init>(Lcca;)V

    invoke-virtual {v0, p2, v1, v2}, Leue;->a(Ljava/lang/String;Lcom/alibaba/android/searchengine/models/SearchTask;Leug;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLjava/lang/String;IIIIZLcca;)V
    .locals 13
    .param p0, "keyword"    # Ljava/lang/String;
    .param p3, "fromTime"    # J
    .param p5, "tableName"    # Ljava/lang/String;
    .param p6, "offset"    # I
    .param p7, "size"    # I
    .param p8, "tabelOffset"    # I
    .param p9, "tableSize"    # I
    .param p10, "isMerge"    # Z
    .param p11, "searchTaskListener"    # Lcca;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;J",
            "Ljava/lang/String;",
            "IIIIZ",
            "Lcca;",
            ")V"
        }
    .end annotation

    .prologue
    .line 599
    .local p1, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p10, :cond_1

    .line 601
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v5, ""

    :goto_0
    const/4 v6, 0x0

    move/from16 v3, p8

    move/from16 v4, p9

    move/from16 v7, p10

    move-object v8, p1

    move-object v9, p2

    move-wide/from16 v10, p3

    invoke-static/range {v3 .. v11}, Lenr;->a(IILjava/lang/String;IZLjava/util/List;Ljava/util/List;J)Lcom/alibaba/android/searchengine/models/SearchTask;

    move-result-object v2

    .line 605
    .local v2, "searchTask":Lcom/alibaba/android/searchengine/models/SearchTask;
    :goto_1
    invoke-static {}, Leue;->a()Leue;

    move-result-object v3

    new-instance v4, Lenr$13;

    move-object/from16 v0, p11

    invoke-direct {v4, v0}, Lenr$13;-><init>(Lcca;)V

    invoke-virtual {v3, p0, v2, v4}, Leue;->a(Ljava/lang/String;Lcom/alibaba/android/searchengine/models/SearchTask;Leug;)V

    .line 621
    return-void

    .end local v2    # "searchTask":Lcom/alibaba/android/searchengine/models/SearchTask;
    :cond_0
    move-object/from16 v5, p5

    .line 601
    goto :goto_0

    .line 603
    :cond_1
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v5, ""

    :goto_2
    const/4 v6, 0x0

    move/from16 v3, p6

    move/from16 v4, p7

    move/from16 v7, p10

    move-object v8, p1

    move-object v9, p2

    move-wide/from16 v10, p3

    invoke-static/range {v3 .. v11}, Lenr;->a(IILjava/lang/String;IZLjava/util/List;Ljava/util/List;J)Lcom/alibaba/android/searchengine/models/SearchTask;

    move-result-object v2

    .restart local v2    # "searchTask":Lcom/alibaba/android/searchengine/models/SearchTask;
    goto :goto_1

    .end local v2    # "searchTask":Lcom/alibaba/android/searchengine/models/SearchTask;
    :cond_2
    move-object/from16 v5, p5

    goto :goto_2
.end method

.method private static b(Ljava/util/List;)Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-wide/16 v12, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 648
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_2

    .line 649
    :cond_0
    const-string/jumbo v0, ""

    .line 667
    :cond_1
    :goto_0
    return-object v0

    .line 652
    :cond_2
    const-string/jumbo v0, ""

    .line 653
    .local v0, "query":Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 2044
    .local v1, "uidLong":Ljava/lang/Long;
    invoke-static {v1, v12, v13}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 655
    .local v2, "uid":J
    cmp-long v4, v2, v12

    if-lez v4, :cond_3

    .line 659
    new-array v6, v10, [Ljava/lang/String;

    aput-object v0, v6, v8

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "("

    :goto_2
    aput-object v4, v6, v9

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 660
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    aput-object v0, v4, v8

    const-string/jumbo v6, "senderId"

    aput-object v6, v4, v9

    const-string/jumbo v6, "="

    aput-object v6, v4, v10

    const/4 v6, 0x3

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 661
    goto :goto_1

    .line 659
    :cond_4
    const-string/jumbo v4, " OR "

    goto :goto_2

    .line 663
    .end local v1    # "uidLong":Ljava/lang/Long;
    .end local v2    # "uid":J
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 664
    new-array v4, v10, [Ljava/lang/String;

    aput-object v0, v4, v8

    const-string/jumbo v5, ")"

    aput-object v5, v4, v9

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
