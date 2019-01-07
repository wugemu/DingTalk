.class final Lcjn$1;
.super Ljava/lang/Object;
.source "DynamicSoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcjn;->a(Ljava/lang/String;Lcjn$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcjl;

.field final synthetic b:Lcjn$a;

.field final synthetic c:Lcjn;


# direct methods
.method constructor <init>(Lcjn;Lcjl;Lcjn$a;)V
    .locals 0
    .param p1, "this$0"    # Lcjn;

    .prologue
    .line 265
    iput-object p1, p0, Lcjn$1;->c:Lcjn;

    iput-object p2, p0, Lcjn$1;->a:Lcjl;

    iput-object p3, p0, Lcjn$1;->b:Lcjn$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 268
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcjn$1;->a:Lcjl;

    .line 1063
    iget-object v1, v1, Lcjl;->f:Ljava/lang/String;

    .line 268
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 269
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 270
    iget-object v1, p0, Lcjn$1;->a:Lcjl;

    .line 2043
    iget-object v1, v1, Lcjl;->b:Ljava/lang/String;

    .line 270
    invoke-static {v0, v1}, Lcna;->b(Ljava/io/File;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcjn$1$1;

    invoke-direct {v2, p0}, Lcjn$1$1;-><init>(Lcjn$1;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 320
    :goto_0
    return-void

    .line 283
    :cond_0
    const-string/jumbo v1, "dynamic_so"

    const-string/jumbo v2, "checkDynamicSo"

    const-string/jumbo v3, "slow check not match cause hash not match"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 289
    :goto_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcjn$1$2;

    invoke-direct {v2, p0}, Lcjn$1$2;-><init>(Lcjn$1;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 287
    :cond_1
    const-string/jumbo v1, "dynamic_so"

    const-string/jumbo v2, "checkDynamicSo"

    const-string/jumbo v3, "slow check not match cause file not exists"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
