.class public final Ldjn;
.super Ljava/lang/Object;
.source "EmotionGuideChatManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldjn$b;,
        Ldjn$c;,
        Ldjn$a;
    }
.end annotation


# instance fields
.field public a:J

.field public b:Z


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {}, Lebc;->i()Z

    move-result v0

    iput-boolean v0, p0, Ldjn;->b:Z

    .line 47
    iget-boolean v0, p0, Ldjn;->b:Z

    if-eqz v0, :cond_0

    .line 48
    const-string/jumbo v0, "pref_key_im_gif_emotion_first_seen"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcpk;->a(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Ldjn;->a:J

    .line 50
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ldjn;-><init>()V

    return-void
.end method
