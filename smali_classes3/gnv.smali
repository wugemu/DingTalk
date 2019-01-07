.class public final Lgnv;
.super Ljava/lang/Object;
.source "AclModel.java"


# instance fields
.field public a:J

.field public b:J

.field public c:Ljava/lang/String;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgnu;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z

.field private f:Z

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgkm;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lgnv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "idlAclModels":Ljava/util/List;, "Ljava/util/List<Lgkm;>;"
    if-nez p0, :cond_1

    .line 53
    const/4 v7, 0x0

    .line 72
    :cond_0
    return-object v7

    .line 56
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v7, "aclModels":Ljava/util/List;, "Ljava/util/List<Lgnv;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgkm;

    .line 59
    .local v8, "idlAclModel":Lgkm;
    if-eqz v8, :cond_2

    .line 1076
    if-eqz v8, :cond_3

    iget-object v1, v8, Lgkm;->b:Lgkt;

    if-nez v1, :cond_4

    .line 1077
    :cond_3
    const/4 v0, 0x0

    .line 65
    .local v0, "aclModel":Lgnv;
    :goto_1
    if-eqz v0, :cond_2

    .line 69
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1080
    .end local v0    # "aclModel":Lgnv;
    :cond_4
    iget-object v1, v8, Lgkm;->b:Lgkt;

    iget-object v1, v1, Lgkt;->a:Ljava/lang/Long;

    .line 2044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 1082
    new-instance v0, Lgnv;

    invoke-direct {v0}, Lgnv;-><init>()V

    .line 1083
    iget-object v1, v8, Lgkm;->b:Lgkt;

    iget-object v1, v1, Lgkt;->a:Ljava/lang/Long;

    .line 3044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 3107
    iput-wide v2, v0, Lgnv;->b:J

    .line 1084
    iget-object v1, v8, Lgkm;->a:Ljava/lang/Long;

    .line 4044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 4099
    iput-wide v2, v0, Lgnv;->a:J

    .line 1085
    iget-object v1, v8, Lgkm;->d:Ljava/util/List;

    iget-object v2, v8, Lgkm;->e:Ljava/lang/Boolean;

    .line 5022
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v2

    .line 1085
    const-wide/16 v10, 0x3ec

    cmp-long v3, v4, v10

    if-nez v3, :cond_5

    const/4 v3, 0x1

    :goto_2
    iget-object v6, v8, Lgkm;->g:Ljava/lang/Integer;

    .line 5033
    const/4 v10, 0x0

    invoke-static {v6, v10}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v6

    .line 1085
    invoke-static/range {v1 .. v6}, Lgnu;->a(Ljava/util/List;ZZJI)Ljava/util/List;

    move-result-object v1

    .line 5123
    iput-object v1, v0, Lgnv;->d:Ljava/util/List;

    .line 1087
    iget-object v1, v8, Lgkm;->e:Ljava/lang/Boolean;

    .line 6022
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 6131
    iput-boolean v1, v0, Lgnv;->e:Z

    .line 1088
    iget-object v1, v8, Lgkm;->f:Ljava/lang/Boolean;

    .line 7022
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 7139
    iput-boolean v1, v0, Lgnv;->f:Z

    .line 1089
    iget-object v1, v8, Lgkm;->g:Ljava/lang/Integer;

    .line 8033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 8147
    iput v1, v0, Lgnv;->g:I

    goto :goto_1

    .line 1085
    :cond_5
    const/4 v3, 0x0

    goto :goto_2
.end method
