.class final Lbbo$54;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcma;

.field final synthetic c:Lbbo;


# direct methods
.method constructor <init>(Lbbo;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbo;

    .prologue
    .line 4199
    iput-object p1, p0, Lbbo$54;->c:Lbbo;

    iput-object p2, p0, Lbbo$54;->a:Ljava/lang/String;

    iput-object p3, p0, Lbbo$54;->b:Lcma;

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
    .line 4199
    check-cast p1, Ljava/lang/Void;

    .line 5203
    iget-object v0, p0, Lbbo$54;->c:Lbbo;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Long;

    const/4 v2, 0x0

    iget-object v3, p0, Lbbo$54;->a:Ljava/lang/String;

    .line 6109
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 5203
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 6139
    invoke-virtual {v0, v1}, Lbbo;->b(Ljava/util/List;)V

    .line 5204
    iget-object v0, p0, Lbbo$54;->c:Lbbo;

    iget-object v1, p0, Lbbo$54;->b:Lcma;

    .line 7139
    invoke-virtual {v0, v1, p1}, Lbbo;->a(Lcma;Ljava/lang/Object;)V

    .line 4199
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
    .line 4214
    iget-object v0, p0, Lbbo$54;->c:Lbbo;

    iget-object v1, p0, Lbbo$54;->b:Lcma;

    .line 5139
    invoke-virtual {v0, v1, p1, p2}, Lbbo;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 4215
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 4210
    return-void
.end method
