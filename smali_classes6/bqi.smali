.class public final Lbqi;
.super Ljava/lang/Object;
.source "CircleTimeUtils.java"


# static fields
.field private static final a:Ljava/text/SimpleDateFormat;

.field private static final b:Ljava/text/SimpleDateFormat;

.field private static final c:Ljava/text/SimpleDateFormat;

.field private static final d:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lbqi;->a:Ljava/text/SimpleDateFormat;

    .line 28
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lbqi;->b:Ljava/text/SimpleDateFormat;

    .line 29
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lbqi;->c:Ljava/text/SimpleDateFormat;

    .line 30
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 4033
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 30
    sget v2, Lbpu$f;->dt_mmdd_hhmm:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lbqi;->d:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(J)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 148
    .line 3163
    sget-object v0, Lbqi;->c:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1, v0}, Lbqi;->a(JLjava/text/SimpleDateFormat;)Z

    move-result v0

    .line 148
    if-eqz v0, :cond_0

    .line 149
    sget-object v0, Lbqi;->d:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 151
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lbqi;->b:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;J)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "createAt"    # J

    .prologue
    const-wide/32 v10, 0xea60

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 38
    if-eqz p0, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v1, p1, v6

    if-gtz v1, :cond_1

    .line 39
    :cond_0
    const-string/jumbo v1, ""

    .line 66
    :goto_0
    return-object v1

    .line 42
    :cond_1
    invoke-static {}, Lcms;->u()J

    move-result-wide v2

    .line 43
    .local v2, "now":J
    sub-long v4, v2, p1

    .line 46
    .local v4, "timeInterval":J
    cmp-long v1, v4, v10

    if-gez v1, :cond_2

    .line 47
    sget v1, Lbpu$f;->dt_time_justment:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 50
    :cond_2
    const-wide/32 v6, 0x36ee80

    cmp-long v1, v4, v6

    if-gez v1, :cond_3

    .line 51
    sget v1, Lbpu$f;->dt_circle_minutes_ago:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "fmt":Ljava/lang/String;
    new-array v1, v9, [Ljava/lang/Object;

    div-long v6, v4, v10

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 55
    .end local v0    # "fmt":Ljava/lang/String;
    :cond_3
    const-wide/32 v6, 0x5265c00

    cmp-long v1, v4, v6

    if-gez v1, :cond_4

    .line 1159
    sget-object v1, Lbqi;->b:Ljava/text/SimpleDateFormat;

    invoke-static {p1, p2, v1}, Lbqi;->a(JLjava/text/SimpleDateFormat;)Z

    move-result v1

    .line 56
    if-eqz v1, :cond_4

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Lbpu$f;->dt_circle_today_time:I

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v6, Lbqi;->a:Ljava/text/SimpleDateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 62
    :cond_4
    :try_start_0
    sget-object v1, Lbqi;->d:Ljava/text/SimpleDateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 64
    :catch_0
    move-exception v1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v6, "meidusha key error: "

    aput-object v6, v1, v8

    sget-object v6, Lbqi;->d:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v9

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2076
    invoke-static {v8, v1}, Lbqh;->a(ZLjava/lang/String;)V

    .line 66
    const-string/jumbo v1, ""

    goto/16 :goto_0
.end method

.method private static a(JLjava/text/SimpleDateFormat;)Z
    .locals 6
    .param p0, "time"    # J
    .param p2, "sdf"    # Ljava/text/SimpleDateFormat;

    .prologue
    .line 167
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 168
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "param":Ljava/lang/String;
    invoke-static {}, Lcms;->u()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "now":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method public static b(Landroid/content/Context;J)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "createAt"    # J

    .prologue
    .line 71
    if-eqz p0, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v1, p1, v6

    if-gtz v1, :cond_1

    .line 72
    :cond_0
    const-string/jumbo v1, ""

    .line 95
    :goto_0
    return-object v1

    .line 75
    :cond_1
    invoke-static {}, Lcms;->u()J

    move-result-wide v2

    .line 76
    .local v2, "now":J
    sub-long v4, v2, p1

    .line 79
    .local v4, "timeInterval":J
    const-wide/32 v6, 0xea60

    cmp-long v1, v4, v6

    if-gez v1, :cond_2

    .line 80
    sget v1, Lbpu$f;->dt_time_justment:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 84
    :cond_2
    const-wide/32 v6, 0x36ee80

    cmp-long v1, v4, v6

    if-gez v1, :cond_3

    .line 85
    sget v1, Lbpu$f;->dt_circle_minutes_ago:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "fmt":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-wide/32 v8, 0xea60

    div-long v8, v4, v8

    long-to-int v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 90
    .end local v0    # "fmt":Ljava/lang/String;
    :cond_3
    const-wide/32 v6, 0x5265c00

    cmp-long v1, v4, v6

    if-gez v1, :cond_4

    .line 91
    sget v1, Lbpu$f;->dt_circle_hours_ago:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-wide/32 v8, 0x36ee80

    div-long v8, v4, v8

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 95
    :cond_4
    sget v1, Lbpu$f;->dt_circle_days_ago:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-wide/32 v8, 0x5265c00

    div-long v8, v4, v8

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "createAt"    # J

    .prologue
    .line 99
    if-eqz p0, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-gtz v5, :cond_1

    .line 100
    :cond_0
    const-string/jumbo v5, ""

    .line 114
    :goto_0
    return-object v5

    .line 103
    :cond_1
    invoke-static {}, Lcms;->u()J

    move-result-wide v2

    .line 105
    .local v2, "now":J
    sget-object v5, Lbqi;->b:Ljava/text/SimpleDateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "theDay":Ljava/lang/String;
    sget-object v5, Lbqi;->b:Ljava/text/SimpleDateFormat;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 107
    .local v4, "today":Ljava/lang/String;
    sget-object v5, Lbqi;->b:Ljava/text/SimpleDateFormat;

    const-wide/32 v6, 0x5265c00

    sub-long v6, v2, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "lastDay":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 109
    sget v5, Lbpu$f;->dt_im_datepicker_days_today:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 110
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 111
    sget v5, Lbpu$f;->dt_time_yesterday:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 114
    :cond_3
    invoke-static {p1, p2}, Lcog;->m(J)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;J)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "createAt"    # J

    .prologue
    const-wide/32 v8, 0xea60

    .line 118
    if-eqz p0, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v1, p1, v6

    if-gtz v1, :cond_1

    .line 119
    :cond_0
    const-string/jumbo v1, ""

    .line 144
    :goto_0
    return-object v1

    .line 122
    :cond_1
    invoke-static {}, Lcms;->u()J

    move-result-wide v2

    .line 123
    .local v2, "now":J
    sub-long v4, v2, p1

    .line 126
    .local v4, "timeInterval":J
    cmp-long v1, v4, v8

    if-gez v1, :cond_2

    .line 127
    sget v1, Lbpu$f;->dt_time_justment:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 131
    :cond_2
    const-wide/32 v6, 0x36ee80

    cmp-long v1, v4, v6

    if-gez v1, :cond_3

    .line 132
    sget v1, Lbpu$f;->dt_circle_minutes_ago:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "fmt":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    div-long v8, v4, v8

    long-to-int v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2159
    .end local v0    # "fmt":Ljava/lang/String;
    :cond_3
    sget-object v1, Lbqi;->b:Ljava/text/SimpleDateFormat;

    invoke-static {p1, p2, v1}, Lbqi;->a(JLjava/text/SimpleDateFormat;)Z

    move-result v1

    .line 136
    if-eqz v1, :cond_4

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Lbpu$f;->dt_circle_today_time:I

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v6, Lbqi;->a:Ljava/text/SimpleDateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 3155
    :cond_4
    const-wide/32 v6, 0x5265c00

    add-long/2addr v6, p1

    sget-object v1, Lbqi;->b:Ljava/text/SimpleDateFormat;

    invoke-static {v6, v7, v1}, Lbqi;->a(JLjava/text/SimpleDateFormat;)Z

    move-result v1

    .line 140
    if-eqz v1, :cond_5

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Lbpu$f;->dt_time_yesterday:I

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v6, Lbqi;->a:Ljava/text/SimpleDateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 144
    :cond_5
    sget-object v1, Lbqi;->d:Ljava/text/SimpleDateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method
