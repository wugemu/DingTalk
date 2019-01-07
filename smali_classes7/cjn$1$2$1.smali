.class final Lcjn$1$2$1;
.super Ljava/lang/Object;
.source "DynamicSoManager.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcjn$1$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcjn$1$2;


# direct methods
.method constructor <init>(Lcjn$1$2;)V
    .locals 0
    .param p1, "this$2"    # Lcjn$1$2;

    .prologue
    .line 293
    iput-object p1, p0, Lcjn$1$2$1;->a:Lcjn$1$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 305
    const-string/jumbo v0, "dynamic_so"

    const-string/jumbo v1, "checkDynamicSo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "download fail reason:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcjn$1$2$1;->a:Lcjn$1$2;

    iget-object v0, v0, Lcjn$1$2;->a:Lcjn$1;

    iget-object v0, v0, Lcjn$1;->b:Lcjn$a;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcjn$1$2$1;->a:Lcjn$1$2;

    iget-object v0, v0, Lcjn$1$2;->a:Lcjn$1;

    iget-object v0, v0, Lcjn$1;->b:Lcjn$a;

    invoke-interface {v0, p1, p2}, Lcjn$a;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 1

    .prologue
    .line 293
    check-cast p1, Ljava/lang/Void;

    .line 1313
    iget-object v0, p0, Lcjn$1$2$1;->a:Lcjn$1$2;

    iget-object v0, v0, Lcjn$1$2;->a:Lcjn$1;

    iget-object v0, v0, Lcjn$1;->b:Lcjn$a;

    if-eqz v0, :cond_0

    .line 1314
    iget-object v0, p0, Lcjn$1$2$1;->a:Lcjn$1$2;

    iget-object v0, v0, Lcjn$1$2;->a:Lcjn$1;

    iget-object v0, v0, Lcjn$1;->b:Lcjn$a;

    invoke-interface {v0, p1, p2}, Lcjn$a;->onProgress(Ljava/lang/Object;I)V

    .line 293
    :cond_0
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 293
    check-cast p1, Ljava/lang/Void;

    .line 2296
    const-string/jumbo v0, "dynamic_so"

    const-string/jumbo v1, "checkDynamicSo"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "download success and fill checkTime key:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcjn$1$2$1;->a:Lcjn$1$2;

    iget-object v4, v4, Lcjn$1$2;->a:Lcjn$1;

    iget-object v4, v4, Lcjn$1;->a:Lcjl;

    .line 3059
    iget-object v4, v4, Lcjl;->e:Ljava/lang/String;

    .line 2296
    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2297
    iget-object v0, p0, Lcjn$1$2$1;->a:Lcjn$1$2;

    iget-object v0, v0, Lcjn$1$2;->a:Lcjn$1;

    iget-object v0, v0, Lcjn$1;->c:Lcjn;

    invoke-static {v0}, Lcjn;->a(Lcjn;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcjn$1$2$1;->a:Lcjn$1$2;

    iget-object v1, v1, Lcjn$1$2;->a:Lcjn$1;

    iget-object v1, v1, Lcjn$1;->a:Lcjl;

    .line 4059
    iget-object v1, v1, Lcjl;->e:Ljava/lang/String;

    .line 2297
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2298
    iget-object v0, p0, Lcjn$1$2$1;->a:Lcjn$1$2;

    iget-object v0, v0, Lcjn$1$2;->a:Lcjn$1;

    iget-object v0, v0, Lcjn$1;->b:Lcjn$a;

    if-eqz v0, :cond_0

    .line 2299
    iget-object v0, p0, Lcjn$1$2$1;->a:Lcjn$1$2;

    iget-object v0, v0, Lcjn$1$2;->a:Lcjn$1;

    iget-object v0, v0, Lcjn$1;->b:Lcjn$a;

    invoke-interface {v0, p1}, Lcjn$a;->onSuccess(Ljava/lang/Object;)V

    .line 293
    :cond_0
    return-void
.end method
