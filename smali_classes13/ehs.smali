.class public final Lehs;
.super Ljava/lang/Object;
.source "PWPMessageCenter.java"


# static fields
.field private static c:Lehs;


# instance fields
.field public a:Lcjp;

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Lcjp;

    invoke-direct {v0}, Lcjp;-><init>()V

    iput-object v0, p0, Lehs;->a:Lcjp;

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lehs;->b:Z

    return-void
.end method

.method public static declared-synchronized a()Lehs;
    .locals 2

    .prologue
    .line 146
    const-class v1, Lehs;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lehs;->c:Lehs;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Lehs;

    invoke-direct {v0}, Lehs;-><init>()V

    sput-object v0, Lehs;->c:Lehs;

    .line 149
    :cond_0
    sget-object v0, Lehs;->c:Lehs;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 146
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

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 164
    new-instance v0, Lcjo$b;

    invoke-direct {v0}, Lcjo$b;-><init>()V

    .line 165
    .local v0, "messageEvent":Lcjo$b;
    iput p1, v0, Lcjo$b;->b:I

    .line 166
    if-eqz p2, :cond_0

    .line 167
    iput-object p2, v0, Lcjo$b;->a:Ljava/lang/Object;

    .line 169
    :cond_0
    const/4 v1, 0x0

    iput v1, v0, Lcjo$b;->c:I

    .line 170
    const/4 v1, 0x0

    iput-object v1, v0, Lcjo$b;->d:Ljava/lang/String;

    .line 172
    iget-object v1, p0, Lehs;->a:Lcjp;

    invoke-virtual {v1, v0}, Lcjp;->a(Lcjo$b;)V

    .line 173
    return-void
.end method
