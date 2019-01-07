.class public Leye;
.super Ljava/lang/Object;
.source "ConferenceReserveAPIImpl.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile b:Leye;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Leye;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leye;->a:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    sput-object v0, Leye;->b:Leye;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static a()Leye;
    .locals 4

    .prologue
    .line 57
    sget-object v0, Leye;->b:Leye;

    .line 58
    .local v0, "localInstance":Leye;
    if-nez v0, :cond_1

    .line 59
    const-class v3, Leye;

    monitor-enter v3

    .line 60
    :try_start_0
    sget-object v0, Leye;->b:Leye;

    .line 61
    if-nez v0, :cond_0

    .line 62
    new-instance v1, Leye;

    invoke-direct {v1}, Leye;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "localInstance":Leye;
    .local v1, "localInstance":Leye;
    :try_start_1
    sput-object v1, Leye;->b:Leye;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 64
    .end local v1    # "localInstance":Leye;
    .restart local v0    # "localInstance":Leye;
    :cond_0
    :try_start_2
    monitor-exit v3

    .line 66
    :cond_1
    return-object v0

    .line 64
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "localInstance":Leye;
    .restart local v1    # "localInstance":Leye;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "localInstance":Leye;
    .restart local v0    # "localInstance":Leye;
    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;Leyo$c;)V
    .locals 2
    .param p1, "createModel"    # Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;",
            "Leyo$c",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateResultModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 145
    .local p2, "callback":Leyo$c;, "Leyo$c<Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateResultModel;>;"
    if-nez p1, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    const-class v1, Lcom/alibaba/android/teleconf/sdk/idl/service/AppointmentIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/service/AppointmentIService;

    .line 149
    .local v0, "service":Lcom/alibaba/android/teleconf/sdk/idl/service/AppointmentIService;
    if-eqz v0, :cond_0

    .line 152
    new-instance v1, Leye$3;

    invoke-direct {v1, p0, p2}, Leye$3;-><init>(Leye;Leyo$c;)V

    invoke-interface {v0, p1, v1}, Lcom/alibaba/android/teleconf/sdk/idl/service/AppointmentIService;->createAppointment(Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;Liyv;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfGetModel;Leyo$d;)V
    .locals 2
    .param p1, "getModel"    # Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfGetModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfGetModel;",
            "Leyo$d",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfProfileModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 182
    .local p2, "callback":Leyo$d;, "Leyo$d<Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfProfileModel;>;"
    if-nez p1, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    const-class v1, Lcom/alibaba/android/teleconf/sdk/idl/service/AppointmentIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/service/AppointmentIService;

    .line 186
    .local v0, "service":Lcom/alibaba/android/teleconf/sdk/idl/service/AppointmentIService;
    if-eqz v0, :cond_0

    .line 189
    new-instance v1, Leye$4;

    invoke-direct {v1, p0, p2}, Leye$4;-><init>(Leye;Leyo$d;)V

    invoke-interface {v0, p1, v1}, Lcom/alibaba/android/teleconf/sdk/idl/service/AppointmentIService;->pullAppointmentInfo(Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfGetModel;Liyv;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfPullModel;Leyo$e;)V
    .locals 2
    .param p1, "pullModel"    # Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfPullModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfPullModel;",
            "Leyo$e",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfListResultModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 256
    .local p2, "callback":Leyo$e;, "Leyo$e<Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfListResultModel;>;"
    if-nez p1, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    const-class v1, Lcom/alibaba/android/teleconf/sdk/idl/service/AppointmentIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/service/AppointmentIService;

    .line 260
    .local v0, "service":Lcom/alibaba/android/teleconf/sdk/idl/service/AppointmentIService;
    if-eqz v0, :cond_0

    .line 263
    new-instance v1, Leye$6;

    invoke-direct {v1, p0, p2}, Leye$6;-><init>(Leye;Leyo$e;)V

    invoke-interface {v0, p1, v1}, Lcom/alibaba/android/teleconf/sdk/idl/service/AppointmentIService;->pullAppointmentList(Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfPullModel;Liyv;)V

    goto :goto_0
.end method
