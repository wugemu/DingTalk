.class public abstract Lhtm$b;
.super Lhtm$c;
.source "ReportBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhtm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "b"
.end annotation


# instance fields
.field c:Ljava/io/File;

.field final synthetic d:Lhtm;


# direct methods
.method public constructor <init>(Lhtm;Landroid/content/Context;Lhtn;Lhtd;Ljava/lang/String;Ljava/lang/String;JLjava/io/File;Ljava/util/Map;)V
    .locals 3
    .param p1, "this$0"    # Lhtm;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "reporterContext"    # Lhtn;
    .param p4, "configuration"    # Lhtd;
    .param p5, "reportName"    # Ljava/lang/String;
    .param p6, "reportType"    # Ljava/lang/String;
    .param p7, "timestamp"    # J
    .param p9, "reportFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lhtn;",
            "Lhtd;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/io/File;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 438
    .local p10, "extraInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lhtm$b;->d:Lhtm;

    invoke-direct {p0, p1}, Lhtm$c;-><init>(Lhtm;)V

    .line 439
    iput-object p2, p0, Lhtm$b;->h:Landroid/content/Context;

    .line 440
    iput-object p3, p0, Lhtm$b;->i:Lhtn;

    .line 441
    iput-object p4, p0, Lhtm$b;->j:Lhtd;

    .line 442
    iput-object p5, p0, Lhtm$b;->e:Ljava/lang/String;

    .line 443
    iput-object p6, p0, Lhtm$b;->f:Ljava/lang/String;

    .line 444
    iput-wide p7, p0, Lhtm$b;->g:J

    .line 445
    iput-object p9, p0, Lhtm$b;->c:Ljava/io/File;

    .line 446
    iput-object p10, p0, Lhtm$b;->l:Ljava/util/Map;

    .line 448
    invoke-virtual {p9}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 449
    invoke-virtual {p9}, Ljava/io/File;->delete()Z

    .line 453
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lhtm$b;->k:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    :goto_0
    return-void

    .line 454
    :catch_0
    move-exception v0

    .line 455
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v1, "create fileOutputStream."

    invoke-static {v1, v0}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
