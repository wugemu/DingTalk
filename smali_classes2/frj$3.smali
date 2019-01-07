.class final Lfrj$3;
.super Ljava/lang/Object;
.source "FaceLoginPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfrj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcee;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lfrj;


# direct methods
.method constructor <init>(Lfrj;Lcma;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lfrj;

    .prologue
    .line 177
    iput-object p1, p0, Lfrj$3;->c:Lfrj;

    iput-object p2, p0, Lfrj$3;->a:Lcma;

    iput-object p3, p0, Lfrj$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 177
    check-cast p1, Lcee;

    .line 1180
    if-nez p1, :cond_0

    .line 1181
    const-string/jumbo v0, "FaceLoginPresenter"

    const-string/jumbo v1, "dt login suc. result null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1182
    iget-object v0, p0, Lfrj$3;->a:Lcma;

    const-string/jumbo v1, "1102"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    :goto_0
    return-void

    .line 1185
    :cond_0
    new-instance v0, Lfaq$a;

    new-instance v1, Lfaq;

    invoke-direct {v1}, Lfaq;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lfaq$a;-><init>(Lfaq;)V

    .line 1186
    iget-object v1, p0, Lfrj$3;->b:Ljava/lang/String;

    iget-object v2, p0, Lfrj$3;->a:Lcma;

    invoke-virtual {v0, p1, v1, v2}, Lfaq$a;->a(Lcee;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 197
    const-string/jumbo v0, "FaceLoginPresenter"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "code:"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", reason:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    iget-object v0, p0, Lfrj$3;->a:Lcma;

    const-string/jumbo v1, "1102"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 193
    return-void
.end method
