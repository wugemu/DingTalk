.class public final Lhgh;
.super Ljava/lang/Object;
.source "KaoQinViewImpl.java"


# static fields
.field public static a:I

.field static b:I

.field private static f:I

.field private static g:Lhgh;

.field private static h:J

.field private static i:J


# instance fields
.field c:Ljava/lang/String;

.field public d:Ljava/lang/Runnable;

.field public e:I

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    const/4 v0, 0x0

    sput v0, Lhgh;->f:I

    .line 66
    const/4 v0, 0x1

    sput v0, Lhgh;->a:I

    .line 67
    const/4 v0, 0x2

    sput v0, Lhgh;->b:I

    .line 71
    const-wide/16 v0, 0x7b8

    sput-wide v0, Lhgh;->h:J

    .line 72
    const-wide/16 v0, 0x9e

    sput-wide v0, Lhgh;->i:J

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lhgh;->e:I

    .line 84
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lhgh;->j:Ljava/util/Map;

    .line 1049
    sget-object v0, Lhgg$d;->a:Lhgg;

    .line 95
    new-instance v1, Lhgh$1;

    invoke-direct {v1, p0}, Lhgh$1;-><init>(Lhgh;)V

    invoke-virtual {v0, v1}, Lhgg;->a(Lhgg$c;)V

    .line 183
    return-void
.end method

.method static synthetic a(Lhgh;I)I
    .locals 0
    .param p0, "x0"    # Lhgh;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lhgh;->e:I

    return p1
.end method

.method public static declared-synchronized a()Lhgh;
    .locals 2

    .prologue
    .line 87
    const-class v1, Lhgh;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lhgh;->g:Lhgh;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lhgh;

    invoke-direct {v0}, Lhgh;-><init>()V

    sput-object v0, Lhgh;->g:Lhgh;

    .line 91
    :cond_0
    sget-object v0, Lhgh;->g:Lhgh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lhgh;Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;)Ljava/lang/String;
    .locals 4
    .param p0, "x0"    # Lhgh;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

    .prologue
    .line 46
    .line 3186
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->serviceId:I

    .line 3187
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    .line 3188
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->deviceId:J

    .line 3189
    invoke-virtual {v0, v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 3190
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    return-object v0
.end method

.method static synthetic a(Lhgh;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lhgh;

    .prologue
    .line 46
    iget-object v0, p0, Lhgh;->j:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lhgh;)I
    .locals 1
    .param p0, "x0"    # Lhgh;

    .prologue
    .line 46
    iget v0, p0, Lhgh;->e:I

    return v0
.end method

.method static synthetic c()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic c(Lhgh;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lhgh;

    .prologue
    .line 46
    iget-object v0, p0, Lhgh;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d()I
    .locals 1

    .prologue
    .line 46
    sget v0, Lhgh;->b:I

    return v0
.end method

.method static synthetic e()J
    .locals 2

    .prologue
    .line 46
    sget-wide v0, Lhgh;->h:J

    return-wide v0
.end method

.method static synthetic f()J
    .locals 2

    .prologue
    .line 46
    sget-wide v0, Lhgh;->i:J

    return-wide v0
.end method


# virtual methods
.method public a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZJI)V
    .locals 13
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "iconId"    # I
    .param p3, "iconColorId"    # I
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "description"    # Ljava/lang/String;
    .param p6, "hasSettings"    # Z
    .param p7, "deviceUid"    # J
    .param p9, "devServId"    # I

    .prologue
    .line 258
    new-instance v11, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    invoke-direct {v11}, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;-><init>()V

    .line 259
    .local v11, "ddPopupWindowShowObject":Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhgh;->c:Ljava/lang/String;

    .line 260
    sget-object v0, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;->LIGHT_APP_DAKA:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;

    .line 2033
    iput-object v0, v11, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->c:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;

    .line 261
    iget-object v0, p0, Lhgh;->c:Ljava/lang/String;

    .line 2045
    iput-object v0, v11, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->e:Ljava/lang/String;

    .line 262
    new-instance v0, Lhgh$3;

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p4

    move v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p5

    move-object v7, p1

    move-wide/from16 v8, p7

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lhgh$3;-><init>(Lhgh;Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;JI)V

    .line 3037
    iput-object v0, v11, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->b:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$a;

    .line 410
    invoke-static {}, Lcmw;->b()Lcmv;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcmv;->a(Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;)V

    .line 411
    return-void
.end method

.method public b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 414
    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 415
    invoke-static {}, Lcom/alibaba/doraemon/utils/CommonUtils;->throwExceptionNotMainThread()V

    .line 418
    :cond_0
    iget-object v0, p0, Lhgh;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 419
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lhgh;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 420
    const/4 v0, 0x0

    iput-object v0, p0, Lhgh;->d:Ljava/lang/Runnable;

    .line 422
    :cond_1
    return-void
.end method
