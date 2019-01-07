.class public final Lagi;
.super Ljava/lang/Object;
.source "RecurrenceSet.java"


# static fields
.field private static final e:Ljava/util/regex/Pattern;

.field private static final f:Ljava/util/regex/Pattern;


# instance fields
.field public a:[Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;

.field public b:[J

.field public c:[Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;

.field public d:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 233
    const-string/jumbo v0, "(?:\\r\\n?|\\n)[ \t]"

    .line 234
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lagi;->e:Ljava/util/regex/Pattern;

    .line 236
    const-string/jumbo v0, ".{75}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lagi;->f:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentValues;)V
    .locals 5
    .param p1, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$InvalidFormatException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v4, p0, Lagi;->a:[Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;

    .line 43
    iput-object v4, p0, Lagi;->b:[J

    .line 44
    iput-object v4, p0, Lagi;->c:[Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;

    .line 45
    iput-object v4, p0, Lagi;->d:[J

    .line 54
    const-string/jumbo v4, "rrule"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, "rruleStr":Ljava/lang/String;
    const-string/jumbo v4, "rdate"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "rdateStr":Ljava/lang/String;
    const-string/jumbo v4, "exrule"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "exruleStr":Ljava/lang/String;
    const-string/jumbo v4, "exdate"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "exdateStr":Ljava/lang/String;
    invoke-direct {p0, v3, v2, v1, v0}, Lagi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "rruleStr"    # Ljava/lang/String;
    .param p2, "rdateStr"    # Ljava/lang/String;
    .param p3, "exruleStr"    # Ljava/lang/String;
    .param p4, "exdateStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$InvalidFormatException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v0, p0, Lagi;->a:[Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;

    .line 43
    iput-object v0, p0, Lagi;->b:[J

    .line 44
    iput-object v0, p0, Lagi;->c:[Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;

    .line 45
    iput-object v0, p0, Lagi;->d:[J

    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Lagi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
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
            Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$InvalidFormatException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 70
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 72
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 73
    const-string/jumbo v5, "\n"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, "rruleStrs":[Ljava/lang/String;
    array-length v5, v4

    new-array v5, v5, [Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;

    iput-object v5, p0, Lagi;->a:[Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;

    .line 75
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_1

    .line 76
    new-instance v3, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;

    invoke-direct {v3}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;-><init>()V

    .line 77
    .local v3, "rrule":Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;
    aget-object v5, v4, v2

    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->b(Ljava/lang/String;)V

    .line 78
    iget-object v5, p0, Lagi;->a:[Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;

    aput-object v3, v5, v2

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    .end local v2    # "i":I
    .end local v3    # "rrule":Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;
    .end local v4    # "rruleStrs":[Ljava/lang/String;
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 83
    invoke-static {p2}, Lagi;->a(Ljava/lang/String;)[J

    move-result-object v5

    iput-object v5, p0, Lagi;->b:[J

    .line 86
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 87
    const-string/jumbo v5, "\n"

    invoke-virtual {p3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "exruleStrs":[Ljava/lang/String;
    array-length v5, v1

    new-array v5, v5, [Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;

    iput-object v5, p0, Lagi;->c:[Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;

    .line 89
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    array-length v5, v1

    if-ge v2, v5, :cond_3

    .line 90
    new-instance v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;-><init>()V

    .line 91
    .local v0, "exrule":Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;
    invoke-virtual {v0, p3}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->b(Ljava/lang/String;)V

    .line 92
    iget-object v5, p0, Lagi;->c:[Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;

    aput-object v0, v5, v2

    .line 89
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 96
    .end local v0    # "exrule":Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;
    .end local v1    # "exruleStrs":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_3
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 97
    invoke-static {p4}, Lagi;->a(Ljava/lang/String;)[J

    move-result-object v5

    iput-object v5, p0, Lagi;->d:[J

    .line 100
    :cond_4
    return-void
.end method

.method private static a(Ljava/lang/String;)[J
    .locals 11
    .param p0, "recurrence"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$InvalidFormatException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 120
    const-string/jumbo v5, "UTC"

    .line 121
    .local v5, "tz":Ljava/lang/String;
    const-string/jumbo v7, ";"

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 122
    .local v6, "tzidx":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 123
    invoke-virtual {p0, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 124
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 126
    :cond_0
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 127
    .local v4, "time":Landroid/text/format/Time;
    const-string/jumbo v7, ","

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, "rawDates":[Ljava/lang/String;
    array-length v2, v3

    .line 129
    .local v2, "n":I
    new-array v0, v2, [J

    .line 130
    .local v0, "dates":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 133
    :try_start_0
    aget-object v7, v3, v1

    invoke-virtual {v4, v7}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/util/TimeFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    invoke-virtual {v4, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    aput-wide v8, v0, v1

    .line 141
    iput-object v5, v4, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    :catch_0
    move-exception v7

    new-instance v7, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$InvalidFormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "TimeFormatException thrown when parsing time "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v9, v3, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " in recurrence "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 143
    :cond_1
    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lagi;->a:[Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;

    if-nez v0, :cond_0

    iget-object v0, p0, Lagi;->b:[J

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
