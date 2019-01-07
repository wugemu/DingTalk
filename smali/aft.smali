.class public final Laft;
.super Ljava/lang/Object;
.source "CFeaturePushManager.java"


# static fields
.field private static b:Laft;


# instance fields
.field public a:Lcjp;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcjp;

    invoke-direct {v0}, Lcjp;-><init>()V

    iput-object v0, p0, Laft;->a:Lcjp;

    .line 23
    return-void
.end method

.method public static declared-synchronized a()Laft;
    .locals 2

    .prologue
    .line 27
    const-class v1, Laft;

    monitor-enter v1

    :try_start_0
    sget-object v0, Laft;->b:Laft;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Laft;

    invoke-direct {v0}, Laft;-><init>()V

    sput-object v0, Laft;->b:Laft;

    .line 30
    :cond_0
    sget-object v0, Laft;->b:Laft;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(ILjava/lang/Object;ILjava/lang/String;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "param1"    # I
    .param p4, "param2"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 38
    new-instance v0, Lcjo$b;

    invoke-direct {v0}, Lcjo$b;-><init>()V

    .line 39
    .local v0, "messageEvent":Lcjo$b;
    iput p1, v0, Lcjo$b;->b:I

    .line 40
    if-eqz p2, :cond_0

    .line 41
    iput-object p2, v0, Lcjo$b;->a:Ljava/lang/Object;

    .line 43
    :cond_0
    iput p3, v0, Lcjo$b;->c:I

    .line 44
    const/4 v1, 0x0

    iput-object v1, v0, Lcjo$b;->d:Ljava/lang/String;

    .line 46
    iget-object v1, p0, Laft;->a:Lcjp;

    invoke-virtual {v1, v0}, Lcjp;->a(Lcjo$b;)V

    .line 47
    return-void
.end method
