.class public final Lfam;
.super Ljava/lang/Object;
.source "DingEnergyAPIImpl.java"

# interfaces
.implements Lezq;


# static fields
.field private static a:Lfam;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lezq;
    .locals 2

    .prologue
    .line 21
    const-class v1, Lfam;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lfam;->a:Lfam;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lfam;

    invoke-direct {v0}, Lfam;-><init>()V

    sput-object v0, Lfam;->a:Lfam;

    .line 25
    :cond_0
    sget-object v0, Lfam;->a:Lfam;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Lcma;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Lcom/alibaba/android/user/model/EnergyRecordObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 34
    .local p1, "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/user/model/EnergyRecordObject;>;"
    new-instance v0, Lfam$1;

    invoke-direct {v0, p0, p1}, Lfam$1;-><init>(Lfam;Lcma;)V

    .line 40
    .local v0, "handler":Lcmg;, "Lcmg<Lfos;Lcom/alibaba/android/user/model/EnergyRecordObject;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/DingEnergyIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/DingEnergyIService;

    .line 41
    .local v1, "service":Lcom/alibaba/android/user/idl/services/DingEnergyIService;
    if-nez v1, :cond_0

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-interface {v1, v0}, Lcom/alibaba/android/user/idl/services/DingEnergyIService;->claimDailyEnergy(Liyv;)V

    goto :goto_0
.end method
