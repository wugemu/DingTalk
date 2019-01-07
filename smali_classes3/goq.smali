.class public final Lgoq;
.super Ljava/lang/Object;
.source "CSpaceFileMonitorManager.java"


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lgor$c;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lgor$a;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lgor$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lgoq;->a:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lgoq;->b:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lgoq;->c:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lgoq;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 139
    return-void
.end method

.method public static a(Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 6
    .param p0, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 60
    if-nez p0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    sget-object v2, Lgoq;->a:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 65
    new-instance v0, Lgor;

    invoke-direct {v0}, Lgor;-><init>()V

    .line 66
    .local v0, "fileMonitorModel":Lgor;
    new-instance v1, Lgor$c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0}, Lgor$c;-><init>(Lgor;)V

    .line 67
    .local v1, "uploadProgressModel":Lgor$c;
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lgor$c;->a:Ljava/lang/String;

    .line 68
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v2

    iput-wide v2, v1, Lgor$c;->b:J

    .line 69
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadedSize()J

    move-result-wide v2

    iput-wide v2, v1, Lgor$c;->c:J

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lgor$c;->d:J

    .line 72
    sget-object v2, Lgoq;->a:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static a(ZLcom/alibaba/alimei/cspace/model/DentryModel;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p0, "isLwp"    # Z
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p2, "isSuccess"    # Z
    .param p3, "errorCode"    # Ljava/lang/String;
    .param p4, "errorStatus"    # Ljava/lang/String;
    .param p5, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 81
    if-nez p1, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    sget-object v9, Lgoq;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 89
    sget-object v9, Lgoq;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgor$c;

    .line 91
    .local v8, "uploadBeginStatusModel":Lgor$c;
    if-eqz v8, :cond_0

    .line 97
    if-nez p0, :cond_2

    .line 98
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadedSize()J

    move-result-wide v10

    iget-wide v12, v8, Lgor$c;->c:J

    sub-long v4, v10, v12

    .line 99
    .local v4, "size":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, v8, Lgor$c;->d:J

    sub-long v6, v10, v12

    .line 101
    .local v6, "totalTime":J
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;

    move-result-object v3

    .line 102
    .local v3, "fileUnifyStatisticsModel":Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;
    const-string/jumbo v9, "cspace"

    iput-object v9, v3, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->bizType:Ljava/lang/String;

    .line 103
    const-string/jumbo v9, "dp_https"

    iput-object v9, v3, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->channelType:Ljava/lang/String;

    .line 104
    iput-wide v6, v3, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->cost:J

    .line 105
    iput-wide v4, v3, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->totalSize:J

    .line 106
    iput-wide v4, v3, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->transferSize:J

    .line 107
    const-wide/16 v10, 0x0

    cmp-long v9, v6, v10

    if-gtz v9, :cond_4

    const-wide/16 v10, 0x0

    :goto_1
    long-to-double v10, v10

    iput-wide v10, v3, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->rate:D

    .line 108
    if-eqz p2, :cond_5

    .line 109
    const-string/jumbo v9, "Y"

    iput-object v9, v3, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->result:Ljava/lang/String;

    .line 110
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v9

    const/4 v10, 0x2

    invoke-interface {v9, v10}, Lcom/alibaba/doraemon/statistics/Statistics;->getUnifyStatistics(I)Lcom/alibaba/doraemon/statistics/unify/UnifyStatistics;

    move-result-object v9

    invoke-interface {v9, v3}, Lcom/alibaba/doraemon/statistics/unify/UnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 118
    .end local v3    # "fileUnifyStatisticsModel":Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;
    .end local v4    # "size":J
    .end local v6    # "totalTime":J
    :cond_2
    :goto_2
    if-nez p2, :cond_3

    .line 119
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 120
    .local v2, "extra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v10, "netType"

    if-eqz p0, :cond_6

    const-string/jumbo v9, "lwp"

    :goto_3
    invoke-virtual {v2, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string/jumbo v9, "path"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string/jumbo v9, "spaceId"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string/jumbo v9, "localUrl"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLocalUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string/jumbo v9, "errorStatus"

    move-object/from16 v0, p4

    invoke-virtual {v2, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string/jumbo v9, "errorCode"

    move-object/from16 v0, p3

    invoke-virtual {v2, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string/jumbo v9, "errorMsg"

    move-object/from16 v0, p5

    invoke-virtual {v2, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const/16 v9, 0x6a5

    const-string/jumbo v10, "\u9489\u76d8\u6587\u4ef6\u4e0a\u4f20\u5931\u8d25"

    invoke-static {v9, v2, v10}, Lgpl;->a(ILjava/util/HashMap;Ljava/lang/String;)V

    .line 131
    .end local v2    # "extra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    invoke-static {p1}, Lgoq;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    goto/16 :goto_0

    .line 107
    .restart local v3    # "fileUnifyStatisticsModel":Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;
    .restart local v4    # "size":J
    .restart local v6    # "totalTime":J
    :cond_4
    div-long v10, v4, v6

    goto :goto_1

    .line 112
    :cond_5
    const-string/jumbo v9, "N"

    iput-object v9, v3, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->result:Ljava/lang/String;

    .line 113
    move-object/from16 v0, p3

    iput-object v0, v3, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->statusCode:Ljava/lang/String;

    .line 114
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v9

    const/4 v10, 0x2

    invoke-interface {v9, v10}, Lcom/alibaba/doraemon/statistics/Statistics;->getUnifyStatistics(I)Lcom/alibaba/doraemon/statistics/unify/UnifyStatistics;

    move-result-object v9

    invoke-interface {v9, v3}, Lcom/alibaba/doraemon/statistics/unify/UnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    goto :goto_2

    .line 120
    .end local v3    # "fileUnifyStatisticsModel":Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;
    .end local v4    # "size":J
    .end local v6    # "totalTime":J
    .restart local v2    # "extra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    const-string/jumbo v9, "http"

    goto :goto_3
.end method

.method public static declared-synchronized b(Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 4
    .param p0, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 143
    const-class v1, Lgoq;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v0, Lgoq;->a:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    sget-object v0, Lgoq;->a:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :cond_0
    monitor-exit v1

    return-void

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(ZLcom/alibaba/alimei/cspace/model/DentryModel;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p0, "isLwp"    # Z
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p2, "isSuccess"    # Z
    .param p3, "errorCode"    # Ljava/lang/String;
    .param p4, "errorStatus"    # Ljava/lang/String;
    .param p5, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 174
    invoke-static {p1}, Lgoq;->g(Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v4

    .line 176
    .local v4, "key":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    sget-object v10, Lgoq;->b:Ljava/util/Map;

    invoke-interface {v10, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 184
    sget-object v10, Lgoq;->b:Ljava/util/Map;

    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgor$a;

    .line 186
    .local v5, "model":Lgor$a;
    if-eqz v5, :cond_0

    .line 193
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getDownloadedSize()J

    move-result-wide v10

    iget-wide v12, v5, Lgor$a;->c:J

    sub-long v6, v10, v12

    .line 194
    .local v6, "size":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, v5, Lgor$a;->d:J

    sub-long v8, v10, v12

    .line 196
    .local v8, "totalTime":J
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;

    move-result-object v3

    .line 197
    .local v3, "fileUnifyStatisticsModel":Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;
    const-string/jumbo v10, "cspace"

    iput-object v10, v3, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->bizType:Ljava/lang/String;

    .line 198
    const-string/jumbo v10, "dp_https"

    iput-object v10, v3, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->channelType:Ljava/lang/String;

    .line 199
    iput-wide v8, v3, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->cost:J

    .line 200
    iput-wide v6, v3, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->totalSize:J

    .line 201
    iput-wide v6, v3, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->transferSize:J

    .line 202
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-gtz v10, :cond_3

    const-wide/16 v10, 0x0

    :goto_1
    long-to-double v10, v10

    iput-wide v10, v3, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->rate:D

    .line 203
    if-eqz p2, :cond_4

    .line 204
    const-string/jumbo v10, "Y"

    iput-object v10, v3, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->result:Ljava/lang/String;

    .line 205
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v10

    const/4 v11, 0x3

    invoke-interface {v10, v11}, Lcom/alibaba/doraemon/statistics/Statistics;->getUnifyStatistics(I)Lcom/alibaba/doraemon/statistics/unify/UnifyStatistics;

    move-result-object v10

    invoke-interface {v10, v3}, Lcom/alibaba/doraemon/statistics/unify/UnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 213
    :goto_2
    if-nez p2, :cond_2

    .line 214
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 215
    .local v2, "extra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v10, "netType"

    const-string/jumbo v11, "http"

    invoke-virtual {v2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string/jumbo v10, "spaceId"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string/jumbo v10, "fileId"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string/jumbo v10, "errorStatus"

    move-object/from16 v0, p4

    invoke-virtual {v2, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string/jumbo v10, "errorCode"

    move-object/from16 v0, p3

    invoke-virtual {v2, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-string/jumbo v10, "errorMsg"

    move-object/from16 v0, p5

    invoke-virtual {v2, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const/16 v10, 0x6a6

    const-string/jumbo v11, "\u9489\u76d8\u6587\u4ef6\u4e0b\u8f7d\u5931\u8d25"

    invoke-static {v10, v2, v11}, Lgpl;->a(ILjava/util/HashMap;Ljava/lang/String;)V

    .line 225
    .end local v2    # "extra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    invoke-static {p1}, Lgoq;->d(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    goto/16 :goto_0

    .line 202
    :cond_3
    div-long v10, v6, v8

    goto :goto_1

    .line 207
    :cond_4
    const-string/jumbo v10, "N"

    iput-object v10, v3, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->result:Ljava/lang/String;

    .line 208
    move-object/from16 v0, p3

    iput-object v0, v3, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->statusCode:Ljava/lang/String;

    .line 209
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v10

    const/4 v11, 0x3

    invoke-interface {v10, v11}, Lcom/alibaba/doraemon/statistics/Statistics;->getUnifyStatistics(I)Lcom/alibaba/doraemon/statistics/unify/UnifyStatistics;

    move-result-object v10

    invoke-interface {v10, v3}, Lcom/alibaba/doraemon/statistics/unify/UnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    goto :goto_2
.end method

.method public static c(Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 6
    .param p0, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 152
    invoke-static {p0}, Lgoq;->g(Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, "key":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    sget-object v3, Lgoq;->b:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 158
    new-instance v1, Lgor;

    invoke-direct {v1}, Lgor;-><init>()V

    .line 159
    .local v1, "fileMonitorModel":Lgor;
    new-instance v0, Lgor$a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lgor$a;-><init>(Lgor;)V

    .line 161
    .local v0, "downloadBeginStatusModel":Lgor$a;
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lgor$a;->a:Ljava/lang/String;

    .line 162
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v4

    iput-wide v4, v0, Lgor$a;->b:J

    .line 163
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getDownloadedSize()J

    move-result-wide v4

    iput-wide v4, v0, Lgor$a;->c:J

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lgor$a;->d:J

    .line 166
    sget-object v3, Lgoq;->b:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static c(ZLcom/alibaba/alimei/cspace/model/DentryModel;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p0, "isLwp"    # Z
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p2, "isSuccess"    # Z
    .param p3, "errorCode"    # Ljava/lang/String;
    .param p4, "errorStatus"    # Ljava/lang/String;
    .param p5, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 267
    invoke-static {p1}, Lgoq;->g(Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "key":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    sget-object v3, Lgoq;->c:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgor$b;

    .line 275
    .local v2, "model":Lgor$b;
    if-eqz v2, :cond_0

    .line 279
    if-nez p2, :cond_2

    .line 280
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 281
    .local v0, "extra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "netType"

    const-string/jumbo v6, "http"

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    const-string/jumbo v3, "spaceId"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const-string/jumbo v3, "fileId"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string/jumbo v3, "errorStatus"

    invoke-virtual {v0, v3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string/jumbo v3, "errorCode"

    invoke-virtual {v0, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string/jumbo v3, "errorMsg"

    invoke-virtual {v0, v3, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const/16 v3, 0x6a8

    const-string/jumbo v6, "\u9489\u76d8\u6587\u4ef6\u9884\u89c8\u5931\u8d25"

    invoke-static {v3, v0, v6}, Lgpl;->a(ILjava/util/HashMap;Ljava/lang/String;)V

    .line 291
    .end local v0    # "extra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, v2, Lgor$b;->c:J

    sub-long v4, v6, v8

    .line 292
    .local v4, "totalTime":J
    if-eqz p2, :cond_0

    const-wide/16 v6, 0x1388

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 294
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 295
    .restart local v0    # "extra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "netType"

    const-string/jumbo v6, "http"

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string/jumbo v3, "spaceId"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string/jumbo v3, "fileId"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const-string/jumbo v3, "errorStatus"

    invoke-virtual {v0, v3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string/jumbo v3, "errorCode"

    const-string/jumbo v6, "7000002"

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string/jumbo v3, "errorMsg"

    const-string/jumbo v6, "preview too slow"

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const-string/jumbo v3, "CSpace"

    const-string/jumbo v6, "CSpaceFileMonitorManager"

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const/16 v3, 0x6a8

    const-string/jumbo v6, "\u9489\u76d8\u6587\u4ef6\u9884\u89c8\u8fc7\u6162"

    invoke-static {v3, v0, v6}, Lgpl;->a(ILjava/util/HashMap;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static d(Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 2
    .param p0, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 232
    invoke-static {p0}, Lgoq;->g(Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    :goto_0
    return-void

    .line 238
    :cond_0
    sget-object v1, Lgoq;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static e(Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 6
    .param p0, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 246
    invoke-static {p0}, Lgoq;->g(Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, "key":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    sget-object v3, Lgoq;->c:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 253
    new-instance v0, Lgor;

    invoke-direct {v0}, Lgor;-><init>()V

    .line 254
    .local v0, "fileMonitorModel":Lgor;
    new-instance v2, Lgor$b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v0}, Lgor$b;-><init>(Lgor;)V

    .line 256
    .local v2, "previewStartModel":Lgor$b;
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lgor$b;->a:Ljava/lang/String;

    .line 257
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lgor$b;->c:J

    .line 258
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v4

    iput-wide v4, v2, Lgor$b;->b:J

    .line 259
    sget-object v3, Lgoq;->c:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static f(Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 2
    .param p0, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 312
    invoke-static {p0}, Lgoq;->g(Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    :goto_0
    return-void

    .line 318
    :cond_0
    sget-object v1, Lgoq;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static g(Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;
    .locals 3
    .param p0, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 322
    if-nez p0, :cond_0

    .line 323
    const/4 v0, 0x0

    .line 326
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
