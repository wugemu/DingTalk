.class final Lbag$18;
.super Lckm$a;
.source "DingDetailPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lckm$a",
        "<",
        "Lbfv;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbag;


# direct methods
.method constructor <init>(Lbag;)V
    .locals 0
    .param p1, "this$0"    # Lbag;

    .prologue
    .line 415
    iput-object p1, p0, Lbag$18;->a:Lbag;

    invoke-direct {p0}, Lckm$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 415
    check-cast p1, Lbfv;

    .line 1418
    iget-object v0, p0, Lbag$18;->a:Lbag;

    invoke-static {v0}, Lbag;->a(Lbag;)Lbaf$b;

    move-result-object v0

    invoke-interface {v0}, Lbaf$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1419
    iget-object v0, p0, Lbag$18;->a:Lbag;

    invoke-static {v0, p1}, Lbag;->a(Lbag;Lbfv;)Lbfv;

    .line 1420
    iget-object v0, p0, Lbag$18;->a:Lbag;

    invoke-virtual {v0}, Lbag;->o()V

    .line 1422
    iget-object v0, p0, Lbag$18;->a:Lbag;

    iget-object v1, p0, Lbag$18;->a:Lbag;

    invoke-static {v1}, Lbag;->e(Lbag;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbag;->a(Lbag;Ljava/lang/String;)Ljava/lang/String;

    .line 1423
    iget-object v0, p0, Lbag$18;->a:Lbag;

    invoke-static {v0}, Lbag;->a(Lbag;)Lbaf$b;

    move-result-object v0

    iget-object v1, p0, Lbag$18;->a:Lbag;

    invoke-static {v1}, Lbag;->f(Lbag;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lbaf$b;->a(Ljava/lang/String;)V

    .line 1424
    iget-object v0, p0, Lbag$18;->a:Lbag;

    invoke-static {v0}, Lbag;->a(Lbag;)Lbaf$b;

    move-result-object v1

    iget-object v0, p0, Lbag$18;->a:Lbag;

    invoke-static {v0}, Lbag;->b(Lbag;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->o()I

    move-result v0

    iget-object v2, p0, Lbag$18;->a:Lbag;

    invoke-static {v2}, Lbag;->d(Lbag;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v0, v2, :cond_1

    iget-object v0, p0, Lbag$18;->a:Lbag;

    invoke-static {v0}, Lbag;->b(Lbag;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->o()I

    move-result v0

    :goto_0
    invoke-interface {v1, v0}, Lbaf$b;->a(I)V

    .line 415
    :cond_0
    return-void

    .line 1424
    :cond_1
    iget-object v0, p0, Lbag$18;->a:Lbag;

    invoke-static {v0}, Lbag;->d(Lbag;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method
