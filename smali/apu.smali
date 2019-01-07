.class public final Lapu;
.super Ljava/lang/Object;
.source "SystemEventDetailActivityPresenter.java"

# interfaces
.implements Lapt$a;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Lapt$b;

.field private c:Lcom/alibaba/android/calendar/data/object/SystemEvent;

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lapu;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lapt$b;)V
    .locals 0
    .param p1, "view"    # Lapt$b;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lapu;->b:Lapt$b;

    .line 44
    return-void
.end method

.method static synthetic a(Lapu;)J
    .locals 2
    .param p0, "x0"    # Lapu;

    .prologue
    .line 29
    iget-wide v0, p0, Lapu;->d:J

    return-wide v0
.end method

.method static synthetic a(Lapu;Lcom/alibaba/android/calendar/data/object/SystemEvent;)Lcom/alibaba/android/calendar/data/object/SystemEvent;
    .locals 0
    .param p0, "x0"    # Lapu;
    .param p1, "x1"    # Lcom/alibaba/android/calendar/data/object/SystemEvent;

    .prologue
    .line 29
    iput-object p1, p0, Lapu;->c:Lcom/alibaba/android/calendar/data/object/SystemEvent;

    return-object p1
.end method

.method static synthetic a(Lapu;Landroid/app/Activity;J)V
    .locals 4
    .param p0, "x0"    # Lapu;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # J

    .prologue
    .line 29
    .line 2153
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 2154
    const-string/jumbo v0, "[SystemEventDetail]deleteSystemEvent failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "eventId < 0"

    invoke-static {v0, v1, v2}, Lawm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2155
    :goto_0
    return-void

    .line 2158
    :cond_0
    iget-object v0, p0, Lapu;->b:Lapt$b;

    invoke-interface {v0}, Lapt$b;->c()V

    .line 2159
    new-instance v0, Lapu$3;

    invoke-direct {v0, p0}, Lapu$3;-><init>(Lapu;)V

    .line 2179
    const-class v1, Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v1, p1}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 2180
    invoke-static {p2, p3, v0}, Lawi;->a(JLcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method static synthetic b(Lapu;)Lapt$b;
    .locals 1
    .param p0, "x0"    # Lapu;

    .prologue
    .line 29
    iget-object v0, p0, Lapu;->b:Lapt$b;

    return-object v0
.end method

.method static synthetic c(Lapu;)V
    .locals 0
    .param p0, "x0"    # Lapu;

    .prologue
    .line 29
    invoke-direct {p0}, Lapu;->e()V

    return-void
.end method

.method static synthetic d(Lapu;)Lcom/alibaba/android/calendar/data/object/SystemEvent;
    .locals 1
    .param p0, "x0"    # Lapu;

    .prologue
    .line 29
    iget-object v0, p0, Lapu;->c:Lcom/alibaba/android/calendar/data/object/SystemEvent;

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lapu;->a:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 129
    iget-object v0, p0, Lapu;->c:Lcom/alibaba/android/calendar/data/object/SystemEvent;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lapu;->b:Lapt$b;

    iget-object v1, p0, Lapu;->c:Lcom/alibaba/android/calendar/data/object/SystemEvent;

    invoke-interface {v0, v1}, Lapt$b;->a(Lcom/alibaba/android/calendar/data/object/SystemEvent;)V

    .line 132
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 58
    iget-wide v0, p0, Lapu;->d:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lapu;->a:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v2, -0x1

    .line 48
    .line 1067
    if-nez p1, :cond_0

    .line 1068
    iget-object v0, p0, Lapu;->b:Lapt$b;

    invoke-interface {v0}, Lapt$b;->b()V

    .line 1069
    const-string/jumbo v0, "system event page exception"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "intent is null"

    invoke-static {v0, v1, v2}, Lawm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    :goto_0
    return-void

    .line 1073
    :cond_0
    const-string/jumbo v0, "intent_key_system_calendar_event"

    invoke-static {p1, v0}, Lcoy;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/calendar/data/object/SystemEvent;

    iput-object v0, p0, Lapu;->c:Lcom/alibaba/android/calendar/data/object/SystemEvent;

    .line 1074
    iget-object v0, p0, Lapu;->c:Lcom/alibaba/android/calendar/data/object/SystemEvent;

    if-eqz v0, :cond_1

    .line 1075
    invoke-direct {p0}, Lapu;->e()V

    goto :goto_0

    .line 1079
    :cond_1
    const-string/jumbo v0, "intent_key_system_event_id"

    invoke-static {p1, v0, v2, v3}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lapu;->d:J

    .line 1080
    iget-wide v0, p0, Lapu;->d:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 1082
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1083
    if-eqz v0, :cond_2

    .line 1084
    const-string/jumbo v1, "system_event_id"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2109
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1084
    iput-wide v0, p0, Lapu;->d:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1091
    :cond_2
    :goto_1
    iget-wide v0, p0, Lapu;->d:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_3

    .line 1092
    const-string/jumbo v0, "system event page exception"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "systemEventId < 0"

    invoke-static {v0, v1, v2}, Lawm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    iget-object v0, p0, Lapu;->b:Lapt$b;

    invoke-interface {v0}, Lapt$b;->b()V

    goto :goto_0

    .line 1086
    :catch_0
    move-exception v0

    .line 1087
    const-string/jumbo v1, "[SystemEventDetail] invalidate parameter systemEventId"

    invoke-static {v1, v0}, Lawm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1097
    :cond_3
    iget-object v0, p0, Lapu;->b:Lapt$b;

    invoke-interface {v0}, Lapt$b;->a()Landroid/app/Activity;

    move-result-object v1

    iget-wide v2, p0, Lapu;->d:J

    new-instance v0, Lapu$1;

    invoke-direct {v0, p0}, Lapu$1;-><init>(Lapu;)V

    const-class v4, Lcom/alibaba/wukong/Callback;

    iget-object v5, p0, Lapu;->b:Lapt$b;

    .line 1123
    invoke-interface {v5}, Lapt$b;->a()Landroid/app/Activity;

    move-result-object v5

    .line 1097
    invoke-static {v0, v4, v5}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    invoke-static {v1, v2, v3, v0}, Lawi;->a(Landroid/content/Context;JLcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-object v0, Lapu;->a:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public final c()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 136
    iget-object v0, p0, Lapu;->b:Lapt$b;

    invoke-interface {v0}, Lapt$b;->a()Landroid/app/Activity;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "android.permission.WRITE_CALENDAR"

    aput-object v3, v1, v2

    new-instance v2, Lapu$2;

    invoke-direct {v2, p0}, Lapu$2;-><init>(Lapu;)V

    invoke-static {v0, v4, v1, v2}, Lbyy;->a(Landroid/app/Activity;I[Ljava/lang/String;Lbzc;)V

    .line 150
    return-void
.end method
