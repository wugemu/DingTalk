.class public final Ljmr;
.super Ljava/lang/Object;
.source "RecognitionAPIImpl.java"

# interfaces
.implements Ljmq;


# static fields
.field private static a:Ljmr;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Ljmq;
    .locals 2

    .prologue
    .line 40
    const-class v1, Ljmr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljmr;->a:Ljmr;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ljmr;

    invoke-direct {v0}, Ljmr;-><init>()V

    sput-object v0, Ljmr;->a:Ljmr;

    .line 44
    :cond_0
    sget-object v0, Ljmr;->a:Ljmr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcma;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/taobao/ma/model/RecognizeResponseObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 50
    .local p2, "listener":Lcma;, "Lcma<Lcom/taobao/ma/model/RecognizeResponseObject;>;"
    if-nez p1, :cond_0

    .line 51
    const-string/jumbo v0, "err_parameter"

    const-string/jumbo v1, "Bad param of path,it\'s null."

    invoke-interface {p2, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-static {}, Lify;->a()Lify;

    move-result-object v0

    new-instance v1, Ljmr$1;

    invoke-direct {v1, p0, p2}, Ljmr$1;-><init>(Ljmr;Lcma;)V

    invoke-virtual {v0, p1, v1}, Lify;->a(Ljava/lang/String;Lifw;)V

    goto :goto_0
.end method
