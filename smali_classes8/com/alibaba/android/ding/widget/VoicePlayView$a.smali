.class public abstract Lcom/alibaba/android/ding/widget/VoicePlayView$a;
.super Ljava/lang/Object;
.source "VoicePlayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/widget/VoicePlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 437
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2
    .param p1, "messageId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 443
    invoke-static {}, Lcom/alibaba/android/ding/widget/VoicePlayView;->d()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 445
    :try_start_0
    invoke-static {}, Lcom/alibaba/android/ding/widget/VoicePlayView;->d()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 446
    :catch_0
    move-exception v0

    .line 447
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "[VoicePlayView]onVoicePlayStop failed"

    invoke-static {v1, v0}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
