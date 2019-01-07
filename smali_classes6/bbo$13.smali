.class final Lbbo$13;
.super Ljava/lang/Object;
.source "DingDataCenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbo;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lbbo;


# direct methods
.method constructor <init>(Lbbo;Lcma;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lbbo;

    .prologue
    .line 2030
    iput-object p1, p0, Lbbo$13;->c:Lbbo;

    iput-object p2, p0, Lbbo$13;->a:Lcma;

    iput-object p3, p0, Lbbo$13;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 2030
    .line 3033
    iget-object v0, p0, Lbbo$13;->c:Lbbo;

    iget-object v1, p0, Lbbo$13;->a:Lcma;

    iget-object v2, p0, Lbbo$13;->c:Lbbo;

    iget-object v3, p0, Lbbo$13;->b:Ljava/util/List;

    .line 3139
    invoke-virtual {v2, v3}, Lbbo;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    .line 4139
    invoke-virtual {v0, v1, v2}, Lbbo;->a(Lcma;Ljava/lang/Object;)V

    .line 2030
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 2042
    iget-object v0, p0, Lbbo$13;->c:Lbbo;

    iget-object v1, p0, Lbbo$13;->a:Lcma;

    .line 2139
    invoke-virtual {v0, v1, p1, p2}, Lbbo;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 2043
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 2038
    return-void
.end method
