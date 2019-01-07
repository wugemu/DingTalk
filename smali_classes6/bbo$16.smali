.class final Lbbo$16;
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

.field final synthetic b:Ljava/lang/Long;

.field final synthetic c:Z

.field final synthetic d:Lbbo;


# direct methods
.method constructor <init>(Lbbo;Lcma;Ljava/lang/Long;Z)V
    .locals 0
    .param p1, "this$0"    # Lbbo;

    .prologue
    .line 2133
    iput-object p1, p0, Lbbo$16;->d:Lbbo;

    iput-object p2, p0, Lbbo$16;->a:Lcma;

    iput-object p3, p0, Lbbo$16;->b:Ljava/lang/Long;

    iput-boolean p4, p0, Lbbo$16;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 2133
    check-cast p1, Ljava/lang/Void;

    .line 4136
    iget-object v0, p0, Lbbo$16;->d:Lbbo;

    iget-object v1, p0, Lbbo$16;->a:Lcma;

    .line 5139
    invoke-virtual {v0, v1, p1}, Lbbo;->a(Lcma;Ljava/lang/Object;)V

    .line 4139
    iget-object v0, p0, Lbbo$16;->d:Lbbo;

    iget-object v1, p0, Lbbo$16;->b:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbbo;->b(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    .line 4140
    if-eqz v0, :cond_0

    .line 4141
    iget-boolean v1, p0, Lbbo$16;->c:Z

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(Z)V

    .line 4145
    :cond_0
    iget-object v0, p0, Lbbo$16;->d:Lbbo;

    invoke-virtual {v0}, Lbbo;->e()V

    .line 4148
    iget-object v0, p0, Lbbo$16;->d:Lbbo;

    .line 6139
    iget-object v0, v0, Lbbo;->f:Lbgp;

    .line 4148
    iget-object v1, p0, Lbbo$16;->b:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lbbo$16;->c:Z

    invoke-interface {v0, v1, v2}, Lbgp;->a(Ljava/lang/String;Z)I

    .line 2133
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
    .line 2157
    iget-object v0, p0, Lbbo$16;->d:Lbbo;

    iget-object v1, p0, Lbbo$16;->a:Lcma;

    .line 3139
    invoke-virtual {v0, v1, p1, p2}, Lbbo;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 2158
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 2153
    return-void
.end method
