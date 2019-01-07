.class public Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;
.super Ljava/lang/Object;
.source "RuntimePerformanceMagician.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician$HOLDER;
    }
.end annotation


# static fields
.field public static final FIVE_MINUTE:J = 0x493e0L

.field public static final HALF_MINUTE:J = 0x7530L

.field public static final NET_4G:Ljava/lang/String; = "4g"

.field public static final NET_WIFI:Ljava/lang/String; = "wifi"

.field public static final ONE_MINUTE:J = 0xea60L

.field public static final ONE_SECOND:J = 0x3e8L

.field public static final REDIRECT_TIME:J = 0xc8L

.field public static final TEN_SECONDS:J = 0x2710L


# instance fields
.field private mFirstLoadUrl:Z

.field private mFirstPageFinish:Z

.field private mFirstPageStart:Z

.field private mIsCustomized:Z

.field private mPageFinishTime:J

.field private mPageStartTime:J

.field private mRedirectCount:I

.field private mRuntimeLoadUrlTime:J

.field private mRuntimeOnCreateTime:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const-wide/16 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-wide v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->mRuntimeOnCreateTime:J

    .line 30
    iput-wide v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->mRuntimeLoadUrlTime:J

    .line 31
    iput-wide v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->mPageStartTime:J

    .line 32
    iput-wide v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->mPageFinishTime:J

    .line 33
    iput-boolean v3, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->mIsCustomized:Z

    .line 35
    iput-boolean v2, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->mFirstLoadUrl:Z

    .line 36
    iput-boolean v2, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->mFirstPageStart:Z

    .line 37
    iput-boolean v2, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->mFirstPageFinish:Z

    .line 39
    iput v3, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->mRedirectCount:I

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;

    .prologue
    .line 15
    iget-wide v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->mPageStartTime:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;

    .prologue
    .line 15
    iget-wide v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->mPageFinishTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;Ljava/lang/String;J)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->warnLongRender(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$300(Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;

    .prologue
    .line 15
    iget v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->mRedirectCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->mIsCustomized:Z

    return v0
.end method

.method static synthetic access$402(Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;
    .param p1, "x1"    # Z

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->mIsCustomized:Z

    return p1
.end method

.method static synthetic access$500(Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->mFirstPageFinish:Z

    return v0
.end method

.method static synthetic access$502(Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;
    .param p1, "x1"    # Z

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->mFirstPageFinish:Z

    return p1
.end method

.method static synthetic access$600(Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;

    .prologue
    .line 15
    iget-wide v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->mRuntimeOnCreateTime:J

    return-wide v0
.end method

.method public static getInstance()Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician$HOLDER;->INSTANCE:Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;

    return-object v0
.end method

.method private warnLongRender(Ljava/lang/String;J)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 172
    const-wide/32 v4, 0x493e0

    cmp-long v3, p2, v4

    if-gtz v3, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-gez v3, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->setRenderTime(J)V

    .line 178
    const/4 v2, 0x0

    .line 179
    .local v2, "report":Z
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcms;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "netInfo":Ljava/lang/String;
    const-string/jumbo v3, "wifi"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "4g"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 181
    :cond_2
    const-wide/16 v4, 0x7530

    cmp-long v3, p2, v4

    if-lez v3, :cond_3

    .line 182
    const/4 v2, 0x1

    .line 190
    :cond_3
    :goto_1
    if-eqz v2, :cond_0

    .line 191
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->getInstance()Lgvi;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Lgvi;->longRenderWarn(Ljava/lang/String;J)V

    .line 192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 193
    .local v0, "extraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "time"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/WebLogger;

    move-result-object v3

    const-string/jumbo v4, "longRender"

    invoke-virtual {v3, p1, v4, v0}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->vipAlarm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 185
    .end local v0    # "extraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    const-wide/32 v4, 0xea60

    cmp-long v3, p2, v4

    if-lez v3, :cond_3

    .line 186
    const/4 v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public clearPageFinishTime(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 163
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->mPageFinishTime:J

    .line 164
    return-void
.end method

.method public clearPageStartTime(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 112
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->mPageStartTime:J

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->mRedirectCount:I

    .line 114
    return-void
.end method

.method public clearRuntimeLoadUrlTime(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 80
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->mRuntimeLoadUrlTime:J

    .line 81
    return-void
.end method

.method public clearRuntimeOnCreateTime(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->mRuntimeOnCreateTime:J

    .line 62
    return-void
.end method

.method public setBizOKTime(Ljava/lang/String;J)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 156
    iget-wide v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->mRuntimeLoadUrlTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 157
    const-string/jumbo v0, "MicroAppUsabilityTime"

    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->mRuntimeLoadUrlTime:J

    sub-long v2, p2, v2

    iget-boolean v1, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->mIsCustomized:Z

    invoke-static {v0, p1, v2, v3, v1}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitPerformance(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 160
    :cond_0
    return-void
.end method

.method public setPageFinishTime(Ljava/lang/String;J)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 117
    iput-wide p2, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->mPageFinishTime:J

    .line 118
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician$1;-><init>(Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;Ljava/lang/String;J)V

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector;->enterOnPageFinished(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector$RedirectCallback;)V

    .line 153
    return-void
.end method

.method public setPageStartTime(Ljava/lang/String;JZ)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "time"    # J
    .param p4, "isCustomized"    # Z

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    .line 87
    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->mPageStartTime:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    .line 88
    iput-wide p2, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->mPageStartTime:J

    .line 92
    :goto_0
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector;->enterOnPageStarted(Ljava/lang/String;)V

    .line 93
    iput-boolean p4, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->mIsCustomized:Z

    .line 94
    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->mRuntimeLoadUrlTime:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    .line 95
    iget-boolean v1, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->mFirstPageStart:Z

    if-eqz v1, :cond_3

    .line 96
    invoke-static {}, Lhfo;->a()Lhfo;

    move-result-object v1

    .line 1114
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v1, Lhfo;->b:Ljava/util/Map;

    if-eqz v3, :cond_4

    iget-object v3, v1, Lhfo;->b:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1115
    iget-object v1, v1, Lhfo;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 97
    .local v0, "isFromOATab":Z
    :goto_1
    if-eqz v0, :cond_0

    .line 98
    const-string/jumbo v1, "MicroAppStartLoadTime"

    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->mPageStartTime:J

    iget-wide v6, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->mRuntimeLoadUrlTime:J

    sub-long/2addr v4, v6

    iget-boolean v3, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->mIsCustomized:Z

    invoke-static {v1, p1, v4, v5, v3}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitPerformance(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 100
    :cond_0
    iget-boolean v1, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->mIsCustomized:Z

    if-eqz v1, :cond_1

    .line 101
    const-string/jumbo v1, "OrgCustomPageStartLoadTime"

    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->mPageStartTime:J

    iget-wide v6, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->mRuntimeLoadUrlTime:J

    sub-long/2addr v4, v6

    iget-boolean v3, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->mIsCustomized:Z

    invoke-static {v1, p1, v4, v5, v3}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitPerformance(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 108
    .end local v0    # "isFromOATab":Z
    :cond_1
    :goto_2
    iput-boolean v2, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->mFirstPageStart:Z

    .line 109
    return-void

    .line 90
    :cond_2
    iget v1, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->mRedirectCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->mRedirectCount:I

    goto :goto_0

    .line 105
    :cond_3
    const-string/jumbo v1, "RuntimeStartLoadTime"

    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->mPageStartTime:J

    iget-wide v6, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->mRuntimeLoadUrlTime:J

    sub-long/2addr v4, v6

    iget-boolean v3, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->mIsCustomized:Z

    invoke-static {v1, p1, v4, v5, v3}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitPerformance(Ljava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public setRuntimeLoadUrlTime(Ljava/lang/String;J)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 70
    iput-wide p2, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->mRuntimeLoadUrlTime:J

    .line 72
    iget-wide v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->mRuntimeOnCreateTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->mFirstLoadUrl:Z

    if-eqz v0, :cond_0

    .line 73
    const-string/jumbo v0, "RuntimeLaunchTime"

    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->mRuntimeLoadUrlTime:J

    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->mRuntimeOnCreateTime:J

    sub-long/2addr v2, v4

    iget-boolean v1, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->mIsCustomized:Z

    invoke-static {v0, p1, v2, v3, v1}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitPerformance(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->mFirstLoadUrl:Z

    .line 77
    :cond_0
    return-void
.end method

.method public setRuntimeOnCreateTime(Ljava/lang/String;J)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    const/4 v0, 0x1

    .line 54
    iput-wide p2, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->mRuntimeOnCreateTime:J

    .line 55
    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->mFirstLoadUrl:Z

    .line 56
    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->mFirstPageStart:Z

    .line 57
    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->mFirstPageFinish:Z

    .line 58
    return-void
.end method
