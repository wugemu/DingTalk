.class public final Ljnl;
.super Ljava/lang/Object;
.source "Config.java"


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Ljoc;

.field public final c:Ljoa;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljoc;Ljoa;)V
    .locals 0
    .param p1, "cacheRoot"    # Ljava/io/File;
    .param p2, "fileNameGenerator"    # Ljoc;
    .param p3, "diskUsage"    # Ljoa;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Ljnl;->a:Ljava/io/File;

    .line 22
    iput-object p2, p0, Ljnl;->b:Ljoc;

    .line 23
    iput-object p3, p0, Ljnl;->c:Ljoa;

    .line 24
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 27
    iget-object v1, p0, Ljnl;->b:Ljoc;

    invoke-interface {v1, p1}, Ljoc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Ljnl;->a:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method
