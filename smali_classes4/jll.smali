.class public final Ljll;
.super Ljava/lang/Object;
.source "InputContext.java"


# instance fields
.field public a:Ljln;

.field public b:Ljlw;

.field public c:Ljava/net/URL;

.field public d:Ljava/io/File;

.field public e:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljlw;)V
    .locals 1
    .param p1, "task"    # Ljlw;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Ljll;->b:Ljlw;

    .line 38
    new-instance v0, Ljln;

    invoke-direct {v0, p1}, Ljln;-><init>(Ljlw;)V

    iput-object v0, p0, Ljll;->a:Ljln;

    .line 39
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    .line 75
    iget-object v1, p0, Ljll;->b:Ljlw;

    iget-object v1, v1, Ljlw;->e:Ljlu;

    iget-wide v2, v1, Ljlu;->b:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_1

    iget-object v1, p0, Ljll;->b:Ljlw;

    iget-object v1, v1, Ljlw;->e:Ljlu;

    iget-object v1, v1, Ljlu;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Ljll;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljll;->b:Ljlw;

    iget-object v1, v1, Ljlw;->e:Ljlu;

    iget-wide v2, v1, Ljlu;->b:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljll;->b:Ljlw;

    iget-object v1, v1, Ljlw;->e:Ljlu;

    iget-wide v2, v1, Ljlu;->b:J

    iget-object v1, p0, Ljll;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Ljll;->b:Ljlw;

    iget-object v1, v1, Ljlw;->e:Ljlu;

    iget-object v1, v1, Ljlu;->c:Ljava/lang/String;

    iget-object v2, p0, Ljll;->d:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljmc;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
