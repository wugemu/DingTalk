.class final Lenz$2;
.super Ljava/lang/Object;
.source "SearchMoreMiniApp.java"

# interfaces
.implements Lcca;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lenz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic d:Lhll;

.field final synthetic e:Lenz;


# direct methods
.method constructor <init>(Lenz;Ljava/lang/String;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Lhll;)V
    .locals 0
    .param p1, "this$0"    # Lenz;

    .prologue
    .line 112
    iput-object p1, p0, Lenz$2;->e:Lenz;

    iput-object p2, p0, Lenz$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lenz$2;->b:Ljava/util/List;

    iput-object p4, p0, Lenz$2;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p5, p0, Lenz$2;->d:Lhll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "group"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 117
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lenz$2$1;

    invoke-direct {v1, p0, p1, p2}, Lenz$2$1;-><init>(Lenz$2;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 148
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "datas":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "canLoad"    # Z

    .prologue
    .line 154
    return-void
.end method
