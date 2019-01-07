.class final Lbag$43;
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
        "Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;",
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
    .line 228
    iput-object p1, p0, Lbag$43;->a:Lbag;

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
    .line 228
    .line 1231
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[DingDetailPresenter]onFinishStatusChanged."

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 1233
    iget-object v0, p0, Lbag$43;->a:Lbag;

    invoke-static {v0}, Lbag;->a(Lbag;)Lbaf$b;

    move-result-object v0

    invoke-interface {v0}, Lbaf$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbag$43;->a:Lbag;

    invoke-static {v0}, Lbag;->b(Lbag;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1234
    iget-object v0, p0, Lbag$43;->a:Lbag;

    invoke-static {v0}, Lbag;->a(Lbag;)Lbaf$b;

    move-result-object v0

    iget-object v1, p0, Lbag$43;->a:Lbag;

    invoke-static {v1}, Lbag;->b(Lbag;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v1

    invoke-static {v1}, Lbkh;->c(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    iget-object v1, p0, Lbag$43;->a:Lbag;

    .line 1235
    invoke-static {v1}, Lbag;->b(Lbag;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v1

    invoke-static {v1}, Lbkh;->B(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    iget-object v2, p0, Lbag$43;->a:Lbag;

    .line 1236
    invoke-static {v2}, Lbag;->b(Lbag;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v2

    invoke-static {v2}, Lbkh;->A(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    .line 1234
    invoke-interface {v0, v1}, Lbaf$b;->a(Z)V

    .line 228
    :cond_0
    return-void
.end method
