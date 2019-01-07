.class public Lafd;
.super Ljava/lang/Object;
.source "MailSendController.java"


# static fields
.field private static volatile d:Lafd;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lagz;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/google/gson/JsonParser;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lafd;->a:Ljava/lang/Object;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lafd;->b:Ljava/util/Map;

    .line 41
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    iput-object v0, p0, Lafd;->c:Lcom/google/gson/JsonParser;

    return-void
.end method

.method public static a()Lafd;
    .locals 2

    .prologue
    .line 44
    sget-object v0, Lafd;->d:Lafd;

    if-nez v0, :cond_1

    .line 45
    const-class v1, Lafd;

    monitor-enter v1

    .line 46
    :try_start_0
    sget-object v0, Lafd;->d:Lafd;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lafd;

    invoke-direct {v0}, Lafd;-><init>()V

    sput-object v0, Lafd;->d:Lafd;

    .line 49
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_1
    sget-object v0, Lafd;->d:Lafd;

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
