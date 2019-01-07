.class public Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;
.super Ljava/lang/Object;
.source "H5AppPrepareData.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final OFF_ASYNC:Ljava/lang/String; = "0"

.field public static final OFF_SYNCFORCE:Ljava/lang/String; = "1"

.field public static final OFF_SYNCTRY:Ljava/lang/String; = "2"

.field public static final PAGE_OPEN:I = 0x1

.field public static final PAGE_UNOPEN:I = 0x0

.field public static final PREPARE_FAIL:Ljava/lang/String; = "0"

.field public static final PREPARE_SUCCESS:Ljava/lang/String; = "1"

.field public static final REQ_ASYNC:Ljava/lang/String; = "0"

.field public static final REQ_SYNCFORCE:Ljava/lang/String; = "2"

.field public static final REQ_SYNCTRY:Ljava/lang/String; = "1"

.field public static final TAG:Ljava/lang/String; = "H5AppPrepareData"


# instance fields
.field private appId:Ljava/lang/String;

.field private beginTime:J

.field private downloadEndTime:J

.field private downloadTime:J

.field private endTime:J

.field private errorCode:Ljava/lang/String;

.field private errorDetail:Ljava/lang/String;

.field private getDBVersionTime:J

.field private installEndTime:J

.field private installTime:J

.field private nbUrl:Ljava/lang/String;

.field private offlineMode:Ljava/lang/String;

.field private pageStatus:I

.field private requestBeginTime:J

.field private requestEndTime:J

.field private requestMode:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->clear()V

    .line 57
    return-void
.end method

.method private getProcessTimeStr(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;)Ljava/lang/String;
    .locals 8
    .param p1, "logData"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .local v0, "timeStr":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "all_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getEndTime()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getBeginTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getRequestBeginTime()J

    move-result-wide v2

    cmp-long v1, v2, v6

    if-lez v1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getRequestEndTime()J

    move-result-wide v2

    cmp-long v1, v2, v6

    if-lez v1, :cond_0

    .line 270
    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "req_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getRequestEndTime()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getRequestBeginTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getDownloadTime()J

    move-result-wide v2

    cmp-long v1, v2, v6

    if-lez v1, :cond_1

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getDownloadEndTime()J

    move-result-wide v2

    cmp-long v1, v2, v6

    if-lez v1, :cond_1

    .line 275
    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "down_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getDownloadEndTime()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getDownloadTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getInstallTime()J

    move-result-wide v2

    cmp-long v1, v2, v6

    if-lez v1, :cond_2

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getInstallEndTime()J

    move-result-wide v2

    cmp-long v1, v2, v6

    if-lez v1, :cond_2

    .line 280
    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "zip_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getInstallEndTime()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getInstallTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public clear()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    .line 65
    const-string/jumbo v0, "H5AppPrepareData"

    const-string/jumbo v1, "clear"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iput-wide v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->downloadTime:J

    iput-wide v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->requestEndTime:J

    iput-wide v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->requestBeginTime:J

    iput-wide v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->beginTime:J

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->pageStatus:I

    iput-wide v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->endTime:J

    iput-wide v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->installTime:J

    .line 68
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->nbUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->errorDetail:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->version:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->appId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->errorCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->offlineMode:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->requestMode:Ljava/lang/String;

    .line 69
    iput-wide v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getDBVersionTime:J

    .line 70
    return-void
.end method

.method protected clone()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->clone()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    move-result-object v0

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getBeginTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->beginTime:J

    return-wide v0
.end method

.method public getDownloadEndTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 121
    iget-wide v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->downloadEndTime:J

    return-wide v0
.end method

.method public getDownloadTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->downloadTime:J

    return-wide v0
.end method

.method public getEndTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 137
    iget-wide v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->endTime:J

    return-wide v0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->errorDetail:Ljava/lang/String;

    return-object v0
.end method

.method public getGetDBVersionTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getDBVersionTime:J

    return-wide v0
.end method

.method public getInstallEndTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->installEndTime:J

    return-wide v0
.end method

.method public getInstallTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->installTime:J

    return-wide v0
.end method

.method public getNbUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->nbUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getOfflineMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->offlineMode:Ljava/lang/String;

    return-object v0
.end method

.method public getPageStatus()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->pageStatus:I

    return v0
.end method

.method public getRequestBeginTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->requestBeginTime:J

    return-wide v0
.end method

.method public getRequestEndTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->requestEndTime:J

    return-wide v0
.end method

.method public getRequestMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->requestMode:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->appId:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setBeginTime(J)V
    .locals 1
    .param p1, "beginTime"    # J

    .prologue
    .line 85
    iput-wide p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->beginTime:J

    .line 86
    return-void
.end method

.method public setDownloadEndTime(J)V
    .locals 1
    .param p1, "downloadEndTime"    # J

    .prologue
    .line 125
    iput-wide p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->downloadEndTime:J

    .line 126
    return-void
.end method

.method public setDownloadTime(J)V
    .locals 1
    .param p1, "downloadTime"    # J

    .prologue
    .line 109
    iput-wide p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->downloadTime:J

    .line 110
    return-void
.end method

.method public setEndTime(J)V
    .locals 1
    .param p1, "endTime"    # J

    .prologue
    .line 141
    iput-wide p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->endTime:J

    .line 142
    return-void
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->errorCode:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setErrorDetail(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorDetail"    # Ljava/lang/String;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->errorDetail:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public setGetDBVersionTime(J)V
    .locals 1
    .param p1, "getDBVersionTime"    # J

    .prologue
    .line 77
    iput-wide p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getDBVersionTime:J

    .line 78
    return-void
.end method

.method public setInstallEndTime(J)V
    .locals 1
    .param p1, "installEndTime"    # J

    .prologue
    .line 133
    iput-wide p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->installEndTime:J

    .line 134
    return-void
.end method

.method public setInstallTime(J)V
    .locals 1
    .param p1, "installTime"    # J

    .prologue
    .line 117
    iput-wide p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->installTime:J

    .line 118
    return-void
.end method

.method public setNbUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "nbUrl"    # Ljava/lang/String;

    .prologue
    .line 203
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->nbUrl:Ljava/lang/String;

    .line 208
    :goto_0
    return-void

    .line 206
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->nbUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public setOfflineMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "syncOffline"    # Ljava/lang/String;
    .param p2, "nbOffMode"    # Ljava/lang/String;

    .prologue
    .line 163
    const-string/jumbo v0, "sync"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    const-string/jumbo v0, "try"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const-string/jumbo v0, "2"

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->offlineMode:Ljava/lang/String;

    .line 172
    :goto_0
    return-void

    .line 167
    :cond_0
    const-string/jumbo v0, "1"

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->offlineMode:Ljava/lang/String;

    goto :goto_0

    .line 170
    :cond_1
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->offlineMode:Ljava/lang/String;

    goto :goto_0
.end method

.method public setPageStatus(I)V
    .locals 0
    .param p1, "pageStatus"    # I

    .prologue
    .line 179
    iput p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->pageStatus:I

    .line 180
    return-void
.end method

.method public setRequestBeginTime(J)V
    .locals 1
    .param p1, "requestBeginTime"    # J

    .prologue
    .line 93
    iput-wide p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->requestBeginTime:J

    .line 94
    return-void
.end method

.method public setRequestEndTime(J)V
    .locals 1
    .param p1, "requestEndTime"    # J

    .prologue
    .line 101
    iput-wide p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->requestEndTime:J

    .line 102
    return-void
.end method

.method public setRequestMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "requestMode"    # Ljava/lang/String;

    .prologue
    .line 149
    const-string/jumbo v0, "synctry"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const-string/jumbo v0, "1"

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->requestMode:Ljava/lang/String;

    .line 156
    :goto_0
    return-void

    .line 151
    :cond_0
    const-string/jumbo v0, "syncforce"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    const-string/jumbo v0, "2"

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->requestMode:Ljava/lang/String;

    goto :goto_0

    .line 154
    :cond_1
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->requestMode:Ljava/lang/String;

    goto :goto_0
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->version:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "H5AppPrepareData{beginTime="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->beginTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", requestBeginTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->requestBeginTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", requestEndTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->requestEndTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", downloadTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->downloadTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", installTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->installTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->endTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", requestMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->requestMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", offlineMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->offlineMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", pageStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->pageStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->errorCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", errorDetail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->errorDetail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", nbUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->nbUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uploadPrepareLog()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 246
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->clone()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    move-result-object v1

    .line 247
    .local v1, "logData":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;
    const-string/jumbo v3, "H5_APP_PREPARE"

    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v4, "monitor"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 248
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v4, "getDBVersionTime"

    iget-wide v6, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getDBVersionTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 249
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v4, "step"

    const-string/jumbo v5, "finish"

    invoke-virtual {v3, v4, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v4, "appId"

    .line 250
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v4, "version"

    .line 251
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v4, "proc"

    .line 252
    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getProcessTimeStr(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v4, "req"

    .line 253
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getRequestMode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v4, "off"

    .line 254
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getOfflineMode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v4, "page"

    .line 255
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getPageStatus()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v4, "err"

    .line 256
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getErrorDetail()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v4, "errc"

    .line 257
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getErrorCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v4, "nbu"

    .line 258
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getNbUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 259
    .local v0, "h5LogData":Lcom/alipay/mobile/nebula/log/H5LogData;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    .end local v0    # "h5LogData":Lcom/alipay/mobile/nebula/log/H5LogData;
    .end local v1    # "logData":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;
    :goto_0
    return-void

    .line 260
    :catch_0
    move-exception v2

    .line 261
    .local v2, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v3, "H5AppPrepareData"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
