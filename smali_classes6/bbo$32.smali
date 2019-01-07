.class final Lbbo$32;
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
.field final synthetic a:Lbeu;

.field final synthetic b:Lcma;

.field final synthetic c:Lbbo;


# direct methods
.method constructor <init>(Lbbo;Lbeu;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbo;

    .prologue
    .line 3341
    iput-object p1, p0, Lbbo$32;->c:Lbbo;

    iput-object p2, p0, Lbbo$32;->a:Lbeu;

    iput-object p3, p0, Lbbo$32;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 3341
    check-cast p1, Ljava/lang/Void;

    .line 4344
    invoke-static {}, Lbhi;->a()Lbhi;

    move-result-object v0

    iget-object v1, p0, Lbbo$32;->a:Lbeu;

    .line 5057
    iget-wide v2, v1, Lbeu;->a:J

    .line 4344
    iget-object v1, p0, Lbbo$32;->a:Lbeu;

    .line 5081
    iget-wide v4, v1, Lbeu;->k:J

    .line 4344
    invoke-virtual {v0, v2, v3, v4, v5}, Lbhi;->a(JJ)V

    .line 4345
    iget-object v0, p0, Lbbo$32;->c:Lbbo;

    iget-object v1, p0, Lbbo$32;->b:Lcma;

    .line 5139
    invoke-virtual {v0, v1, p1}, Lbbo;->a(Lcma;Ljava/lang/Object;)V

    .line 3341
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
    .line 3354
    iget-object v0, p0, Lbbo$32;->c:Lbbo;

    iget-object v1, p0, Lbbo$32;->b:Lcma;

    .line 4139
    invoke-virtual {v0, v1, p1, p2}, Lbbo;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 3355
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 3350
    return-void
.end method
