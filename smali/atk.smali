.class public final Latk;
.super Late;
.source "SystemCalendarEventProvider.java"


# instance fields
.field private b:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 42
    invoke-direct {p0}, Late;-><init>()V

    .line 43
    iput-object p1, p0, Latk;->b:Landroid/support/v4/app/Fragment;

    .line 44
    return-void
.end method

.method static synthetic a(Latk;Ljava/util/List;)V
    .locals 2
    .param p0, "x0"    # Latk;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 35
    .line 1142
    invoke-static {}, Latf;->a()Latf;

    move-result-object v0

    new-instance v1, Latk$4;

    invoke-direct {v1, p0, p1}, Latk$4;-><init>(Latk;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Latf;->a(Ljava/lang/Runnable;)V

    .line 35
    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 11
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v10, 0x0

    .line 48
    invoke-static {}, Lavi;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "[SystemCalendarEventProvider]loadEvent isShowSystemEvent close."

    aput-object v1, v0, v10

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Latk;->a:Lfp;

    invoke-virtual {v0}, Lfp;->b()V

    .line 51
    invoke-virtual {p0}, Latk;->b()V

    .line 77
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-static {}, Laum;->a()Laum;

    move-result-object v0

    .line 1029
    iget-boolean v0, v0, Laum;->a:Z

    .line 55
    if-eqz v0, :cond_2

    invoke-static {}, Lawi;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 56
    invoke-static {}, Laum;->a()Laum;

    move-result-object v0

    .line 1033
    iput-boolean v10, v0, Laum;->a:Z

    .line 58
    invoke-static {}, Lcms;->u()J

    move-result-wide v6

    .line 59
    .local v6, "currentTime":J
    const-string/jumbo v0, "pref_key_calendar_request_system_calendar_privilege"

    invoke-static {v0}, Lcpk;->d(Ljava/lang/String;)J

    move-result-wide v0

    sub-long v0, v6, v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 60
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "[SystemCalendarEventProvider] loadEvent request privilege is not more than one day. "

    aput-object v1, v0, v10

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_1
    const-string/jumbo v0, "pref_key_calendar_request_system_calendar_privilege"

    invoke-static {v0, v6, v7}, Lcpk;->b(Ljava/lang/String;J)V

    .line 65
    iget-object v8, p0, Latk;->b:Landroid/support/v4/app/Fragment;

    new-array v9, v4, [Ljava/lang/String;

    const-string/jumbo v0, "android.permission.READ_CALENDAR"

    aput-object v0, v9, v10

    new-instance v0, Latk$1;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Latk$1;-><init>(Latk;JJ)V

    invoke-static {v8, v10, v9, v0}, Lbyy;->a(Landroid/support/v4/app/Fragment;I[Ljava/lang/String;Lbzc;)V

    goto :goto_0

    .line 75
    .end local v6    # "currentTime":J
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Latk;->b(JJ)V

    goto :goto_0
.end method

.method b(JJ)V
    .locals 7
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    .prologue
    .line 86
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    invoke-static {}, Lauo;->a()Lauo;

    move-result-object v0

    invoke-virtual {v0}, Lauo;->d()Ljava/util/List;

    move-result-object v1

    .line 88
    .local v1, "selectedCalendarIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "[SystemCalendarEventProvider]loadEvent selectedCalendarIds is empty."

    aput-object v3, v0, v2

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Latk;->a:Lfp;

    invoke-virtual {v0}, Lfp;->b()V

    .line 91
    invoke-virtual {p0}, Latk;->b()V

    .line 139
    .end local v1    # "selectedCalendarIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 95
    .restart local v1    # "selectedCalendarIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    new-instance v6, Latk$2;

    invoke-direct {v6, p0}, Latk$2;-><init>(Latk;)V

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v1 .. v6}, Lawi;->a(Ljava/util/List;JJLcom/alibaba/wukong/Callback;)V

    goto :goto_0

    .line 117
    .end local v1    # "selectedCalendarIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    new-instance v0, Latk$3;

    invoke-direct {v0, p0}, Latk$3;-><init>(Latk;)V

    invoke-static {p1, p2, p3, p4, v0}, Lawi;->a(JJLcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method public final c()Lfp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lfp",
            "<",
            "Ljava/util/Collection",
            "<",
            "Lawv;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Latk;->a:Lfp;

    return-object v0
.end method
