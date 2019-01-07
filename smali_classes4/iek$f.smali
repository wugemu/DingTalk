.class final Liek$f;
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
    name = "f"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0}, Liek$f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/media/AudioManager;)V
    .locals 0
    .param p1, "audioManager"    # Landroid/media/AudioManager;

    .prologue
    .line 240
    invoke-static {p1}, Liek;->b(Landroid/media/AudioManager;)V

    .line 241
    return-void
.end method

.method public final b(Landroid/media/AudioManager;)V
    .locals 0
    .param p1, "audioManager"    # Landroid/media/AudioManager;

    .prologue
    .line 245
    invoke-static {p1}, Liek;->c(Landroid/media/AudioManager;)V

    .line 246
    return-void
.end method
