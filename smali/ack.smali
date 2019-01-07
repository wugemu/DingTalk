.class public final Lack;
.super Ljava/lang/Object;
.source "NewDingMailUserNavigator.java"


# static fields
.field private static b:Lack;


# instance fields
.field public a:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string/jumbo v0, "isAdmin"

    iput-object v0, p0, Lack;->c:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, "redirect"

    iput-object v0, p0, Lack;->d:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, "token"

    iput-object v0, p0, Lack;->e:Ljava/lang/String;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lack;->a:I

    return-void
.end method

.method public static declared-synchronized a()Lack;
    .locals 2

    .prologue
    .line 50
    const-class v1, Lack;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lack;->b:Lack;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lack;

    invoke-direct {v0}, Lack;-><init>()V

    sput-object v0, Lack;->b:Lack;

    .line 53
    :cond_0
    sget-object v0, Lack;->b:Lack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 126
    iget v0, p0, Lack;->a:I

    if-eq v0, p1, :cond_0

    .line 127
    iput p1, p0, Lack;->a:I

    .line 129
    :cond_0
    return-void
.end method
