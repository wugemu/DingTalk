.class public final Lcrz;
.super Ljava/lang/Object;
.source "CalendarUtils.java"


# static fields
.field private static a:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Lcrz;->a()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcrz;->a:Ljava/util/Calendar;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(III)I
    .locals 2
    .param p0, "displayYear"    # I
    .param p1, "displayMonth"    # I
    .param p2, "displayDay"    # I

    .prologue
    .line 43
    add-int/lit8 v0, p0, -0x1

    mul-int/lit16 v0, v0, 0x2710

    add-int/lit8 v1, p1, -0x1

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    add-int/lit8 v1, p2, -0x1

    add-int/2addr v0, v1

    return v0
.end method

.method public static a(J)I
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 47
    sget-object v0, Lcrz;->a:Ljava/util/Calendar;

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 48
    sget-object v0, Lcrz;->a:Ljava/util/Calendar;

    invoke-static {v0}, Lcrz;->a(Ljava/util/Calendar;)I

    move-result v0

    return v0
.end method

.method private static a(Ljava/util/Calendar;)I
    .locals 2
    .param p0, "cal"    # Ljava/util/Calendar;

    .prologue
    .line 36
    if-nez p0, :cond_0

    .line 37
    invoke-static {}, Lcrz;->a()Ljava/util/Calendar;

    move-result-object p0

    .line 39
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    mul-int/lit16 v0, v0, 0x2710

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public static a(I)J
    .locals 2
    .param p0, "dataInt"    # I

    .prologue
    .line 31
    sget-object v0, Lcrz;->a:Ljava/util/Calendar;

    invoke-static {v0, p0}, Lcrz;->a(Ljava/util/Calendar;I)V

    .line 32
    sget-object v0, Lcrz;->a:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static a()Ljava/util/Calendar;
    .locals 4

    .prologue
    .line 16
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 17
    .local v0, "cal":Ljava/util/Calendar;
    const-string/jumbo v1, "GMT+8"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 18
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 19
    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 20
    return-object v0
.end method

.method public static a(Ljava/util/Calendar;I)V
    .locals 7
    .param p0, "cal"    # Ljava/util/Calendar;
    .param p1, "dayInt"    # I

    .prologue
    const/4 v4, 0x0

    .line 24
    if-eqz p0, :cond_0

    .line 25
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1061
    div-int/lit16 v0, p1, 0x2710

    add-int/lit8 v1, v0, 0x1

    .line 26
    invoke-static {p1}, Lcrz;->d(I)I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    .line 1069
    rem-int/lit8 v0, p1, 0x64

    add-int/lit8 v3, v0, 0x1

    move-object v0, p0

    move v5, v4

    move v6, v4

    .line 26
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 28
    :cond_0
    return-void
.end method

.method public static a(II)Z
    .locals 2
    .param p0, "dateInt1"    # I
    .param p1, "dateInt2"    # I

    .prologue
    .line 73
    div-int/lit8 v0, p0, 0x64

    div-int/lit8 v1, p1, 0x64

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()I
    .locals 2

    .prologue
    .line 52
    sget-object v0, Lcrz;->a:Ljava/util/Calendar;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 53
    sget-object v0, Lcrz;->a:Ljava/util/Calendar;

    invoke-static {v0}, Lcrz;->a(Ljava/util/Calendar;)I

    move-result v0

    return v0
.end method

.method public static b(I)I
    .locals 1
    .param p0, "dayInt"    # I

    .prologue
    .line 57
    div-int/lit8 v0, p0, 0x64

    mul-int/lit8 v0, v0, 0x64

    return v0
.end method

.method public static b(II)I
    .locals 3
    .param p0, "monthInt1"    # I
    .param p1, "monthInt2"    # I

    .prologue
    .line 77
    div-int/lit16 v1, p0, 0x2710

    mul-int/lit8 v1, v1, 0xc

    rem-int/lit16 v2, p0, 0x2710

    div-int/lit8 v2, v2, 0x64

    add-int v0, v1, v2

    .line 79
    .local v0, "month1":I
    add-int/lit16 v1, v0, -0x5e6c

    return v1
.end method

.method public static c(I)I
    .locals 1
    .param p0, "dateInt"    # I

    .prologue
    .line 61
    div-int/lit16 v0, p0, 0x2710

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static c(II)I
    .locals 3
    .param p0, "monthInt"    # I
    .param p1, "num"    # I

    .prologue
    .line 83
    div-int/lit16 v1, p0, 0x2710

    mul-int/lit8 v1, v1, 0xc

    rem-int/lit16 v2, p0, 0x2710

    div-int/lit8 v2, v2, 0x64

    add-int v0, v1, v2

    .line 84
    .local v0, "month":I
    add-int/2addr v0, p1

    .line 85
    div-int/lit8 v1, v0, 0xc

    mul-int/lit16 v1, v1, 0x2710

    rem-int/lit8 v2, v0, 0xc

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    return v1
.end method

.method public static d(I)I
    .locals 1
    .param p0, "dateInt"    # I

    .prologue
    .line 65
    rem-int/lit16 v0, p0, 0x2710

    div-int/lit8 v0, v0, 0x64

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static e(I)I
    .locals 1
    .param p0, "dateInt"    # I

    .prologue
    .line 69
    rem-int/lit8 v0, p0, 0x64

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
