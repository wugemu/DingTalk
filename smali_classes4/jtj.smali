.class public abstract Ljtj;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private volatile a:I

.field b:Ljti;

.field private volatile c:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 27
    sget v0, Ljtd;->a:I

    const/4 v1, 0x1

    sget-object v2, Ljti;->a:Ljti;

    invoke-direct {p0, v0, v1, v2}, Ljtj;-><init>(IZLjti;)V

    .line 28
    return-void
.end method

.method public constructor <init>(IZLjti;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget v0, Ljtd;->a:I

    iput v0, p0, Ljtj;->a:I

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljtj;->c:Z

    .line 20
    sget-object v0, Ljti;->a:Ljti;

    iput-object v0, p0, Ljtj;->b:Ljti;

    .line 1157
    iput p1, p0, Ljtj;->a:I

    .line 1180
    iput-boolean p2, p0, Ljtj;->c:Z

    .line 1203
    iput-object p3, p0, Ljtj;->b:Ljti;

    .line 43
    return-void
.end method


# virtual methods
.method protected abstract a(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public final b(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 72
    .line 2168
    iget-boolean v0, p0, Ljtj;->c:Z

    .line 72
    if-eqz v0, :cond_0

    .line 75
    iget v0, p0, Ljtj;->a:I

    invoke-static {v0, p1}, Ljte$a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual/range {p0 .. p7}, Ljtj;->a(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    :cond_0
    return-void
.end method
