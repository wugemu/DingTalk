.class public final Lfaz;
.super Ljava/lang/Object;
.source "PhonebookAPIImpl.java"

# interfaces
.implements Lezy;


# static fields
.field private static a:Lfaz;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static declared-synchronized a()Lezy;
    .locals 2

    .prologue
    .line 37
    const-class v1, Lfaz;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lfaz;->a:Lfaz;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lfaz;

    invoke-direct {v0}, Lfaz;-><init>()V

    sput-object v0, Lfaz;->a:Lfaz;

    .line 41
    :cond_0
    sget-object v0, Lfaz;->a:Lfaz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(JILcma;)V
    .locals 5
    .param p1, "cursor"    # J
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lcma",
            "<",
            "Lcom/alibaba/android/user/model/PhonebookObjectList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p4, "listener":Lcma;, "Lcma<Lcom/alibaba/android/user/model/PhonebookObjectList;>;"
    new-instance v0, Lfaz$2;

    invoke-direct {v0, p0, p4}, Lfaz$2;-><init>(Lfaz;Lcma;)V

    .line 73
    .local v0, "handler":Lcmg;, "Lcmg<Lfpy;Lcom/alibaba/android/user/model/PhonebookObjectList;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/PhonebookIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/PhonebookIService;

    .line 74
    .local v1, "service":Lcom/alibaba/android/user/idl/services/PhonebookIService;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/android/user/idl/services/PhonebookIService;->getPhonebookList(Ljava/lang/Long;Ljava/lang/Integer;Liyv;)V

    .line 75
    return-void
.end method

.method public final a(Lcma;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 79
    .local p1, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v0, Lfaz$3;

    invoke-direct {v0, p0, p1}, Lfaz$3;-><init>(Lfaz;Lcma;)V

    .line 85
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/PhonebookIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/PhonebookIService;

    .line 86
    .local v1, "service":Lcom/alibaba/android/user/idl/services/PhonebookIService;
    invoke-interface {v1, v0}, Lcom/alibaba/android/user/idl/services/PhonebookIService;->stopPhonebookMatch(Liyv;)V

    .line 87
    return-void
.end method

.method public final a(Ljava/util/List;Lcma;Z)V
    .locals 3
    .param p3, "uploadWithoutMatch"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfqq;",
            ">;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/user/model/PhonebookObjectList;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 49
    .local p1, "mList":Ljava/util/List;, "Ljava/util/List<Lfqq;>;"
    .local p2, "listener":Lcma;, "Lcma<Lcom/alibaba/android/user/model/PhonebookObjectList;>;"
    new-instance v0, Lfaz$1;

    invoke-direct {v0, p0, p2}, Lfaz$1;-><init>(Lfaz;Lcma;)V

    .line 55
    .local v0, "handler":Lcmg;, "Lcmg<Lfpy;Lcom/alibaba/android/user/model/PhonebookObjectList;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/PhonebookIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/PhonebookIService;

    .line 56
    .local v1, "service":Lcom/alibaba/android/user/idl/services/PhonebookIService;
    if-eqz p3, :cond_0

    .line 58
    invoke-interface {v1, p1, v0}, Lcom/alibaba/android/user/idl/services/PhonebookIService;->uploadPhonebookListWithoutMatch(Ljava/util/List;Liyv;)V

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-interface {v1, p1, v0}, Lcom/alibaba/android/user/idl/services/PhonebookIService;->uploadPhonebookList(Ljava/util/List;Liyv;)V

    goto :goto_0
.end method

.method public final b(Lcma;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 92
    .local p1, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    new-instance v0, Lfaz$4;

    invoke-direct {v0, p0, p1}, Lfaz$4;-><init>(Lfaz;Lcma;)V

    .line 98
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/Boolean;Ljava/lang/Boolean;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/PhonebookIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/PhonebookIService;

    .line 99
    .local v1, "service":Lcom/alibaba/android/user/idl/services/PhonebookIService;
    invoke-interface {v1, v0}, Lcom/alibaba/android/user/idl/services/PhonebookIService;->checkPhonebookMatch(Liyv;)V

    .line 100
    return-void
.end method
