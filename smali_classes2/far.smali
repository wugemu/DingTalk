.class public Lfar;
.super Ljava/lang/Object;
.source "LabelAPIImpl.java"


# static fields
.field private static a:Lfar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lfar;
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lfar;->a:Lfar;

    if-nez v0, :cond_1

    .line 42
    const-class v1, Lfar;

    monitor-enter v1

    .line 43
    :try_start_0
    sget-object v0, Lfar;->a:Lfar;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lfar;

    invoke-direct {v0}, Lfar;-><init>()V

    sput-object v0, Lfar;->a:Lfar;

    .line 46
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_1
    sget-object v0, Lfar;->a:Lfar;

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(JIZLcma;)V
    .locals 5
    .param p1, "orgId"    # J
    .param p3, "scope"    # I
    .param p4, "needPermission"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIZ",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObjectList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p5, "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObjectList;>;"
    new-instance v0, Lfar$1;

    invoke-direct {v0, p0, p5}, Lfar$1;-><init>(Lfar;Lcma;)V

    .line 91
    .local v0, "handler":Lcmg;, "Lcmg<Lcea;Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObjectList;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/LabelIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/LabelIService;

    .line 92
    .local v1, "service":Lcom/alibaba/android/user/idl/services/LabelIService;
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    if-nez v1, :cond_2

    .line 93
    :cond_0
    if-eqz p5, :cond_1

    .line 94
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "Invalid params"

    invoke-interface {p5, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_1
    :goto_0
    return-void

    .line 98
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/alibaba/android/user/idl/services/LabelIService;->getLabelGroupModelsWithPermission(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Boolean;Liyv;)V

    goto :goto_0
.end method
