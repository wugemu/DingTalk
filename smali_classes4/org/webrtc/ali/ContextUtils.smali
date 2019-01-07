.class public Lorg/webrtc/ali/ContextUtils;
.super Ljava/lang/Object;
.source "ContextUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContextUtils"

.field private static applicationContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lorg/webrtc/ali/ContextUtils;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 2
    .param p0, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 29
    sget-object v0, Lorg/webrtc/ali/ContextUtils;->applicationContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 32
    const-string/jumbo v0, "ContextUtils"

    const-string/jumbo v1, "Calling ContextUtils.initialize multiple times, this will crash in the future!"

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_0
    if-nez p0, :cond_1

    .line 36
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Application context cannot be null for ContextUtils.initialize."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_1
    sput-object p0, Lorg/webrtc/ali/ContextUtils;->applicationContext:Landroid/content/Context;

    .line 39
    return-void
.end method
