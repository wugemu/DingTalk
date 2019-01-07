.class final Lhmj$1;
.super Ljava/lang/Object;
.source "LocalMiniAppListSPSourceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhmj;->a(Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lhmj;


# direct methods
.method constructor <init>(Lhmj;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lhmj;

    .prologue
    .line 37
    iput-object p1, p0, Lhmj$1;->c:Lhmj;

    iput-object p2, p0, Lhmj$1;->a:Ljava/util/List;

    iput-object p3, p0, Lhmj$1;->b:Ljava/lang/String;

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
    .line 41
    :try_start_0
    iget-object v2, p0, Lhmj$1;->a:Ljava/util/List;

    new-instance v3, Lhmj$1$1;

    invoke-direct {v3, p0}, Lhmj$1$1;-><init>(Lhmj$1;)V

    .line 43
    invoke-virtual {v3}, Lhmj$1$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 41
    invoke-static {v2, v3}, Lcor;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v2, "LocalMiniAppListSPSourceImpl"

    iget-object v3, p0, Lhmj$1;->c:Lhmj;

    iget-object v4, p0, Lhmj$1;->b:Ljava/lang/String;

    invoke-static {v3, v4}, Lhmj;->a(Lhmj;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lhrn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .end local v1    # "value":Ljava/lang/String;
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
