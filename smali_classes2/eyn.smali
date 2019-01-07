.class public final Leyn;
.super Ljava/lang/Object;
.source "ConfMessageCenter.java"


# static fields
.field private static c:Leyn;


# instance fields
.field public a:Z

.field private b:Lcjp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcjp;

    invoke-direct {v0}, Lcjp;-><init>()V

    iput-object v0, p0, Leyn;->b:Lcjp;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Leyn;->a:Z

    return-void
.end method

.method public static declared-synchronized a()Leyn;
    .locals 2

    .prologue
    .line 54
    const-class v1, Leyn;

    monitor-enter v1

    :try_start_0
    sget-object v0, Leyn;->c:Leyn;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Leyn;

    invoke-direct {v0}, Leyn;-><init>()V

    sput-object v0, Leyn;->c:Leyn;

    .line 57
    :cond_0
    sget-object v0, Leyn;->c:Leyn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 54
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

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 92
    new-instance v0, Lcjo$b;

    invoke-direct {v0}, Lcjo$b;-><init>()V

    .line 93
    .local v0, "messageEvent":Lcjo$b;
    iput p1, v0, Lcjo$b;->b:I

    .line 94
    if-eqz p2, :cond_0

    .line 95
    iput-object p2, v0, Lcjo$b;->a:Ljava/lang/Object;

    .line 97
    :cond_0
    const/4 v1, 0x0

    iput v1, v0, Lcjo$b;->c:I

    .line 98
    const/4 v1, 0x0

    iput-object v1, v0, Lcjo$b;->d:Ljava/lang/String;

    .line 100
    iget-object v1, p0, Leyn;->b:Lcjp;

    invoke-virtual {v1, v0}, Lcjp;->a(Lcjo$b;)V

    .line 101
    return-void
.end method

.method public final a(Lcjo$a;)V
    .locals 1
    .param p1, "listener"    # Lcjo$a;

    .prologue
    .line 104
    iget-object v0, p0, Leyn;->b:Lcjp;

    invoke-virtual {v0, p1}, Lcjp;->a(Lcjo$a;)V

    .line 105
    return-void
.end method

.method public final b(Lcjo$a;)V
    .locals 1
    .param p1, "listener"    # Lcjo$a;

    .prologue
    .line 108
    iget-object v0, p0, Leyn;->b:Lcjp;

    invoke-virtual {v0, p1}, Lcjp;->b(Lcjo$a;)V

    .line 109
    return-void
.end method
