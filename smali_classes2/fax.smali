.class public Lfax;
.super Ljava/lang/Object;
.source "OrgInviteAPIImpl.java"

# interfaces
.implements Lfaa;


# static fields
.field private static a:Lfaa;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lfaa;
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lfax;->a:Lfaa;

    if-nez v0, :cond_1

    .line 43
    const-class v1, Lfax;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lfax;->a:Lfaa;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lfax;

    invoke-direct {v0}, Lfax;-><init>()V

    sput-object v0, Lfax;->a:Lfaa;

    .line 47
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_1
    sget-object v0, Lfax;->a:Lfaa;

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

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
            "Lcom/alibaba/android/user/model/OrgTmpCodeInviteObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 55
    .local p1, "listener":Lcma;, "Lcma<Lcom/alibaba/android/user/model/OrgTmpCodeInviteObject;>;"
    new-instance v0, Lfax$1;

    invoke-direct {v0, p0, p1}, Lfax$1;-><init>(Lfax;Lcma;)V

    .line 64
    .local v0, "handler":Lcmg;, "Lcmg<Lfps;Lcom/alibaba/android/user/model/OrgTmpCodeInviteObject;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/OrgInviteIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/OrgInviteIService;

    .line 65
    .local v1, "service":Lcom/alibaba/android/user/idl/services/OrgInviteIService;
    if-eqz v1, :cond_0

    .line 66
    invoke-interface {v1, v0}, Lcom/alibaba/android/user/idl/services/OrgInviteIService;->generateTmpCodeForCreateOrg(Liyv;)V

    .line 68
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lcma;)V
    .locals 3
    .param p1, "tmpCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 72
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v0, Lfax$2;

    invoke-direct {v0, p0, p2}, Lfax$2;-><init>(Lfax;Lcma;)V

    .line 73
    .local v0, "handler":Lcme;, "Lcme<Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/OrgInviteIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/OrgInviteIService;

    .line 74
    .local v1, "service":Lcom/alibaba/android/user/idl/services/OrgInviteIService;
    if-eqz v1, :cond_0

    .line 75
    invoke-interface {v1, p1, v0}, Lcom/alibaba/android/user/idl/services/OrgInviteIService;->renewTmpCode(Ljava/lang/String;Liyv;)V

    .line 77
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;Lcma;)V
    .locals 3
    .param p1, "tmpCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 81
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v0, Lfax$3;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lfax$3;-><init>(Lfax;Lcma;)V

    .line 82
    .local v0, "handler":Lcme;, "Lcme<Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/OrgInviteIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/OrgInviteIService;

    .line 83
    .local v1, "service":Lcom/alibaba/android/user/idl/services/OrgInviteIService;
    if-eqz v1, :cond_0

    .line 84
    invoke-interface {v1, p1, v0}, Lcom/alibaba/android/user/idl/services/OrgInviteIService;->invalidTmpCode(Ljava/lang/String;Liyv;)V

    .line 86
    :cond_0
    return-void
.end method
