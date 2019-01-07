.class public Liho;
.super Ljava/lang/Object;
.source "SCLogCatFactory.java"


# static fields
.field private static a:Lihp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Liho;->a:Lihp;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lihp;
    .locals 2

    .prologue
    .line 18
    sget-object v0, Liho;->a:Lihp;

    if-eqz v0, :cond_0

    .line 19
    sget-object v0, Liho;->a:Lihp;

    .line 33
    :goto_0
    return-object v0

    .line 21
    :cond_0
    const-class v1, Liho;

    monitor-enter v1

    .line 22
    :try_start_0
    sget-object v0, Liho;->a:Lihp;

    if-eqz v0, :cond_1

    .line 23
    sget-object v0, Liho;->a:Lihp;

    monitor-exit v1

    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 26
    :cond_1
    :try_start_1
    invoke-static {}, Lihm;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 27
    invoke-static {}, Lihm;->c()Lihp;

    move-result-object v0

    sput-object v0, Liho;->a:Lihp;

    .line 33
    :goto_1
    sget-object v0, Liho;->a:Lihp;

    monitor-exit v1

    goto :goto_0

    .line 28
    :cond_2
    invoke-static {}, Lihm;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 29
    invoke-static {}, Lihm;->e()Lihp;

    move-result-object v0

    sput-object v0, Liho;->a:Lihp;

    goto :goto_1

    .line 31
    :cond_3
    invoke-static {}, Lihm;->d()Lihp;

    move-result-object v0

    sput-object v0, Liho;->a:Lihp;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
