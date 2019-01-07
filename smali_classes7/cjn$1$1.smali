.class final Lcjn$1$1;
.super Ljava/lang/Object;
.source "DynamicSoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcjn$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcjn$1;


# direct methods
.method constructor <init>(Lcjn$1;)V
    .locals 0
    .param p1, "this$1"    # Lcjn$1;

    .prologue
    .line 271
    iput-object p1, p0, Lcjn$1$1;->a:Lcjn$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 274
    const-string/jumbo v0, "dynamic_so"

    const-string/jumbo v1, "checkDynamicSo"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "slow check match and fill checkTime key:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcjn$1$1;->a:Lcjn$1;

    iget-object v4, v4, Lcjn$1;->a:Lcjl;

    .line 1059
    iget-object v4, v4, Lcjl;->e:Ljava/lang/String;

    .line 274
    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcjn$1$1;->a:Lcjn$1;

    iget-object v0, v0, Lcjn$1;->c:Lcjn;

    invoke-static {v0}, Lcjn;->a(Lcjn;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcjn$1$1;->a:Lcjn$1;

    iget-object v1, v1, Lcjn$1;->a:Lcjl;

    .line 2059
    iget-object v1, v1, Lcjl;->e:Ljava/lang/String;

    .line 275
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 276
    iget-object v0, p0, Lcjn$1$1;->a:Lcjn$1;

    iget-object v0, v0, Lcjn$1;->b:Lcjn$a;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcjn$1$1;->a:Lcjn$1;

    iget-object v0, v0, Lcjn$1;->b:Lcjn$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcjn$a;->onSuccess(Ljava/lang/Object;)V

    .line 279
    :cond_0
    return-void
.end method
