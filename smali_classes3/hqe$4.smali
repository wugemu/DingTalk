.class final Lhqe$4;
.super Ljava/lang/Object;
.source "JsapiPermissionManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhqe;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILhqe$a;)V
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
        "Ljava/util/List",
        "<",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lhqe$a;

.field final synthetic e:Lhqe;


# direct methods
.method constructor <init>(Lhqe;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lhqe$a;)V
    .locals 0
    .param p1, "this$0"    # Lhqe;

    .prologue
    .line 232
    iput-object p1, p0, Lhqe$4;->e:Lhqe;

    iput-object p2, p0, Lhqe$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lhqe$4;->b:Ljava/lang/String;

    iput-object p4, p0, Lhqe$4;->c:Ljava/lang/String;

    iput-object p5, p0, Lhqe$4;->d:Lhqe$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 232
    move-object v1, p1

    check-cast v1, Ljava/util/List;

    .line 1235
    iget-object v0, p0, Lhqe$4;->e:Lhqe;

    iget-object v2, p0, Lhqe$4;->a:Ljava/lang/String;

    iget-object v3, p0, Lhqe$4;->b:Ljava/lang/String;

    const-string/jumbo v4, ""

    iget-object v5, p0, Lhqe$4;->c:Ljava/lang/String;

    iget-object v6, p0, Lhqe$4;->d:Lhqe$a;

    invoke-static/range {v0 .. v6}, Lhqe;->a(Lhqe;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lhqe$a;)V

    .line 232
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 245
    iget-object v0, p0, Lhqe$4;->e:Lhqe;

    iget-object v1, p0, Lhqe$4;->d:Lhqe$a;

    invoke-static {v0, p1, p2, v1}, Lhqe;->a(Lhqe;Ljava/lang/String;Ljava/lang/String;Lhqe$a;)V

    .line 246
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 241
    return-void
.end method
