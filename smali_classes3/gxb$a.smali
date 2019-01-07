.class public final Lgxb$a;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgxb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgxb$a$a;
    }
.end annotation


# instance fields
.field final a:Lgxb$b;

.field b:Z

.field final synthetic c:Lgxb;


# direct methods
.method private constructor <init>(Lgxb;Lgxb$b;)V
    .locals 0
    .param p1, "this$0"    # Lgxb;
    .param p2, "entry"    # Lgxb$b;

    .prologue
    .line 778
    iput-object p1, p0, Lgxb$a;->c:Lgxb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 779
    iput-object p2, p0, Lgxb$a;->a:Lgxb$b;

    .line 780
    return-void
.end method

.method synthetic constructor <init>(Lgxb;Lgxb$b;B)V
    .locals 0
    .param p1, "x0"    # Lgxb;
    .param p2, "x1"    # Lgxb$b;

    .prologue
    .line 774
    invoke-direct {p0, p1, p2}, Lgxb$a;-><init>(Lgxb;Lgxb$b;)V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/io/OutputStream;
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 815
    iget-object v1, p0, Lgxb$a;->c:Lgxb;

    monitor-enter v1

    .line 816
    :try_start_0
    iget-object v0, p0, Lgxb$a;->a:Lgxb$b;

    .line 1896
    iget-object v0, v0, Lgxb$b;->d:Lgxb$a;

    .line 816
    if-eq v0, p0, :cond_0

    .line 817
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 820
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 819
    :cond_0
    :try_start_1
    new-instance v0, Lgxb$a$a;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lgxb$a;->a:Lgxb$b;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgxb$b;->b(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Lgxb$a$a;-><init>(Lgxb$a;Ljava/io/OutputStream;B)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public final a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 841
    iget-boolean v0, p0, Lgxb$a;->b:Z

    if-eqz v0, :cond_0

    .line 842
    iget-object v0, p0, Lgxb$a;->c:Lgxb;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lgxb;->a(Lgxb;Lgxb$a;Z)V

    .line 843
    iget-object v0, p0, Lgxb$a;->c:Lgxb;

    iget-object v1, p0, Lgxb$a;->a:Lgxb$b;

    .line 2896
    iget-object v1, v1, Lgxb$b;->a:Ljava/lang/String;

    .line 843
    invoke-virtual {v0, v1}, Lgxb;->c(Ljava/lang/String;)Z

    .line 847
    :goto_0
    return-void

    .line 845
    :cond_0
    iget-object v0, p0, Lgxb$a;->c:Lgxb;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lgxb;->a(Lgxb;Lgxb$a;Z)V

    goto :goto_0
.end method

.method public final b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 854
    iget-object v0, p0, Lgxb$a;->c:Lgxb;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lgxb;->a(Lgxb;Lgxb$a;Z)V

    .line 855
    return-void
.end method
