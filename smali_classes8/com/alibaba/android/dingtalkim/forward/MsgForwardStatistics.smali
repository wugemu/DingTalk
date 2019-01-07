.class public Lcom/alibaba/android/dingtalkim/forward/MsgForwardStatistics;
.super Ljava/lang/Object;
.source "MsgForwardStatistics.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x132ada1ffa5ea79cL


# instance fields
.field private mIsClickSpaceRecorded:Z

.field private mIsEnterRecorded:Z

.field private mIsSendRecorded:Z

.field private mSpaceSrc:Ljava/lang/String;

.field private mSpaceStatisticKey:Ljava/lang/String;

.field private mStatisticsFrom:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "statisticsFrom"    # Ljava/lang/String;
    .param p2, "spaceSrc"    # Ljava/lang/String;
    .param p3, "spaceStaticsticsKey"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/MsgForwardStatistics;->mStatisticsFrom:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/forward/MsgForwardStatistics;->mSpaceStatisticKey:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/forward/MsgForwardStatistics;->mSpaceSrc:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public clickSpaceStatistic(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 4
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 57
    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkim/forward/MsgForwardStatistics;->mIsClickSpaceRecorded:Z

    if-eqz v2, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkim/forward/MsgForwardStatistics;->mIsClickSpaceRecorded:Z

    .line 61
    invoke-static {p1}, Lgri;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "to":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/MsgForwardStatistics;->mSpaceStatisticKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 63
    const-string/jumbo v2, "space_detail_send_contact_success"

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/MsgForwardStatistics;->mSpaceStatisticKey:Ljava/lang/String;

    .line 65
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 66
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/MsgForwardStatistics;->mSpaceStatisticKey:Ljava/lang/String;

    const-string/jumbo v3, "space_mytab_collection_trans"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/MsgForwardStatistics;->mSpaceStatisticKey:Ljava/lang/String;

    const-string/jumbo v3, "space_dingfile_trans"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 67
    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 68
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "to"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/MsgForwardStatistics;->mSpaceStatisticKey:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 71
    .end local v0    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/MsgForwardStatistics;->mSpaceSrc:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 72
    const-string/jumbo v2, "other"

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/MsgForwardStatistics;->mSpaceSrc:Ljava/lang/String;

    .line 74
    :cond_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 75
    .restart local v0    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "from"

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/MsgForwardStatistics;->mSpaceSrc:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string/jumbo v2, "to"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/MsgForwardStatistics;->mSpaceStatisticKey:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public enterPageStatistics()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 46
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/MsgForwardStatistics;->mStatisticsFrom:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/forward/MsgForwardStatistics;->mIsEnterRecorded:Z

    if-nez v1, :cond_0

    .line 47
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkim/forward/MsgForwardStatistics;->mIsEnterRecorded:Z

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 49
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/MsgForwardStatistics;->mStatisticsFrom:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "MsgForwardStatistics"

    const-string/jumbo v3, "chat_trans_click"

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 52
    .end local v0    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public forwardMsgStatistics()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 36
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/MsgForwardStatistics;->mStatisticsFrom:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/forward/MsgForwardStatistics;->mIsSendRecorded:Z

    if-nez v1, :cond_0

    .line 37
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkim/forward/MsgForwardStatistics;->mIsSendRecorded:Z

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 39
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/MsgForwardStatistics;->mStatisticsFrom:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "chat_trans_send_click"

    invoke-interface {v1, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 42
    .end local v0    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method
