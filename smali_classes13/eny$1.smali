.class final Leny$1;
.super Ljava/lang/Object;
.source "BaseSearchMiniApp.java"

# interfaces
.implements Lhln;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leny;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Leny;


# direct methods
.method constructor <init>(Leny;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Leny;

    .prologue
    .line 56
    iput-object p1, p0, Leny$1;->b:Leny;

    iput-object p2, p0, Leny$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lhlp;)V
    .locals 4
    .param p1, "page"    # Lhlp;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 59
    if-eqz p1, :cond_1

    .line 60
    iget-object v0, p0, Leny$1;->b:Leny;

    iget-object v0, v0, Leny;->d:Ljava/util/Map;

    iget-object v1, p0, Leny$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-interface {p1}, Lhlp;->b()V

    .line 62
    invoke-interface {p1}, Lhlp;->c()V

    .line 63
    iget-object v0, p0, Leny$1;->b:Leny;

    iget-object v0, v0, Leny;->e:Leny$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leny$1;->b:Leny;

    iget-object v0, v0, Leny;->e:Leny$a;

    invoke-interface {v0, p1}, Leny$a;->a(Lhlp;)V

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Leny$1;->b:Leny;

    iget-object v0, v0, Leny;->e:Leny$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Leny$1;->b:Leny;

    iget-object v0, v0, Leny;->e:Leny$a;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Leny$a;->a(I)V

    .line 67
    :cond_2
    const-string/jumbo v1, "MiniApp page init failed, appId:%s  appVersion:%s  pageId:%s"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v3, p0, Leny$1;->b:Leny;

    iget-object v3, v3, Leny;->a:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v3, 0x1

    iget-object v0, p0, Leny$1;->b:Leny;

    iget-object v0, v0, Leny;->b:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string/jumbo v0, "null"

    :goto_1
    aput-object v0, v2, v3

    const/4 v3, 0x2

    iget-object v0, p0, Leny$1;->a:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string/jumbo v0, "null"

    :goto_2
    aput-object v0, v2, v3

    .line 1050
    const-string/jumbo v0, "search"

    invoke-static {v0, v1, v2}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 67
    :cond_3
    iget-object v0, p0, Leny$1;->b:Leny;

    iget-object v0, v0, Leny;->b:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Leny$1;->a:Ljava/lang/String;

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 74
    iget-object v0, p0, Leny$1;->b:Leny;

    iget-object v0, v0, Leny;->e:Leny$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leny$1;->b:Leny;

    iget-object v0, v0, Leny;->e:Leny$a;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Leny$a;->a(I)V

    .line 75
    :cond_0
    const-string/jumbo v1, "MiniApp page init failed, appId:%s  appVersion:%s  pageId:%s"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v3, p0, Leny$1;->b:Leny;

    iget-object v3, v3, Leny;->a:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v3, 0x1

    iget-object v0, p0, Leny$1;->b:Leny;

    iget-object v0, v0, Leny;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string/jumbo v0, "null"

    :goto_0
    aput-object v0, v2, v3

    const/4 v3, 0x2

    iget-object v0, p0, Leny$1;->a:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string/jumbo v0, "null"

    :goto_1
    aput-object v0, v2, v3

    .line 2050
    const-string/jumbo v0, "search"

    invoke-static {v0, v1, v2}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Leny$1;->b:Leny;

    iget-object v0, v0, Leny;->b:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Leny$1;->a:Ljava/lang/String;

    goto :goto_1
.end method
