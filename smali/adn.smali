.class public Ladn;
.super Ljava/lang/Object;
.source "MailReaderSetting.java"


# static fields
.field private static volatile c:Ladn;


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Ladn;->a:Z

    return-void
.end method

.method public static a()Ladn;
    .locals 2

    .prologue
    .line 9
    sget-object v0, Ladn;->c:Ladn;

    if-nez v0, :cond_1

    .line 10
    const-class v1, Ladn;

    monitor-enter v1

    .line 11
    :try_start_0
    sget-object v0, Ladn;->c:Ladn;

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Ladn;

    invoke-direct {v0}, Ladn;-><init>()V

    sput-object v0, Ladn;->c:Ladn;

    .line 14
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :cond_1
    sget-object v0, Ladn;->c:Ladn;

    return-object v0

    .line 14
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
