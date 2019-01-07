.class final Lcom/alibaba/android/rimet/RimetDDContext$11;
.super Ljava/lang/Object;
.source "RimetDDContext.java"

# interfaces
.implements Lcom/alibaba/doraemon/request/RequestStatisticsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/RimetDDContext;->initDoraemon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/RimetDDContext;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/RimetDDContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/RimetDDContext;

    .prologue
    .line 1951
    iput-object p1, p0, Lcom/alibaba/android/rimet/RimetDDContext$11;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onHitCacheFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 2044
    return-void
.end method

.method public final onHitCacheSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 2039
    return-void
.end method

.method public final onRequestEnd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 2054
    return-void
.end method

.method public final onRequestFailed(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "errCode"    # J
    .param p3, "duration"    # J
    .param p5, "url"    # Ljava/lang/String;
    .param p6, "tag"    # Ljava/lang/String;
    .param p7, "errMs"    # Ljava/lang/String;

    .prologue
    .line 1992
    :try_start_0
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->q(Ljava/lang/String;)Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;

    move-result-object v11

    .line 1993
    .local v11, "fileUnifyStatisticsModel":Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;
    const-string/jumbo v3, "arch"

    iput-object v3, v11, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->bizType:Ljava/lang/String;

    .line 1994
    const-string/jumbo v3, "N"

    iput-object v3, v11, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->result:Ljava/lang/String;

    .line 1995
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v11, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->statusCode:Ljava/lang/String;

    .line 1996
    move-wide/from16 v0, p3

    iput-wide v0, v11, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->cost:J

    .line 1997
    iget-object v3, p0, Lcom/alibaba/android/rimet/RimetDDContext$11;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    move-object/from16 v0, p5

    invoke-static {v3, v0}, Lcom/alibaba/android/rimet/RimetDDContext;->access$700(Lcom/alibaba/android/rimet/RimetDDContext;Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaType;

    move-result-object v14

    .line 1998
    .local v14, "type":Lcom/laiwang/protocol/media/MediaType;
    const-string/jumbo v3, "lwp://"

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1999
    if-eqz p5, :cond_1

    const-string/jumbo v3, "/ddmedia"

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2000
    const-string/jumbo v3, "lwp_auth"

    iput-object v3, v11, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->channelType:Ljava/lang/String;

    .line 2004
    :goto_0
    invoke-virtual {v14}, Lcom/laiwang/protocol/media/MediaType;->getValue()I

    move-result v3

    const-wide/16 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p1

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-wide/from16 v6, p3

    invoke-static/range {v3 .. v10}, Lcom/laiwang/protocol/android/log/PerfLogger;->logDownloader(IJJZILjava/lang/String;)V

    .line 2013
    :goto_1
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->getUnifyStatistics(I)Lcom/alibaba/doraemon/statistics/unify/UnifyStatistics;

    move-result-object v3

    invoke-interface {v3, v11}, Lcom/alibaba/doraemon/statistics/unify/UnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 2015
    invoke-static/range {p5 .. p5}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2017
    .local v12, "mediaId":Ljava/lang/String;
    move-object/from16 v0, p5

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2018
    invoke-static/range {p5 .. p5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v13

    .line 2020
    .local v13, "path":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2021
    move-object v12, v13

    .line 2028
    .end local v13    # "path":Ljava/lang/String;
    :cond_0
    :goto_2
    const-string/jumbo v3, "img"

    const-string/jumbo v4, "img"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Request "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2029
    move-object/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "errCode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " mediaId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " errMs"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p7

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2028
    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2034
    .end local v11    # "fileUnifyStatisticsModel":Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;
    .end local v12    # "mediaId":Ljava/lang/String;
    .end local v14    # "type":Lcom/laiwang/protocol/media/MediaType;
    :goto_3
    return-void

    .line 2002
    .restart local v11    # "fileUnifyStatisticsModel":Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;
    .restart local v14    # "type":Lcom/laiwang/protocol/media/MediaType;
    :cond_1
    const-string/jumbo v3, "lwp_noauth"

    iput-object v3, v11, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->channelType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2030
    .end local v11    # "fileUnifyStatisticsModel":Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;
    .end local v14    # "type":Lcom/laiwang/protocol/media/MediaType;
    :catch_0
    move-exception v2

    .line 2031
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 2006
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v11    # "fileUnifyStatisticsModel":Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;
    .restart local v14    # "type":Lcom/laiwang/protocol/media/MediaType;
    :cond_2
    if-eqz p5, :cond_3

    :try_start_1
    const-string/jumbo v3, "/ddmedia"

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2007
    const-string/jumbo v3, "https_auth"

    iput-object v3, v11, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->channelType:Ljava/lang/String;

    .line 2011
    :goto_4
    invoke-virtual {v14}, Lcom/laiwang/protocol/media/MediaType;->getValue()I

    move-result v3

    const-wide/16 v4, 0x0

    const/4 v8, 0x0

    move-wide/from16 v6, p3

    invoke-static/range {v3 .. v8}, Lcom/laiwang/protocol/android/log/PerfLogger;->logDownloader(IJJZ)V

    goto/16 :goto_1

    .line 2009
    :cond_3
    const-string/jumbo v3, "https_noauth"

    iput-object v3, v11, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->channelType:Ljava/lang/String;

    goto :goto_4

    .line 2024
    .restart local v12    # "mediaId":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    :cond_4
    invoke-static/range {p5 .. p5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v12

    goto/16 :goto_2
.end method

.method public final onRequestStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 2049
    return-void
.end method

.method public final onRequestSuccess(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "size"    # J
    .param p3, "duration"    # J
    .param p5, "url"    # Ljava/lang/String;
    .param p6, "tag"    # Ljava/lang/String;

    .prologue
    .line 1960
    :try_start_0
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->q(Ljava/lang/String;)Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;

    move-result-object v10

    .line 1961
    .local v10, "fileUnifyStatisticsModel":Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;
    const-string/jumbo v3, "arch"

    iput-object v3, v10, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->bizType:Ljava/lang/String;

    .line 1962
    const-string/jumbo v3, "Y"

    iput-object v3, v10, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->result:Ljava/lang/String;

    .line 1963
    move-wide/from16 v0, p3

    iput-wide v0, v10, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->cost:J

    .line 1964
    iput-wide p1, v10, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->totalSize:J

    .line 1965
    iput-wide p1, v10, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->transferSize:J

    .line 1966
    const-wide/16 v4, 0x0

    cmp-long v3, p3, v4

    if-gtz v3, :cond_0

    const-wide/16 v4, 0x0

    :goto_0
    long-to-double v4, v4

    iput-wide v4, v10, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->rate:D

    .line 1967
    iget-object v3, p0, Lcom/alibaba/android/rimet/RimetDDContext$11;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    move-object/from16 v0, p5

    invoke-static {v3, v0}, Lcom/alibaba/android/rimet/RimetDDContext;->access$700(Lcom/alibaba/android/rimet/RimetDDContext;Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaType;

    move-result-object v11

    .line 1968
    .local v11, "type":Lcom/laiwang/protocol/media/MediaType;
    const-string/jumbo v3, "lwp://"

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1969
    if-eqz p5, :cond_1

    const-string/jumbo v3, "/ddmedia"

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1970
    const-string/jumbo v3, "lwp_auth"

    iput-object v3, v10, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->channelType:Ljava/lang/String;

    .line 1974
    :goto_1
    invoke-virtual {v11}, Lcom/laiwang/protocol/media/MediaType;->getValue()I

    move-result v3

    const/4 v8, 0x1

    const/4 v9, 0x2

    move-wide v4, p1

    move-wide/from16 v6, p3

    invoke-static/range {v3 .. v9}, Lcom/laiwang/protocol/android/log/PerfLogger;->logDownloader(IJJZI)V

    .line 1983
    :goto_2
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->getUnifyStatistics(I)Lcom/alibaba/doraemon/statistics/unify/UnifyStatistics;

    move-result-object v3

    invoke-interface {v3, v10}, Lcom/alibaba/doraemon/statistics/unify/UnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 1987
    .end local v10    # "fileUnifyStatisticsModel":Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;
    .end local v11    # "type":Lcom/laiwang/protocol/media/MediaType;
    :goto_3
    return-void

    .line 1966
    .restart local v10    # "fileUnifyStatisticsModel":Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;
    :cond_0
    div-long v4, p1, p3

    goto :goto_0

    .line 1972
    .restart local v11    # "type":Lcom/laiwang/protocol/media/MediaType;
    :cond_1
    const-string/jumbo v3, "lwp_noauth"

    iput-object v3, v10, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->channelType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1984
    .end local v10    # "fileUnifyStatisticsModel":Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;
    .end local v11    # "type":Lcom/laiwang/protocol/media/MediaType;
    :catch_0
    move-exception v2

    .line 1985
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 1976
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v10    # "fileUnifyStatisticsModel":Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;
    .restart local v11    # "type":Lcom/laiwang/protocol/media/MediaType;
    :cond_2
    if-eqz p5, :cond_3

    :try_start_1
    const-string/jumbo v3, "/ddmedia"

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1977
    const-string/jumbo v3, "https_auth"

    iput-object v3, v10, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->channelType:Ljava/lang/String;

    .line 1981
    :goto_4
    invoke-virtual {v11}, Lcom/laiwang/protocol/media/MediaType;->getValue()I

    move-result v3

    const/4 v8, 0x1

    move-wide v4, p1

    move-wide/from16 v6, p3

    invoke-static/range {v3 .. v8}, Lcom/laiwang/protocol/android/log/PerfLogger;->logDownloader(IJJZ)V

    goto :goto_2

    .line 1979
    :cond_3
    const-string/jumbo v3, "https_noauth"

    iput-object v3, v10, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->channelType:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public final onRequestTraffic(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "txDataLen"    # J
    .param p3, "rxDataLen"    # J
    .param p5, "url"    # Ljava/lang/String;
    .param p6, "tag"    # Ljava/lang/String;

    .prologue
    .line 1955
    return-void
.end method
