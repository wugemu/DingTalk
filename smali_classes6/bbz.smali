.class public Lbbz;
.super Ljava/lang/Object;
.source "CommentDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbbz$a;
    }
.end annotation


# static fields
.field private static volatile c:Lbbz;


# instance fields
.field public a:Lbbz$a;

.field private final b:Lbby;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lbby;

    invoke-direct {v0}, Lbby;-><init>()V

    iput-object v0, p0, Lbbz;->b:Lbby;

    .line 24
    new-instance v0, Lbbz$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbbz$a;-><init>(B)V

    iput-object v0, p0, Lbbz;->a:Lbbz$a;

    .line 25
    return-void
.end method

.method static synthetic a(Lbbz;)Lbby;
    .locals 1
    .param p0, "x0"    # Lbbz;

    .prologue
    .line 15
    iget-object v0, p0, Lbbz;->b:Lbby;

    return-object v0
.end method

.method public static a()Lbbz;
    .locals 2

    .prologue
    .line 28
    sget-object v0, Lbbz;->c:Lbbz;

    if-nez v0, :cond_1

    .line 29
    const-class v1, Lbbz;

    monitor-enter v1

    .line 30
    :try_start_0
    sget-object v0, Lbbz;->c:Lbbz;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lbbz;

    invoke-direct {v0}, Lbbz;-><init>()V

    sput-object v0, Lbbz;->c:Lbbz;

    .line 33
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :cond_1
    sget-object v0, Lbbz;->c:Lbbz;

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(JIZJLcma;)V
    .locals 11
    .param p1, "dingId"    # J
    .param p3, "type"    # I
    .param p4, "latest"    # Z
    .param p5, "cursor"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIZJ",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/CommentObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p7, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/ding/base/objects/CommentObject;>;>;"
    iget-object v9, p0, Lbbz;->a:Lbbz$a;

    new-instance v0, Lbbz$1;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lbbz$1;-><init>(Lbbz;JIZJLcma;)V

    invoke-virtual {v9, v0}, Lbbz$a;->execute(Ljava/lang/Runnable;)V

    .line 48
    return-void
.end method

.method public final a(Lcom/alibaba/android/ding/base/objects/CommentObject;Lcma;)V
    .locals 2
    .param p1, "commentObject"    # Lcom/alibaba/android/ding/base/objects/CommentObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/ding/base/objects/CommentObject;",
            "Lcma",
            "<",
            "Lbdy;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 60
    .local p2, "listener":Lcma;, "Lcma<Lbdy;>;"
    iget-object v0, p0, Lbbz;->a:Lbbz$a;

    new-instance v1, Lbbz$2;

    invoke-direct {v1, p0, p1, p2}, Lbbz$2;-><init>(Lbbz;Lcom/alibaba/android/ding/base/objects/CommentObject;Lcma;)V

    invoke-virtual {v0, v1}, Lbbz$a;->execute(Ljava/lang/Runnable;)V

    .line 66
    return-void
.end method
