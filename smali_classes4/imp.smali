.class public Limp;
.super Ljava/lang/Object;
.source "VoiceRecorder.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field protected a:I

.field public b:I

.field private c:Limr;

.field private d:Limu;

.field private e:Lims;

.field private f:Limt;

.field private g:J

.field private h:I

.field private i:Landroid/media/MediaRecorder;

.field private j:Landroid/media/MediaPlayer;

.field private final k:Landroid/os/Handler;

.field private final l:I

.field private m:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v3, p0, Limp;->a:I

    .line 42
    iput-object v2, p0, Limp;->c:Limr;

    .line 43
    iput-object v2, p0, Limp;->d:Limu;

    .line 44
    iput-object v2, p0, Limp;->e:Lims;

    .line 45
    iput-object v2, p0, Limp;->f:Limt;

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Limp;->g:J

    .line 48
    iput v3, p0, Limp;->h:I

    .line 50
    iput-object v2, p0, Limp;->i:Landroid/media/MediaRecorder;

    .line 51
    iput-object v2, p0, Limp;->j:Landroid/media/MediaPlayer;

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Limp;->k:Landroid/os/Handler;

    .line 56
    const/16 v0, 0x96

    iput v0, p0, Limp;->b:I

    .line 58
    const/16 v0, -0x64

    iput v0, p0, Limp;->l:I

    .line 60
    new-instance v0, Limq;

    invoke-direct {v0, p0}, Limq;-><init>(Limp;)V

    iput-object v0, p0, Limp;->m:Ljava/lang/Runnable;

    .line 67
    invoke-static {}, Lika;->d()Likq;

    move-result-object v0

    const-string/jumbo v1, "VoiceRecorder"

    const-string/jumbo v2, "VoiceRecorder onCreate"

    invoke-interface {v0, v1, v2}, Likq;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method static synthetic a(Limp;)V
    .locals 0

    .prologue
    .line 22
    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .prologue
    .line 353
    .line 357
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .prologue
    .line 347
    .line 349
    const/4 v0, 0x1

    return v0
.end method
