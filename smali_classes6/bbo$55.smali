.class final Lbbo$55;
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

.field final synthetic b:J

.field final synthetic c:Lcma;

.field final synthetic d:Lbbo;


# direct methods
.method constructor <init>(Lbbo;Ljava/lang/String;JLcma;)V
    .locals 1
    .param p1, "this$0"    # Lbbo;

    .prologue
    .line 4251
    iput-object p1, p0, Lbbo$55;->d:Lbbo;

    iput-object p2, p0, Lbbo$55;->a:Ljava/lang/String;

    iput-wide p3, p0, Lbbo$55;->b:J

    iput-object p5, p0, Lbbo$55;->c:Lcma;

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
    .line 4251
    check-cast p1, Ljava/lang/Void;

    .line 5256
    iget-object v0, p0, Lbbo$55;->d:Lbbo;

    iget-object v1, p0, Lbbo$55;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbbo;->b(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    .line 5257
    if-eqz v0, :cond_0

    .line 5258
    iget-wide v2, p0, Lbbo$55;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(Ljava/lang/Long;)V

    .line 5262
    :cond_0
    iget-object v0, p0, Lbbo$55;->d:Lbbo;

    .line 6139
    iget-object v0, v0, Lbbo;->f:Lbgp;

    .line 5262
    iget-object v1, p0, Lbbo$55;->a:Ljava/lang/String;

    iget-wide v2, p0, Lbbo$55;->b:J

    invoke-interface {v0, v1, v2, v3}, Lbgp;->a(Ljava/lang/String;J)I

    .line 5264
    iget-object v0, p0, Lbbo$55;->d:Lbbo;

    invoke-virtual {v0}, Lbbo;->e()V

    .line 5266
    iget-object v0, p0, Lbbo$55;->d:Lbbo;

    iget-object v1, p0, Lbbo$55;->c:Lcma;

    .line 7139
    invoke-virtual {v0, v1, p1}, Lbbo;->a(Lcma;Ljava/lang/Object;)V

    .line 4251
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
    .line 4276
    iget-object v0, p0, Lbbo$55;->d:Lbbo;

    iget-object v1, p0, Lbbo$55;->c:Lcma;

    .line 5139
    invoke-virtual {v0, v1, p1, p2}, Lbbo;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 4277
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 4272
    return-void
.end method
