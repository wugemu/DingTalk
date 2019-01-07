.class final Lfxi$4;
.super Lcmi;
.source "QuotaCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfxi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lcdj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lfxi;


# direct methods
.method constructor <init>(Lfxi;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfxi;

    .prologue
    .line 159
    iput-object p1, p0, Lfxi$4;->b:Lfxi;

    iput-object p2, p0, Lfxi$4;->a:Lcma;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 175
    iget-object v0, p0, Lfxi$4;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 159
    check-cast p1, Lcdj;

    .line 1162
    if-eqz p1, :cond_0

    .line 1163
    new-instance v0, Lchh;

    invoke-direct {v0, p1}, Lchh;-><init>(Lcdj;)V

    .line 1164
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lfxi$4$1;

    invoke-direct {v2, p0, v0}, Lfxi$4$1;-><init>(Lfxi$4;Lchh;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 159
    :cond_0
    return-void
.end method
