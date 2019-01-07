.class public final Lkny;
.super Ljava/lang/Object;
.source "HttpDate.java"


# static fields
.field private static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xf

    .line 37
    new-instance v0, Lkny$1;

    invoke-direct {v0}, Lkny$1;-><init>()V

    sput-object v0, Lkny;->a:Ljava/lang/ThreadLocal;

    .line 49
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "EEE, dd MMM yyyy HH:mm:ss zzz"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "EEEE, dd-MMM-yy HH:mm:ss zzz"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "EEE MMM d HH:mm:ss yyyy"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "EEE, dd-MMM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "EEE, dd-MMM-yyyy HH-mm-ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "EEE, dd MMM yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "EEE dd-MMM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "EEE dd MMM yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "EEE dd-MMM-yyyy HH-mm-ss z"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "EEE dd-MMM-yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "EEE dd MMM yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "EEE,dd-MMM-yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "EEE,dd-MMM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "EEE, dd-MM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "EEE MMM d yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    sput-object v0, Lkny;->b:[Ljava/lang/String;

    .line 71
    new-array v0, v3, [Ljava/text/DateFormat;

    sput-object v0, Lkny;->c:[Ljava/text/DateFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    return-void
.end method

.method public static a(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/util/Date;

    .prologue
    .line 114
    sget-object v0, Lkny;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/Date;
    .locals 8
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 76
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    move-object v3, v5

    .line 109
    :cond_0
    :goto_0
    return-object v3

    .line 80
    :cond_1
    new-instance v2, Ljava/text/ParsePosition;

    invoke-direct {v2, v6}, Ljava/text/ParsePosition;-><init>(I)V

    .line 81
    .local v2, "position":Ljava/text/ParsePosition;
    sget-object v4, Lkny;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/text/DateFormat;

    invoke-virtual {v4, p0, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v3

    .line 82
    .local v3, "result":Ljava/util/Date;
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v4, v6, :cond_0

    .line 87
    sget-object v6, Lkny;->b:[Ljava/lang/String;

    monitor-enter v6

    .line 88
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/16 v4, 0xf

    if-ge v1, v4, :cond_4

    .line 89
    :try_start_0
    sget-object v4, Lkny;->c:[Ljava/text/DateFormat;

    aget-object v0, v4, v1

    .line 90
    .local v0, "format":Ljava/text/DateFormat;
    if-nez v0, :cond_2

    .line 91
    new-instance v0, Ljava/text/SimpleDateFormat;

    .end local v0    # "format":Ljava/text/DateFormat;
    sget-object v4, Lkny;->b:[Ljava/lang/String;

    aget-object v4, v4, v1

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 94
    .restart local v0    # "format":Ljava/text/DateFormat;
    sget-object v4, Lknj;->g:Ljava/util/TimeZone;

    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 95
    sget-object v4, Lkny;->c:[Ljava/text/DateFormat;

    aput-object v0, v4, v1

    .line 97
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 98
    invoke-virtual {v0, p0, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v3

    .line 99
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    if-eqz v4, :cond_3

    .line 105
    monitor-exit v6

    goto :goto_0

    .line 108
    .end local v0    # "format":Ljava/text/DateFormat;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 88
    .restart local v0    # "format":Ljava/text/DateFormat;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 108
    .end local v0    # "format":Ljava/text/DateFormat;
    :cond_4
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v5

    .line 109
    goto :goto_0
.end method
