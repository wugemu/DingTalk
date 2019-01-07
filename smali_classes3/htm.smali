.class public final Lhtm;
.super Ljava/lang/Object;
.source "ReportBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhtm$a;,
        Lhtm$d;,
        Lhtm$b;,
        Lhtm$c;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lhtn;

.field public c:Lhtd;

.field public d:Lhtq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lhtn;Lhtd;Lhtq;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "repoterContext"    # Lhtn;
    .param p3, "configuration"    # Lhtd;
    .param p4, "storageManager"    # Lhtq;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lhtm;->a:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lhtm;->b:Lhtn;

    .line 39
    iput-object p3, p0, Lhtm;->c:Lhtd;

    .line 40
    iput-object p4, p0, Lhtm;->d:Lhtq;

    .line 41
    return-void
.end method


# virtual methods
.method public final a()[Lhte;
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 125
    invoke-virtual {p0}, Lhtm;->b()[Ljava/io/File;

    move-result-object v3

    .line 126
    .local v3, "reportFiles":[Ljava/io/File;
    if-eqz v3, :cond_1

    array-length v4, v3

    if-lez v4, :cond_1

    .line 127
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v1, "crashReports":Ljava/util/List;, "Ljava/util/List<Lhte;>;"
    array-length v6, v3

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v2, v3, v4

    .line 129
    .local v2, "reportFile":Ljava/io/File;
    iget-object v7, p0, Lhtm;->a:Landroid/content/Context;

    iget-object v8, p0, Lhtm;->b:Lhtn;

    invoke-static {v7, v2, v8, v5}, Lhte;->a(Landroid/content/Context;Ljava/io/File;Lhtn;Z)Lhte;

    move-result-object v0

    .line 130
    .local v0, "crashReport":Lhte;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 132
    .end local v0    # "crashReport":Lhte;
    .end local v2    # "reportFile":Ljava/io/File;
    :cond_0
    new-array v4, v5, [Lhte;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lhte;

    .line 134
    .end local v1    # "crashReports":Ljava/util/List;, "Ljava/util/List<Lhte;>;"
    :goto_1
    return-object v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method b()[Ljava/io/File;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 143
    iget-object v1, p0, Lhtm;->d:Lhtq;

    new-instance v2, Lhtm$1;

    invoke-direct {v2, p0}, Lhtm$1;-><init>(Lhtm;)V

    .line 1081
    iget-object v1, v1, Lhtq;->d:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 152
    .local v0, "reportFiles":[Ljava/io/File;
    return-object v0
.end method

.method public final c()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 160
    :try_start_0
    invoke-virtual {p0}, Lhtm;->b()[Ljava/io/File;

    move-result-object v0

    .line 161
    .local v0, "crashReportFiles":[Ljava/io/File;
    if-eqz v0, :cond_0

    array-length v3, v0

    const/16 v4, 0x14

    if-le v3, v4, :cond_0

    .line 162
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 163
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v3, Lhtm$2;

    invoke-direct {v3, p0}, Lhtm$2;-><init>(Lhtm;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 178
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 184
    .end local v0    # "crashReportFiles":[Ljava/io/File;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :catch_0
    move-exception v1

    .line 185
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "clear crashReport file"

    invoke-static {v3, v1}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 187
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method
