.class public Lcog;
.super Ljava/lang/Object;
.source "DateUtil.java"


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcog;->a:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcog;->b:Ljava/util/HashMap;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcog;->c:Ljava/util/HashMap;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcog;->d:Ljava/util/HashMap;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcog;->e:Ljava/util/HashMap;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcog;->f:Ljava/util/HashMap;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcog;->g:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(J)Ljava/lang/String;
    .locals 18
    .param p0, "targetDate"    # J

    .prologue
    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 140
    .local v6, "currentTime":J
    const-wide/32 v16, 0xea60

    sub-long v10, v6, v16

    .line 141
    .local v10, "justNow":J
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v15

    invoke-virtual {v15}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    .line 142
    .local v3, "context":Landroid/content/Context;
    cmp-long v15, p0, v10

    if-lez v15, :cond_0

    .line 144
    sget v15, Lcig$j;->calendar_just_now:I

    invoke-virtual {v3, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 172
    :goto_0
    return-object v9

    .line 149
    :cond_0
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v2

    .line 150
    .local v2, "calendar":Ljava/util/Calendar;
    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 152
    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 153
    .local v8, "currentYear":I
    const/4 v15, 0x2

    invoke-virtual {v2, v15}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 154
    .local v5, "currentMonth":I
    const/4 v15, 0x5

    invoke-virtual {v2, v15}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 156
    .local v4, "currentDay":I
    move-wide/from16 v0, p0

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 157
    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 158
    .local v14, "targetYear":I
    const/4 v15, 0x2

    invoke-virtual {v2, v15}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 159
    .local v13, "targetMonth":I
    const/4 v15, 0x5

    invoke-virtual {v2, v15}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 161
    .local v12, "targetDay":I
    if-eq v8, v14, :cond_1

    .line 162
    invoke-static/range {p0 .. p1}, Lcog;->g(J)Ljava/lang/String;

    move-result-object v9

    .local v9, "result":Ljava/lang/String;
    goto :goto_0

    .line 164
    .end local v9    # "result":Ljava/lang/String;
    :cond_1
    if-ne v12, v4, :cond_2

    if-ne v5, v13, :cond_2

    .line 165
    invoke-static/range {p0 .. p1}, Lcog;->e(J)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "result":Ljava/lang/String;
    goto :goto_0

    .line 166
    .end local v9    # "result":Ljava/lang/String;
    :cond_2
    const/4 v15, 0x1

    sub-int v16, v4, v12

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    if-ne v5, v13, :cond_3

    .line 167
    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    sget v17, Lcig$j;->calendar_yesterday:I

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-string/jumbo v17, " "

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-static/range {p0 .. p1}, Lcog;->e(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v15}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "result":Ljava/lang/String;
    goto :goto_0

    .line 169
    .end local v9    # "result":Ljava/lang/String;
    :cond_3
    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    invoke-static/range {p0 .. p1}, Lcog;->f(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-string/jumbo v17, " "

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-static/range {p0 .. p1}, Lcog;->e(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v15}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "result":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public static a(JLandroid/content/Context;)Ljava/lang/String;
    .locals 12
    .param p0, "targetDate"    # J
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 782
    const-wide/16 v10, 0x0

    cmp-long v9, p0, v10

    if-gez v9, :cond_0

    .line 783
    const-string/jumbo v9, "Invalid"

    .line 806
    :goto_0
    return-object v9

    .line 785
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 786
    .local v4, "now":J
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v0

    .line 787
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 789
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 790
    .local v3, "currentYear":I
    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/lit8 v2, v9, 0x1

    .line 791
    .local v2, "currentMonth":I
    const/4 v9, 0x5

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 793
    .local v1, "currentDay":I
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 794
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 795
    .local v8, "targetYear":I
    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/lit8 v7, v9, 0x1

    .line 796
    .local v7, "targetMonth":I
    const/4 v9, 0x5

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 798
    .local v6, "targetDay":I
    if-ne v3, v8, :cond_2

    if-ne v7, v2, :cond_2

    .line 799
    if-ne v6, v1, :cond_1

    .line 800
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcig$j;->calendar_today:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 801
    :cond_1
    sub-int v9, v1, v6

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 802
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcig$j;->calendar_yesterday:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 806
    :cond_2
    invoke-static {p0, p1}, Lcog;->f(J)Ljava/lang/String;

    move-result-object v9

    goto :goto_0
.end method

.method public static a(JZ)Ljava/lang/String;
    .locals 2
    .param p0, "targetDate"    # J
    .param p2, "isAlwayShowHHMM"    # Z

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcog;->a(JZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(JZZ)Ljava/lang/String;
    .locals 10
    .param p0, "targetDate"    # J
    .param p2, "isAlwayShowHHMM"    # Z
    .param p3, "useCache"    # Z

    .prologue
    const/4 v9, 0x5

    const/4 v7, 0x2

    const/4 v8, 0x1

    .line 200
    .line 2211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2212
    if-eqz p3, :cond_1

    .line 2213
    sget-object v0, Lcog;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    sget-object v0, Lcog;->c:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    sget-object v0, Lcog;->b:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcog;->c:Ljava/util/HashMap;

    .line 2214
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcog;->b:Ljava/util/HashMap;

    .line 2215
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v2, v0

    const-wide/32 v4, 0xdbba0

    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    .line 2217
    sget-object v0, Lcog;->c:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v0

    .line 2223
    :cond_1
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v0

    .line 2224
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2226
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 2227
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 2228
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 2230
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2231
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 2232
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 2233
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 2235
    if-eq v1, v6, :cond_2

    .line 2236
    invoke-static {p0, p1}, Lcog;->g(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2239
    :cond_2
    if-ne v4, v7, :cond_6

    .line 2241
    if-ne v0, v5, :cond_4

    .line 2245
    invoke-static {p0, p1}, Lcog;->c(J)Ljava/lang/String;

    move-result-object v0

    .line 2261
    :goto_1
    if-eqz p3, :cond_0

    .line 2264
    sget-object v1, Lcog;->b:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    sget-object v1, Lcog;->c:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 2265
    sget-object v1, Lcog;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/16 v4, 0x3e8

    if-le v1, v4, :cond_3

    .line 2266
    sget-object v1, Lcog;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 2267
    sget-object v1, Lcog;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 2270
    :cond_3
    sget-object v1, Lcog;->b:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2271
    sget-object v1, Lcog;->c:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2250
    :cond_4
    sub-int v0, v5, v0

    if-ne v8, v0, :cond_5

    .line 2251
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcig$j;->calendar_yesterday:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2253
    :cond_5
    invoke-static {p0, p1}, Lcog;->f(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2258
    :cond_6
    invoke-static {p0, p1}, Lcog;->f(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;J)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "duration"    # J

    .prologue
    const-wide/32 v10, 0x5265c00

    const-wide/32 v8, 0xea60

    const-wide/32 v6, 0x36ee80

    .line 1115
    if-eqz p0, :cond_3

    .line 1116
    cmp-long v3, p1, v8

    if-gtz v3, :cond_0

    .line 1117
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "1"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcig$j;->dt_common_utils_date_min:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1132
    :goto_0
    return-object v3

    .line 1118
    :cond_0
    cmp-long v3, p1, v6

    if-gtz v3, :cond_1

    .line 1119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    div-long v4, p1, v8

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcig$j;->dt_common_utils_date_min:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1120
    :cond_1
    cmp-long v3, p1, v10

    if-gez v3, :cond_2

    .line 1121
    div-long v4, p1, v6

    long-to-int v1, v4

    .line 1122
    .local v1, "hour":I
    rem-long v4, p1, v6

    div-long/2addr v4, v8

    long-to-int v2, v4

    .line 1123
    .local v2, "minutes":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcig$j;->dt_common_utils_date_hour:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcig$j;->dt_common_utils_date_min:I

    .line 1124
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1126
    .end local v1    # "hour":I
    .end local v2    # "minutes":I
    :cond_2
    div-long v4, p1, v10

    long-to-int v0, v4

    .line 1127
    .local v0, "day":I
    rem-long v4, p1, v10

    div-long/2addr v4, v6

    long-to-int v1, v4

    .line 1128
    .restart local v1    # "hour":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcig$j;->dt_common_utils_date_day:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcig$j;->dt_common_utils_date_hour:I

    .line 1129
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1132
    .end local v0    # "day":I
    .end local v1    # "hour":I
    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcog;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Lcog;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 54
    :cond_0
    sget-object v0, Lcog;->c:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 55
    sget-object v0, Lcog;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 58
    :cond_1
    sget-object v0, Lcog;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 59
    sget-object v0, Lcog;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 61
    sget-object v0, Lcog;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 62
    sget-object v0, Lcog;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 63
    return-void
.end method

.method public static a(JJ)Z
    .locals 4
    .param p0, "timeMillis1"    # J
    .param p2, "timeMillis2"    # J

    .prologue
    .line 1084
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1085
    .local v0, "calendar1":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1086
    .local v1, "calendar2":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1087
    invoke-virtual {v1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1088
    invoke-static {v0, v1}, Lcog;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v2

    return v2
.end method

.method public static a(Ljava/util/Calendar;)Z
    .locals 4
    .param p0, "calendar"    # Ljava/util/Calendar;

    .prologue
    const/4 v1, 0x1

    .line 1077
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1078
    .local v0, "oneYearAfterCalendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1079
    invoke-virtual {v0, v1, v1}, Ljava/util/Calendar;->add(II)V

    .line 1080
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static a(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 5
    .param p0, "calendar1"    # Ljava/util/Calendar;
    .param p1, "calendar2"    # Ljava/util/Calendar;

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x2

    const/4 v0, 0x1

    .line 1092
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1093
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1094
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final b(J)Ljava/lang/String;
    .locals 2
    .param p0, "targetDate"    # J

    .prologue
    .line 464
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const v1, 0x8002

    invoke-static {v0, p0, p1, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 467
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {p0, p1}, Lcog;->k(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(JJ)Ljava/lang/String;
    .locals 12
    .param p0, "startDate"    # J
    .param p2, "endDate"    # J

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1254
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v0

    .line 1255
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1257
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 1258
    .local v5, "startYear":I
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1260
    .local v4, "startDay":I
    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1261
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1262
    .local v2, "endYear":I
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1264
    .local v1, "endDay":I
    if-eq v5, v2, :cond_0

    .line 1265
    new-array v6, v6, [Ljava/lang/String;

    invoke-static {p0, p1}, Lcog;->x(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const-string/jumbo v7, "~"

    aput-object v7, v6, v8

    invoke-static {p2, p3}, Lcog;->x(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1274
    .local v3, "result":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 1267
    .end local v3    # "result":Ljava/lang/String;
    :cond_0
    if-ne v4, v1, :cond_1

    .line 1268
    new-array v6, v6, [Ljava/lang/String;

    invoke-static {p0, p1, v9}, Lcog;->d(JZ)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const-string/jumbo v7, "~"

    aput-object v7, v6, v8

    invoke-static {p2, p3}, Lcog;->e(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_0

    .line 1270
    .end local v3    # "result":Ljava/lang/String;
    :cond_1
    new-array v6, v6, [Ljava/lang/String;

    invoke-static {p0, p1}, Lcog;->t(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const-string/jumbo v7, "~"

    aput-object v7, v6, v8

    invoke-static {p2, p3}, Lcog;->t(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public static b(JLandroid/content/Context;)Ljava/lang/String;
    .locals 12
    .param p0, "targetDate"    # J
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 811
    const-wide/16 v10, 0x0

    cmp-long v9, p0, v10

    if-gez v9, :cond_0

    .line 812
    const-string/jumbo v9, ""

    .line 835
    :goto_0
    return-object v9

    .line 814
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 815
    .local v4, "now":J
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v0

    .line 816
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 818
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 819
    .local v3, "currentYear":I
    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/lit8 v2, v9, 0x1

    .line 820
    .local v2, "currentMonth":I
    const/4 v9, 0x5

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 822
    .local v1, "currentDay":I
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 823
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 824
    .local v8, "targetYear":I
    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/lit8 v7, v9, 0x1

    .line 825
    .local v7, "targetMonth":I
    const/4 v9, 0x5

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 827
    .local v6, "targetDay":I
    if-ne v3, v8, :cond_2

    if-ne v7, v2, :cond_2

    .line 828
    if-ne v6, v1, :cond_1

    .line 829
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcig$j;->calendar_today:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 830
    :cond_1
    sub-int v9, v1, v6

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 831
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcig$j;->calendar_yesterday:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 835
    :cond_2
    invoke-static {p0, p1}, Lcog;->v(J)Ljava/lang/String;

    move-result-object v9

    goto :goto_0
.end method

.method public static b(JZ)Ljava/lang/String;
    .locals 14
    .param p0, "targetDate"    # J
    .param p2, "forceUse24HourFormat"    # Z

    .prologue
    .line 286
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 290
    .local v4, "currentTime":J
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v0

    .line 291
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 293
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 294
    .local v3, "currentYear":I
    const/4 v10, 0x2

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 295
    .local v2, "currentMonth":I
    const/4 v10, 0x5

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 297
    .local v1, "currentDay":I
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 298
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 299
    .local v9, "targetYear":I
    const/4 v10, 0x2

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 300
    .local v8, "targetMonth":I
    const/4 v10, 0x5

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 302
    .local v7, "targetDay":I
    if-eq v3, v9, :cond_0

    .line 303
    const/4 v10, 0x1

    invoke-static {p0, p1, v10}, Lcog;->h(JZ)Ljava/lang/String;

    move-result-object v6

    .line 321
    .local v6, "result":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 305
    .end local v6    # "result":Ljava/lang/String;
    :cond_0
    if-ne v2, v8, :cond_3

    .line 306
    if-ne v7, v1, :cond_1

    .line 307
    const/4 v10, 0x1

    invoke-static {p0, p1, v10}, Lcog;->g(JZ)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "result":Ljava/lang/String;
    goto :goto_0

    .line 309
    .end local v6    # "result":Ljava/lang/String;
    :cond_1
    const/4 v10, 0x1

    sub-int v11, v1, v7

    if-ne v10, v11, :cond_2

    .line 310
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    .line 311
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v11

    invoke-virtual {v11}, Lcid;->c()Landroid/app/Application;

    move-result-object v11

    sget v12, Lcig$j;->calendar_yesterday:I

    invoke-virtual {v11, v12}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 310
    invoke-virtual {v10, v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    .line 312
    invoke-virtual {v10, v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {p0, p1, v11}, Lcog;->g(JZ)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "result":Ljava/lang/String;
    goto :goto_0

    .line 314
    .end local v6    # "result":Ljava/lang/String;
    :cond_2
    const/4 v10, 0x1

    invoke-static {p0, p1, v10}, Lcog;->f(JZ)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "result":Ljava/lang/String;
    goto :goto_0

    .line 318
    .end local v6    # "result":Ljava/lang/String;
    :cond_3
    const/4 v10, 0x1

    invoke-static {p0, p1, v10}, Lcog;->f(JZ)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public static c(JJ)I
    .locals 10
    .param p0, "fromMills"    # J
    .param p2, "toMillis"    # J

    .prologue
    const/16 v9, 0xe

    const/16 v8, 0xd

    const/16 v7, 0xc

    const/16 v6, 0xb

    const/4 v1, 0x0

    .line 1366
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1367
    .local v0, "tempCalendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1368
    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 1369
    invoke-virtual {v0, v7, v1}, Ljava/util/Calendar;->set(II)V

    .line 1370
    invoke-virtual {v0, v8, v1}, Ljava/util/Calendar;->set(II)V

    .line 1371
    invoke-virtual {v0, v9, v1}, Ljava/util/Calendar;->set(II)V

    .line 1372
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 1373
    .local v2, "timeMillis1":J
    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1374
    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 1375
    invoke-virtual {v0, v7, v1}, Ljava/util/Calendar;->set(II)V

    .line 1376
    invoke-virtual {v0, v8, v1}, Ljava/util/Calendar;->set(II)V

    .line 1377
    invoke-virtual {v0, v9, v1}, Ljava/util/Calendar;->set(II)V

    .line 1378
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 1379
    .local v4, "timeMillis2":J
    sub-long v6, v4, v2

    const-wide/32 v8, 0x5265c00

    div-long/2addr v6, v8

    long-to-int v1, v6

    return v1
.end method

.method public static final c(J)Ljava/lang/String;
    .locals 2
    .param p0, "targetDate"    # J

    .prologue
    .line 497
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, p1, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 500
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {p0, p1}, Lcog;->k(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(JLandroid/content/Context;)Ljava/lang/String;
    .locals 16
    .param p0, "targetTime"    # J
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/16 v14, 0xa

    .line 863
    const-wide/16 v12, 0x0

    cmp-long v11, p0, v12

    if-gez v11, :cond_0

    .line 864
    const-string/jumbo v5, "Invalid"

    .line 886
    :goto_0
    return-object v5

    .line 866
    :cond_0
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v4

    .line 867
    .local v4, "calendar":Ljava/util/Calendar;
    move-wide/from16 v0, p0

    invoke-virtual {v4, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 870
    const/16 v11, 0x9

    invoke-virtual {v4, v11}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 871
    .local v2, "ap":I
    if-nez v2, :cond_1

    .line 872
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcig$j;->calendar_morning:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 877
    .local v3, "apTopic":Ljava/lang/String;
    :goto_1
    invoke-virtual {v4, v14}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 878
    .local v6, "h":I
    if-lt v6, v14, :cond_2

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 879
    .local v8, "hour":Ljava/lang/String;
    :goto_2
    const/16 v11, 0xc

    invoke-virtual {v4, v11}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 880
    .local v9, "min":I
    if-lt v9, v14, :cond_3

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 882
    .local v10, "minute":Ljava/lang/String;
    :goto_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 884
    .local v7, "hhmm":Ljava/lang/String;
    sget v11, Lcig$j;->date_format_am_pm_hh_mm:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    const/4 v13, 0x1

    aput-object v7, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 886
    .local v5, "formatDate":Ljava/lang/String;
    goto :goto_0

    .line 874
    .end local v3    # "apTopic":Ljava/lang/String;
    .end local v5    # "formatDate":Ljava/lang/String;
    .end local v6    # "h":I
    .end local v7    # "hhmm":Ljava/lang/String;
    .end local v8    # "hour":Ljava/lang/String;
    .end local v9    # "min":I
    .end local v10    # "minute":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcig$j;->calendar_afternoon:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "apTopic":Ljava/lang/String;
    goto :goto_1

    .line 878
    .restart local v6    # "h":I
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "0"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 880
    .restart local v8    # "hour":Ljava/lang/String;
    .restart local v9    # "min":I
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "0"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_3
.end method

.method public static c(JZ)Ljava/lang/String;
    .locals 10
    .param p0, "targetDate"    # J
    .param p2, "useCache"    # Z

    .prologue
    .line 1147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1148
    .local v2, "currentTime":J
    if-eqz p2, :cond_0

    .line 1149
    sget-object v6, Lcog;->f:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcog;->g:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcog;->f:Ljava/util/HashMap;

    .line 1150
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v2, v6

    const-wide/32 v8, 0xdbba0

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 1152
    sget-object v6, Lcog;->g:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1180
    :goto_0
    return-object v6

    .line 1157
    :cond_0
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v0

    .line 1158
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1159
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1161
    .local v1, "currentYear":I
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1162
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 1164
    .local v5, "targetYear":I
    if-eq v1, v5, :cond_3

    .line 1165
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p0, p1}, Lcog;->g(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, " "

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {p0, p1}, Lcog;->b(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1170
    .local v4, "result":Ljava/lang/String;
    :goto_1
    if-eqz p2, :cond_2

    .line 1172
    sget-object v6, Lcog;->f:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    const/16 v7, 0x3e8

    if-le v6, v7, :cond_1

    .line 1173
    sget-object v6, Lcog;->f:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 1174
    sget-object v6, Lcog;->g:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 1176
    :cond_1
    sget-object v6, Lcog;->f:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1177
    sget-object v6, Lcog;->g:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object v6, v4

    .line 1180
    goto :goto_0

    .line 1167
    .end local v4    # "result":Ljava/lang/String;
    :cond_3
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p0, p1}, Lcog;->f(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, " "

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {p0, p1}, Lcog;->b(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_1
.end method

.method public static final d(J)Ljava/lang/String;
    .locals 2
    .param p0, "targetDate"    # J

    .prologue
    .line 509
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const/16 v1, 0x41

    invoke-static {v0, p0, p1, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 512
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {p0, p1}, Lcog;->k(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static d(JZ)Ljava/lang/String;
    .locals 10
    .param p0, "targetDate"    # J
    .param p2, "useCache"    # Z

    .prologue
    .line 1199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1200
    .local v2, "currentTime":J
    if-eqz p2, :cond_0

    .line 1201
    sget-object v6, Lcog;->d:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcog;->e:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcog;->d:Ljava/util/HashMap;

    .line 1202
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v2, v6

    const-wide/32 v8, 0xdbba0

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 1204
    sget-object v6, Lcog;->e:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1232
    :goto_0
    return-object v6

    .line 1209
    :cond_0
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v0

    .line 1210
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1211
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1213
    .local v1, "currentYear":I
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1214
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 1216
    .local v5, "targetYear":I
    if-eq v1, v5, :cond_3

    .line 1217
    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p0, p1}, Lcog;->g(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, " "

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {p0, p1}, Lcog;->b(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string/jumbo v8, " "

    aput-object v8, v6, v7

    const/4 v7, 0x4

    invoke-static {p0, p1}, Lcog;->e(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1222
    .local v4, "result":Ljava/lang/String;
    :goto_1
    if-eqz p2, :cond_2

    .line 1223
    sget-object v6, Lcog;->d:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    const/16 v7, 0x3e8

    if-le v6, v7, :cond_1

    .line 1224
    sget-object v6, Lcog;->d:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 1225
    sget-object v6, Lcog;->e:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 1228
    :cond_1
    sget-object v6, Lcog;->d:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1229
    sget-object v6, Lcog;->e:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object v6, v4

    .line 1232
    goto :goto_0

    .line 1219
    .end local v4    # "result":Ljava/lang/String;
    :cond_3
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p0, p1}, Lcog;->f(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, " "

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {p0, p1}, Lcog;->b(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, " "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcog;->e(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_1
.end method

.method public static e(JZ)J
    .locals 8
    .param p0, "timeStamp"    # J
    .param p2, "sureBefore"    # Z

    .prologue
    const-wide/16 v4, 0x0

    .line 1350
    invoke-static {}, Lcms;->u()J

    move-result-wide v6

    sub-long v2, v6, p0

    .line 1356
    .local v2, "delta":J
    const-wide/32 v6, 0x5265c00

    div-long v0, v2, v6

    .line 1358
    .local v0, "days":J
    cmp-long v6, v0, v4

    if-gtz v6, :cond_0

    move-wide v0, v4

    .end local v0    # "days":J
    :cond_0
    return-wide v0
.end method

.method public static final e(J)Ljava/lang/String;
    .locals 2
    .param p0, "targetDate"    # J

    .prologue
    .line 521
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const/16 v1, 0x81

    invoke-static {v0, p0, p1, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 524
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {p0, p1}, Lcog;->k(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static f(J)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # J

    .prologue
    .line 533
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const v1, 0x80018

    invoke-static {v0, p0, p1, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 536
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {p0, p1}, Lcog;->k(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static f(JZ)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # J
    .param p2, "forceUse24HourFormat"    # Z

    .prologue
    .line 331
    if-eqz p2, :cond_0

    .line 332
    invoke-static {p0, p1}, Lcog;->w(J)Ljava/lang/String;

    move-result-object v0

    .line 334
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcog;->i(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static g(J)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # J

    .prologue
    .line 590
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const v1, 0x20004

    invoke-static {v0, p0, p1, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 593
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {p0, p1}, Lcog;->k(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static g(JZ)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # J
    .param p2, "forceUse24HourFormat"    # Z

    .prologue
    .line 485
    if-eqz p2, :cond_0

    .line 486
    invoke-static {p0, p1}, Lcog;->e(J)Ljava/lang/String;

    move-result-object v0

    .line 488
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcog;->c(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static h(J)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # J

    .prologue
    .line 627
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const v1, 0x80014

    invoke-static {v0, p0, p1, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 630
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {p0, p1}, Lcog;->k(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static h(JZ)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # J
    .param p2, "forceUse24HourFormat"    # Z

    .prologue
    .line 605
    if-eqz p2, :cond_0

    .line 606
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const v1, 0x20095

    invoke-static {v0, p0, p1, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 616
    :goto_0
    return-object v0

    .line 610
    :cond_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const v1, 0x20015

    invoke-static {v0, p0, p1, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 616
    :catch_0
    move-exception v0

    invoke-static {p0, p1}, Lcog;->k(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static i(J)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # J

    .prologue
    .line 658
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const/16 v1, 0x11

    invoke-static {v0, p0, p1, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 662
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {p0, p1}, Lcog;->k(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static j(J)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # J

    .prologue
    .line 674
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const v1, 0x20015

    invoke-static {v0, p0, p1, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 677
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {p0, p1}, Lcog;->k(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static k(J)Ljava/lang/String;
    .locals 10
    .param p0, "date"    # J

    .prologue
    const/16 v9, 0xa

    .line 682
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v1

    .line 683
    .local v1, "calendar":Ljava/util/Calendar;
    invoke-virtual {v1, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 686
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 688
    .local v0, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 689
    const-string/jumbo v8, "-"

    invoke-virtual {v0, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 691
    const/4 v8, 0x2

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/lit8 v4, v8, 0x1

    .line 692
    .local v4, "m":I
    if-ge v4, v9, :cond_0

    .line 693
    const-string/jumbo v8, "0"

    invoke-virtual {v0, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 696
    :cond_0
    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 697
    const-string/jumbo v8, "-"

    invoke-virtual {v0, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 699
    const/4 v8, 0x5

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 700
    .local v2, "day":I
    if-ge v2, v9, :cond_1

    .line 701
    const-string/jumbo v8, "0"

    invoke-virtual {v0, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 703
    :cond_1
    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 706
    const-string/jumbo v8, " "

    invoke-virtual {v0, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 708
    const/16 v8, 0xb

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 709
    .local v3, "hour":I
    if-ge v3, v9, :cond_2

    .line 710
    const-string/jumbo v8, "0"

    invoke-virtual {v0, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 712
    :cond_2
    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 714
    const-string/jumbo v8, ":"

    invoke-virtual {v0, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 716
    const/16 v8, 0xc

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 717
    .local v6, "minite":I
    if-ge v6, v9, :cond_3

    .line 718
    const-string/jumbo v8, "0"

    invoke-virtual {v0, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 720
    :cond_3
    invoke-virtual {v0, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 722
    const-string/jumbo v8, ":"

    invoke-virtual {v0, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 723
    const/16 v8, 0xd

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 724
    .local v7, "second":I
    if-ge v7, v9, :cond_4

    .line 725
    const-string/jumbo v8, "0"

    invoke-virtual {v0, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 727
    :cond_4
    invoke-virtual {v0, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 729
    const-string/jumbo v8, ":"

    invoke-virtual {v0, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 730
    const/16 v8, 0xe

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 731
    .local v5, "millSecond":I
    invoke-virtual {v0, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 733
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public static l(J)Ljava/lang/String;
    .locals 2
    .param p0, "targetDate"    # J

    .prologue
    .line 842
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 843
    const-string/jumbo v0, "Invalid"

    .line 846
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcog;->g(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static m(J)Ljava/lang/String;
    .locals 2
    .param p0, "targetDate"    # J

    .prologue
    .line 853
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 854
    const-string/jumbo v0, "Invalid"

    .line 857
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcog;->v(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static n(J)Ljava/lang/String;
    .locals 2
    .param p0, "targetTime"    # J

    .prologue
    .line 891
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 892
    const-string/jumbo v0, "Invalid"

    .line 895
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcog;->c(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static o(J)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 928
    invoke-static {p0, p1}, Lcog;->f(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static p(J)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 936
    invoke-static {p0, p1}, Lcog;->c(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static q(J)Ljava/lang/String;
    .locals 10
    .param p0, "time"    # J

    .prologue
    const/16 v8, 0xa

    .line 1019
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v1

    .line 1020
    .local v1, "calendar":Ljava/util/Calendar;
    invoke-virtual {v1, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1023
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 1025
    .local v0, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1026
    const-string/jumbo v7, "-"

    invoke-virtual {v0, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1028
    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/lit8 v4, v7, 0x1

    .line 1029
    .local v4, "m":I
    if-ge v4, v8, :cond_0

    .line 1030
    const-string/jumbo v7, "0"

    invoke-virtual {v0, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1033
    :cond_0
    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1034
    const-string/jumbo v7, "-"

    invoke-virtual {v0, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1036
    const/4 v7, 0x5

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1037
    .local v2, "day":I
    if-ge v2, v8, :cond_1

    .line 1038
    const-string/jumbo v7, "0"

    invoke-virtual {v0, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1040
    :cond_1
    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1043
    const-string/jumbo v7, " "

    invoke-virtual {v0, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1045
    const/16 v7, 0xb

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1046
    .local v3, "hour":I
    if-ge v3, v8, :cond_2

    .line 1047
    const-string/jumbo v7, "0"

    invoke-virtual {v0, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1049
    :cond_2
    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1051
    const-string/jumbo v7, ":"

    invoke-virtual {v0, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1053
    const/16 v7, 0xc

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 1054
    .local v5, "minite":I
    if-ge v5, v8, :cond_3

    .line 1055
    const-string/jumbo v7, "0"

    invoke-virtual {v0, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1057
    :cond_3
    invoke-virtual {v0, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1059
    const-string/jumbo v7, ":"

    invoke-virtual {v0, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1060
    const/16 v7, 0xd

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 1061
    .local v6, "second":I
    if-ge v6, v8, :cond_4

    .line 1062
    const-string/jumbo v7, "0"

    invoke-virtual {v0, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1064
    :cond_4
    invoke-virtual {v0, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1066
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static r(J)Ljava/lang/String;
    .locals 2
    .param p0, "targetDate"    # J

    .prologue
    .line 1185
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcog;->c(JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static s(J)Ljava/lang/String;
    .locals 2
    .param p0, "targetDate"    # J

    .prologue
    .line 1236
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcog;->d(JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final t(J)Ljava/lang/String;
    .locals 2
    .param p0, "targetDate"    # J

    .prologue
    .line 1282
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const v1, 0x80099

    invoke-static {v0, p0, p1, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1286
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {p0, p1}, Lcog;->k(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static u(J)Ljava/lang/String;
    .locals 12
    .param p0, "millis"    # J

    .prologue
    const-wide/16 v10, 0x3c

    const-wide/16 v8, 0x0

    .line 1386
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 1387
    .local v0, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    cmp-long v1, p0, v8

    if-gtz v1, :cond_0

    .line 1388
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 1389
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    sget v7, Lcig$j;->dt_common_sec:I

    invoke-virtual {v6, v7}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1390
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1411
    :goto_0
    return-object v1

    .line 1393
    :cond_0
    const-wide/16 v6, 0x3e8

    div-long/2addr p0, v6

    .line 1395
    div-long v2, p0, v10

    .line 1396
    .local v2, "minute":J
    rem-long v4, p0, v10

    .line 1398
    .local v4, "second":J
    cmp-long v1, p0, v8

    if-gtz v1, :cond_1

    cmp-long v1, v4, v8

    if-gtz v1, :cond_1

    .line 1400
    const-wide/16 v4, 0x1

    .line 1402
    :cond_1
    cmp-long v1, p0, v8

    if-lez v1, :cond_2

    .line 1403
    invoke-virtual {v0, v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 1404
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    sget v7, Lcig$j;->dt_common_min:I

    invoke-virtual {v6, v7}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1406
    :cond_2
    cmp-long v1, v4, v8

    if-lez v1, :cond_3

    .line 1407
    invoke-virtual {v0, v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 1408
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    sget v7, Lcig$j;->dt_common_sec:I

    invoke-virtual {v6, v7}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1411
    :cond_3
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static v(J)Ljava/lang/String;
    .locals 6
    .param p0, "date"    # J

    .prologue
    const/4 v5, 0x1

    .line 545
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 546
    .local v2, "currentTime":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 547
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 549
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 551
    .local v1, "currentYear":I
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 552
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 554
    .local v4, "targetYear":I
    if-eq v1, v4, :cond_0

    .line 555
    invoke-static {p0, p1}, Lcog;->g(J)Ljava/lang/String;

    move-result-object v5

    .line 558
    :goto_0
    return-object v5

    :cond_0
    invoke-static {p0, p1}, Lcog;->f(J)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private static w(J)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # J

    .prologue
    .line 642
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const/16 v1, 0x91

    invoke-static {v0, p0, p1, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 646
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {p0, p1}, Lcog;->k(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static x(J)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # J

    .prologue
    .line 1297
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const v1, 0x20095

    invoke-static {v0, p0, p1, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1302
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {p0, p1}, Lcog;->k(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
