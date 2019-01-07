.class public Lewq;
.super Ljava/lang/Object;
.source "TeleConfVideoHelper.java"


# static fields
.field private static final c:Ljava/lang/String;

.field private static volatile d:Lewq;


# instance fields
.field public a:Ljava/util/Timer;

.field b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lewq;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lewq;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lewq;->b:Z

    .line 70
    return-void
.end method

.method public static a(Ljava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p0, "members":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    const/4 v0, 0x1

    .line 87
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v0

    .line 90
    :cond_1
    const/4 v1, 0x0

    .line 91
    .local v1, "hasSelf":Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 92
    .local v2, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v2, :cond_2

    .line 95
    iget-wide v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v6

    invoke-virtual {v6}, Lccr;->c()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 96
    const/4 v1, 0x1

    .line 101
    .end local v2    # "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-gt v3, v4, :cond_5

    :cond_4
    if-nez v1, :cond_6

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v0, :cond_6

    .line 102
    :cond_5
    const/4 v0, 0x1

    .local v0, "callType":I
    goto :goto_0

    .line 104
    .end local v0    # "callType":I
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "callType":I
    goto :goto_0
.end method

.method public static a()Lewq;
    .locals 2

    .prologue
    .line 58
    sget-object v0, Lewq;->d:Lewq;

    if-nez v0, :cond_1

    .line 59
    const-class v1, Lewq;

    monitor-enter v1

    .line 60
    :try_start_0
    sget-object v0, Lewq;->d:Lewq;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lewq;

    invoke-direct {v0}, Lewq;-><init>()V

    sput-object v0, Lewq;->d:Lewq;

    .line 63
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_1
    sget-object v0, Lewq;->d:Lewq;

    return-object v0

    .line 63
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lewq;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lewq;

    .prologue
    .line 49
    iget-object v0, p0, Lewq;->a:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic a(Lewq;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lewq;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lewq;->a:Ljava/util/Timer;

    return-object v0
.end method

.method public static b()I
    .locals 5

    .prologue
    .line 74
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v1

    .line 1385
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    const-string/jumbo v3, "conf_member_video_number_max"

    const/4 v4, 0x5

    .line 1386
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1385
    invoke-static {v2, v3, v4}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v2

    iput v2, v1, Lewh;->c:I

    .line 1387
    iget v0, v1, Lewh;->c:I

    .line 75
    .local v0, "number":I
    return v0
.end method

.method public static c()V
    .locals 4

    .prologue
    .line 171
    invoke-static {}, Lewt;->a()Lewt;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->FLOATING_VIDEO_RUN_EXT:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    invoke-virtual {v2, v3}, Lewt;->b(Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;)V

    .line 173
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    .line 174
    .local v1, "context":Landroid/content/Context;
    invoke-static {}, Levm;->a()Levm;

    move-result-object v2

    invoke-virtual {v2}, Levm;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    invoke-static {v1}, Lewy;->a(Landroid/content/Context;)Lcom/alivc/live/conf/AlivcVideoConf;

    move-result-object v0

    .line 176
    .local v0, "alivcVideoConf":Lcom/alivc/live/conf/AlivcVideoConf;
    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0}, Lcom/alivc/live/conf/AlivcVideoConf;->leaveChat()V

    .line 180
    .end local v0    # "alivcVideoConf":Lcom/alivc/live/conf/AlivcVideoConf;
    :cond_0
    invoke-static {}, Levm;->a()Levm;

    move-result-object v2

    invoke-virtual {v2}, Levm;->b()V

    .line 181
    return-void
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lewq;->c:Ljava/lang/String;

    return-object v0
.end method
