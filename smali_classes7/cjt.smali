.class public final Lcjt;
.super Ljava/lang/Object;
.source "FpsFrameCallback.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcjv;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcjt;->a:Z

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcjt;->d:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcjt;->b:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 5
    .param p1, "frameTimeNanos"    # J

    .prologue
    .line 26
    iget-boolean v0, p0, Lcjt;->a:Z

    if-nez v0, :cond_0

    .line 1072
    iget-object v0, p0, Lcjt;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 41
    :goto_0
    return-void

    .line 31
    :cond_0
    iget-wide v0, p0, Lcjt;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 32
    iput-wide p1, p0, Lcjt;->c:J

    .line 2068
    :cond_1
    iget-wide v0, p0, Lcjt;->c:J

    sub-long v0, p1, v0

    sget-wide v2, Lcju;->a:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    const/4 v0, 0x1

    .line 35
    :goto_1
    if-eqz v0, :cond_4

    .line 3058
    iget-object v0, p0, Lcjt;->d:Ljava/util/List;

    invoke-static {v0}, Lcjy;->a(Ljava/util/List;)I

    move-result v1

    .line 3059
    iget-object v0, p0, Lcjt;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcjv;

    .line 3060
    invoke-interface {v0, v1}, Lcjv;->a(I)V

    goto :goto_2

    .line 2068
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 3063
    :cond_3
    iget-object v0, p0, Lcjt;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3064
    iput-wide p1, p0, Lcjt;->c:J

    .line 38
    :cond_4
    iget-object v0, p0, Lcjt;->d:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0
.end method
