.class public final Lbhm;
.super Ljava/lang/Object;
.source "CommentRequestMoreEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbhm$a;
    }
.end annotation


# instance fields
.field a:Z

.field public b:Z

.field private c:J

.field private d:I

.field private e:Z

.field private f:Lbhm$a;


# direct methods
.method public constructor <init>(JILbhm$a;)V
    .locals 3
    .param p1, "dingId"    # J
    .param p3, "type"    # I
    .param p4, "commentRequestCallback"    # Lbhm$a;

    .prologue
    const/4 v1, 0x1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x2

    iput v0, p0, Lbhm;->d:I

    .line 27
    iput-boolean v1, p0, Lbhm;->a:Z

    .line 28
    iput-boolean v1, p0, Lbhm;->b:Z

    .line 32
    iput-wide p1, p0, Lbhm;->c:J

    .line 33
    iput p3, p0, Lbhm;->d:I

    .line 34
    iput-object p4, p0, Lbhm;->f:Lbhm$a;

    .line 35
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 9
    .param p1, "cursor"    # J

    .prologue
    .line 57
    iget-boolean v0, p0, Lbhm;->b:Z

    if-nez v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 60
    :cond_0
    new-instance v8, Lbhm$1;

    invoke-direct {v8, p0, p1, p2}, Lbhm$1;-><init>(Lbhm;J)V

    .line 78
    .local v8, "contextListener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/ding/base/objects/CommentObject;>;>;"
    invoke-static {}, Lbbz;->a()Lbbz;

    move-result-object v1

    iget-wide v2, p0, Lbhm;->c:J

    iget v4, p0, Lbhm;->d:I

    const/4 v5, 0x1

    move-wide v6, p1

    invoke-virtual/range {v1 .. v8}, Lbbz;->a(JIZJLcma;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbhm;->e:Z

    .line 51
    iget-object v0, p0, Lbhm;->f:Lbhm$a;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lbhm;->f:Lbhm$a;

    invoke-interface {v0}, Lbhm$a;->a()V

    .line 54
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/List;JI)V
    .locals 2
    .param p2, "cursor"    # J
    .param p4, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/CommentObject;",
            ">;JI)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/CommentObject;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbhm;->e:Z

    .line 39
    iget-object v0, p0, Lbhm;->f:Lbhm$a;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lbhm;->f:Lbhm$a;

    invoke-interface {v0, p1, p2, p3, p4}, Lbhm$a;->a(Ljava/util/List;JI)V

    .line 42
    :cond_0
    return-void
.end method

.method public final b(J)V
    .locals 9
    .param p1, "cursor"    # J

    .prologue
    .line 82
    iget-boolean v0, p0, Lbhm;->a:Z

    if-nez v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 85
    :cond_0
    new-instance v8, Lbhm$2;

    invoke-direct {v8, p0, p1, p2}, Lbhm$2;-><init>(Lbhm;J)V

    .line 106
    .local v8, "contextListener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/ding/base/objects/CommentObject;>;>;"
    invoke-static {}, Lbbz;->a()Lbbz;

    move-result-object v1

    iget-wide v2, p0, Lbhm;->c:J

    iget v4, p0, Lbhm;->d:I

    const/4 v5, 0x0

    move-wide v6, p1

    invoke-virtual/range {v1 .. v8}, Lbbz;->a(JIZJLcma;)V

    goto :goto_0
.end method
