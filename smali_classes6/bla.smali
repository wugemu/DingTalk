.class public Lbla;
.super Ljava/lang/Object;
.source "VoicePlayerManager.java"


# static fields
.field private static volatile d:Lbla;


# instance fields
.field public a:Lcom/alibaba/android/ding/widget/VoicePlayView;

.field public b:Ljava/lang/String;

.field public c:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static a()Lbla;
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lbla;->d:Lbla;

    if-nez v0, :cond_1

    .line 22
    const-class v1, Lbla;

    monitor-enter v1

    .line 23
    :try_start_0
    sget-object v0, Lbla;->d:Lbla;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lbla;

    invoke-direct {v0}, Lbla;-><init>()V

    sput-object v0, Lbla;->d:Lbla;

    .line 26
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_1
    sget-object v0, Lbla;->d:Lbla;

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final b()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lbla;->a:Lcom/alibaba/android/ding/widget/VoicePlayView;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lbla;->a:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/VoicePlayView;->a()V

    .line 87
    const-string/jumbo v0, ""

    iput-object v0, p0, Lbla;->b:Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lbla;->c:I

    .line 90
    :cond_0
    return-void
.end method
