.class final Liek$d;
.super Ljava/lang/Object;
.source "AudioRegulatorManager.java"

# interfaces
.implements Liek$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liek;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 255
    invoke-direct {p0}, Liek$d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/media/AudioManager;)V
    .locals 1
    .param p1, "audioManager"    # Landroid/media/AudioManager;

    .prologue
    .line 259
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setMode(I)V

    .line 260
    return-void
.end method

.method public final b(Landroid/media/AudioManager;)V
    .locals 1
    .param p1, "audioManager"    # Landroid/media/AudioManager;

    .prologue
    .line 264
    const/16 v0, 0xb

    invoke-static {v0}, Lieh;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setMode(I)V

    .line 267
    :cond_0
    return-void
.end method
