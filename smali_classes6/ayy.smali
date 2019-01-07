.class public final Layy;
.super Lcom/alibaba/android/ding/base/objects/CommentContent;
.source "CommentAudio.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/alibaba/android/ding/base/objects/CommentContent;-><init>()V

    .line 20
    sget-object v0, Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;->Audio:Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

    iput-object v0, p0, Layy;->f:Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

    .line 21
    return-void
.end method

.method public constructor <init>(Lazh;)V
    .locals 2
    .param p1, "model"    # Lazh;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/base/objects/CommentContent;-><init>(Lazh;)V

    .line 25
    if-eqz p1, :cond_0

    iget-object v0, p1, Lazh;->c:Lazf;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p1, Lazh;->c:Lazf;

    iget-object v0, v0, Lazf;->a:Ljava/lang/String;

    iput-object v0, p0, Layy;->a:Ljava/lang/String;

    .line 27
    iget-object v0, p1, Lazh;->c:Lazf;

    iget-object v0, v0, Lazf;->b:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Layy;->b:J

    .line 28
    iget-object v0, p1, Lazh;->c:Lazf;

    iget-object v0, v0, Lazf;->c:Ljava/util/List;

    iput-object v0, p0, Layy;->c:Ljava/util/List;

    .line 29
    iget-object v0, p1, Lazh;->c:Lazf;

    iget-object v0, v0, Lazf;->e:Ljava/lang/String;

    iput-object v0, p0, Layy;->e:Ljava/lang/String;

    .line 30
    iget-object v0, p1, Lazh;->c:Lazf;

    iget-object v0, v0, Lazf;->d:Ljava/lang/String;

    iput-object v0, p0, Layy;->d:Ljava/lang/String;

    .line 32
    :cond_0
    return-void
.end method
