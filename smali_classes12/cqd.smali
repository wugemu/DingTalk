.class public final Lcqd;
.super Ljava/lang/Object;
.source "CalendarBeansUtil.java"


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lckq;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcqd;->a:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(II)Ljava/util/List;
    .locals 11
    .param p0, "year"    # I
    .param p1, "month"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lckq;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 24
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const-string/jumbo v8, "-"

    aput-object v8, v7, v10

    const/4 v8, 0x2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 25
    .local v4, "key":Ljava/lang/String;
    sget-object v7, Lcqd;->a:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 26
    sget-object v7, Lcqd;->a:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 27
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Lckq;>;"
    if-nez v5, :cond_1

    .line 28
    sget-object v7, Lcqd;->a:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lckq;>;"
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lckq;>;"
    sget-object v7, Lcqd;->a:Ljava/util/HashMap;

    invoke-virtual {v7, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-static {p0, p1, v10}, Lcqe;->a(III)I

    move-result v2

    .line 40
    .local v2, "fDayOfWeek":I
    invoke-static {p0, p1}, Lcqe;->a(II)I

    move-result v1

    .line 43
    .local v1, "dayNumOfMonth":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_0
    if-lez v3, :cond_2

    .line 44
    new-instance v0, Lckq;

    rsub-int/lit8 v7, v3, 0x1

    invoke-direct {v0, p0, p1, v7}, Lckq;-><init>(III)V

    .line 45
    .local v0, "bean":Lckq;
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .end local v0    # "bean":Lckq;
    .end local v1    # "dayNumOfMonth":I
    .end local v2    # "fDayOfWeek":I
    .end local v3    # "i":I
    :cond_1
    move-object v6, v5

    .line 59
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lckq;>;"
    .local v6, "list":Ljava/lang/Object;, "Ljava/util/List<Lckq;>;"
    :goto_1
    return-object v6

    .line 49
    .end local v6    # "list":Ljava/lang/Object;, "Ljava/util/List<Lckq;>;"
    .restart local v1    # "dayNumOfMonth":I
    .restart local v2    # "fDayOfWeek":I
    .restart local v3    # "i":I
    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lckq;>;"
    :cond_2
    const/4 v3, 0x1

    :goto_2
    if-gt v3, v1, :cond_3

    .line 50
    new-instance v0, Lckq;

    invoke-direct {v0, p0, p1, v3}, Lckq;-><init>(III)V

    .line 51
    .restart local v0    # "bean":Lckq;
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 55
    .end local v0    # "bean":Lckq;
    :cond_3
    add-int/lit8 v3, v1, 0x1

    :goto_3
    add-int/lit8 v7, v2, -0x1

    rsub-int/lit8 v7, v7, 0x2a

    if-gt v3, v7, :cond_4

    .line 56
    new-instance v0, Lckq;

    invoke-direct {v0, p0, p1, v3}, Lckq;-><init>(III)V

    .line 57
    .restart local v0    # "bean":Lckq;
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v0    # "bean":Lckq;
    :cond_4
    move-object v6, v5

    .line 59
    .restart local v6    # "list":Ljava/lang/Object;, "Ljava/util/List<Lckq;>;"
    goto :goto_1
.end method

.method public static a(III)Ljava/util/List;
    .locals 9
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List",
            "<",
            "Lckq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "-"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string/jumbo v8, "-"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, "key":Ljava/lang/String;
    sget-object v6, Lcqd;->a:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 70
    sget-object v6, Lcqd;->a:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 71
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lckq;>;"
    if-nez v4, :cond_1

    .line 72
    sget-object v6, Lcqd;->a:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lckq;>;"
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lckq;>;"
    sget-object v6, Lcqd;->a:Ljava/util/HashMap;

    invoke-virtual {v6, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-static {p0, p1, p2}, Lcqe;->a(III)I

    move-result v1

    .line 85
    .local v1, "dayOfWeek":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    const/4 v6, 0x7

    if-gt v2, v6, :cond_2

    .line 86
    new-instance v0, Lckq;

    sub-int v6, p2, v1

    add-int/2addr v6, v2

    invoke-direct {v0, p0, p1, v6}, Lckq;-><init>(III)V

    .line 87
    .local v0, "bean":Lckq;
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "bean":Lckq;
    .end local v1    # "dayOfWeek":I
    .end local v2    # "i":I
    :cond_1
    move-object v5, v4

    .line 89
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lckq;>;"
    .local v5, "list":Ljava/lang/Object;, "Ljava/util/List<Lckq;>;"
    :goto_1
    return-object v5

    .end local v5    # "list":Ljava/lang/Object;, "Ljava/util/List<Lckq;>;"
    .restart local v1    # "dayOfWeek":I
    .restart local v2    # "i":I
    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lckq;>;"
    :cond_2
    move-object v5, v4

    .restart local v5    # "list":Ljava/lang/Object;, "Ljava/util/List<Lckq;>;"
    goto :goto_1
.end method

.method public static a(Lckq;Lckq;)Z
    .locals 4
    .param p0, "calendarBean1"    # Lckq;
    .param p1, "calendarBean2"    # Lckq;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 93
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v0

    .line 96
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v0, v1

    .line 97
    goto :goto_0

    .line 1050
    :cond_3
    iget v2, p0, Lckq;->a:I

    .line 2050
    iget v3, p1, Lckq;->a:I

    .line 99
    if-ne v2, v3, :cond_4

    .line 2054
    iget v2, p0, Lckq;->b:I

    .line 3054
    iget v3, p1, Lckq;->b:I

    .line 100
    if-ne v2, v3, :cond_4

    .line 3058
    iget v2, p0, Lckq;->c:I

    .line 4058
    iget v3, p1, Lckq;->c:I

    .line 101
    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public static b(Lckq;Lckq;)Z
    .locals 4
    .param p0, "calendarBean1"    # Lckq;
    .param p1, "calendarBean2"    # Lckq;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 105
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return v0

    .line 108
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v0, v1

    .line 109
    goto :goto_0

    .line 5050
    :cond_3
    iget v2, p0, Lckq;->a:I

    .line 6050
    iget v3, p1, Lckq;->a:I

    .line 111
    if-ne v2, v3, :cond_4

    .line 6054
    iget v2, p0, Lckq;->b:I

    .line 7054
    iget v3, p1, Lckq;->b:I

    .line 112
    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public static c(Lckq;Lckq;)Z
    .locals 7
    .param p0, "calendarBean1"    # Lckq;
    .param p1, "calendarBean2"    # Lckq;

    .prologue
    const/4 v4, 0x7

    const/4 v6, 0x6

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 116
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v2

    .line 119
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v2, v3

    .line 120
    goto :goto_0

    .line 122
    :cond_3
    invoke-virtual {p0}, Lckq;->a()Ljava/util/Calendar;

    move-result-object v0

    .line 123
    .local v0, "tempCalendar1":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 124
    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 125
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 127
    invoke-virtual {p1}, Lckq;->a()Ljava/util/Calendar;

    move-result-object v1

    .line 128
    .local v1, "tempCalendar2":Ljava/util/Calendar;
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 129
    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 130
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 132
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_4

    .line 133
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-eq v4, v5, :cond_0

    :cond_4
    move v2, v3

    goto :goto_0
.end method

.method public static d(Lckq;Lckq;)I
    .locals 2
    .param p0, "calendarBean1"    # Lckq;
    .param p1, "calendarBean2"    # Lckq;

    .prologue
    .line 140
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 141
    :cond_0
    const/4 v0, 0x0

    .line 146
    :goto_0
    return v0

    .line 8050
    :cond_1
    iget v0, p1, Lckq;->a:I

    .line 143
    mul-int/lit8 v0, v0, 0xc

    .line 9050
    iget v1, p0, Lckq;->a:I

    .line 144
    mul-int/lit8 v1, v1, 0xc

    sub-int/2addr v0, v1

    .line 9054
    iget v1, p1, Lckq;->b:I

    .line 145
    add-int/2addr v0, v1

    .line 10054
    iget v1, p0, Lckq;->b:I

    .line 146
    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public static e(Lckq;Lckq;)I
    .locals 11
    .param p0, "calendarBean1"    # Lckq;
    .param p1, "calendarBean2"    # Lckq;

    .prologue
    const/4 v10, 0x7

    const/4 v9, 0x5

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 153
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 177
    :cond_0
    :goto_0
    return v1

    .line 156
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 11050
    .local v0, "tempCalendar":Ljava/util/Calendar;
    iget v6, p0, Lckq;->a:I

    .line 157
    invoke-virtual {v0, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 11054
    iget v6, p0, Lckq;->b:I

    .line 158
    invoke-virtual {v0, v8, v6}, Ljava/util/Calendar;->set(II)V

    .line 11058
    iget v6, p0, Lckq;->c:I

    .line 159
    invoke-virtual {v0, v9, v6}, Ljava/util/Calendar;->set(II)V

    .line 160
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 161
    invoke-virtual {v0, v10, v1}, Ljava/util/Calendar;->set(II)V

    .line 162
    const/16 v6, 0xb

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 163
    const/16 v6, 0xc

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 164
    const/16 v6, 0xd

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 165
    const/16 v6, 0xe

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 166
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 12050
    .local v2, "timeMillis1":J
    iget v6, p1, Lckq;->a:I

    .line 167
    invoke-virtual {v0, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 12054
    iget v6, p1, Lckq;->b:I

    .line 168
    invoke-virtual {v0, v8, v6}, Ljava/util/Calendar;->set(II)V

    .line 12058
    iget v6, p1, Lckq;->c:I

    .line 169
    invoke-virtual {v0, v9, v6}, Ljava/util/Calendar;->set(II)V

    .line 170
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 171
    invoke-virtual {v0, v10, v1}, Ljava/util/Calendar;->set(II)V

    .line 172
    const/16 v6, 0xb

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 173
    const/16 v6, 0xc

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 174
    const/16 v6, 0xd

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 175
    const/16 v6, 0xe

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 176
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 177
    .local v4, "timeMillis2":J
    sub-long v6, v4, v2

    const-wide/32 v8, 0x240c8400

    div-long/2addr v6, v8

    long-to-int v1, v6

    goto :goto_0
.end method

.method public static f(Lckq;Lckq;)I
    .locals 11
    .param p0, "calendarBean1"    # Lckq;
    .param p1, "calendarBean2"    # Lckq;

    .prologue
    const/16 v10, 0xb

    const/4 v9, 0x5

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 184
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 206
    :cond_0
    :goto_0
    return v1

    .line 187
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 13050
    .local v0, "tempCalendar":Ljava/util/Calendar;
    iget v6, p0, Lckq;->a:I

    .line 188
    invoke-virtual {v0, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 13054
    iget v6, p0, Lckq;->b:I

    .line 189
    invoke-virtual {v0, v8, v6}, Ljava/util/Calendar;->set(II)V

    .line 13058
    iget v6, p0, Lckq;->c:I

    .line 190
    invoke-virtual {v0, v9, v6}, Ljava/util/Calendar;->set(II)V

    .line 191
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 192
    invoke-virtual {v0, v10, v1}, Ljava/util/Calendar;->set(II)V

    .line 193
    const/16 v6, 0xc

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 194
    const/16 v6, 0xd

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 195
    const/16 v6, 0xe

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 196
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 14050
    .local v2, "timeMillis1":J
    iget v6, p1, Lckq;->a:I

    .line 197
    invoke-virtual {v0, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 14054
    iget v6, p1, Lckq;->b:I

    .line 198
    invoke-virtual {v0, v8, v6}, Ljava/util/Calendar;->set(II)V

    .line 14058
    iget v6, p1, Lckq;->c:I

    .line 199
    invoke-virtual {v0, v9, v6}, Ljava/util/Calendar;->set(II)V

    .line 200
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 201
    invoke-virtual {v0, v10, v1}, Ljava/util/Calendar;->set(II)V

    .line 202
    const/16 v6, 0xc

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 203
    const/16 v6, 0xd

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 204
    const/16 v6, 0xe

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 205
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 206
    .local v4, "timeMillis2":J
    sub-long v6, v4, v2

    const-wide/32 v8, 0x5265c00

    div-long/2addr v6, v8

    long-to-int v1, v6

    goto :goto_0
.end method
