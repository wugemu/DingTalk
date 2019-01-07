.class public final Lfvz;
.super Ljava/lang/Object;
.source "SWCommonService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(JLcma;)V
    .locals 4
    .param p0, "uid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lfry;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, "listener":Lcma;, "Lcma<Ljava/util/List<Lfry;>;>;"
    if-nez p2, :cond_0

    .line 55
    :goto_0
    return-void

    .line 43
    :cond_0
    const-class v1, Lcom/alibaba/android/user/idl/services/SWCommonIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/idl/services/SWCommonIService;

    .line 44
    .local v0, "service":Lcom/alibaba/android/user/idl/services/SWCommonIService;
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lfvz$1;

    invoke-direct {v2, p2}, Lfvz$1;-><init>(Lcma;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/android/user/idl/services/SWCommonIService;->getUserSummary(Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method

.method public static a(Lcma;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Lcom/alibaba/android/user/model/SWPersonObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "listener":Lcma;, "Lcma<Lcom/alibaba/android/user/model/SWPersonObject;>;"
    if-nez p0, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    const-class v1, Lcom/alibaba/android/user/idl/services/SWCommonIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/idl/services/SWCommonIService;

    .line 116
    .local v0, "service":Lcom/alibaba/android/user/idl/services/SWCommonIService;
    if-eqz v0, :cond_0

    .line 119
    new-instance v1, Lfvz$5;

    invoke-direct {v1, p0}, Lfvz$5;-><init>(Lcma;)V

    invoke-interface {v0, v1}, Lcom/alibaba/android/user/idl/services/SWCommonIService;->getPersonalSummary(Liyv;)V

    goto :goto_0
.end method

.method public static b(JLcma;)V
    .locals 4
    .param p0, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Lcom/alibaba/android/user/model/SWHrmObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p2, "listener":Lcma;, "Lcma<Lcom/alibaba/android/user/model/SWHrmObject;>;"
    if-nez p2, :cond_0

    .line 91
    :goto_0
    return-void

    .line 79
    :cond_0
    const-class v1, Lcom/alibaba/android/user/idl/services/SWCommonIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/idl/services/SWCommonIService;

    .line 80
    .local v0, "service":Lcom/alibaba/android/user/idl/services/SWCommonIService;
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lfvz$3;

    invoke-direct {v2, p2}, Lfvz$3;-><init>(Lcma;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/android/user/idl/services/SWCommonIService;->getHireInfo(Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method
