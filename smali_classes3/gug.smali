.class public Lgug;
.super Ljava/lang/Object;
.source "RecruitmentDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgug$a;
    }
.end annotation


# static fields
.field private static volatile b:Lgug;


# instance fields
.field public a:Lgug$a;

.field private c:Lguf;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lguf;

    invoke-direct {v0}, Lguf;-><init>()V

    iput-object v0, p0, Lgug;->c:Lguf;

    .line 31
    new-instance v0, Lgug$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgug$a;-><init>(B)V

    iput-object v0, p0, Lgug;->a:Lgug$a;

    .line 32
    return-void
.end method

.method static synthetic a(Lgug;)Lguf;
    .locals 1
    .param p0, "x0"    # Lgug;

    .prologue
    .line 20
    iget-object v0, p0, Lgug;->c:Lguf;

    return-object v0
.end method

.method public static a()Lgug;
    .locals 2

    .prologue
    .line 35
    sget-object v0, Lgug;->b:Lgug;

    if-nez v0, :cond_1

    .line 36
    const-class v1, Lgug;

    monitor-enter v1

    .line 37
    :try_start_0
    sget-object v0, Lgug;->b:Lgug;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lgug;

    invoke-direct {v0}, Lgug;-><init>()V

    sput-object v0, Lgug;->b:Lgug;

    .line 40
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_1
    sget-object v0, Lgug;->b:Lgug;

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
