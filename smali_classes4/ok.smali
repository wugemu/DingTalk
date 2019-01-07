.class public final Lok;
.super Ljava/lang/Object;
.source "IMPush.java"


# static fields
.field private static b:Lok;


# instance fields
.field public a:Lcjp;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcjp;

    invoke-direct {v0}, Lcjp;-><init>()V

    iput-object v0, p0, Lok;->a:Lcjp;

    .line 22
    return-void
.end method

.method public static declared-synchronized a()Lok;
    .locals 2

    .prologue
    .line 26
    const-class v1, Lok;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lok;->b:Lok;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lok;

    invoke-direct {v0}, Lok;-><init>()V

    sput-object v0, Lok;->b:Lok;

    .line 29
    :cond_0
    sget-object v0, Lok;->b:Lok;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 26
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

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 36
    new-instance v0, Lcjo$b;

    invoke-direct {v0}, Lcjo$b;-><init>()V

    .line 37
    .local v0, "messageEvent":Lcjo$b;
    iput p1, v0, Lcjo$b;->b:I

    .line 38
    if-eqz p2, :cond_0

    .line 39
    iput-object p2, v0, Lcjo$b;->a:Ljava/lang/Object;

    .line 41
    :cond_0
    const/4 v1, 0x0

    iput v1, v0, Lcjo$b;->c:I

    .line 42
    const/4 v1, 0x0

    iput-object v1, v0, Lcjo$b;->d:Ljava/lang/String;

    .line 44
    iget-object v1, p0, Lok;->a:Lcjp;

    invoke-virtual {v1, v0}, Lcjp;->a(Lcjo$b;)V

    .line 45
    return-void
.end method
