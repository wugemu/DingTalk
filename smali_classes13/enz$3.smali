.class final Lenz$3;
.super Ljava/lang/Object;
.source "SearchMoreMiniApp.java"

# interfaces
.implements Leny$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lenz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lenz;


# direct methods
.method constructor <init>(Lenz;)V
    .locals 0
    .param p1, "this$0"    # Lenz;

    .prologue
    .line 212
    iput-object p1, p0, Lenz$3;->a:Lenz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .param p1, "err"    # I

    .prologue
    .line 224
    iget-object v0, p0, Lenz$3;->a:Lenz;

    invoke-static {v0}, Lenz;->a(Lenz;)Leny$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lenz$3;->a:Lenz;

    invoke-static {v0}, Lenz;->a(Lenz;)Leny$a;

    move-result-object v0

    invoke-interface {v0, p1}, Leny$a;->a(I)V

    .line 227
    :cond_0
    return-void
.end method

.method public final a(Lhlp;)V
    .locals 2
    .param p1, "page"    # Lhlp;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 215
    iget-object v0, p0, Lenz$3;->a:Lenz;

    invoke-static {v0}, Lenz;->a(Lenz;)Leny$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lenz$3;->a:Lenz;

    invoke-static {v0}, Lenz;->a(Lenz;)Leny$a;

    move-result-object v0

    invoke-interface {v0, p1}, Leny$a;->a(Lhlp;)V

    .line 218
    :cond_0
    iget-object v0, p0, Lenz$3;->a:Lenz;

    invoke-static {v0}, Lenz;->b(Lenz;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lenz$3;->a:Lenz;

    iget-object v1, p0, Lenz$3;->a:Lenz;

    invoke-static {v1}, Lenz;->b(Lenz;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lenz;->b(Ljava/lang/String;)V

    .line 219
    :cond_1
    iget-object v0, p0, Lenz$3;->a:Lenz;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lenz;->a(Lenz;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lhll;)V
    .locals 1
    .param p1, "funName"    # Ljava/lang/String;
    .param p2, "param"    # Lcom/alibaba/fastjson/JSONObject;
    .param p3, "callback"    # Lhll;

    .prologue
    .line 231
    iget-object v0, p0, Lenz$3;->a:Lenz;

    invoke-static {v0}, Lenz;->a(Lenz;)Leny$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lenz$3;->a:Lenz;

    invoke-static {v0}, Lenz;->a(Lenz;)Leny$a;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Leny$a;->a(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lhll;)V

    .line 234
    :cond_0
    return-void
.end method
