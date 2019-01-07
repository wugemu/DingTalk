.class final Lcrm$1;
.super Ljava/lang/Object;
.source "AsyncLoadHolder.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcrm;->a(Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lcrm;


# direct methods
.method constructor <init>(Lcrm;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lcrm;

    .prologue
    .line 50
    .local p0, "this":Lcrm$1;, "Lcrm$1;"
    iput-object p1, p0, Lcrm$1;->b:Lcrm;

    iput-object p2, p0, Lcrm$1;->a:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataReceived(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 54
    .local p0, "this":Lcrm$1;, "Lcrm$1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcrm$1;->b:Lcrm;

    const/4 v1, 0x1

    .line 1011
    iput-boolean v1, v0, Lcrm;->a:Z

    .line 55
    iget-object v0, p0, Lcrm$1;->b:Lcrm;

    .line 2011
    iput-object p1, v0, Lcrm;->b:Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcrm$1;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 66
    .local p0, "this":Lcrm$1;, "Lcrm$1;"
    iget-object v0, p0, Lcrm$1;->b:Lcrm;

    const/4 v1, 0x0

    .line 3011
    iput-boolean v1, v0, Lcrm;->a:Z

    .line 67
    iget-object v0, p0, Lcrm$1;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 61
    .local p0, "this":Lcrm$1;, "Lcrm$1;"
    iget-object v0, p0, Lcrm$1;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onProgress(Ljava/lang/Object;I)V

    .line 62
    return-void
.end method
