.class public final Lakh;
.super Lakf;
.source "UTRealtimeConfBiz.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lakh$a;
    }
.end annotation


# static fields
.field private static e:Lakh;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lakh$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lakh;->e:Lakh;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lakf;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lakh;->d:Ljava/util/Map;

    .line 24
    const/16 v0, 0xa

    iput v0, p0, Lakh;->a:I

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lakh;->b:I

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lakh;->c:I

    .line 38
    return-void
.end method

.method static synthetic a(Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-static {p0}, Lakh;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a()Lakh;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lakh;->e:Lakh;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lakh;

    invoke-direct {v0}, Lakh;-><init>()V

    sput-object v0, Lakh;->e:Lakh;

    .line 34
    :cond_0
    sget-object v0, Lakh;->e:Lakh;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)I
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 251
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 254
    :goto_0
    return v1

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, ""

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v0

    invoke-virtual {v0}, Lajw;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v0

    invoke-virtual {v0}, Lajw;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v0

    invoke-virtual {v0}, Lajw;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    :cond_0
    const/4 v0, 0x1

    .line 46
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/util/Map;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 87
    .local p1, "aLogMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, ""

    .line 88
    .local v1, "lEventID":Ljava/lang/String;
    sget-object v3, Lcom/alibaba/analytics/core/model/LogField;->EVENTID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v3}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 89
    sget-object v3, Lcom/alibaba/analytics/core/model/LogField;->EVENTID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v3}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "lEventID":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 92
    .restart local v1    # "lEventID":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    .line 93
    .local v2, "lPage":Ljava/lang/String;
    sget-object v3, Lcom/alibaba/analytics/core/model/LogField;->PAGE:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v3}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    sget-object v3, Lcom/alibaba/analytics/core/model/LogField;->PAGE:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v3}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "lPage":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 97
    .restart local v2    # "lPage":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .line 98
    .local v0, "lArg1":Ljava/lang/String;
    sget-object v3, Lcom/alibaba/analytics/core/model/LogField;->ARG1:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v3}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 99
    sget-object v3, Lcom/alibaba/analytics/core/model/LogField;->ARG1:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v3}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "lArg1":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1106
    .restart local v0    # "lArg1":Ljava/lang/String;
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lakh;->d:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1107
    iget-object v3, p0, Lakh;->d:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lakh$a;

    .line 1108
    if-eqz v3, :cond_6

    .line 1112
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1205
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 1169
    if-nez v4, :cond_4

    .line 1170
    iget-object v4, v3, Lakh$a;->a:Ljava/util/Map;

    invoke-static {v4, v2}, Lakh$a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1171
    if-eqz v4, :cond_4

    .line 2020
    invoke-static {v4}, Lakh;->b(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 1113
    :goto_0
    monitor-exit p0

    return v3

    .line 2205
    :cond_4
    :try_start_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 1176
    if-nez v4, :cond_5

    .line 1177
    iget-object v4, v3, Lakh$a;->b:Ljava/util/Map;

    invoke-static {v4, v0}, Lakh$a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1178
    if-eqz v4, :cond_5

    .line 3020
    invoke-static {v4}, Lakh;->b(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 1183
    :cond_5
    iget v3, v3, Lakh$a;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1117
    :cond_6
    const/4 v3, 0x0

    goto :goto_0

    .line 87
    .end local v0    # "lArg1":Ljava/lang/String;
    .end local v1    # "lEventID":Ljava/lang/String;
    .end local v2    # "lPage":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 11
    .param p1, "aGroupname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .local p2, "aConfContent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v10, 0x3

    .line 127
    monitor-enter p0

    :try_start_0
    const-string/jumbo v6, ""

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "aGroupname"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    const/4 v8, 0x2

    const-string/jumbo v9, "aConfContent"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    aput-object p2, v7, v8

    invoke-static {v6, v7}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3081
    iget-object v6, p0, Lakh;->d:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 3082
    const/16 v6, 0xa

    iput v6, p0, Lakh;->a:I

    .line 3083
    const/4 v6, 0x0

    iput v6, p0, Lakh;->b:I

    .line 129
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 130
    .local v1, "lKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 131
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 132
    .local v0, "lKey":Ljava/lang/String;
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 133
    .local v3, "lValue":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 134
    const-string/jumbo v6, "time"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 135
    invoke-static {v3}, Lakh;->b(Ljava/lang/String;)I

    move-result v5

    .line 136
    .local v5, "time":I
    if-lt v5, v10, :cond_0

    const/16 v6, 0x14

    if-gt v5, v6, :cond_0

    .line 137
    iput v5, p0, Lakh;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 127
    .end local v0    # "lKey":Ljava/lang/String;
    .end local v1    # "lKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "lValue":Ljava/lang/String;
    .end local v5    # "time":I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 139
    .restart local v0    # "lKey":Ljava/lang/String;
    .restart local v1    # "lKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v3    # "lValue":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string/jumbo v6, "sample"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 140
    invoke-static {v3}, Lakh;->b(Ljava/lang/String;)I

    move-result v4

    .line 141
    .local v4, "sample":I
    if-ltz v4, :cond_0

    const/16 v6, 0x2710

    if-gt v4, v6, :cond_0

    .line 142
    iput v4, p0, Lakh;->b:I

    goto :goto_0

    .line 145
    .end local v4    # "sample":I
    :cond_2
    invoke-static {v3}, Lakh$a;->a(Ljava/lang/String;)Lakh$a;

    move-result-object v2

    .line 146
    .local v2, "lUTSampleItem":Lakh$a;
    if-eqz v2, :cond_0

    .line 147
    iget-object v6, p0, Lakh;->d:Ljava/util/Map;

    invoke-interface {v6, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 152
    .end local v0    # "lKey":Ljava/lang/String;
    .end local v2    # "lUTSampleItem":Lakh$a;
    .end local v3    # "lValue":Ljava/lang/String;
    :cond_3
    monitor-exit p0

    return-void
.end method

.method public final b()[Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 156
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "ut_realtime"

    aput-object v2, v0, v1

    return-object v0
.end method
