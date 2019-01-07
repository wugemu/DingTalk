.class public final Ljma;
.super Ljava/lang/Object;
.source "IdGenerator.java"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput v0, Ljma;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()I
    .locals 3

    .prologue
    .line 12
    const-class v1, Ljma;

    monitor-enter v1

    :try_start_0
    sget v0, Ljma;->a:I

    const v2, 0x7fffffff

    if-lt v0, v2, :cond_0

    .line 13
    const/4 v0, 0x0

    sput v0, Ljma;->a:I

    .line 15
    :cond_0
    sget v0, Ljma;->a:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Ljma;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 12
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
