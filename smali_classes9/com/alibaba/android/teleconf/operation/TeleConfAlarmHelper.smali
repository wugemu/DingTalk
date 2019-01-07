.class public Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;
.super Ljava/lang/Object;
.source "TeleConfAlarmHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$b;,
        Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;,
        Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;,
        Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;

.field private static volatile d:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;


# instance fields
.field public a:Z

.field private c:Lhzu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lhzu;

    invoke-direct {v0}, Lhzu;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;->c:Lhzu;

    .line 57
    iget-object v0, p0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;->c:Lhzu;

    const-string/jumbo v1, "tele_conf"

    iput-object v1, v0, Lhzu;->a:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public static a()Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;
    .locals 2

    .prologue
    .line 45
    sget-object v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;->d:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;

    if-nez v0, :cond_1

    .line 46
    const-class v1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;

    monitor-enter v1

    .line 47
    :try_start_0
    sget-object v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;->d:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;-><init>()V

    sput-object v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;->d:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;

    .line 50
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_1
    sget-object v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;->d:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;)V
    .locals 6
    .param p1, "action"    # Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 108
    iget-boolean v1, p0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;->a:Z

    if-nez v1, :cond_1

    .line 1091
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    if-eqz p1, :cond_0

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 115
    .local v0, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;->KEY_ID:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;->value()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;->KEY_TIME:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;->value()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->d:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v1, p1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 118
    sget-object v1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;->KEY_UID:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;->value()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_2
    iget-object v1, p1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 121
    sget-object v1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;->KEY_TYPE:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;->value()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_3
    iget-object v1, p1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 124
    sget-object v1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;->KEY_REASON:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;->value()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_4
    instance-of v1, p1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$b;

    if-eqz v1, :cond_5

    .line 128
    sget-object v1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;->KEY_CALLER:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;->value()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;->KEY_CONFERENCE:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;->value()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    cmp-long v1, v4, v4

    if-lez v1, :cond_5

    .line 131
    sget-object v1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;->KEY_UID:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;->value()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_5
    invoke-static {}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;->a()Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;

    move-result-object v1

    iget-object v2, p1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->b:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    .line 1086
    iget-boolean v3, v1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;->a:Z

    if-eqz v3, :cond_0

    .line 1089
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->value()I

    move-result v3

    sget-object v4, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_FREE_CALL_TIMEOUT:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    invoke-virtual {v4}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->value()I

    move-result v4

    if-lt v3, v4, :cond_0

    if-eqz v0, :cond_0

    .line 1090
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1093
    iget-object v3, v1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;->c:Lhzu;

    if-eqz v3, :cond_0

    .line 1094
    iget-object v3, v1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;->c:Lhzu;

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->value()I

    move-result v4

    iput v4, v3, Lhzu;->c:I

    .line 1095
    iget-object v3, v1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;->c:Lhzu;

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->reason()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lhzu;->d:Ljava/lang/String;

    .line 1096
    iget-object v2, v1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;->c:Lhzu;

    iget-object v2, v2, Lhzu;->b:Ljava/util/Map;

    if-nez v2, :cond_6

    .line 1097
    iget-object v2, v1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;->c:Lhzu;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lhzu;->b:Ljava/util/Map;

    .line 1101
    :goto_1
    iget-object v2, v1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;->c:Lhzu;

    iget-object v2, v2, Lhzu;->b:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1103
    invoke-static {}, Lhzr;->c()Lhzr;

    move-result-object v2

    iget-object v1, v1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;->c:Lhzu;

    .line 2081
    invoke-virtual {v2, v1}, Lhzr;->a(Lhzu;)V

    goto/16 :goto_0

    .line 1099
    :cond_6
    iget-object v2, v1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;->c:Lhzu;

    iget-object v2, v2, Lhzu;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    goto :goto_1
.end method
