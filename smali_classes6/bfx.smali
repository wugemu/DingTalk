.class public final Lbfx;
.super Ljava/lang/Object;
.source "RecentDingObject.java"


# instance fields
.field public a:J

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public c:J

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/util/List;J)V
    .locals 0
    .param p1, "dingId"    # J
    .param p4, "createAt"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p3, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-wide p1, p0, Lbfx;->a:J

    .line 33
    iput-object p3, p0, Lbfx;->b:Ljava/util/List;

    .line 34
    iput-wide p4, p0, Lbfx;->c:J

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/ding/db/entry/EntryRecentDing;)V
    .locals 2
    .param p1, "entry"    # Lcom/alibaba/android/ding/db/entry/EntryRecentDing;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iget-wide v0, p1, Lcom/alibaba/android/ding/db/entry/EntryRecentDing;->dingId:J

    iput-wide v0, p0, Lbfx;->a:J

    .line 26
    iget-object v0, p1, Lcom/alibaba/android/ding/db/entry/EntryRecentDing;->uids:Ljava/lang/String;

    invoke-direct {p0, v0}, Lbfx;->a(Ljava/lang/String;)V

    .line 27
    iget-wide v0, p1, Lcom/alibaba/android/ding/db/entry/EntryRecentDing;->createAt:J

    iput-wide v0, p0, Lbfx;->c:J

    .line 29
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 8
    .param p1, "uids"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 77
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lbfx;->b:Ljava/util/List;

    .line 78
    if-eqz p1, :cond_0

    .line 80
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 81
    .local v2, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 82
    .local v3, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 83
    iget-object v4, p0, Lbfx;->b:Ljava/util/List;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "len":I
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "[RecentDingObject]uidsToList exception"

    invoke-static {v4, v0}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 47
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 49
    .local v1, "jsonArray":Lorg/json/JSONArray;
    :try_start_0
    iget-object v3, p0, Lbfx;->b:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 50
    iget-object v3, p0, Lbfx;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 51
    .local v2, "uid":Ljava/lang/Long;
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 54
    .end local v2    # "uid":Ljava/lang/Long;
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "[RecentDingObject]uidListToStr exception"

    invoke-static {v3, v0}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public final b()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 61
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 63
    .local v1, "jsonArray":Lorg/json/JSONArray;
    :try_start_0
    iget-object v4, p0, Lbfx;->b:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 64
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lbfx;->b:Ljava/util/List;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 65
    .local v2, "sortUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 66
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 67
    .local v3, "uid":Ljava/lang/Long;
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    .end local v2    # "sortUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v3    # "uid":Ljava/lang/Long;
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "[RecentDingObject]sortListToStr exception"

    invoke-static {v4, v0}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
