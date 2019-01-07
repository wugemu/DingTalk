.class final Lhmj$3;
.super Ljava/lang/Object;
.source "LocalMiniAppListSPSourceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhmj;->a(Ljava/lang/String;Lhmd$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lhmd$a;

.field final synthetic c:Lhmj;


# direct methods
.method constructor <init>(Lhmj;Ljava/lang/String;Lhmd$a;)V
    .locals 0
    .param p1, "this$0"    # Lhmj;

    .prologue
    .line 66
    iput-object p1, p0, Lhmj$3;->c:Lhmj;

    iput-object p2, p0, Lhmj$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lhmj$3;->b:Lhmd$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 69
    iget-object v3, p0, Lhmj$3;->c:Lhmj;

    iget-object v4, p0, Lhmj$3;->a:Ljava/lang/String;

    invoke-static {v3, v4}, Lhmj;->a(Lhmj;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "currentKey":Ljava/lang/String;
    const-string/jumbo v3, "LocalMiniAppListSPSourceImpl"

    invoke-static {v3, v0}, Lhrn;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "data":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 72
    iget-object v3, p0, Lhmj$3;->b:Lhmd$a;

    if-eqz v3, :cond_0

    .line 73
    iget-object v3, p0, Lhmj$3;->b:Lhmd$a;

    invoke-interface {v3, v5}, Lhmd$a;->a(Ljava/util/List;)V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    :try_start_0
    new-instance v3, Lhmj$3$1;

    invoke-direct {v3, p0}, Lhmj$3$1;-><init>(Lhmj$3;)V

    invoke-virtual {v3}, Lhmj$3$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v1, v3}, Lcor;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 78
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lhoe;>;"
    if-nez v2, :cond_2

    .line 80
    const-string/jumbo v3, "LocalMiniAppListSPSourceImpl"

    invoke-static {v3, v0}, Lhrn;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_2
    iget-object v3, p0, Lhmj$3;->b:Lhmd$a;

    if-eqz v3, :cond_0

    .line 83
    iget-object v3, p0, Lhmj$3;->b:Lhmd$a;

    invoke-interface {v3, v2}, Lhmd$a;->a(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Lhoe;>;"
    :catch_0
    move-exception v3

    const-string/jumbo v3, "LocalMiniAppListSPSourceImpl"

    invoke-static {v3, v0}, Lhrn;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v3, p0, Lhmj$3;->b:Lhmd$a;

    if-eqz v3, :cond_0

    .line 88
    iget-object v3, p0, Lhmj$3;->b:Lhmd$a;

    invoke-interface {v3, v5}, Lhmd$a;->a(Ljava/util/List;)V

    goto :goto_0
.end method
