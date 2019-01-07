.class public final Latd;
.super Ljava/lang/Object;
.source "RecurrenceSet.java"


# instance fields
.field public a:[Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;

.field public b:[J

.field public c:[Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;

.field public d:[J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "rruleStr"    # Ljava/lang/String;
    .param p2, "rdateStr"    # Ljava/lang/String;
    .param p3, "exruleStr"    # Ljava/lang/String;
    .param p4, "exdateStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$InvalidFormatException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v0, p0, Latd;->a:[Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;

    .line 34
    iput-object v0, p0, Latd;->b:[J

    .line 35
    iput-object v0, p0, Latd;->c:[Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;

    .line 36
    iput-object v0, p0, Latd;->d:[J

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Latd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "rruleStr"    # Ljava/lang/String;
    .param p2, "rdateStr"    # Ljava/lang/String;
    .param p3, "exruleStr"    # Ljava/lang/String;
    .param p4, "exdateStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$InvalidFormatException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 51
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 52
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 53
    const-string/jumbo v5, "\n"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 54
    .local v4, "rruleStrs":[Ljava/lang/String;
    array-length v5, v4

    new-array v5, v5, [Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;

    iput-object v5, p0, Latd;->a:[Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;

    .line 55
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_1

    .line 56
    new-instance v3, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;

    invoke-direct {v3}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;-><init>()V

    .line 57
    .local v3, "rrule":Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;
    aget-object v5, v4, v2

    invoke-virtual {v3, v5}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->b(Ljava/lang/String;)V

    .line 58
    iget-object v5, p0, Latd;->a:[Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;

    aput-object v3, v5, v2

    .line 55
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    .end local v2    # "i":I
    .end local v3    # "rrule":Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;
    .end local v4    # "rruleStrs":[Ljava/lang/String;
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 62
    invoke-static {p2}, Latd;->a(Ljava/lang/String;)[J

    move-result-object v5

    iput-object v5, p0, Latd;->b:[J

    .line 64
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 65
    const-string/jumbo v5, "\n"

    invoke-virtual {p3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "exruleStrs":[Ljava/lang/String;
    array-length v5, v1

    new-array v5, v5, [Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;

    iput-object v5, p0, Latd;->c:[Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;

    .line 67
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    array-length v5, v1

    if-ge v2, v5, :cond_3

    .line 68
    new-instance v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;

    invoke-direct {v0}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;-><init>()V

    .line 69
    .local v0, "exrule":Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;
    invoke-virtual {v0, p3}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->b(Ljava/lang/String;)V

    .line 70
    iget-object v5, p0, Latd;->c:[Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;

    aput-object v0, v5, v2

    .line 67
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 73
    .end local v0    # "exrule":Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;
    .end local v1    # "exruleStrs":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_3
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 74
    invoke-static {p4}, Latd;->a(Ljava/lang/String;)[J

    move-result-object v5

    iput-object v5, p0, Latd;->d:[J

    .line 77
    :cond_4
    return-void
.end method

.method private static a(Ljava/lang/String;)[J
    .locals 11
    .param p0, "recurrence"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$InvalidFormatException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 99
    const-string/jumbo v5, "UTC"

    .line 100
    .local v5, "tz":Ljava/lang/String;
    const-string/jumbo v7, ";"

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 101
    .local v6, "tzidx":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 102
    invoke-virtual {p0, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 103
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 105
    :cond_0
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 106
    .local v4, "time":Landroid/text/format/Time;
    const-string/jumbo v7, ","

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, "rawDates":[Ljava/lang/String;
    array-length v2, v3

    .line 108
    .local v2, "n":I
    new-array v0, v2, [J

    .line 109
    .local v0, "dates":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 112
    :try_start_0
    aget-object v7, v3, v1

    invoke-virtual {v4, v7}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/util/TimeFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    invoke-virtual {v4, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    aput-wide v8, v0, v1

    .line 121
    iput-object v5, v4, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    :catch_0
    move-exception v7

    new-instance v7, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$InvalidFormatException;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "TimeFormatException thrown when parsing time "

    aput-object v9, v8, v10

    const/4 v9, 0x1

    aget-object v10, v3, v1

    .line 116
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v10, " in recurrence "

    aput-object v10, v8, v9

    const/4 v9, 0x3

    .line 118
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 114
    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 123
    :cond_1
    return-object v0
.end method
