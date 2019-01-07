.class final Liek$b;
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
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Liek$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/media/AudioManager;)V
    .locals 1
    .param p1, "audioManager"    # Landroid/media/AudioManager;

    .prologue
    .line 171
    invoke-static {}, Liek;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1030
    invoke-static {}, Lifd$a;->a()Lifd;

    .line 172
    invoke-static {}, Lifd;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setMode(I)V

    .line 181
    :goto_0
    return-void

    .line 175
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_0

    .line 179
    :cond_1
    invoke-static {p1}, Liek;->a(Landroid/media/AudioManager;)V

    goto :goto_0
.end method

.method public final b(Landroid/media/AudioManager;)V
    .locals 1
    .param p1, "audioManager"    # Landroid/media/AudioManager;

    .prologue
    .line 185
    invoke-static {}, Liek;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setMode(I)V

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_0
    invoke-static {p1}, Liek;->a(Landroid/media/AudioManager;)V

    goto :goto_0
.end method
