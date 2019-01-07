.class public Lfug;
.super Ljava/lang/Object;
.source "NameCardApiImpl.java"


# static fields
.field private static volatile b:Lfug;


# instance fields
.field public a:Lcom/alibaba/android/user/namecard/service/CardIService;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-class v0, Lcom/alibaba/android/user/namecard/service/CardIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/namecard/service/CardIService;

    iput-object v0, p0, Lfug;->a:Lcom/alibaba/android/user/namecard/service/CardIService;

    .line 32
    return-void
.end method

.method public static a()Lfug;
    .locals 2

    .prologue
    .line 35
    sget-object v0, Lfug;->b:Lfug;

    if-nez v0, :cond_1

    .line 36
    const-class v1, Lfug;

    monitor-enter v1

    .line 37
    :try_start_0
    sget-object v0, Lfug;->b:Lfug;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lfug;

    invoke-direct {v0}, Lfug;-><init>()V

    sput-object v0, Lfug;->b:Lfug;

    .line 40
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_1
    sget-object v0, Lfug;->b:Lfug;

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 2
    .param p1, "gps"    # Ljava/lang/String;
    .param p2, "passwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 108
    .local p3, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;>;"
    new-instance v0, Lfug$8;

    invoke-direct {v0, p0, p3}, Lfug$8;-><init>(Lfug;Lcma;)V

    .line 115
    .local v0, "handlerExt":Lcmg;, "Lcmg<Lcgy;Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;>;"
    iget-object v1, p0, Lfug;->a:Lcom/alibaba/android/user/namecard/service/CardIService;

    invoke-interface {v1, p1, p2, v0}, Lcom/alibaba/android/user/namecard/service/CardIService;->findRoom(Ljava/lang/String;Ljava/lang/String;Liyv;)V

    .line 116
    return-void
.end method
