.class public Lcod;
.super Ljava/lang/Object;
.source "DAULog.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:J

.field public static h:[Ljava/lang/String;

.field public static i:D

.field private static final j:Ljava/lang/String;

.field private static k:Lcod;


# instance fields
.field private l:Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:D

.field private r:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const-class v0, Lcod;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcod;->j:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, "start"

    sput-object v0, Lcod;->a:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, "exit"

    sput-object v0, Lcod;->b:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, "login"

    sput-object v0, Lcod;->c:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "logout"

    sput-object v0, Lcod;->d:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, "artificialService"

    sput-object v0, Lcod;->e:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, "key_dau_location_request_expiration"

    sput-object v0, Lcod;->f:Ljava/lang/String;

    .line 50
    const-wide/32 v0, 0xdbba00

    sput-wide v0, Lcod;->g:J

    .line 54
    const-wide v0, 0x408f380000000000L    # 999.0

    sput-wide v0, Lcod;->i:D

    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcod;->k:Lcod;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;-><init>()V

    iput-object v0, p0, Lcod;->l:Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcod;->o:Z

    .line 68
    sget-wide v0, Lcod;->i:D

    iput-wide v0, p0, Lcod;->q:D

    .line 70
    sget-wide v0, Lcod;->i:D

    iput-wide v0, p0, Lcod;->r:D

    .line 83
    iget-object v0, p0, Lcod;->l:Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;

    const/4 v1, 0x2

    iput v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;->code:I

    .line 84
    iget-object v0, p0, Lcod;->l:Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;

    const-string/jumbo v1, "dd_app_client"

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;->app:Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcod;->l:Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcms;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;->appVer:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcod;->l:Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;

    const-string/jumbo v1, "Android"

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;->os:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcod;->l:Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;

    invoke-static {}, Lcms;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;->osVer:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcod;->l:Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;

    const/4 v1, 0x1

    iput v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;->level:I

    .line 90
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/dp/DeviceSecuritySDK;->getInstance(Landroid/content/Context;)Lcom/taobao/dp/DeviceSecuritySDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/dp/DeviceSecuritySDK;->getSecurityToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcod;->m:Ljava/lang/String;

    .line 91
    return-void
.end method

.method static synthetic a(Lcod;D)D
    .locals 1
    .param p0, "x0"    # Lcod;
    .param p1, "x1"    # D

    .prologue
    .line 34
    iput-wide p1, p0, Lcod;->q:D

    return-wide p1
.end method

.method public static declared-synchronized a()Lcod;
    .locals 2

    .prologue
    .line 74
    const-class v1, Lcod;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcod;->k:Lcod;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcod;

    invoke-direct {v0}, Lcod;-><init>()V

    sput-object v0, Lcod;->k:Lcod;

    .line 78
    :cond_0
    sget-object v0, Lcod;->k:Lcod;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcod;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcod;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcod;->n:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcod;)Z
    .locals 1
    .param p0, "x0"    # Lcod;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcod;->o:Z

    return v0
.end method

.method static synthetic a(Lcod;Z)Z
    .locals 0
    .param p0, "x0"    # Lcod;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcod;->o:Z

    return p1
.end method

.method static synthetic b(Lcod;D)D
    .locals 1
    .param p0, "x0"    # Lcod;
    .param p1, "x1"    # D

    .prologue
    .line 34
    iput-wide p1, p0, Lcod;->r:D

    return-wide p1
.end method

.method static synthetic b(Lcod;)Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;
    .locals 1
    .param p0, "x0"    # Lcod;

    .prologue
    .line 34
    iget-object v0, p0, Lcod;->l:Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;

    return-object v0
.end method

.method static synthetic b(Lcod;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcod;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcod;->p:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcod;Ljava/lang/String;)V
    .locals 6
    .param p0, "x0"    # Lcod;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    .line 1156
    iget-object v0, p0, Lcod;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1157
    iget-object v0, p0, Lcod;->p:Ljava/lang/String;

    iput-object v0, p0, Lcod;->n:Ljava/lang/String;

    .line 1160
    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 1161
    const-string/jumbo v0, "device_id="

    invoke-virtual {v1, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcod;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v2, ",session_id="

    .line 1162
    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcod;->n:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v2, ",visitTime="

    .line 1163
    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcod;->p:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v2, ",event="

    .line 1164
    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1165
    iget-wide v2, p0, Lcod;->q:D

    sget-wide v4, Lcod;->i:D

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_1

    .line 1166
    const-string/jumbo v0, ",longitude="

    invoke-virtual {v1, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcod;->q:D

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(D)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1168
    :cond_1
    iget-wide v2, p0, Lcod;->r:D

    sget-wide v4, Lcod;->i:D

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_2

    .line 1169
    const-string/jumbo v0, ",latitude="

    invoke-virtual {v1, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcod;->r:D

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(D)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1171
    :cond_2
    sget-object v0, Lcod;->h:[Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Lcod;->h:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 1172
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcod;->h:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 1173
    sget-object v2, Lcod;->h:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_3

    .line 1174
    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1176
    :cond_3
    sget-object v2, Lcod;->h:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1180
    :cond_4
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1136
    iget-object v1, p0, Lcod;->l:Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;

    iput-object v0, v1, Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;->message:Ljava/lang/String;

    .line 1138
    new-instance v0, Lcod$2;

    invoke-direct {v0, p0}, Lcod$2;-><init>(Lcod;)V

    .line 1151
    invoke-static {}, Lcmd;->a()Lcmc;

    move-result-object v1

    iget-object v2, p0, Lcod;->l:Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;

    invoke-interface {v1, v2, v0}, Lcmc;->a(Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;Lcma;)V

    .line 34
    return-void
.end method


# virtual methods
.method public final varargs a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 100
    sget-object v0, Lcod;->j:Ljava/lang/String;

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcod$1;

    invoke-direct {v1, p0, p1, p2}, Lcod$1;-><init>(Lcod;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 131
    return-void
.end method
