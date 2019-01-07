.class public final Lbfz;
.super Ljava/lang/Object;
.source "TaskExtObject.java"


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbge;",
            ">;"
        }
    .end annotation
.end field

.field private d:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbfz;->c:Ljava/util/List;

    return-void
.end method

.method public static a(Lbea;)Lbfz;
    .locals 10
    .param p0, "taskExtModel"    # Lbea;

    .prologue
    const/4 v3, 0x0

    const-wide/16 v8, 0x0

    .line 26
    if-nez p0, :cond_0

    move-object v2, v3

    .line 44
    :goto_0
    return-object v2

    .line 30
    :cond_0
    new-instance v2, Lbfz;

    invoke-direct {v2}, Lbfz;-><init>()V

    .line 31
    .local v2, "taskExtObject":Lbfz;
    iget-object v4, p0, Lbea;->a:Ljava/lang/Long;

    .line 1044
    invoke-static {v4, v8, v9}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 31
    iput-wide v4, v2, Lbfz;->a:J

    .line 32
    iget-object v4, p0, Lbea;->b:Ljava/lang/String;

    iput-object v4, v2, Lbfz;->b:Ljava/lang/String;

    .line 33
    iget-object v4, p0, Lbea;->c:Ljava/util/List;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lbea;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 35
    iget-object v4, p0, Lbea;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbef;

    .line 2022
    .local v0, "model":Lbef;
    if-nez v0, :cond_2

    move-object v1, v3

    .line 37
    .local v1, "tagObject":Lbge;
    :goto_2
    if-eqz v1, :cond_1

    .line 38
    iget-object v5, v2, Lbfz;->c:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2026
    .end local v1    # "tagObject":Lbge;
    :cond_2
    new-instance v1, Lbge;

    invoke-direct {v1}, Lbge;-><init>()V

    .line 2027
    iget-object v5, v0, Lbef;->a:Ljava/lang/Long;

    .line 2044
    invoke-static {v5, v8, v9}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 2027
    iput-wide v6, v1, Lbge;->a:J

    .line 2028
    iget-object v5, v0, Lbef;->b:Ljava/lang/String;

    iput-object v5, v1, Lbge;->b:Ljava/lang/String;

    .line 2029
    iget-object v5, v0, Lbef;->c:Ljava/lang/String;

    iput-object v5, v1, Lbge;->c:Ljava/lang/String;

    .line 2030
    iget-object v5, v0, Lbef;->d:Ljava/lang/String;

    iput-object v5, v1, Lbge;->d:Ljava/lang/String;

    goto :goto_2

    .line 42
    .end local v0    # "model":Lbef;
    :cond_3
    iget-object v3, p0, Lbea;->d:Ljava/lang/Long;

    .line 3044
    invoke-static {v3, v8, v9}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 42
    iput-wide v4, v2, Lbfz;->d:J

    goto :goto_0
.end method
