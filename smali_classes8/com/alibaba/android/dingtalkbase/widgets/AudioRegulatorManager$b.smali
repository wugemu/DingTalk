.class public final Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$b;
.super Ljava/lang/Object;
.source "AudioRegulatorManager.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/media/AudioManager;)V
    .locals 1
    .param p1, "audioManager"    # Landroid/media/AudioManager;

    .prologue
    .line 266
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setMode(I)V

    .line 267
    return-void
.end method

.method public final b(Landroid/media/AudioManager;)V
    .locals 1
    .param p1, "audioManager"    # Landroid/media/AudioManager;

    .prologue
    .line 271
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setMode(I)V

    .line 272
    return-void
.end method
