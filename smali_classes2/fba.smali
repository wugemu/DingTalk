.class public final Lfba;
.super Ljava/lang/Object;
.source "QrcodeAPIImpl.java"

# interfaces
.implements Lfab;


# static fields
.field private static a:Lfba;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static declared-synchronized a()Lfab;
    .locals 2

    .prologue
    .line 17
    const-class v1, Lfba;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lfba;->a:Lfba;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lfba;

    invoke-direct {v0}, Lfba;-><init>()V

    sput-object v0, Lfba;->a:Lfba;

    .line 21
    :cond_0
    sget-object v0, Lfba;->a:Lfba;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 17
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcma;)V
    .locals 3
    .param p1, "qrcode"    # Ljava/lang/String;
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
    .line 29
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v0, Lfba$1;

    invoke-direct {v0, p0, p2}, Lfba$1;-><init>(Lfba;Lcma;)V

    .line 30
    .local v0, "handler":Lcme;, "Lcme<Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/QrcodeIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/QrcodeIService;

    .line 31
    .local v1, "qrcodeIService":Lcom/alibaba/android/user/idl/services/QrcodeIService;
    invoke-interface {v1, p1, v0}, Lcom/alibaba/android/user/idl/services/QrcodeIService;->bind(Ljava/lang/String;Liyv;)V

    .line 32
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 3
    .param p1, "qrcode"    # Ljava/lang/String;
    .param p2, "umidToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    .line 34
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v0, Lfba$2;

    invoke-direct {v0, p0, p3}, Lfba$2;-><init>(Lfba;Lcma;)V

    .line 35
    .local v0, "handler":Lcme;, "Lcme<Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/QrcodeIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/QrcodeIService;

    .line 36
    .local v1, "qrcodeIService":Lcom/alibaba/android/user/idl/services/QrcodeIService;
    invoke-interface {v1, p1, p2, v0}, Lcom/alibaba/android/user/idl/services/QrcodeIService;->bindV2(Ljava/lang/String;Ljava/lang/String;Liyv;)V

    .line 37
    return-void
.end method
