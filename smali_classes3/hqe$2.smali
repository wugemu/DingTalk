.class public final Lhqe$2;
.super Ljava/lang/Object;
.source "JsapiPermissionManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhqe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
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

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lhqe$a;

.field final synthetic f:Lhqe;


# direct methods
.method public constructor <init>(Lhqe;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lhqe$a;)V
    .locals 0
    .param p1, "this$0"    # Lhqe;

    .prologue
    .line 134
    iput-object p1, p0, Lhqe$2;->f:Lhqe;

    iput-object p2, p0, Lhqe$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lhqe$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lhqe$2;->c:Ljava/lang/String;

    iput-object p5, p0, Lhqe$2;->d:Ljava/lang/String;

    iput-object p6, p0, Lhqe$2;->e:Lhqe$a;

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
    .line 134
    move-object v1, p1

    check-cast v1, Ljava/util/List;

    .line 1137
    iget-object v0, p0, Lhqe$2;->f:Lhqe;

    iget-object v2, p0, Lhqe$2;->a:Ljava/lang/String;

    iget-object v3, p0, Lhqe$2;->b:Ljava/lang/String;

    iget-object v4, p0, Lhqe$2;->c:Ljava/lang/String;

    iget-object v5, p0, Lhqe$2;->d:Ljava/lang/String;

    iget-object v6, p0, Lhqe$2;->e:Lhqe$a;

    invoke-static/range {v0 .. v6}, Lhqe;->a(Lhqe;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lhqe$a;)V

    .line 134
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
    .line 147
    iget-object v0, p0, Lhqe$2;->f:Lhqe;

    iget-object v1, p0, Lhqe$2;->e:Lhqe$a;

    invoke-static {v0, p1, p2, v1}, Lhqe;->a(Lhqe;Ljava/lang/String;Ljava/lang/String;Lhqe$a;)V

    .line 148
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 143
    return-void
.end method
