.class public Lcom/alibaba/android/user/model/OrgScoreObject;
.super Ljava/lang/Object;
.source "OrgScoreObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public dataComplete:Z

.field public orgId:J

.field public scoreDifference:J

.field public scoreTotal:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromIDLModel(Lfpr;)Lcom/alibaba/android/user/model/OrgScoreObject;
    .locals 6
    .param p1, "model"    # Lfpr;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 38
    new-instance v0, Lcom/alibaba/android/user/model/OrgScoreObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/model/OrgScoreObject;-><init>()V

    .line 39
    .local v0, "object":Lcom/alibaba/android/user/model/OrgScoreObject;
    if-eqz p1, :cond_0

    .line 40
    iget-object v1, p1, Lfpr;->a:Ljava/lang/Long;

    .line 1044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 40
    iput-wide v2, v0, Lcom/alibaba/android/user/model/OrgScoreObject;->orgId:J

    .line 41
    iget-object v1, p1, Lfpr;->b:Ljava/lang/Long;

    .line 2044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 41
    iput-wide v2, v0, Lcom/alibaba/android/user/model/OrgScoreObject;->scoreTotal:J

    .line 42
    iget-object v1, p1, Lfpr;->c:Ljava/lang/Long;

    .line 3044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 42
    iput-wide v2, v0, Lcom/alibaba/android/user/model/OrgScoreObject;->scoreDifference:J

    .line 43
    iget-object v1, p1, Lfpr;->d:Ljava/lang/Boolean;

    .line 4022
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 43
    iput-boolean v1, v0, Lcom/alibaba/android/user/model/OrgScoreObject;->dataComplete:Z

    .line 45
    :cond_0
    return-object v0
.end method
