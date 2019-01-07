.class public final Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;
.super Ljava/lang/Object;
.source "MiniProfileObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public clickUrl:Ljava/lang/String;

.field public colleagueOrgIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public identity:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public openid:J

.field public orgId:J

.field public tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lduq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromModelIDL(Ldtz;)Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;
    .locals 8
    .param p1, "model"    # Ldtz;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    .line 29
    new-instance v0, Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;-><init>()V

    .line 30
    .local v0, "object":Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;
    if-eqz p1, :cond_1

    .line 31
    iget-object v2, p1, Ldtz;->a:Ljava/lang/Long;

    .line 1044
    invoke-static {v2, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 31
    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;->openid:J

    .line 32
    iget-object v2, p1, Ldtz;->b:Ljava/lang/Long;

    .line 2044
    invoke-static {v2, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 32
    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;->orgId:J

    .line 33
    iget-object v2, p1, Ldtz;->c:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;->name:Ljava/lang/String;

    .line 34
    iget-object v2, p1, Ldtz;->d:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;->identity:Ljava/lang/String;

    .line 35
    iget-object v2, p1, Ldtz;->e:Ljava/util/List;

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;->tags:Ljava/util/List;

    .line 36
    iget-object v2, p1, Ldtz;->f:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 37
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;->colleagueOrgIds:Ljava/util/List;

    .line 38
    iget-object v2, p1, Ldtz;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 39
    .local v1, "oid":Ljava/lang/Long;
    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;->colleagueOrgIds:Ljava/util/List;

    .line 3044
    invoke-static {v1, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 39
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 42
    .end local v1    # "oid":Ljava/lang/Long;
    :cond_0
    iget-object v2, p1, Ldtz;->g:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;->clickUrl:Ljava/lang/String;

    .line 44
    :cond_1
    return-object v0
.end method
