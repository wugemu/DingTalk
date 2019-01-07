.class public final Lbhh;
.super Ljava/lang/Object;
.source "DingIdExchangeManager.java"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lbgs;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbhh;->a:Ljava/util/Map;

    .line 29
    new-instance v0, Lbgt;

    invoke-direct {v0}, Lbgt;-><init>()V

    iput-object v0, p0, Lbhh;->b:Lbgs;

    .line 30
    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "uniqueId"    # Ljava/lang/String;
    .param p1, "recurrenceId"    # Ljava/lang/String;

    .prologue
    .line 97
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)J
    .locals 8
    .param p1, "uniqueId"    # Ljava/lang/String;
    .param p2, "recurrenceId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const-wide/16 v4, -0x1

    .line 69
    invoke-static {}, Lbju;->t()Z

    move-result v6

    if-nez v6, :cond_0

    move-wide v0, v4

    .line 93
    :goto_0
    return-wide v0

    .line 73
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-wide v0, v4

    .line 74
    goto :goto_0

    .line 77
    :cond_1
    invoke-static {p1, p2}, Lbhh;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "key":Ljava/lang/String;
    iget-object v6, p0, Lbhh;->a:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 79
    iget-object v4, p0, Lbhh;->a:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 6044
    const-wide/16 v6, 0x0

    invoke-static {v4, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    goto :goto_0

    .line 82
    :cond_2
    iget-object v6, p0, Lbhh;->b:Lbgs;

    invoke-interface {v6, p1, p2}, Lbgs;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/ding/db/entry/EntryDingIdExchange;

    move-result-object v2

    .line 83
    .local v2, "entryDingIdExchange":Lcom/alibaba/android/ding/db/entry/EntryDingIdExchange;
    if-nez v2, :cond_3

    move-wide v0, v4

    .line 84
    goto :goto_0

    .line 87
    :cond_3
    iget-wide v0, v2, Lcom/alibaba/android/ding/db/entry/EntryDingIdExchange;->dingId:J

    .line 88
    .local v0, "dingId":J
    invoke-static {v0, v1}, Lbkh;->a(J)Z

    move-result v6

    if-nez v6, :cond_4

    move-wide v0, v4

    .line 89
    goto :goto_0

    .line 92
    :cond_4
    iget-object v4, p0, Lbhh;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 7
    .param p1, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 33
    invoke-static {}, Lbju;->t()Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    if-eqz p1, :cond_0

    .line 41
    invoke-static {p1}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-static {p1}, Lbkh;->P(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Ljava/lang/String;

    move-result-object v1

    .line 1986
    if-nez p1, :cond_2

    .line 1987
    const-string/jumbo v0, ""

    .line 47
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v2

    .line 4109
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 5051
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5055
    invoke-static {v2, v3}, Lbkh;->a(J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5059
    invoke-static {v1, v0}, Lbhh;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5060
    iget-object v5, p0, Lbhh;->a:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5061
    new-instance v4, Lcom/alibaba/android/ding/db/entry/EntryDingIdExchange;

    invoke-direct {v4}, Lcom/alibaba/android/ding/db/entry/EntryDingIdExchange;-><init>()V

    .line 5062
    iput-object v1, v4, Lcom/alibaba/android/ding/db/entry/EntryDingIdExchange;->uniqueId:Ljava/lang/String;

    .line 5063
    iput-object v0, v4, Lcom/alibaba/android/ding/db/entry/EntryDingIdExchange;->recurrenceId:Ljava/lang/String;

    .line 5064
    iput-wide v2, v4, Lcom/alibaba/android/ding/db/entry/EntryDingIdExchange;->dingId:J

    .line 5065
    iget-object v0, p0, Lbhh;->b:Lbgs;

    invoke-interface {v0, v4}, Lbgs;->a(Lcom/alibaba/android/ding/db/entry/EntryDingIdExchange;)Z

    goto :goto_0

    .line 1990
    :cond_2
    invoke-static {p1}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1991
    const-string/jumbo v0, ""

    goto :goto_1

    .line 2824
    :cond_3
    iget-object v0, p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;->J:Lckm;

    invoke-virtual {v0}, Lckm;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1994
    instance-of v0, v0, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;

    if-nez v0, :cond_4

    .line 1995
    const-string/jumbo v0, ""

    goto :goto_1

    .line 3824
    :cond_4
    iget-object v0, p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;->J:Lckm;

    invoke-virtual {v0}, Lckm;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1998
    check-cast v0, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;

    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;->recurrenceId:Ljava/lang/String;

    goto :goto_1
.end method
