.class public abstract Lahq;
.super Lyq;
.source "AbsUpdateCalendarTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lahq$a;
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/CalendarsUpdateResult;",
            ">;"
        }
    .end annotation
.end field

.field protected c:J

.field private d:J

.field private e:Z

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lahq$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, -0x1

    .line 171
    invoke-direct {p0}, Lyq;-><init>()V

    .line 109
    iput-wide v2, p0, Lahq;->d:J

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lahq;->e:Z

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lahq;->f:Ljava/util/List;

    .line 120
    iput-wide v2, p0, Lahq;->c:J

    .line 172
    iput-object p1, p0, Lahq;->a:Ljava/lang/String;

    .line 173
    return-void
.end method

.method private static a(Ljava/lang/String;ZJ)Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;
    .locals 4
    .param p0, "timezone"    # Ljava/lang/String;
    .param p1, "isUTC"    # Z
    .param p2, "timeStamp"    # J

    .prologue
    .line 672
    new-instance v1, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;

    invoke-direct {v1}, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;-><init>()V

    .line 673
    .local v1, "timeDes":Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0, p0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 674
    .local v0, "time":Landroid/text/format/Time;
    invoke-virtual {v0, p2, p3}, Landroid/text/format/Time;->set(J)V

    .line 675
    iput-boolean p1, v1, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;->isUTC:Z

    .line 676
    iget v2, v0, Landroid/text/format/Time;->year:I

    iput v2, v1, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;->year:I

    .line 677
    iget v2, v0, Landroid/text/format/Time;->month:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;->month:I

    .line 678
    iget v2, v0, Landroid/text/format/Time;->monthDay:I

    iput v2, v1, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;->day:I

    .line 679
    iget v2, v0, Landroid/text/format/Time;->hour:I

    iput v2, v1, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;->hour:I

    .line 680
    iget v2, v0, Landroid/text/format/Time;->minute:I

    iput v2, v1, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;->minute:I

    .line 681
    iget v2, v0, Landroid/text/format/Time;->second:I

    iput v2, v1, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;->second:I

    .line 682
    iput-object p0, v1, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;->tzId:Ljava/lang/String;

    .line 684
    return-object v1
.end method

.method static synthetic a(Lahq;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "x0"    # Lahq;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    .line 11007
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11008
    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11009
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11010
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    return-object v0
.end method

.method static synthetic a(Lahq;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lahq;

    .prologue
    .line 59
    iget-object v0, p0, Lahq;->f:Ljava/util/List;

    return-object v0
.end method

.method private static a([I)Ljava/util/List;
    .locals 4
    .param p0, "bydayNum"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 826
    if-eqz p0, :cond_2

    .line 827
    array-length v2, p0

    .line 828
    .local v2, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 829
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 830
    aget v3, p0, v0

    if-eqz v3, :cond_0

    .line 831
    aget v3, p0, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 829
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 835
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 840
    .end local v0    # "i":I
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "size":I
    :goto_1
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static a([ILjava/util/List;)Ljava/util/List;
    .locals 3
    .param p0, "array"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 844
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p0, :cond_1

    .line 845
    array-length v1, p0

    .line 846
    .local v1, "len":I
    if-nez p1, :cond_0

    .line 847
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 849
    .restart local p1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 850
    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 849
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 854
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_1
    return-object p1
.end method

.method private static a(Ljava/lang/String;)Ljava/util/Properties;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 723
    :try_start_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 724
    .local v0, "_properties":Ljava/util/Properties;
    const-class v3, Lahq;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 725
    .local v1, "stream":Ljava/io/InputStream;
    if-nez v1, :cond_0

    move-object v0, v2

    .line 734
    .end local v0    # "_properties":Ljava/util/Properties;
    .end local v1    # "stream":Ljava/io/InputStream;
    :goto_0
    return-object v0

    .line 728
    .restart local v0    # "_properties":Ljava/util/Properties;
    .restart local v1    # "stream":Ljava/io/InputStream;
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 730
    invoke-static {v1}, Lcom/alibaba/alimei/restfulapi/support/IOUtils;->close(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 734
    .end local v0    # "_properties":Ljava/util/Properties;
    .end local v1    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    move-object v0, v2

    goto :goto_0
.end method

.method private a(J)V
    .locals 5
    .param p1, "eventId"    # J

    .prologue
    .line 504
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gtz v1, :cond_0

    .line 512
    :goto_0
    return-void

    .line 507
    :cond_0
    new-instance v0, Lcom/alibaba/alimei/orm/query/Update;

    const-class v1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;

    .line 7194
    const-string/jumbo v2, "calendar.db"

    .line 507
    const-string/jumbo v3, "Events"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    .local v0, "eventUpdate":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v1, "dirty"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 509
    const-string/jumbo v1, "sync_data8"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 510
    const-string/jumbo v1, "_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    goto :goto_0
.end method

.method static synthetic a(Lahq;J)V
    .locals 1
    .param p0, "x0"    # Lahq;
    .param p1, "x1"    # J

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lahq;->a(J)V

    return-void
.end method

.method private a(Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;)V
    .locals 8
    .param p1, "recurRule"    # Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;
    .param p2, "rrule"    # Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 739
    iget v5, p2, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->a:I

    packed-switch v5, :pswitch_data_0

    .line 763
    :goto_0
    iget-object v5, p2, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->b:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 765
    iget-object v3, p2, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->b:Ljava/lang/String;

    .line 770
    .local v3, "untilStr":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xf

    if-ne v5, v6, :cond_0

    .line 771
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 773
    :cond_0
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 775
    .local v2, "until":Landroid/text/format/Time;
    invoke-virtual {v2, v3}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 780
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 781
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, p1, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->until:Ljava/lang/Long;

    .line 788
    .end local v2    # "until":Landroid/text/format/Time;
    .end local v3    # "untilStr":Ljava/lang/String;
    :cond_1
    iget v5, p2, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->c:I

    if-lez v5, :cond_2

    .line 789
    iget v5, p2, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p1, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->count:Ljava/lang/Integer;

    .line 792
    :cond_2
    iget v5, p2, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->d:I

    if-eqz v5, :cond_3

    .line 793
    iget v5, p2, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->d:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p1, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->interval:Ljava/lang/Integer;

    .line 796
    :cond_3
    iget v5, p2, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->e:I

    if-eqz v5, :cond_4

    .line 797
    iget v5, p2, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->e:I

    invoke-static {v5}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->c(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->weekStart:Ljava/lang/String;

    .line 800
    :cond_4
    iget-object v5, p2, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->o:[I

    iget-object v6, p1, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->byDayListOfMonth:Ljava/util/List;

    invoke-static {v5, v6}, Lahq;->a([ILjava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p1, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->byDayListOfMonth:Ljava/util/List;

    .line 802
    iget-object v5, p2, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->q:[I

    iget-object v6, p1, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->byDayListOfYear:Ljava/util/List;

    invoke-static {v5, v6}, Lahq;->a([ILjava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p1, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->byDayListOfYear:Ljava/util/List;

    .line 804
    iget-object v5, p2, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->u:[I

    iget-object v6, p1, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->byMonthListOfYear:Ljava/util/List;

    invoke-static {v5, v6}, Lahq;->a([ILjava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p1, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->byMonthListOfYear:Ljava/util/List;

    .line 806
    iget-object v5, p2, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->m:[I

    invoke-static {v5}, Lahq;->a([I)Ljava/util/List;

    move-result-object v5

    iput-object v5, p1, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->byWeekListOfYear:Ljava/util/List;

    .line 808
    iget-object v5, p2, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->w:[I

    iget-object v6, p1, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->bySetPosList:Ljava/util/List;

    invoke-static {v5, v6}, Lahq;->a([ILjava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p1, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->bySetPosList:Ljava/util/List;

    .line 811
    iget-object v5, p2, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->l:[I

    if-eqz v5, :cond_6

    .line 812
    iget-object v5, p1, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->byDayListOfWeek:Ljava/util/List;

    if-nez v5, :cond_5

    .line 813
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p1, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->byDayListOfWeek:Ljava/util/List;

    .line 815
    :cond_5
    iget v1, p2, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->n:I

    .line 816
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_6

    .line 817
    new-instance v4, Lcom/alibaba/alimei/restfulapi/data/calendar/EventWeekDay;

    invoke-direct {v4}, Lcom/alibaba/alimei/restfulapi/data/calendar/EventWeekDay;-><init>()V

    .line 818
    .local v4, "weekDay":Lcom/alibaba/alimei/restfulapi/data/calendar/EventWeekDay;
    iget-object v5, p2, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->l:[I

    aget v5, v5, v0

    .line 819
    invoke-static {v5}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->d(I)Ljava/lang/String;

    move-result-object v5

    .line 818
    invoke-virtual {v4, v5}, Lcom/alibaba/alimei/restfulapi/data/calendar/EventWeekDay;->setWeekday(Ljava/lang/String;)V

    .line 820
    iget-object v5, p1, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->byDayListOfWeek:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 816
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 741
    .end local v0    # "i":I
    .end local v1    # "size":I
    .end local v4    # "weekDay":Lcom/alibaba/alimei/restfulapi/data/calendar/EventWeekDay;
    :pswitch_0
    const-string/jumbo v5, "SECONDLY"

    iput-object v5, p1, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->freq:Ljava/lang/String;

    goto/16 :goto_0

    .line 744
    :pswitch_1
    const-string/jumbo v5, "MINUTELY"

    iput-object v5, p1, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->freq:Ljava/lang/String;

    goto/16 :goto_0

    .line 747
    :pswitch_2
    const-string/jumbo v5, "HOURLY"

    iput-object v5, p1, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->freq:Ljava/lang/String;

    goto/16 :goto_0

    .line 750
    :pswitch_3
    const-string/jumbo v5, "DAILY"

    iput-object v5, p1, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->freq:Ljava/lang/String;

    goto/16 :goto_0

    .line 753
    :pswitch_4
    const-string/jumbo v5, "WEEKLY"

    iput-object v5, p1, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->freq:Ljava/lang/String;

    goto/16 :goto_0

    .line 756
    :pswitch_5
    const-string/jumbo v5, "MONTHLY"

    iput-object v5, p1, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->freq:Ljava/lang/String;

    goto/16 :goto_0

    .line 759
    :pswitch_6
    const-string/jumbo v5, "YEARLY"

    iput-object v5, p1, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->freq:Ljava/lang/String;

    goto/16 :goto_0

    .line 823
    :cond_6
    return-void

    .line 739
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private a(Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;Z)V
    .locals 12
    .param p1, "dirtyEvent"    # Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;
    .param p2, "calItem"    # Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;
    .param p3, "isException"    # Z

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 366
    iget-object v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->organizer:Ljava/lang/String;

    .line 367
    .local v4, "organizer":Ljava/lang/String;
    invoke-virtual {p0}, Lahq;->g()Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "accountName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 369
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    const/4 v5, 0x1

    .line 371
    .local v5, "selfOrganizer":Z
    :goto_0
    if-eqz p3, :cond_3

    iget-object v6, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->original_sync_id:Ljava/lang/String;

    .line 373
    .local v6, "syncId":Ljava/lang/String;
    :goto_1
    const/4 v7, 0x1

    iget v8, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->deleted:I

    if-ne v7, v8, :cond_4

    const/4 v2, 0x1

    .line 376
    .local v2, "isDelete":Z
    :goto_2
    if-eqz p3, :cond_7

    .line 378
    if-eqz v2, :cond_5

    const/4 v1, 0x3

    .line 388
    .local v1, "action":I
    :goto_3
    invoke-virtual {p2, v1}, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->setAction(I)V

    .line 389
    invoke-virtual {p2, v6}, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->setItemId(Ljava/lang/String;)V

    .line 391
    iget-wide v8, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->dtstart:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-ltz v7, :cond_1

    iget-wide v8, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->dtend:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-gez v7, :cond_b

    iget-object v7, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->duration:Ljava/lang/String;

    .line 392
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 393
    :cond_1
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "error calendar dirtyEvent dtstart = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v10, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->dtstart:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", dtend = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->dtend:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", duration = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->duration:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 369
    .end local v1    # "action":I
    .end local v2    # "isDelete":Z
    .end local v5    # "selfOrganizer":Z
    .end local v6    # "syncId":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 371
    .restart local v5    # "selfOrganizer":Z
    :cond_3
    iget-object v6, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->_sync_id:Ljava/lang/String;

    goto :goto_1

    .line 373
    .restart local v6    # "syncId":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 378
    .restart local v2    # "isDelete":Z
    :cond_5
    if-eqz v5, :cond_6

    const/4 v1, 0x2

    goto :goto_3

    :cond_6
    const/4 v1, 0x7

    goto :goto_3

    .line 382
    :cond_7
    iget-object v7, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->_sync_id:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v1, 0x1

    .restart local v1    # "action":I
    :goto_4
    goto :goto_3

    .end local v1    # "action":I
    :cond_8
    if-eqz v2, :cond_9

    const/4 v1, 0x3

    goto :goto_4

    :cond_9
    if-eqz v5, :cond_a

    const/4 v1, 0x2

    goto :goto_4

    :cond_a
    const/4 v1, 0x7

    goto :goto_4

    .line 397
    .restart local v1    # "action":I
    :cond_b
    if-nez p3, :cond_c

    iget-object v7, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->rrule:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 398
    iget-object v7, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->eventTimezone:Ljava/lang/String;

    .line 5688
    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    .line 5689
    if-eqz v8, :cond_c

    .line 5692
    invoke-virtual {v8}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 5693
    const-string/jumbo v8, "timezone.properties"

    invoke-static {v8}, Lahq;->a(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v8

    .line 5694
    invoke-virtual {v8, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 5695
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_e

    .line 5696
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/GsonTools;->getGsonInstance()Lcom/google/gson/Gson;

    move-result-object v7

    const-class v9, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/DstTimezone;

    invoke-virtual {v7, v8, v9}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/DstTimezone;

    .line 5697
    new-instance v8, Ljava/util/ArrayList;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v8, p2, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->timezoneList:Ljava/util/List;

    .line 5698
    iget-object v8, p2, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->timezoneList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    :cond_c
    :goto_5
    const/4 v3, 0x0

    .line 402
    .local v3, "method":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 403
    const-string/jumbo v3, "PUBLISH"

    .line 411
    :cond_d
    :goto_6
    invoke-virtual {p2, v3}, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->setMethod(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p0, p2}, Lahq;->a(Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;)V

    .line 414
    return-void

    .line 5700
    .end local v3    # "method":Ljava/lang/String;
    :cond_e
    new-instance v8, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/DstTimezone;

    invoke-direct {v8}, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/DstTimezone;-><init>()V

    .line 5701
    iput-object v7, v8, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/DstTimezone;->tzId:Ljava/lang/String;

    .line 5702
    new-instance v9, Landroid/text/format/Time;

    invoke-direct {v9, v7}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 5704
    new-instance v7, Ljava/util/ArrayList;

    const/4 v10, 0x1

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, v8, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/DstTimezone;->standardcList:Ljava/util/List;

    .line 5705
    new-instance v7, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Dst;

    invoke-direct {v7}, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Dst;-><init>()V

    .line 5706
    iget-wide v10, v9, Landroid/text/format/Time;->gmtoff:J

    iput-wide v10, v7, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Dst;->tzoffsetFrom:J

    .line 5707
    iget-wide v10, v9, Landroid/text/format/Time;->gmtoff:J

    iput-wide v10, v7, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Dst;->tzoffsetTo:J

    .line 5708
    iget-object v9, v8, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/DstTimezone;->standardcList:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5709
    new-instance v7, Ljava/util/ArrayList;

    const/4 v9, 0x1

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p2, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->timezoneList:Ljava/util/List;

    .line 5710
    iget-object v7, p2, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->timezoneList:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 404
    .restart local v3    # "method":Ljava/lang/String;
    :cond_f
    const/4 v7, 0x1

    if-ne v1, v7, :cond_10

    .line 405
    const-string/jumbo v3, "REQUEST"

    goto :goto_6

    .line 406
    :cond_10
    if-eqz v5, :cond_11

    if-eqz v2, :cond_11

    .line 407
    const-string/jumbo v3, "CANCEL"

    goto :goto_6

    .line 408
    :cond_11
    const/4 v7, 0x2

    if-ne v1, v7, :cond_d

    .line 409
    const-string/jumbo v3, "REQUEST"

    goto :goto_6
.end method

.method private a(Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;Lcom/alibaba/alimei/restfulapi/data/calendar/Event;Z)V
    .locals 49
    .param p1, "dirtyEvent"    # Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;
    .param p2, "fillEvent"    # Lcom/alibaba/alimei/restfulapi/data/calendar/Event;
    .param p3, "isException"    # Z

    .prologue
    .line 515
    const-string/jumbo v4, "PUBLIC"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->setEventClass(Ljava/lang/String;)V

    .line 516
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->rrule:Ljava/lang/String;

    move-object/from16 v41, v0

    .line 517
    .local v41, "rrule":Ljava/lang/String;
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iget v5, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->allDay:I

    if-ne v4, v5, :cond_5

    const/4 v14, 0x1

    .line 518
    .local v14, "allDay":Z
    :goto_0
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->dtstart:J

    move-wide/from16 v46, v0

    .line 519
    .local v46, "startTime":J
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->dtend:J

    move-wide/from16 v26, v0

    .line 520
    .local v26, "endTime":J
    const-wide/16 v4, 0x0

    cmp-long v4, v26, v4

    if-gtz v4, :cond_6

    .line 521
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->duration:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 522
    .local v24, "durationStr":Ljava/lang/String;
    const-wide/32 v22, 0x36ee80

    .line 523
    .local v22, "durationMillis":J
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 524
    new-instance v21, Lagg;

    invoke-direct/range {v21 .. v21}, Lagg;-><init>()V

    .line 526
    .local v21, "duration":Lagg;
    :try_start_0
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lagg;->a(Ljava/lang/String;)V

    .line 527
    invoke-virtual/range {v21 .. v21}, Lagg;->a()J
    :try_end_0
    .catch Lcom/alibaba/alimei/sdk/calendar/common/DateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v22

    .line 532
    .end local v21    # "duration":Lagg;
    :cond_0
    :goto_1
    add-long v26, v46, v22

    .line 537
    .end local v22    # "durationMillis":J
    .end local v24    # "durationStr":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p2

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->setStartTime(J)V

    .line 538
    move-object/from16 v0, p2

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->setEndTime(J)V

    .line 539
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->eventEndTimezone:Ljava/lang/String;

    move-object/from16 v45, v0

    .line 540
    .local v45, "timeZone":Ljava/lang/String;
    invoke-static/range {v45 .. v45}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 541
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v45

    .line 544
    :cond_1
    if-nez p3, :cond_2

    invoke-static/range {v41 .. v41}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 545
    const-string/jumbo v4, "UTC"

    move-object/from16 v0, v45

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    .line 546
    .local v30, "isUTC":Z
    move-object/from16 v0, v45

    move/from16 v1, v30

    move-wide/from16 v2, v46

    invoke-static {v0, v1, v2, v3}, Lahq;->a(Ljava/lang/String;ZJ)Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;

    move-result-object v20

    .line 547
    .local v20, "dtStart":Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->dtStart:Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;

    .line 548
    move-object/from16 v0, v45

    move/from16 v1, v30

    move-wide/from16 v2, v26

    invoke-static {v0, v1, v2, v3}, Lahq;->a(Ljava/lang/String;ZJ)Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;

    move-result-object v19

    .line 549
    .local v19, "dtEnd":Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->dtEnd:Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;

    .line 552
    .end local v19    # "dtEnd":Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;
    .end local v20    # "dtStart":Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;
    .end local v30    # "isUTC":Z
    :cond_2
    if-eqz p3, :cond_4

    .line 553
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->recurId:Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurId;

    if-nez v4, :cond_4

    .line 554
    new-instance v4, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurId;

    invoke-direct {v4}, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurId;-><init>()V

    move-object/from16 v0, p2

    iput-object v4, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->recurId:Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurId;

    .line 555
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->originalInstanceTime:J

    move-wide/from16 v36, v0

    .line 556
    .local v36, "originalTime":J
    const-wide/16 v4, 0x0

    cmp-long v4, v36, v4

    if-lez v4, :cond_8

    .line 557
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iget v5, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->originalAllDay:I

    if-ne v4, v5, :cond_7

    const/16 v35, 0x1

    .line 558
    .local v35, "originalAllDay":Z
    :goto_3
    if-eqz v35, :cond_3

    .line 561
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    .line 7864
    const-string/jumbo v4, "UTC"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    .line 7869
    new-instance v7, Ljava/util/GregorianCalendar;

    invoke-direct {v7, v4}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 7870
    move-wide/from16 v0, v36

    invoke-virtual {v7, v0, v1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 7871
    new-instance v4, Ljava/util/GregorianCalendar;

    invoke-direct {v4, v5}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 7873
    const/4 v5, 0x1

    invoke-virtual {v7, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    const/4 v6, 0x2

    .line 7874
    invoke-virtual {v7, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v6

    const/4 v8, 0x5

    .line 7875
    invoke-virtual {v7, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 7873
    invoke-virtual/range {v4 .. v10}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 7876
    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/util/GregorianCalendar;->set(II)V

    .line 7877
    invoke-virtual {v4}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v36

    .line 568
    .end local v35    # "originalAllDay":Z
    :cond_3
    :goto_4
    const-wide/16 v4, 0x0

    cmp-long v4, v36, v4

    if-gez v4, :cond_9

    .line 569
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->recurId:Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurId;

    move-wide/from16 v0, v46

    invoke-virtual {v4, v0, v1}, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurId;->setDateTime(J)V

    .line 577
    .end local v36    # "originalTime":J
    :cond_4
    :goto_5
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->setAllDayEvent(Z)V

    .line 579
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->title:Ljava/lang/String;

    move-object/from16 v48, v0

    .line 580
    .local v48, "title":Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->setSubject(Ljava/lang/String;)V

    .line 582
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->description:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 583
    .local v18, "body":Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->setBody(Ljava/lang/String;)V

    .line 585
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->organizer:Ljava/lang/String;

    move-object/from16 v33, v0

    .line 586
    .local v33, "organizer":Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->setOrganizerEmail(Ljava/lang/String;)V

    .line 588
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->eventLocation:Ljava/lang/String;

    move-object/from16 v32, v0

    .line 589
    .local v32, "location":Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->setLocation(Ljava/lang/String;)V

    .line 591
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 592
    .local v11, "alarmList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/EventAlarmTime;>;"
    new-instance v12, Lcom/alibaba/alimei/orm/query/Select;

    const-class v4, Lcom/alibaba/alimei/sdk/db/calendar/entry/Reminders;

    .line 8194
    const-string/jumbo v5, "calendar.db"

    .line 592
    const-string/jumbo v6, "Reminders"

    invoke-direct {v12, v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    .local v12, "alarmSelect":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v4, "event_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v12, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    invoke-virtual {v12}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v40

    .line 595
    .local v40, "reminderList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/calendar/entry/Reminders;>;"
    if-eqz v40, :cond_a

    .line 596
    invoke-interface/range {v40 .. v40}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/alibaba/alimei/sdk/db/calendar/entry/Reminders;

    .line 597
    .local v39, "reminder":Lcom/alibaba/alimei/sdk/db/calendar/entry/Reminders;
    new-instance v13, Lcom/alibaba/alimei/restfulapi/data/calendar/EventAlarmTime;

    invoke-direct {v13}, Lcom/alibaba/alimei/restfulapi/data/calendar/EventAlarmTime;-><init>()V

    .line 598
    .local v13, "alarmTime":Lcom/alibaba/alimei/restfulapi/data/calendar/EventAlarmTime;
    move-object/from16 v0, v39

    iget-wide v6, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Reminders;->minutes:J

    const-wide/16 v8, 0x3c

    mul-long/2addr v6, v8

    invoke-virtual {v13, v6, v7}, Lcom/alibaba/alimei/restfulapi/data/calendar/EventAlarmTime;->setSecond(J)V

    .line 599
    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 517
    .end local v11    # "alarmList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/EventAlarmTime;>;"
    .end local v12    # "alarmSelect":Lcom/alibaba/alimei/orm/query/Select;
    .end local v13    # "alarmTime":Lcom/alibaba/alimei/restfulapi/data/calendar/EventAlarmTime;
    .end local v14    # "allDay":Z
    .end local v18    # "body":Ljava/lang/String;
    .end local v26    # "endTime":J
    .end local v32    # "location":Ljava/lang/String;
    .end local v33    # "organizer":Ljava/lang/String;
    .end local v39    # "reminder":Lcom/alibaba/alimei/sdk/db/calendar/entry/Reminders;
    .end local v40    # "reminderList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/calendar/entry/Reminders;>;"
    .end local v45    # "timeZone":Ljava/lang/String;
    .end local v46    # "startTime":J
    .end local v48    # "title":Ljava/lang/String;
    :cond_5
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 534
    .restart local v14    # "allDay":Z
    .restart local v26    # "endTime":J
    .restart local v46    # "startTime":J
    :cond_6
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->dtend:J

    move-wide/from16 v26, v0

    goto/16 :goto_2

    .line 557
    .restart local v36    # "originalTime":J
    .restart local v45    # "timeZone":Ljava/lang/String;
    :cond_7
    const/16 v35, 0x0

    goto/16 :goto_3

    .line 565
    :cond_8
    const-string/jumbo v4, "exception event must has originalTime"

    invoke-static {v4}, Lzb;->e(Ljava/lang/String;)I

    goto/16 :goto_4

    .line 571
    :cond_9
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->recurId:Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurId;

    move-wide/from16 v0, v36

    invoke-virtual {v4, v0, v1}, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurId;->setDateTime(J)V

    goto/16 :goto_5

    .line 602
    .end local v36    # "originalTime":J
    .restart local v11    # "alarmList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/EventAlarmTime;>;"
    .restart local v12    # "alarmSelect":Lcom/alibaba/alimei/orm/query/Select;
    .restart local v18    # "body":Ljava/lang/String;
    .restart local v32    # "location":Ljava/lang/String;
    .restart local v33    # "organizer":Ljava/lang/String;
    .restart local v40    # "reminderList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/calendar/entry/Reminders;>;"
    .restart local v48    # "title":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->setAlarmList(Ljava/util/List;)V

    .line 604
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 605
    .local v28, "eventAttendeeList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/EventAttendee;>;"
    new-instance v17, Lcom/alibaba/alimei/orm/query/Select;

    const-class v4, Lcom/alibaba/alimei/sdk/db/calendar/entry/Attendees;

    .line 9194
    const-string/jumbo v5, "calendar.db"

    .line 605
    const-string/jumbo v6, "Attendees"

    move-object/from16 v0, v17

    invoke-direct {v0, v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    .local v17, "attendeeSelect":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v4, "event_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->organizer_name:Ljava/lang/String;

    move-object/from16 v34, v0

    .line 608
    .local v34, "organizerName":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v16

    .line 609
    .local v16, "attendeeList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/calendar/entry/Attendees;>;"
    if-eqz v16, :cond_c

    .line 610
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/alibaba/alimei/sdk/db/calendar/entry/Attendees;

    .line 611
    .local v15, "attendee":Lcom/alibaba/alimei/sdk/db/calendar/entry/Attendees;
    new-instance v25, Lcom/alibaba/alimei/restfulapi/data/calendar/EventAttendee;

    invoke-direct/range {v25 .. v25}, Lcom/alibaba/alimei/restfulapi/data/calendar/EventAttendee;-><init>()V

    .line 612
    .local v25, "eventAttendee":Lcom/alibaba/alimei/restfulapi/data/calendar/EventAttendee;
    iget-object v5, v15, Lcom/alibaba/alimei/sdk/db/calendar/entry/Attendees;->attendeeEmail:Ljava/lang/String;

    move-object/from16 v0, v25

    iput-object v5, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventAttendee;->address:Ljava/lang/String;

    .line 613
    iget-object v5, v15, Lcom/alibaba/alimei/sdk/db/calendar/entry/Attendees;->attendeeName:Ljava/lang/String;

    move-object/from16 v0, v25

    iput-object v5, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventAttendee;->alias:Ljava/lang/String;

    .line 614
    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 615
    invoke-static/range {v33 .. v33}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    iget-object v5, v15, Lcom/alibaba/alimei/sdk/db/calendar/entry/Attendees;->attendeeEmail:Ljava/lang/String;

    .line 616
    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 617
    iget-object v5, v15, Lcom/alibaba/alimei/sdk/db/calendar/entry/Attendees;->attendeeName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 618
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventAttendee;->alias:Ljava/lang/String;

    move-object/from16 v34, v0

    .line 623
    :cond_b
    iget v5, v15, Lcom/alibaba/alimei/sdk/db/calendar/entry/Attendees;->attendeeStatus:I

    packed-switch v5, :pswitch_data_0

    .line 637
    :pswitch_0
    const-string/jumbo v5, "NEEDS-ACTION"

    move-object/from16 v0, v25

    iput-object v5, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventAttendee;->status:Ljava/lang/String;

    .line 640
    :goto_8
    iget v5, v15, Lcom/alibaba/alimei/sdk/db/calendar/entry/Attendees;->attendeeType:I

    packed-switch v5, :pswitch_data_1

    .line 649
    :goto_9
    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 625
    :pswitch_1
    const-string/jumbo v5, "ACCEPTED"

    move-object/from16 v0, v25

    iput-object v5, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventAttendee;->status:Ljava/lang/String;

    goto :goto_8

    .line 628
    :pswitch_2
    const-string/jumbo v5, "DECLINED"

    move-object/from16 v0, v25

    iput-object v5, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventAttendee;->status:Ljava/lang/String;

    goto :goto_8

    .line 631
    :pswitch_3
    const-string/jumbo v5, "TENTATIVE"

    move-object/from16 v0, v25

    iput-object v5, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventAttendee;->status:Ljava/lang/String;

    goto :goto_8

    .line 634
    :pswitch_4
    const-string/jumbo v5, "NEEDS-ACTION"

    move-object/from16 v0, v25

    iput-object v5, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventAttendee;->status:Ljava/lang/String;

    goto :goto_8

    .line 642
    :pswitch_5
    const-string/jumbo v5, "REQ-PARTICIPANT"

    move-object/from16 v0, v25

    iput-object v5, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventAttendee;->role:Ljava/lang/String;

    goto :goto_9

    .line 645
    :pswitch_6
    const-string/jumbo v5, "OPT-PARTICIPANT"

    move-object/from16 v0, v25

    iput-object v5, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventAttendee;->role:Ljava/lang/String;

    goto :goto_9

    .line 652
    .end local v15    # "attendee":Lcom/alibaba/alimei/sdk/db/calendar/entry/Attendees;
    .end local v25    # "eventAttendee":Lcom/alibaba/alimei/restfulapi/data/calendar/EventAttendee;
    :cond_c
    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->setAttendeeList(Ljava/util/List;)V

    .line 653
    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->setOrganizerName(Ljava/lang/String;)V

    .line 656
    new-instance v42, Ljava/util/ArrayList;

    invoke-direct/range {v42 .. v42}, Ljava/util/ArrayList;-><init>()V

    .line 657
    .local v42, "rruleList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;>;"
    invoke-static/range {v41 .. v41}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 658
    const-string/jumbo v4, "\n"

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v43

    .line 659
    .local v43, "rruleStrs":[Ljava/lang/String;
    move-object/from16 v0, v43

    array-length v0, v0

    move/from16 v31, v0

    .line 660
    .local v31, "len":I
    const/16 v29, 0x0

    .local v29, "i":I
    :goto_a
    move/from16 v0, v29

    move/from16 v1, v31

    if-ge v0, v1, :cond_d

    .line 661
    new-instance v44, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;

    invoke-direct/range {v44 .. v44}, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;-><init>()V

    .line 662
    .local v44, "rule":Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;
    new-instance v38, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;

    invoke-direct/range {v38 .. v38}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;-><init>()V

    .line 663
    .local v38, "recurrence":Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;
    aget-object v4, v43, v29

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->b(Ljava/lang/String;)V

    .line 664
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lahq;->a(Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;)V

    .line 665
    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 660
    add-int/lit8 v29, v29, 0x1

    goto :goto_a

    .line 668
    .end local v29    # "i":I
    .end local v31    # "len":I
    .end local v38    # "recurrence":Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;
    .end local v43    # "rruleStrs":[Ljava/lang/String;
    .end local v44    # "rule":Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;
    :cond_d
    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->setRecurRuleList(Ljava/util/List;)V

    .line 669
    return-void

    .end local v11    # "alarmList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/EventAlarmTime;>;"
    .end local v12    # "alarmSelect":Lcom/alibaba/alimei/orm/query/Select;
    .end local v16    # "attendeeList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/calendar/entry/Attendees;>;"
    .end local v17    # "attendeeSelect":Lcom/alibaba/alimei/orm/query/Select;
    .end local v18    # "body":Ljava/lang/String;
    .end local v28    # "eventAttendeeList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/EventAttendee;>;"
    .end local v32    # "location":Ljava/lang/String;
    .end local v33    # "organizer":Ljava/lang/String;
    .end local v34    # "organizerName":Ljava/lang/String;
    .end local v40    # "reminderList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/calendar/entry/Reminders;>;"
    .end local v42    # "rruleList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;>;"
    .end local v45    # "timeZone":Ljava/lang/String;
    .end local v48    # "title":Ljava/lang/String;
    .restart local v21    # "duration":Lagg;
    .restart local v22    # "durationMillis":J
    .restart local v24    # "durationStr":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto/16 :goto_1

    .line 623
    .line 640
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 881
    .local p1, "calList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;>;"
    iget-object v1, p0, Lahq;->b:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    if-nez v1, :cond_0

    .line 882
    new-instance v1, Lahq$1;

    invoke-direct {v1, p0}, Lahq$1;-><init>(Lahq;)V

    iput-object v1, p0, Lahq;->b:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    .line 1001
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "calendar upload size = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lzb;->d(Ljava/lang/String;)I

    .line 1002
    iget-object v1, p0, Lahq;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getCalendarService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcCalendarService;

    move-result-object v0

    .line 1003
    .local v0, "service":Lcom/alibaba/alimei/restfulapi/service/RpcCalendarService;
    iget-object v1, p0, Lahq;->b:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    invoke-interface {v0, p1, v1}, Lcom/alibaba/alimei/restfulapi/service/RpcCalendarService;->syncUpdateCalendar(Ljava/util/List;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    .line 1004
    return-void
.end method

.method static synthetic a(Lahq;Z)Z
    .locals 1
    .param p0, "x0"    # Lahq;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lahq;->e:Z

    return v0
.end method

.method static synthetic b(Lahq;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lahq;

    .prologue
    .line 10194
    const-string/jumbo v0, "calendar.db"

    .line 59
    return-object v0
.end method

.method private b(Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;Z)V
    .locals 13
    .param p1, "dirtyEvent"    # Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;
    .param p2, "calendar"    # Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;
    .param p3, "isException"    # Z

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 417
    invoke-virtual {p2}, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->getResponse()Lcom/alibaba/alimei/restfulapi/request/data/CalendarResponseData;

    move-result-object v6

    if-nez v6, :cond_3

    .line 418
    new-instance v4, Lcom/alibaba/alimei/restfulapi/request/data/CalendarResponseData;

    invoke-direct {v4}, Lcom/alibaba/alimei/restfulapi/request/data/CalendarResponseData;-><init>()V

    .line 419
    .local v4, "response":Lcom/alibaba/alimei/restfulapi/request/data/CalendarResponseData;
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/alibaba/alimei/restfulapi/request/data/CalendarResponseData;->setShouldNotify(Z)V

    .line 420
    new-instance v2, Lcom/alibaba/alimei/orm/query/Select;

    const-class v6, Lcom/alibaba/alimei/sdk/db/calendar/entry/Attendees;

    .line 6194
    const-string/jumbo v7, "calendar.db"

    .line 420
    const-string/jumbo v8, "Attendees"

    invoke-direct {v2, v6, v7, v8}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    .local v2, "attendeeSelect":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v6, "event_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-wide v10, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->_id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v2, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    invoke-virtual {v2}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v1

    .line 423
    .local v1, "attendeeList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/calendar/entry/Attendees;>;"
    if-eqz v1, :cond_1

    .line 424
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Attendees;

    .line 425
    .local v0, "attendee":Lcom/alibaba/alimei/sdk/db/calendar/entry/Attendees;
    iget-object v8, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Attendees;->attendeeEmail:Ljava/lang/String;

    .line 6466
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 6469
    invoke-virtual {p0}, Lahq;->g()Ljava/lang/String;

    move-result-object v6

    .line 6470
    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    .line 6471
    if-eqz v9, :cond_4

    .line 6472
    const/4 v6, 0x1

    .line 425
    :goto_0
    if-eqz v6, :cond_0

    .line 428
    iget v6, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Attendees;->attendeeStatus:I

    packed-switch v6, :pswitch_data_0

    .line 442
    :pswitch_0
    const-string/jumbo v5, "NEEDS-ACTION"

    .line 445
    .local v5, "status":Ljava/lang/String;
    :goto_1
    invoke-virtual {v4, v5}, Lcom/alibaba/alimei/restfulapi/request/data/CalendarResponseData;->setStatus(Ljava/lang/String;)V

    .line 451
    .end local v0    # "attendee":Lcom/alibaba/alimei/sdk/db/calendar/entry/Attendees;
    .end local v5    # "status":Ljava/lang/String;
    :cond_1
    if-eqz p3, :cond_2

    .line 452
    new-instance v3, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurId;

    invoke-direct {v3}, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurId;-><init>()V

    .line 453
    .local v3, "recurId":Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurId;
    iget-wide v6, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->dtstart:J

    iput-wide v6, v3, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurId;->dateTime:J

    .line 454
    invoke-virtual {p2, v3}, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->setRecurId(Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurId;)V

    .line 456
    .end local v3    # "recurId":Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurId;
    :cond_2
    invoke-virtual {p2, v4}, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->setResponse(Lcom/alibaba/alimei/restfulapi/request/data/CalendarResponseData;)V

    .line 458
    .end local v1    # "attendeeList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/calendar/entry/Attendees;>;"
    .end local v2    # "attendeeSelect":Lcom/alibaba/alimei/orm/query/Select;
    .end local v4    # "response":Lcom/alibaba/alimei/restfulapi/request/data/CalendarResponseData;
    :cond_3
    return-void

    .line 6474
    .restart local v0    # "attendee":Lcom/alibaba/alimei/sdk/db/calendar/entry/Attendees;
    .restart local v1    # "attendeeList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/calendar/entry/Attendees;>;"
    .restart local v2    # "attendeeSelect":Lcom/alibaba/alimei/orm/query/Select;
    .restart local v4    # "response":Lcom/alibaba/alimei/restfulapi/request/data/CalendarResponseData;
    :cond_4
    new-instance v9, Lcom/alibaba/alimei/orm/query/Select;

    const-class v10, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;

    const-string/jumbo v11, "contacts2.db"

    const-string/jumbo v12, "contacts"

    invoke-direct {v9, v10, v11, v12}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 6475
    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "serverId"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string/jumbo v12, "email"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string/jumbo v12, "aliases"

    aput-object v12, v10, v11

    invoke-virtual {v9, v10}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 6476
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "aliases like \'%"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "%\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;)Ljava/lang/Object;

    .line 6477
    invoke-virtual {v9}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v9

    .line 6478
    if-eqz v9, :cond_5

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 6479
    :cond_5
    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    goto :goto_0

    .line 6481
    :cond_6
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;

    .line 6482
    iget-object v10, v6, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->serverId:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 6483
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 6485
    :cond_8
    iget-object v10, v6, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->email:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 6486
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 6488
    :cond_9
    iget-object v10, v6, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->aliases:Ljava/lang/String;

    if-eqz v10, :cond_b

    .line 6491
    iget-object v6, v6, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->aliases:Ljava/lang/String;

    const-string/jumbo v10, ";"

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 6492
    if-eqz v10, :cond_7

    array-length v6, v10

    if-lez v6, :cond_7

    .line 6493
    array-length v11, v10

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v11, :cond_7

    aget-object v12, v10, v6

    .line 6494
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 6495
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 6493
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 6500
    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 430
    :pswitch_1
    const-string/jumbo v5, "ACCEPTED"

    .line 431
    .restart local v5    # "status":Ljava/lang/String;
    goto/16 :goto_1

    .line 433
    .end local v5    # "status":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v5, "DECLINED"

    .line 434
    .restart local v5    # "status":Ljava/lang/String;
    goto/16 :goto_1

    .line 436
    .end local v5    # "status":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v5, "TENTATIVE"

    .line 437
    .restart local v5    # "status":Ljava/lang/String;
    goto/16 :goto_1

    .line 439
    .end local v5    # "status":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v5, "NEEDS-ACTION"

    .line 440
    .restart local v5    # "status":Ljava/lang/String;
    goto/16 :goto_1

    .line 428
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected abstract a()Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
.end method

.method protected abstract a(Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;)V
.end method

.method protected final c()Z
    .locals 22

    .prologue
    .line 177
    invoke-virtual/range {p0 .. p0}, Lahq;->a()Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;

    move-result-object v4

    .line 178
    .local v4, "account":Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
    if-eqz v4, :cond_0

    .line 179
    iget-wide v6, v4, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;->_id:J

    move-object/from16 v0, p0

    iput-wide v6, v0, Lahq;->d:J

    .line 182
    :cond_0
    const/4 v5, 0x0

    .line 183
    .local v5, "times":I
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lahq;->e:Z

    if-eqz v6, :cond_15

    const/4 v6, 0x5

    if-ge v5, v6, :cond_15

    .line 1198
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1199
    move-object/from16 v0, p0

    iget-object v6, v0, Lahq;->f:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 1209
    new-instance v6, Lcom/alibaba/alimei/orm/query/Select;

    const-class v8, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;

    .line 2194
    const-string/jumbo v9, "calendar.db"

    .line 1209
    const-string/jumbo v10, "Events"

    invoke-direct {v6, v8, v9, v10}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "original_id"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string/jumbo v10, "_id"

    aput-object v10, v8, v9

    invoke-virtual {v6, v8}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 1211
    const-string/jumbo v8, "dirty=1 AND original_id NOTNULL AND calendar_id=? AND canSync=1"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-wide v12, v0, Lahq;->d:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v8, v9}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1213
    invoke-virtual {v6}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v6

    .line 1214
    if-eqz v6, :cond_3

    .line 1215
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;

    .line 1217
    iget-wide v10, v6, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->original_id:J

    .line 1219
    new-instance v9, Lcom/alibaba/alimei/orm/query/Update;

    const-class v12, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;

    .line 3194
    const-string/jumbo v13, "calendar.db"

    .line 1220
    const-string/jumbo v14, "Events"

    invoke-direct {v9, v12, v13, v14}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    const-string/jumbo v12, "sync_data8"

    const-string/jumbo v13, "1"

    invoke-virtual {v9, v12, v13}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1222
    const-string/jumbo v12, "_id=? AND original_sync_id ISNULL AND calendar_id=?"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v13, v14

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-wide v14, v0, Lahq;->d:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v13, v10

    invoke-virtual {v9, v12, v13}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1223
    invoke-virtual {v9}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    move-result v9

    .line 1224
    if-nez v9, :cond_1

    .line 1225
    iget-wide v10, v6, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->_id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1229
    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 1230
    new-instance v8, Lagp;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lagp;-><init>(Z)V

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lagp;->c(J)I

    goto :goto_2

    .line 1234
    :cond_3
    new-instance v6, Lcom/alibaba/alimei/orm/query/Select;

    const-class v7, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;

    .line 4194
    const-string/jumbo v8, "calendar.db"

    .line 1234
    const-string/jumbo v9, "Events"

    invoke-direct {v6, v7, v8, v9}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    const-string/jumbo v7, "(dirty=1 OR sync_data8=1) AND original_id ISNULL AND calendar_id=? AND canSync=1"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-wide v10, v0, Lahq;->d:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1236
    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lcom/alibaba/alimei/orm/query/Select;->limit(I)Lcom/alibaba/alimei/orm/query/Select;

    .line 1237
    invoke-virtual {v6}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v7

    .line 1238
    if-nez v7, :cond_5

    .line 1240
    const-string/jumbo v6, "calendar no dirty events"

    invoke-static {v6}, Lzb;->d(Ljava/lang/String;)I

    .line 1241
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lahq;->e:Z

    .line 185
    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 1245
    :cond_5
    const/4 v6, 0x0

    .line 1246
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1247
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v7, v6

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;

    .line 1250
    const/4 v8, 0x0

    .line 1251
    new-instance v12, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;

    invoke-direct {v12}, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;-><init>()V

    .line 1253
    iget-wide v14, v6, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->_id:J

    .line 1254
    iget-object v9, v6, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->_sync_id:Ljava/lang/String;

    .line 1255
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v12, v13}, Lahq;->a(Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;Z)V

    .line 1257
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1258
    new-instance v16, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;

    invoke-direct/range {v16 .. v16}, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;-><init>()V

    .line 1259
    invoke-virtual {v12}, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->getAction()I

    move-result v17

    const/16 v18, 0x7

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 1260
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v6, v12, v1}, Lahq;->b(Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;Z)V

    .line 1261
    invoke-virtual {v12}, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->getResponse()Lcom/alibaba/alimei/restfulapi/request/data/CalendarResponseData;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/alimei/restfulapi/request/data/CalendarResponseData;->isReponseValid()Z

    move-result v17

    if-nez v17, :cond_7

    .line 1262
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lahq;->a(J)V

    goto :goto_4

    .line 1266
    :cond_6
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v6, v1, v2}, Lahq;->a(Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;Lcom/alibaba/alimei/restfulapi/data/calendar/Event;Z)V

    .line 1268
    :cond_7
    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1269
    const/16 v17, 0x1

    iget v0, v6, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->dirty:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 1270
    const/4 v8, 0x1

    .line 1272
    :cond_8
    new-instance v17, Lahq$a;

    invoke-virtual {v12}, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->getAction()I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v1, v14, v15}, Lahq$a;-><init>(IJ)V

    .line 1273
    move-object/from16 v0, p0

    iget-object v0, v0, Lahq;->f:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1274
    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "calendar upload mainItem action = "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->getAction()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ", mainNeedUpload = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ", dirty = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v6, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->dirty:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ", sync_data8"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v6, v6, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->sync_data8:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lzb;->d(Ljava/lang/String;)I

    .line 1279
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 1281
    if-eqz v9, :cond_c

    .line 1282
    new-instance v6, Lcom/alibaba/alimei/orm/query/Select;

    const-class v19, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;

    .line 5194
    const-string/jumbo v20, "calendar.db"

    .line 1282
    const-string/jumbo v21, "Events"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v6, v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    const-string/jumbo v19, "(original_sync_id=? OR original_id=?) AND calendar_id=? AND dirty=1"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v9, v20, v21

    const/4 v9, 0x1

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v20, v9

    const/4 v9, 0x2

    move-object/from16 v0, p0

    iget-wide v14, v0, Lahq;->d:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v20, v9

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1284
    invoke-virtual {v6}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v6

    .line 1285
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1286
    if-eqz v6, :cond_c

    .line 1287
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;

    .line 1288
    const/4 v9, 0x1

    iget v0, v6, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->deleted:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v9, v0, :cond_9

    const/4 v9, 0x1

    .line 1289
    :goto_6
    if-eqz v9, :cond_a

    .line 1291
    new-instance v8, Lcom/alibaba/alimei/restfulapi/data/calendar/EventExceptionDate;

    invoke-direct {v8}, Lcom/alibaba/alimei/restfulapi/data/calendar/EventExceptionDate;-><init>()V

    .line 1292
    iget-wide v0, v6, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->dtstart:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v8, v0, v1}, Lcom/alibaba/alimei/restfulapi/data/calendar/EventExceptionDate;->setDateTime(J)V

    .line 1293
    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1294
    const/4 v8, 0x1

    .line 1295
    goto :goto_5

    .line 1288
    :cond_9
    const/4 v9, 0x0

    goto :goto_6

    .line 1298
    :cond_a
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v15, v9, 0x0

    if-eqz v8, :cond_10

    const/4 v9, 0x1

    :goto_7
    add-int/2addr v9, v15

    .line 1300
    const/4 v15, 0x5

    if-lt v9, v15, :cond_11

    .line 1301
    const/4 v7, 0x1

    .line 1323
    :cond_b
    :goto_8
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->setExceptionDateList(Ljava/util/List;)V

    .line 1327
    :cond_c
    invoke-virtual {v12}, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->getAction()I

    move-result v6

    const/4 v9, 0x7

    if-eq v6, v9, :cond_d

    .line 1328
    invoke-virtual {v12, v13}, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->setEvent(Ljava/util/List;)V

    .line 1330
    :cond_d
    if-eqz v8, :cond_13

    .line 1332
    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1338
    :goto_9
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_e

    .line 1340
    move-object/from16 v0, v18

    invoke-interface {v10, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1343
    :cond_e
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x5

    if-lt v6, v8, :cond_16

    .line 1344
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "calList size above MAX_UPLOAD_SIZE = 5, calList size = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1345
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", so update"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1344
    invoke-static {v6}, Lzb;->d(Ljava/lang/String;)I

    .line 1346
    const/4 v6, 0x1

    .line 1349
    :goto_a
    if-eqz v6, :cond_f

    .line 1350
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lahq;->a(Ljava/util/List;)V

    .line 1351
    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 1352
    move-object/from16 v0, p0

    iget-object v6, v0, Lahq;->f:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 1353
    const/4 v6, 0x0

    :cond_f
    move v7, v6

    .line 1355
    goto/16 :goto_4

    .line 1298
    :cond_10
    const/4 v9, 0x0

    goto :goto_7

    .line 1306
    :cond_11
    new-instance v9, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;

    invoke-direct {v9}, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;-><init>()V

    .line 1307
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v9, v15}, Lahq;->a(Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;Z)V

    .line 1308
    new-instance v15, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;

    invoke-direct {v15}, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;-><init>()V

    .line 1309
    invoke-virtual {v9}, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->getAction()I

    move-result v19

    const/16 v20, 0x7

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_12

    .line 1310
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v9, v15}, Lahq;->b(Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;Z)V

    .line 1319
    :goto_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lahq;->f:Ljava/util/List;

    new-instance v19, Lahq$a;

    invoke-virtual {v9}, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->getAction()I

    move-result v9

    iget-wide v0, v6, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->_id:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-direct {v0, v9, v1, v2}, Lahq$a;-><init>(IJ)V

    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 1312
    :cond_12
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v6, v15, v1}, Lahq;->a(Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;Lcom/alibaba/alimei/restfulapi/data/calendar/Event;Z)V

    .line 1313
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 1314
    move-object/from16 v0, v19

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1315
    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->setEvent(Ljava/util/List;)V

    .line 1316
    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 1334
    :cond_13
    move-object/from16 v0, p0

    iget-object v6, v0, Lahq;->f:Ljava/util/List;

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1335
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "calendar remove mainOps action = "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->getAction()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lzb;->d(Ljava/lang/String;)I

    goto/16 :goto_9

    .line 1357
    :cond_14
    if-nez v7, :cond_4

    .line 1358
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 1359
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lahq;->a(Ljava/util/List;)V

    .line 1360
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lahq;->e:Z

    goto/16 :goto_3

    .line 188
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lahq;->f()V

    .line 190
    const/4 v6, 0x1

    return v6

    :cond_16
    move v6, v7

    goto/16 :goto_a
.end method

.method protected abstract f()V
.end method

.method protected abstract g()Ljava/lang/String;
.end method
