.class public final Loi;
.super Ljava/lang/Object;
.source "OrgMessageCenter.java"


# static fields
.field private static b:Loi;


# instance fields
.field public a:Lcjp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcjp;

    invoke-direct {v0}, Lcjp;-><init>()V

    iput-object v0, p0, Loi;->a:Lcjp;

    return-void
.end method

.method public static declared-synchronized a()Loi;
    .locals 2

    .prologue
    .line 45
    const-class v1, Loi;

    monitor-enter v1

    :try_start_0
    sget-object v0, Loi;->b:Loi;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Loi;

    invoke-direct {v0}, Loi;-><init>()V

    sput-object v0, Loi;->b:Loi;

    .line 48
    :cond_0
    sget-object v0, Loi;->b:Loi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 45
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
    .line 57
    new-instance v0, Lcjo$b;

    invoke-direct {v0}, Lcjo$b;-><init>()V

    .line 58
    .local v0, "messageEvent":Lcjo$b;
    iput p1, v0, Lcjo$b;->b:I

    .line 59
    if-eqz p2, :cond_0

    .line 60
    iput-object p2, v0, Lcjo$b;->a:Ljava/lang/Object;

    .line 62
    :cond_0
    iput p3, v0, Lcjo$b;->c:I

    .line 63
    const/4 v1, 0x0

    iput-object v1, v0, Lcjo$b;->d:Ljava/lang/String;

    .line 65
    iget-object v1, p0, Loi;->a:Lcjp;

    invoke-virtual {v1, v0}, Lcjp;->a(Lcjo$b;)V

    .line 66
    return-void
.end method
