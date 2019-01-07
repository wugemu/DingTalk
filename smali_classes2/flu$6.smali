.class final Lflu$6;
.super Lcmg;
.source "LocalOrgEmployeeCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflu;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Ljava/util/List",
        "<",
        "Lfpf;",
        ">;",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeClosestObject;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcma;)V
    .locals 0

    .prologue
    .line 404
    .local p1, "x0":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeClosestObject;>;>;"
    invoke-direct {p0, p1}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    .line 404
    check-cast p1, Ljava/util/List;

    .line 1407
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1408
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1410
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1411
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfpf;

    .line 1412
    if-eqz v0, :cond_2

    .line 1413
    new-instance v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeClosestObject;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeClosestObject;-><init>()V

    .line 1414
    iget-object v4, v0, Lfpf;->b:Ljava/lang/Long;

    .line 2044
    invoke-static {v4, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 1414
    iput-wide v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeClosestObject;->uid:J

    .line 1415
    iget-object v4, v0, Lfpf;->c:Ljava/lang/String;

    iput-object v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeClosestObject;->nick:Ljava/lang/String;

    .line 1416
    iget-object v4, v0, Lfpf;->d:Ljava/lang/String;

    iput-object v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeClosestObject;->avatarMediaId:Ljava/lang/String;

    .line 1417
    iget-object v4, v0, Lfpf;->a:Ljava/lang/Long;

    .line 3044
    invoke-static {v4, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 1417
    iput-wide v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeClosestObject;->orgId:J

    .line 1418
    iget-object v4, v0, Lfpf;->e:Ljava/lang/String;

    iput-object v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeClosestObject;->mobile:Ljava/lang/String;

    .line 1419
    iget-object v0, v0, Lfpf;->f:Ljava/lang/String;

    iput-object v0, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeClosestObject;->empName:Ljava/lang/String;

    .line 1420
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 404
    goto :goto_0
.end method
