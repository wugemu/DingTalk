.class final Lbbo$23;
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

.field final synthetic b:Z

.field final synthetic c:Lbbo;


# direct methods
.method constructor <init>(Lbbo;Lcma;Z)V
    .locals 0
    .param p1, "this$0"    # Lbbo;

    .prologue
    .line 923
    iput-object p1, p0, Lbbo$23;->c:Lbbo;

    iput-object p2, p0, Lbbo$23;->a:Lcma;

    iput-boolean p3, p0, Lbbo$23;->b:Z

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
    .line 923
    .line 1926
    const-string/jumbo v0, "key_last_time_of_fill_1000_dings"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcpk;->b(Ljava/lang/String;J)V

    .line 1927
    iget-object v0, p0, Lbbo$23;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1928
    iget-object v1, p0, Lbbo$23;->a:Lcma;

    iget-boolean v0, p0, Lbbo$23;->b:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 923
    :cond_0
    return-void

    .line 1928
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 938
    const-string/jumbo v0, "key_last_time_of_fill_1000_dings"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcpk;->b(Ljava/lang/String;J)V

    .line 939
    iget-object v0, p0, Lbbo$23;->a:Lcma;

    if-eqz v0, :cond_0

    .line 940
    iget-object v0, p0, Lbbo$23;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 934
    return-void
.end method
