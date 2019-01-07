.class public final Lgot;
.super Ljava/lang/Object;
.source "CSpaceStatistics.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "mime"    # Ljava/lang/String;

    .prologue
    .line 169
    new-instance v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;-><init>()V

    .line 170
    .local v0, "fileUnifyStatisticsModel":Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;
    invoke-static {p0, p1}, Lgpx;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->mime:Ljava/lang/String;

    .line 171
    iget-object v2, v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->mime:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->mime:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_1

    .line 172
    :cond_0
    const-string/jumbo v2, "unknown"

    iput-object v2, v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->mime:Ljava/lang/String;

    .line 175
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->A()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v1

    .line 176
    .local v1, "mainOrg":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v1, :cond_2

    .line 177
    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iput-wide v2, v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->orgId:J

    .line 179
    :cond_2
    invoke-static {}, Lgot;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "1"

    :goto_0
    iput-object v2, v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->vipFlag:Ljava/lang/String;

    .line 181
    return-object v0

    .line 179
    :cond_3
    const-string/jumbo v2, "0"

    goto :goto_0
.end method

.method private static a(Lcom/alibaba/doraemon/performance/DDStringBuilder;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .locals 4
    .param p0, "builder"    # Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 90
    if-nez p0, :cond_0

    .line 91
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object p0

    .line 93
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    const-string/jumbo v0, "info: "

    invoke-virtual {p0, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 96
    :cond_1
    if-eqz p2, :cond_3

    .line 97
    const-string/jumbo v0, ", Dentry: {dirty: "

    invoke-virtual {p0, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isDirty()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Z)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", spaceId: "

    .line 98
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", spaceType: "

    .line 99
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceTypeBelong()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", fileId: "

    .line 100
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", id: "

    .line 101
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", type: "

    .line 102
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", name: "

    .line 103
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", size: "

    .line 104
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", downloadedSize: "

    .line 105
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getDownloadedSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", path: "

    .line 106
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", authPicUrl: "

    .line 107
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthPicUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isCrypt: "

    .line 108
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isCrypt()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Z)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", parent: "

    .line 109
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getParentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 110
    invoke-virtual {p2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    const-string/jumbo v0, ", localUrl: "

    invoke-virtual {p0, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLocalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", uploadId: "

    .line 112
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", uploadedSize: "

    .line 113
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadedSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", uploadStatus: "

    .line 114
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 116
    :cond_2
    const-string/jumbo v0, "} "

    invoke-virtual {p0, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 120
    :goto_0
    return-object p0

    .line 118
    :cond_3
    const-string/jumbo v0, "(dentry is null)"

    invoke-virtual {p0, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_0
.end method

.method private static a(Lcom/alibaba/doraemon/performance/DDStringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .locals 2
    .param p0, "builder"    # Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "errorCode"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;
    .param p4, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 131
    if-nez p0, :cond_0

    .line 132
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object p0

    .line 134
    :cond_0
    const-string/jumbo v0, "[Method: "

    invoke-virtual {p0, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ErrorCode: "

    .line 135
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ErrorMsg: "

    .line 136
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 137
    if-eqz p4, :cond_1

    .line 138
    const-string/jumbo v0, ", Exception: "

    invoke-virtual {p0, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {p4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/Object;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 140
    :cond_1
    const-string/jumbo v0, "] "

    invoke-virtual {p0, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 141
    return-object p0
.end method

.method public static a(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;
    .locals 1
    .param p0, "info"    # Ljava/lang/String;
    .param p1, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 86
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lgot;->a(Lcom/alibaba/doraemon/performance/DDStringBuilder;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 125
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-static {v0, p0, p1, p2, p3}, Lgot;->a(Lcom/alibaba/doraemon/performance/DDStringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;
    .locals 6
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .param p4, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    const/4 v3, 0x0

    .line 146
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;
    .locals 1
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .param p4, "info"    # Ljava/lang/String;
    .param p5, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 152
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 1159
    if-nez v0, :cond_0

    .line 1160
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 1162
    :cond_0
    invoke-static {v0, p0, p1, p2, p3}, Lgot;->a(Lcom/alibaba/doraemon/performance/DDStringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 1163
    invoke-static {v0, p4, p5}, Lgot;->a(Lcom/alibaba/doraemon/performance/DDStringBuilder;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 186
    invoke-static {}, Lifo;->a()Lifo;

    move-result-object v3

    sget-object v4, Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;->VIP_USER:Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;

    .line 187
    invoke-virtual {v4}, Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;->getModule()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;->VIP_USER:Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;

    invoke-virtual {v5}, Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 186
    invoke-virtual {v3, v4, v5}, Lifo;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v0

    .line 188
    .local v0, "setting":Lcom/alibaba/wukong/settings/CloudSetting;
    if-nez v0, :cond_1

    .line 191
    :cond_0
    :goto_0
    return v2

    .line 190
    :cond_1
    invoke-interface {v0}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 2150
    .local v1, "val":Ljava/lang/String;
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v3

    .line 191
    if-lez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method
