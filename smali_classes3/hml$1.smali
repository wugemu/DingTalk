.class final Lhml$1;
.super Ljava/lang/Object;
.source "MiniAppInfoSPAccessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhmf;

.field final synthetic b:Lhml;


# direct methods
.method constructor <init>(Lhml;Lhmf;)V
    .locals 0
    .param p1, "this$0"    # Lhml;

    .prologue
    .line 44
    iput-object p1, p0, Lhml$1;->b:Lhml;

    iput-object p2, p0, Lhml$1;->a:Lhmf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 47
    iget-object v3, p0, Lhml$1;->b:Lhml;

    invoke-static {v3}, Lhml;->a(Lhml;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "currentKey":Ljava/lang/String;
    const-string/jumbo v3, "MiniAppInfoSPAccessor"

    invoke-static {v3, v0}, Lhrn;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "data":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 50
    iget-object v3, p0, Lhml$1;->a:Lhmf;

    if-eqz v3, :cond_0

    .line 51
    iget-object v3, p0, Lhml$1;->a:Lhmf;

    invoke-interface {v3, v4}, Lhmf;->a(Ljava/util/List;)V

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    :try_start_0
    new-instance v3, Lhml$1$1;

    invoke-direct {v3, p0}, Lhml$1$1;-><init>(Lhml$1;)V

    invoke-virtual {v3}, Lhml$1$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v1, v3}, Lcor;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 56
    .local v2, "result":Ljava/util/List;
    if-nez v2, :cond_2

    .line 58
    const-string/jumbo v3, "MiniAppInfoSPAccessor"

    invoke-static {v3, v0}, Lhrn;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_2
    iget-object v3, p0, Lhml$1;->a:Lhmf;

    if-eqz v3, :cond_0

    .line 61
    iget-object v3, p0, Lhml$1;->a:Lhmf;

    invoke-interface {v3, v2}, Lhmf;->a(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    .end local v2    # "result":Ljava/util/List;
    :catch_0
    move-exception v3

    const-string/jumbo v3, "MiniAppInfoSPAccessor"

    invoke-static {v3, v0}, Lhrn;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v3, p0, Lhml$1;->a:Lhmf;

    if-eqz v3, :cond_0

    .line 66
    iget-object v3, p0, Lhml$1;->a:Lhmf;

    invoke-interface {v3, v4}, Lhmf;->a(Ljava/util/List;)V

    goto :goto_0
.end method
