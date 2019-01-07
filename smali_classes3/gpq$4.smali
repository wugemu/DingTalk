.class final Lgpq$4;
.super Ljava/lang/Object;
.source "CSpaceUserBaseInfoFetchUtil.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgpq;
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
        "Lcgc;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcma;

.field final synthetic c:Lgpq;


# direct methods
.method constructor <init>(Lgpq;Ljava/util/List;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lgpq;

    .prologue
    .line 364
    iput-object p1, p0, Lgpq$4;->c:Lgpq;

    iput-object p2, p0, Lgpq$4;->a:Ljava/util/List;

    iput-object p3, p0, Lgpq$4;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 364
    move-object v2, p1

    check-cast v2, Ljava/util/List;

    .line 1367
    iget-object v0, p0, Lgpq$4;->c:Lgpq;

    iget-object v1, p0, Lgpq$4;->a:Ljava/util/List;

    iget-object v5, p0, Lgpq$4;->b:Lcma;

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lgpq;->a(Lgpq;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 364
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 377
    iget-object v0, p0, Lgpq$4;->c:Lgpq;

    iget-object v1, p0, Lgpq$4;->a:Ljava/util/List;

    const/4 v2, 0x0

    iget-object v5, p0, Lgpq$4;->b:Lcma;

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lgpq;->a(Lgpq;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 378
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 373
    return-void
.end method
