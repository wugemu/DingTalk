.class public Lauo;
.super Ljava/lang/Object;
.source "CalendarSettingHelper.java"


# static fields
.field private static volatile b:Lauo;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lauo;->a:Ljava/util/List;

    .line 32
    return-void
.end method

.method public static a()Lauo;
    .locals 2

    .prologue
    .line 35
    sget-object v0, Lauo;->b:Lauo;

    if-nez v0, :cond_1

    .line 36
    const-class v1, Lauo;

    monitor-enter v1

    .line 37
    :try_start_0
    sget-object v0, Lauo;->b:Lauo;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lauo;

    invoke-direct {v0}, Lauo;-><init>()V

    sput-object v0, Lauo;->b:Lauo;

    .line 40
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_1
    sget-object v0, Lauo;->b:Lauo;

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(I)V
    .locals 1
    .param p0, "calendarMode"    # I

    .prologue
    .line 56
    if-ltz p0, :cond_0

    const/4 v0, 0x1

    if-le p0, v0, :cond_1

    .line 57
    :cond_0
    const/4 p0, 0x0

    .line 60
    :cond_1
    const-string/jumbo v0, "sp_calendar_mode"

    invoke-static {v0, p0}, Lcpk;->b(Ljava/lang/String;I)V

    .line 61
    return-void
.end method

.method static a(Z)V
    .locals 1
    .param p0, "isShow"    # Z

    .prologue
    .line 72
    const-string/jumbo v0, "sp_show_ali_mail"

    invoke-static {v0, p0}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 73
    return-void
.end method

.method public static b()I
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 47
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->j()Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    new-array v1, v0, [Ljava/lang/String;

    const-string/jumbo v2, "[CalendarSettingHelper] isDingNewTab=false"

    aput-object v2, v1, v3

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 52
    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "sp_calendar_mode"

    invoke-static {v0, v3}, Lcpk;->a(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static c()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 64
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->j()Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    :goto_0
    return v0

    :cond_0
    const-string/jumbo v1, "sp_show_ali_mail"

    invoke-static {v1, v0}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final d()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 76
    iget-object v4, p0, Lauo;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 77
    const-string/jumbo v4, "sp_show_phone_calendar"

    invoke-static {v4}, Lcpk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "strCalendarIds":Ljava/lang/String;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "[CalendarSettingHelper] getSelectedSystemCalendarIds strCalendarIds="

    aput-object v5, v4, v3

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v4}, Lavy;->a([Ljava/lang/String;)V

    .line 79
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 80
    const-string/jumbo v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "calendarIdArr":[Ljava/lang/String;
    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 82
    .local v0, "calendarId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 83
    iget-object v5, p0, Lauo;->a:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 89
    .end local v0    # "calendarId":Ljava/lang/String;
    .end local v1    # "calendarIdArr":[Ljava/lang/String;
    .end local v2    # "strCalendarIds":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lauo;->a:Ljava/util/List;

    return-object v3
.end method

.method e()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 111
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 112
    .local v1, "strBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lauo;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 113
    iget-object v3, p0, Lauo;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 114
    iget-object v3, p0, Lauo;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_0

    .line 115
    const-string/jumbo v3, ","

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 112
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "strCalendarIds":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "[CalendarSettingHelper] saveSystemCalendarId strCalendarIds="

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {v3}, Lavy;->a([Ljava/lang/String;)V

    .line 121
    const-string/jumbo v3, "sp_show_phone_calendar"

    invoke-static {v3, v2}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method
