.class final Liek$a;
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
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Liek$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/media/AudioManager;)V
    .locals 4
    .param p1, "audioManager"    # Landroid/media/AudioManager;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 135
    invoke-static {}, Liek;->a()I

    move-result v0

    if-eq v3, v0, :cond_0

    const/4 v0, 0x4

    invoke-static {}, Liek;->a()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 136
    :cond_0
    invoke-virtual {p1, v2}, Landroid/media/AudioManager;->setMode(I)V

    .line 148
    :goto_0
    return-void

    .line 138
    :cond_1
    invoke-static {}, Liek;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1030
    invoke-static {}, Lifd$a;->a()Lifd;

    .line 139
    invoke-static {}, Lifd;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    invoke-virtual {p1, v3}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_0

    .line 142
    :cond_2
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_0

    .line 145
    :cond_3
    invoke-virtual {p1, v2}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_0
.end method

.method public final b(Landroid/media/AudioManager;)V
    .locals 3
    .param p1, "audioManager"    # Landroid/media/AudioManager;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x3

    .line 152
    invoke-static {}, Liek;->a()I

    move-result v0

    if-eq v2, v0, :cond_0

    const/4 v0, 0x4

    invoke-static {}, Liek;->a()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 2030
    :cond_0
    invoke-static {}, Lifd$a;->a()Lifd;

    .line 153
    invoke-static {}, Lifd;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {p1, v2}, Landroid/media/AudioManager;->setMode(I)V

    .line 165
    :goto_0
    return-void

    .line 156
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_0

    .line 159
    :cond_2
    invoke-static {}, Liek;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 160
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_0

    .line 162
    :cond_3
    invoke-static {p1}, Liek;->a(Landroid/media/AudioManager;)V

    goto :goto_0
.end method
