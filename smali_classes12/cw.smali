.class public final Lcw;
.super Lcv;
.source "LoaderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcw$a;
    }
.end annotation


# static fields
.field static a:Z


# instance fields
.field public final b:Lfx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfx",
            "<",
            "Lcw$a;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lfx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfx",
            "<",
            "Lcw$a;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/String;

.field public e:Z

.field public f:Z

.field public g:Lcm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    sput-boolean v0, Lcw;->a:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcm;Z)V
    .locals 1
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "host"    # Lcm;
    .param p3, "started"    # Z

    .prologue
    .line 526
    invoke-direct {p0}, Lcv;-><init>()V

    .line 194
    new-instance v0, Lfx;

    invoke-direct {v0}, Lfx;-><init>()V

    iput-object v0, p0, Lcw;->b:Lfx;

    .line 200
    new-instance v0, Lfx;

    invoke-direct {v0}, Lfx;-><init>()V

    iput-object v0, p0, Lcw;->c:Lfx;

    .line 527
    iput-object p1, p0, Lcw;->d:Ljava/lang/String;

    .line 528
    iput-object p2, p0, Lcw;->g:Lcm;

    .line 529
    iput-boolean p3, p0, Lcw;->e:Z

    .line 530
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 858
    iget-object v3, p0, Lcw;->b:Lfx;

    invoke-virtual {v3}, Lfx;->b()I

    move-result v3

    if-lez v3, :cond_0

    .line 859
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "Active Loaders:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 860
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 861
    .local v1, "innerPrefix":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcw;->b:Lfx;

    invoke-virtual {v3}, Lfx;->b()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 862
    iget-object v3, p0, Lcw;->b:Lfx;

    invoke-virtual {v3, v0}, Lfx;->d(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcw$a;

    .line 863
    .local v2, "li":Lcw$a;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcw;->b:Lfx;

    invoke-virtual {v3, v0}, Lfx;->c(I)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 864
    const-string/jumbo v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcw$a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 865
    invoke-virtual {v2, v1, p2, p3, p4}, Lcw$a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 861
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 868
    .end local v0    # "i":I
    .end local v1    # "innerPrefix":Ljava/lang/String;
    .end local v2    # "li":Lcw$a;
    :cond_0
    iget-object v3, p0, Lcw;->c:Lfx;

    invoke-virtual {v3}, Lfx;->b()I

    move-result v3

    if-lez v3, :cond_1

    .line 869
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "Inactive Loaders:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 870
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 871
    .restart local v1    # "innerPrefix":Ljava/lang/String;
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v3, p0, Lcw;->c:Lfx;

    invoke-virtual {v3}, Lfx;->b()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 872
    iget-object v3, p0, Lcw;->c:Lfx;

    invoke-virtual {v3, v0}, Lfx;->d(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcw$a;

    .line 873
    .restart local v2    # "li":Lcw$a;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcw;->c:Lfx;

    invoke-virtual {v3, v0}, Lfx;->c(I)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 874
    const-string/jumbo v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcw$a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 875
    invoke-virtual {v2, v1, p2, p3, p4}, Lcw$a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 871
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 878
    .end local v0    # "i":I
    .end local v1    # "innerPrefix":Ljava/lang/String;
    .end local v2    # "li":Lcw$a;
    :cond_1
    return-void
.end method

.method public final a()Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 882
    const/4 v3, 0x0

    .line 883
    .local v3, "loadersRunning":Z
    iget-object v4, p0, Lcw;->b:Lfx;

    invoke-virtual {v4}, Lfx;->b()I

    move-result v0

    .line 884
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 885
    iget-object v4, p0, Lcw;->b:Lfx;

    invoke-virtual {v4, v1}, Lfx;->d(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcw$a;

    .line 886
    .local v2, "li":Lcw$a;
    iget-boolean v4, v2, Lcw$a;->h:Z

    if-eqz v4, :cond_0

    iget-boolean v4, v2, Lcw$a;->f:Z

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    or-int/2addr v3, v4

    .line 884
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 886
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 888
    .end local v2    # "li":Lcw$a;
    :cond_1
    return v3
.end method

.method public final b()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 758
    iget-boolean v2, p0, Lcw;->e:Z

    if-eqz v2, :cond_1

    .line 759
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "here"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 760
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 761
    const-string/jumbo v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Called doStart when already started: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 772
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    return-void

    .line 765
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcw;->e:Z

    .line 769
    iget-object v2, p0, Lcw;->b:Lfx;

    invoke-virtual {v2}, Lfx;->b()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 770
    iget-object v2, p0, Lcw;->b:Lfx;

    invoke-virtual {v2, v1}, Lfx;->d(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcw$a;

    invoke-virtual {v2}, Lcw$a;->a()V

    .line 769
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public final c()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 776
    iget-boolean v2, p0, Lcw;->e:Z

    if-nez v2, :cond_0

    .line 777
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "here"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 778
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 779
    const-string/jumbo v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Called doStop when not started: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 787
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void

    .line 783
    :cond_0
    iget-object v2, p0, Lcw;->b:Lfx;

    invoke-virtual {v2}, Lfx;->b()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 784
    iget-object v2, p0, Lcw;->b:Lfx;

    invoke-virtual {v2, v1}, Lfx;->d(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcw$a;

    invoke-virtual {v2}, Lcw$a;->b()V

    .line 783
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 786
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcw;->e:Z

    goto :goto_0
.end method

.method public final d()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 791
    iget-boolean v2, p0, Lcw;->e:Z

    if-nez v2, :cond_1

    .line 792
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "here"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 793
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 794
    const-string/jumbo v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Called doRetain when not started: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 803
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    return-void

    .line 798
    :cond_1
    iput-boolean v5, p0, Lcw;->f:Z

    .line 799
    iput-boolean v4, p0, Lcw;->e:Z

    .line 800
    iget-object v2, p0, Lcw;->b:Lfx;

    invoke-virtual {v2}, Lfx;->b()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 801
    iget-object v2, p0, Lcw;->b:Lfx;

    invoke-virtual {v2, v1}, Lfx;->d(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcw$a;

    .line 1276
    iput-boolean v5, v2, Lcw$a;->i:Z

    .line 1277
    iget-boolean v3, v2, Lcw$a;->h:Z

    iput-boolean v3, v2, Lcw$a;->j:Z

    .line 1278
    iput-boolean v4, v2, Lcw$a;->h:Z

    .line 1279
    const/4 v3, 0x0

    iput-object v3, v2, Lcw$a;->c:Lcv$a;

    .line 800
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public final e()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 817
    iget-object v1, p0, Lcw;->b:Lfx;

    invoke-virtual {v1}, Lfx;->b()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 818
    iget-object v1, p0, Lcw;->b:Lfx;

    invoke-virtual {v1, v0}, Lfx;->d(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcw$a;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcw$a;->k:Z

    .line 817
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 820
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 823
    iget-object v1, p0, Lcw;->b:Lfx;

    invoke-virtual {v1}, Lfx;->b()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 824
    iget-object v1, p0, Lcw;->b:Lfx;

    invoke-virtual {v1, v0}, Lfx;->d(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcw$a;

    .line 1308
    iget-boolean v2, v1, Lcw$a;->h:Z

    if-eqz v2, :cond_0

    .line 1309
    iget-boolean v2, v1, Lcw$a;->k:Z

    if-eqz v2, :cond_0

    .line 1310
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcw$a;->k:Z

    .line 1311
    iget-boolean v2, v1, Lcw$a;->e:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lcw$a;->i:Z

    if-nez v2, :cond_0

    .line 1312
    iget-object v2, v1, Lcw$a;->d:Landroid/support/v4/content/Loader;

    iget-object v1, v1, Lcw$a;->g:Ljava/lang/Object;

    .line 823
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 826
    :cond_1
    return-void
.end method

.method public final g()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 829
    iget-boolean v1, p0, Lcw;->f:Z

    if-nez v1, :cond_1

    .line 831
    iget-object v1, p0, Lcw;->b:Lfx;

    invoke-virtual {v1}, Lfx;->b()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 832
    iget-object v1, p0, Lcw;->b:Lfx;

    invoke-virtual {v1, v0}, Lfx;->d(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcw$a;

    invoke-virtual {v1}, Lcw$a;->c()V

    .line 831
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 834
    :cond_0
    iget-object v1, p0, Lcw;->b:Lfx;

    invoke-virtual {v1}, Lfx;->c()V

    .line 838
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcw;->c:Lfx;

    invoke-virtual {v1}, Lfx;->b()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 839
    iget-object v1, p0, Lcw;->c:Lfx;

    invoke-virtual {v1, v0}, Lfx;->d(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcw$a;

    invoke-virtual {v1}, Lcw$a;->c()V

    .line 838
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 841
    :cond_2
    iget-object v1, p0, Lcw;->c:Lfx;

    invoke-virtual {v1}, Lfx;->c()V

    .line 842
    const/4 v1, 0x0

    iput-object v1, p0, Lcw;->g:Lcm;

    .line 843
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 848
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "LoaderManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    const-string/jumbo v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    iget-object v1, p0, Lcw;->g:Lcm;

    invoke-static {v1, v0}, Lfn;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 852
    const-string/jumbo v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
