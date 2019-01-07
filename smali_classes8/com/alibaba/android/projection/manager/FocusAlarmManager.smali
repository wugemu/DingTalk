.class public Lcom/alibaba/android/projection/manager/FocusAlarmManager;
.super Ljava/lang/Object;
.source "FocusAlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/projection/manager/FocusAlarmManager$a;,
        Lcom/alibaba/android/projection/manager/FocusAlarmManager$ExtraKey;,
        Lcom/alibaba/android/projection/manager/FocusAlarmManager$AlarmType;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile d:Lcom/alibaba/android/projection/manager/FocusAlarmManager;


# instance fields
.field private b:Lhzu;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/alibaba/android/projection/manager/FocusAlarmManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/projection/manager/FocusAlarmManager;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/projection/manager/FocusAlarmManager;->c:Z

    .line 56
    new-instance v0, Lhzu;

    invoke-direct {v0}, Lhzu;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/projection/manager/FocusAlarmManager;->b:Lhzu;

    .line 57
    iget-object v0, p0, Lcom/alibaba/android/projection/manager/FocusAlarmManager;->b:Lhzu;

    const-string/jumbo v1, "focus"

    iput-object v1, v0, Lhzu;->a:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public static a()Lcom/alibaba/android/projection/manager/FocusAlarmManager;
    .locals 2

    .prologue
    .line 44
    sget-object v0, Lcom/alibaba/android/projection/manager/FocusAlarmManager;->d:Lcom/alibaba/android/projection/manager/FocusAlarmManager;

    if-nez v0, :cond_1

    .line 45
    const-class v1, Lcom/alibaba/android/projection/manager/FocusAlarmManager;

    monitor-enter v1

    .line 46
    :try_start_0
    sget-object v0, Lcom/alibaba/android/projection/manager/FocusAlarmManager;->d:Lcom/alibaba/android/projection/manager/FocusAlarmManager;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/alibaba/android/projection/manager/FocusAlarmManager;

    invoke-direct {v0}, Lcom/alibaba/android/projection/manager/FocusAlarmManager;-><init>()V

    sput-object v0, Lcom/alibaba/android/projection/manager/FocusAlarmManager;->d:Lcom/alibaba/android/projection/manager/FocusAlarmManager;

    .line 49
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_1
    sget-object v0, Lcom/alibaba/android/projection/manager/FocusAlarmManager;->d:Lcom/alibaba/android/projection/manager/FocusAlarmManager;

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/projection/manager/FocusAlarmManager$a;)V
    .locals 5
    .param p1, "action"    # Lcom/alibaba/android/projection/manager/FocusAlarmManager$a;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 87
    iget-boolean v1, p0, Lcom/alibaba/android/projection/manager/FocusAlarmManager;->c:Z

    if-nez v1, :cond_1

    .line 1070
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    if-eqz p1, :cond_0

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 94
    .local v0, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lcom/alibaba/android/projection/manager/FocusAlarmManager$ExtraKey;->KEY_ID:Lcom/alibaba/android/projection/manager/FocusAlarmManager$ExtraKey;

    invoke-virtual {v1}, Lcom/alibaba/android/projection/manager/FocusAlarmManager$ExtraKey;->value()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/alibaba/android/projection/manager/FocusAlarmManager$a;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v1, Lcom/alibaba/android/projection/manager/FocusAlarmManager$ExtraKey;->KEY_TIME:Lcom/alibaba/android/projection/manager/FocusAlarmManager$ExtraKey;

    invoke-virtual {v1}, Lcom/alibaba/android/projection/manager/FocusAlarmManager$ExtraKey;->value()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p1, Lcom/alibaba/android/projection/manager/FocusAlarmManager$a;->c:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 97
    sget-object v1, Lcom/alibaba/android/projection/manager/FocusAlarmManager$ExtraKey;->KEY_UID:Lcom/alibaba/android/projection/manager/FocusAlarmManager$ExtraKey;

    invoke-virtual {v1}, Lcom/alibaba/android/projection/manager/FocusAlarmManager$ExtraKey;->value()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_2
    iget-object v1, p1, Lcom/alibaba/android/projection/manager/FocusAlarmManager$a;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 100
    sget-object v1, Lcom/alibaba/android/projection/manager/FocusAlarmManager$ExtraKey;->KEY_TYPE:Lcom/alibaba/android/projection/manager/FocusAlarmManager$ExtraKey;

    invoke-virtual {v1}, Lcom/alibaba/android/projection/manager/FocusAlarmManager$ExtraKey;->value()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/alibaba/android/projection/manager/FocusAlarmManager$a;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 103
    sget-object v1, Lcom/alibaba/android/projection/manager/FocusAlarmManager$ExtraKey;->KEY_REASON:Lcom/alibaba/android/projection/manager/FocusAlarmManager$ExtraKey;

    invoke-virtual {v1}, Lcom/alibaba/android/projection/manager/FocusAlarmManager$ExtraKey;->value()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_4
    iget-object v1, p1, Lcom/alibaba/android/projection/manager/FocusAlarmManager$a;->b:Lcom/alibaba/android/projection/manager/FocusAlarmManager$AlarmType;

    .line 1065
    iget-boolean v2, p0, Lcom/alibaba/android/projection/manager/FocusAlarmManager;->c:Z

    if-eqz v2, :cond_0

    .line 1068
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/android/projection/manager/FocusAlarmManager$AlarmType;->value()I

    move-result v2

    sget-object v3, Lcom/alibaba/android/projection/manager/FocusAlarmManager$AlarmType;->TYPE_PRJ_LOCAL_FAIL:Lcom/alibaba/android/projection/manager/FocusAlarmManager$AlarmType;

    invoke-virtual {v3}, Lcom/alibaba/android/projection/manager/FocusAlarmManager$AlarmType;->value()I

    move-result v3

    if-lt v2, v3, :cond_0

    if-eqz v0, :cond_0

    .line 1069
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1072
    iget-object v2, p0, Lcom/alibaba/android/projection/manager/FocusAlarmManager;->b:Lhzu;

    if-eqz v2, :cond_0

    .line 1073
    iget-object v2, p0, Lcom/alibaba/android/projection/manager/FocusAlarmManager;->b:Lhzu;

    invoke-virtual {v1}, Lcom/alibaba/android/projection/manager/FocusAlarmManager$AlarmType;->value()I

    move-result v3

    iput v3, v2, Lhzu;->c:I

    .line 1074
    iget-object v2, p0, Lcom/alibaba/android/projection/manager/FocusAlarmManager;->b:Lhzu;

    invoke-virtual {v1}, Lcom/alibaba/android/projection/manager/FocusAlarmManager$AlarmType;->reason()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lhzu;->d:Ljava/lang/String;

    .line 1075
    iget-object v1, p0, Lcom/alibaba/android/projection/manager/FocusAlarmManager;->b:Lhzu;

    iget-object v1, v1, Lhzu;->b:Ljava/util/Map;

    if-nez v1, :cond_5

    .line 1076
    iget-object v1, p0, Lcom/alibaba/android/projection/manager/FocusAlarmManager;->b:Lhzu;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lhzu;->b:Ljava/util/Map;

    .line 1080
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/projection/manager/FocusAlarmManager;->b:Lhzu;

    iget-object v1, v1, Lhzu;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1082
    invoke-static {}, Lhzr;->c()Lhzr;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/projection/manager/FocusAlarmManager;->b:Lhzu;

    invoke-virtual {v1, v2}, Lhzr;->a(Lhzu;)V

    goto/16 :goto_0

    .line 1078
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/projection/manager/FocusAlarmManager;->b:Lhzu;

    iget-object v1, v1, Lhzu;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    goto :goto_1
.end method
