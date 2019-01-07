.class public final Ljoj;
.super Ljava/lang/Object;
.source "MediaPlayerRecycler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljoj$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:Z

.field public e:I

.field public f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljoj$a;",
            ">;"
        }
    .end annotation
.end field

.field public h:F

.field public i:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Ljoj;->h:F

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljoj;->i:Z

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Ljoj;->a:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Ljoj;->h:F

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljoj;->i:Z

    .line 43
    iput-object p1, p0, Ljoj;->a:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljoj$a;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "listener"    # Ljoj$a;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Ljoj;->h:F

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljoj;->i:Z

    .line 47
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ljoj;->g:Ljava/util/List;

    .line 48
    iget-object v0, p0, Ljoj;->g:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    iput-object p1, p0, Ljoj;->a:Ljava/lang/String;

    .line 50
    return-void
.end method
