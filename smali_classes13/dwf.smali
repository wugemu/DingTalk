.class public final Ldwf;
.super Ljava/lang/Object;
.source "OneboxEventPoster.java"


# static fields
.field public static a:Ldwf;


# instance fields
.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldwe;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldwf;->b:Ljava/util/List;

    .line 28
    return-void
.end method

.method public static declared-synchronized a()Ldwf;
    .locals 2

    .prologue
    .line 20
    const-class v1, Ldwf;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ldwf;->a:Ldwf;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Ldwf;

    invoke-direct {v0}, Ldwf;-><init>()V

    sput-object v0, Ldwf;->a:Ldwf;

    .line 23
    :cond_0
    sget-object v0, Ldwf;->a:Ldwf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
