.class public final Liei;
.super Ljava/lang/Object;
.source "AudioFocusSwitch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liei$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method public static a(Landroid/content/Context;ILiei$a;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "streamType"    # I
    .param p2, "listener"    # Liei$a;

    .prologue
    .line 29
    if-nez p0, :cond_1

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    const/16 v3, 0x8

    :try_start_0
    invoke-static {v3}, Lieh;->a(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 34
    const-string/jumbo v3, "audio"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 35
    .local v0, "am":Landroid/media/AudioManager;
    if-nez p2, :cond_2

    const/4 v2, 0x0

    .line 36
    .local v2, "l":Landroid/media/AudioManager$OnAudioFocusChangeListener;
    :goto_1
    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 38
    .end local v0    # "am":Landroid/media/AudioManager;
    .end local v2    # "l":Landroid/media/AudioManager$OnAudioFocusChangeListener;
    :catch_0
    move-exception v1

    .line 39
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 35
    .end local v1    # "ex":Ljava/lang/Throwable;
    .restart local v0    # "am":Landroid/media/AudioManager;
    :cond_2
    :try_start_1
    invoke-static {p2}, Liei$a;->a(Liei$a;)Liei$a$a;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Liei$a;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Liei$a;

    .prologue
    .line 49
    const/16 v3, 0x8

    :try_start_0
    invoke-static {v3}, Lieh;->a(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    const-string/jumbo v3, "audio"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 51
    .local v0, "am":Landroid/media/AudioManager;
    if-nez p1, :cond_1

    const/4 v2, 0x0

    .line 52
    .local v2, "l":Landroid/media/AudioManager$OnAudioFocusChangeListener;
    :goto_0
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 57
    .end local v0    # "am":Landroid/media/AudioManager;
    .end local v2    # "l":Landroid/media/AudioManager$OnAudioFocusChangeListener;
    :cond_0
    :goto_1
    return-void

    .line 51
    .restart local v0    # "am":Landroid/media/AudioManager;
    :cond_1
    invoke-static {p1}, Liei$a;->a(Liei$a;)Liei$a$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 54
    .end local v0    # "am":Landroid/media/AudioManager;
    :catch_0
    move-exception v1

    .line 55
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method
