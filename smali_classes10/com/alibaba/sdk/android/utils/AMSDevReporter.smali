.class public Lcom/alibaba/sdk/android/utils/AMSDevReporter;
.super Ljava/lang/Object;
.source "AMSDevReporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSReportStatusEnum;,
        Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkExtInfoKeyEnum;,
        Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static a:Landroid/content/Context;

.field private static a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;",
            "Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSReportStatusEnum;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:Ljava/util/concurrent/ExecutorService;

.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 83
    new-instance v1, Lcom/alibaba/sdk/android/utils/a;

    invoke-direct {v1}, Lcom/alibaba/sdk/android/utils/a;-><init>()V

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a:Ljava/util/concurrent/ExecutorService;

    .line 85
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 90
    sput-boolean v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a:Z

    .line 92
    const-string/jumbo v1, "AMSDevReporter"

    sput-object v1, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->TAG:Ljava/lang/String;

    .line 103
    invoke-static {}, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;->values()[Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 104
    sget-object v4, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v5, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSReportStatusEnum;->UNREPORTED:Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSReportStatusEnum;

    invoke-virtual {v4, v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    if-eqz p2, :cond_1

    .line 279
    sget-object v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkExtInfoKeyEnum;->AMS_EXTINFO_KEY_VERSION:Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkExtInfoKeyEnum;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkExtInfoKeyEnum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 280
    invoke-static {v0}, Lcom/alibaba/sdk/android/utils/e;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 281
    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :cond_0
    sget-object v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkExtInfoKeyEnum;->AMS_EXTINFO_KEY_PACKAGE:Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkExtInfoKeyEnum;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkExtInfoKeyEnum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 284
    invoke-static {v0}, Lcom/alibaba/sdk/android/utils/e;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 285
    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v1, 0x3c

    .line 162
    const/4 v2, 0x0

    .line 163
    const/4 v0, 0x5

    .line 165
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;->toString()Ljava/lang/String;

    move-result-object v3

    .line 167
    sget-object v4, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSReportStatusEnum;->UNREPORTED:Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSReportStatusEnum;

    if-eq v4, v5, :cond_1

    .line 168
    sget-object v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] already reported, return."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/utils/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    :goto_1
    sget-object v4, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Report ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "], times: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/sdk/android/utils/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a(Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;Ljava/util/Map;)Z

    move-result v4

    .line 174
    if-nez v4, :cond_3

    .line 176
    add-int/lit8 v2, v2, 0x1

    const/16 v4, 0xa

    if-gt v2, v4, :cond_2

    .line 177
    sget-object v4, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Report ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] failed, wait for ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] seconds."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/sdk/android/utils/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    int-to-double v4, v0

    invoke-static {v4, v5}, Lcom/alibaba/sdk/android/utils/e;->a(D)V

    .line 179
    mul-int/lit8 v0, v0, 0x2

    .line 180
    if-lt v0, v1, :cond_1

    move v0, v1

    .line 181
    goto :goto_1

    .line 184
    :cond_2
    sget-object v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Report ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] stat failed, exceed max retry times, return."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/utils/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    sget-object v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSReportStatusEnum;->UNREPORTED:Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSReportStatusEnum;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a:Z

    .line 196
    :goto_2
    sget-boolean v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a:Z

    if-eqz v0, :cond_0

    .line 197
    sget-object v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Report ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] failed, clear remain report in queue."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/utils/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 191
    :cond_3
    sget-object v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Report ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] stat success."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/utils/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    sget-object v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSReportStatusEnum;->REPORTED:Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSReportStatusEnum;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method static synthetic a()Z
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a:Z

    return v0
.end method

.method private static a(Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;Ljava/util/Map;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 202
    .line 206
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 207
    const v0, 0xa005

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 209
    :cond_0
    sget-object v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 210
    sget-object v1, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "stat: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/alibaba/sdk/android/utils/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-static {p0, v0, p1}, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a(Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "23356390Raw"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alibaba/sdk/android/utils/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "16594f72217bece5a457b4803a48f2da"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/sdk/android/utils/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "16594f72217bece5a457b4803a48f2da"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-static {v0}, Lcom/alibaba/sdk/android/utils/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "http://adash.man.aliyuncs.com:80/man/api?ak=23356390&s="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    const/4 v5, 0x1

    :try_start_1
    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 219
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 220
    const/16 v5, 0x3a98

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 221
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "==="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "==="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 222
    const-string/jumbo v6, "Content-Type"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "multipart/form-data; boundary="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "--"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\r\nContent-Disposition: form-data; name=\"Raw"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\"\r\nContent-Type: text/plain; charset=UTF-8\r\n\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, "\r\n--"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "--\r\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    .line 229
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/io/OutputStream;->write([B)V

    .line 230
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 231
    const/16 v6, 0xc8

    if-ne v1, v6, :cond_a

    .line 232
    new-instance v6, Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 233
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 236
    :goto_0
    invoke-virtual {v6, v4}, Ljava/io/DataInputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    .line 237
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v4, v9, v7}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    .line 254
    :catch_0
    move-exception v1

    move-object v4, v6

    move-object v2, v0

    move-object v0, v1

    move-object v1, v5

    .line 255
    :goto_1
    :try_start_4
    sget-object v5, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->TAG:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/alibaba/sdk/android/utils/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 257
    if-eqz v2, :cond_1

    .line 258
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 261
    :cond_1
    if-eqz v1, :cond_2

    .line 262
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 264
    :cond_2
    if-eqz v4, :cond_3

    .line 265
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_3
    :goto_2
    move v0, v3

    .line 271
    :goto_3
    return v0

    .line 239
    :cond_4
    :try_start_6
    sget-object v4, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Get MAN response: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/alibaba/sdk/android/utils/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 242
    :try_start_7
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 243
    const-string/jumbo v1, "success"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 244
    const-string/jumbo v4, "success"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-result v1

    if-eqz v1, :cond_7

    .line 257
    if-eqz v0, :cond_5

    .line 258
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 261
    :cond_5
    if-eqz v5, :cond_6

    .line 262
    :try_start_8
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 265
    :cond_6
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    :goto_4
    move v0, v2

    .line 245
    goto :goto_3

    .line 267
    :catch_1
    move-exception v0

    .line 268
    sget-object v1, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/utils/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 247
    :catch_2
    move-exception v1

    .line 248
    :try_start_9
    sget-object v2, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/alibaba/sdk/android/utils/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 257
    :cond_7
    :goto_5
    if-eqz v0, :cond_8

    .line 258
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 261
    :cond_8
    if-eqz v5, :cond_9

    .line 262
    :try_start_a
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 264
    :cond_9
    if-eqz v6, :cond_3

    .line 265
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_2

    .line 267
    :catch_3
    move-exception v0

    .line 268
    sget-object v1, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/utils/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 252
    :cond_a
    :try_start_b
    sget-object v2, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "MAN API error, response code: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alibaba/sdk/android/utils/d;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-object v6, v4

    goto :goto_5

    .line 267
    :catch_4
    move-exception v0

    .line 268
    sget-object v1, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/utils/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 257
    :catchall_0
    move-exception v0

    move-object v6, v4

    move-object v2, v4

    :goto_6
    if-eqz v2, :cond_b

    .line 258
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 261
    :cond_b
    if-eqz v4, :cond_c

    .line 262
    :try_start_c
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 264
    :cond_c
    if-eqz v6, :cond_d

    .line 265
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    .line 269
    :cond_d
    :goto_7
    throw v0

    .line 267
    :catch_5
    move-exception v1

    .line 268
    sget-object v2, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/alibaba/sdk/android/utils/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 257
    :catchall_1
    move-exception v1

    move-object v6, v4

    move-object v2, v0

    move-object v0, v1

    goto :goto_6

    :catchall_2
    move-exception v1

    move-object v6, v4

    move-object v2, v0

    move-object v0, v1

    move-object v4, v5

    goto :goto_6

    :catchall_3
    move-exception v1

    move-object v4, v5

    move-object v2, v0

    move-object v0, v1

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object v6, v4

    move-object v4, v1

    goto :goto_6

    .line 254
    :catch_6
    move-exception v0

    move-object v1, v4

    move-object v2, v4

    goto/16 :goto_1

    :catch_7
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v4

    goto/16 :goto_1

    :catch_8
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v5

    goto/16 :goto_1
.end method

.method public static asyncReport(Landroid/content/Context;Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;)V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->asyncReport(Landroid/content/Context;Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;Ljava/util/Map;)V

    .line 124
    return-void
.end method

.method public static asyncReport(Landroid/content/Context;Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    if-nez p0, :cond_0

    .line 135
    sget-object v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Context is null, return."

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/utils/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :goto_0
    return-void

    .line 138
    :cond_0
    sput-object p0, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a:Landroid/content/Context;

    .line 139
    sget-object v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Add ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] to report queue."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/utils/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a:Z

    .line 141
    sget-object v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/alibaba/sdk/android/utils/AMSDevReporter$1;

    invoke-direct {v1, p1, p2}, Lcom/alibaba/sdk/android/utils/AMSDevReporter$1;-><init>(Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 27
    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a(Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;Ljava/util/Map;)V

    return-void
.end method

.method public static getReportStatus(Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;)Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSReportStatusEnum;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSReportStatusEnum;

    return-object v0
.end method

.method public static setLogEnabled(Z)V
    .locals 0

    .prologue
    .line 109
    invoke-static {p0}, Lcom/alibaba/sdk/android/utils/d;->setLogEnabled(Z)V

    .line 110
    return-void
.end method
