.class public final Lcom/loc/aq;
.super Ljava/lang/Object;
.source "UpdateLogDBOperation.java"


# instance fields
.field private a:Ljbg;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/loc/aq;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/loc/aq;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/aq;->a(Landroid/content/Context;)Ljbg;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/aq;->a:Ljbg;

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljbg;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljbg;

    const-class v2, Ljbl;

    invoke-static {v2}, Ljbg;->a(Ljava/lang/Class;)Ljbf;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Ljbg;-><init>(Landroid/content/Context;Ljbf;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "ud"

    const-string/jumbo v3, "gd"

    invoke-static {v0, v2, v3}, Ljen;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljbo;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 0
    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/loc/aq;->a:Ljbg;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/aq;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/aq;->a(Landroid/content/Context;)Ljbg;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/aq;->a:Ljbg;

    :cond_0
    const-string/jumbo v0, "1=1"

    iget-object v2, p0, Lcom/loc/aq;->a:Ljbg;

    const-class v3, Ljbo;

    .line 1000
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Ljbg;->a(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v0

    .line 0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljbo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "ud"

    const-string/jumbo v3, "gd"

    invoke-static {v0, v2, v3}, Ljen;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Ljbo;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 0
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/loc/aq;->a:Ljbg;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/loc/aq;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/aq;->a(Landroid/content/Context;)Ljbg;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/aq;->a:Ljbg;

    :cond_1
    const-string/jumbo v0, "1=1"

    iget-object v1, p0, Lcom/loc/aq;->a:Ljbg;

    const-class v2, Ljbo;

    .line 2000
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Ljbg;->a(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v1

    .line 0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/loc/aq;->a:Ljbg;

    .line 3000
    invoke-virtual {v0, p1}, Ljbg;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 0
    :catch_0
    move-exception v0

    const-string/jumbo v1, "ud"

    const-string/jumbo v2, "ug"

    invoke-static {v0, v1, v2}, Ljen;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/loc/aq;->a:Ljbg;

    .line 4000
    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Ljbg;->a(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
