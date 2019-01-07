.class final Lhml$2;
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
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lhml;


# direct methods
.method constructor <init>(Lhml;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lhml;

    .prologue
    .line 80
    iput-object p1, p0, Lhml$2;->b:Lhml;

    iput-object p2, p0, Lhml$2;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 84
    :try_start_0
    iget-object v2, p0, Lhml$2;->a:Ljava/util/List;

    new-instance v3, Lhml$2$1;

    invoke-direct {v3, p0}, Lhml$2$1;-><init>(Lhml$2;)V

    .line 86
    invoke-virtual {v3}, Lhml$2$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 84
    invoke-static {v2, v3}, Lcor;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 88
    const-string/jumbo v2, "MiniAppInfoSPAccessor"

    iget-object v3, p0, Lhml$2;->b:Lhml;

    invoke-static {v3}, Lhml;->a(Lhml;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lhrn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
