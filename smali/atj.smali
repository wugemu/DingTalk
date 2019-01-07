.class public final Latj;
.super Late;
.source "MailCalendarEventProvider.java"


# instance fields
.field b:J

.field c:J

.field d:Ljava/util/Map;
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

.field private e:Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$b;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Late;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Latj;->d:Ljava/util/Map;

    .line 44
    new-instance v0, Latj$1;

    invoke-direct {v0, p0}, Latj$1;-><init>(Latj;)V

    iput-object v0, p0, Latj;->e:Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$b;

    .line 60
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->k()Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;

    move-result-object v0

    iget-object v1, p0, Latj;->e:Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$b;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->a(Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$b;)V

    .line 61
    return-void
.end method

.method static synthetic a(Latj;Ljava/util/List;)V
    .locals 2
    .param p0, "x0"    # Latj;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 38
    .line 3234
    invoke-static {}, Latf;->a()Latf;

    move-result-object v0

    new-instance v1, Latj$4;

    invoke-direct {v1, p0, p1}, Latj$4;-><init>(Latj;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Latf;->a(Ljava/lang/Runnable;)V

    .line 38
    return-void
.end method

.method static synthetic b(Latj;Ljava/util/List;)V
    .locals 10
    .param p0, "x0"    # Latj;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 38
    .line 3301
    invoke-static {}, Lavi;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3302
    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v1, "[MailCalendarEventProvider] traceQueryEvents close."

    aput-object v1, v0, v2

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 3308
    :cond_0
    :goto_0
    return-void

    .line 3306
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3307
    :cond_2
    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v1, "[MailCalendarEventProvider] traceQueryEvents mDayEventsMap isEmpty"

    aput-object v1, v0, v2

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 3311
    :cond_3
    new-array v0, v9, [Ljava/lang/String;

    const-string/jumbo v1, "[MailCalendarEventProvider] traceQueryEvents size="

    aput-object v1, v0, v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    move v1, v2

    .line 3312
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 3313
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    .line 3314
    if-eqz v0, :cond_5

    .line 3317
    const/16 v3, 0x10

    new-array v4, v3, [Ljava/lang/String;

    const-string/jumbo v3, "[MailCalendarEventProvider] traceQueryEvents event=["

    aput-object v3, v4, v2

    const-string/jumbo v3, "id:"

    aput-object v3, v4, v8

    .line 3318
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v9

    const/4 v3, 0x3

    const-string/jumbo v5, ", title:"

    aput-object v5, v4, v3

    const/4 v5, 0x4

    .line 3319
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 3330
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3319
    :cond_4
    :goto_2
    aput-object v3, v4, v5

    const/4 v3, 0x5

    const-string/jumbo v5, ", startMillis:"

    aput-object v5, v4, v3

    const/4 v3, 0x6

    .line 3320
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getStartMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x7

    const-string/jumbo v5, ", endMillis:"

    aput-object v5, v4, v3

    const/16 v3, 0x8

    .line 3321
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getEndMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/16 v3, 0x9

    const-string/jumbo v5, ", isRepeating:"

    aput-object v5, v4, v3

    const/16 v3, 0xa

    .line 3322
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->isRepeating()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/16 v3, 0xb

    const-string/jumbo v5, ", recurRule:"

    aput-object v5, v4, v3

    const/16 v3, 0xc

    .line 3323
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getRrule()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/16 v3, 0xd

    const-string/jumbo v5, ", displayName:"

    aput-object v5, v4, v3

    const/16 v3, 0xe

    .line 3324
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    const/16 v0, 0xf

    const-string/jumbo v3, "]"

    aput-object v3, v4, v0

    .line 3317
    invoke-static {v4}, Lavy;->a([Ljava/lang/String;)V

    .line 3312
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 3334
    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v9, :cond_4

    .line 3338
    new-array v6, v9, [Ljava/lang/String;

    invoke-virtual {v3, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const-string/jumbo v3, "***"

    aput-object v3, v6, v8

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 343
    invoke-super {p0}, Late;->a()V

    .line 344
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->k()Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;

    move-result-object v0

    iget-object v1, p0, Latj;->e:Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$b;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->b(Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$b;)V

    .line 345
    return-void
.end method

.method public final a(JJ)V
    .locals 9
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 66
    invoke-static {}, Lavi;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 67
    iget-object v2, p0, Latj;->a:Lfp;

    invoke-virtual {v2}, Lfp;->b()V

    .line 68
    invoke-virtual {p0}, Latj;->b()V

    .line 69
    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "[MailCalendarEventProvider]loadEvent isShowMail close."

    aput-object v2, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 3090
    :goto_0
    return-void

    .line 73
    :cond_0
    iput-wide p1, p0, Latj;->b:J

    .line 74
    iput-wide p3, p0, Latj;->c:J

    .line 76
    iget-object v2, p0, Latj;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 77
    invoke-static {}, Lavq;->p()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1123
    invoke-static {}, Lare;->a()Lare;

    move-result-object v6

    new-instance v0, Latj$3;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Latj$3;-><init>(Latj;JJ)V

    .line 2068
    invoke-static {}, Latf;->a()Latf;

    move-result-object v1

    new-instance v2, Lare$1;

    invoke-direct {v2, v6, v0}, Lare$1;-><init>(Lare;Lapv;)V

    invoke-virtual {v1, v2}, Latf;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3086
    :cond_1
    invoke-static {}, Lauo;->a()Lauo;

    invoke-static {}, Lauo;->c()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3087
    iget-object v2, p0, Latj;->a:Lfp;

    invoke-virtual {v2}, Lfp;->b()V

    .line 3088
    invoke-virtual {p0}, Latj;->b()V

    .line 3089
    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "[MailCalendarEventProvider]loadEvent alimail not selected."

    aput-object v2, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 3093
    :cond_2
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    iget-wide v2, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p1, p2, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    .line 3094
    sub-long v4, p3, p1

    const-wide/32 v6, 0x5265c00

    div-long/2addr v4, v6

    long-to-int v3, v4

    .line 3095
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->k()Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;

    move-result-object v4

    .line 3098
    invoke-static {}, Lavq;->c()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lavi;->b()Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_1
    new-instance v1, Latj$2;

    invoke-direct {v1, p0}, Latj$2;-><init>(Latj;)V

    .line 3095
    invoke-virtual {v4, v2, v3, v0, v1}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->a(IIZLcma;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 3098
    goto :goto_1
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
    .line 230
    iget-object v0, p0, Latj;->a:Lfp;

    return-object v0
.end method
