.class public final Liwm;
.super Ljava/lang/Object;
.source "TimeZoneConverter.java"


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/TimeZone;

.field private static final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 47
    const-string/jumbo v1, "^[+-]?[0-9]{1,2}:[0-9]{2}(:[0-9]{2})?$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Liwm;->a:Ljava/util/regex/Pattern;

    .line 50
    new-instance v1, Ljava/util/SimpleTimeZone;

    const-string/jumbo v3, "UTC"

    invoke-direct {v1, v2, v3}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    sput-object v1, Liwm;->b:Ljava/util/TimeZone;

    .line 54
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v1, Liwm;->b:Ljava/util/TimeZone;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 55
    .local v0, "c":Ljava/util/GregorianCalendar;
    const/16 v1, 0x7d0

    const/4 v3, 0x1

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 56
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    sput-wide v2, Liwm;->c:J

    .line 57
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    return-void
.end method

.method public static synthetic a()J
    .locals 2

    .prologue
    .line 41
    sget-wide v0, Liwm;->c:J

    return-wide v0
.end method
