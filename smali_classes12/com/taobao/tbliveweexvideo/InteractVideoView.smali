.class public Lcom/taobao/tbliveweexvideo/InteractVideoView;
.super Ljov;
.source "InteractVideoView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0}, Ljov;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(F)V
    .locals 0
    .param p1, "volume"    # F

    .prologue
    .line 69
    return-void
.end method

.method public final a(J)V
    .locals 0
    .param p1, "currentTime"    # J

    .prologue
    .line 74
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 24
    return-void
.end method

.method public final a(Ljov$a;)V
    .locals 0
    .param p1, "listener"    # Ljov$a;

    .prologue
    .line 114
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "autoPlay"    # Z

    .prologue
    .line 29
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .param p1, "scale"    # Ljava/lang/String;

    .prologue
    .line 59
    return-void
.end method

.method public final b(Z)V
    .locals 0
    .param p1, "controls"    # Z

    .prologue
    .line 39
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public final c()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 78
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final c(Z)V
    .locals 0
    .param p1, "muted"    # Z

    .prologue
    .line 44
    return-void
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public final d(Z)V
    .locals 0
    .param p1, "loop"    # Z

    .prologue
    .line 54
    return-void
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method
