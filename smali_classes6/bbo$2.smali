.class final Lbbo$2;
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
.field final synthetic a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field final synthetic b:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

.field final synthetic c:Lcma;

.field final synthetic d:Lbbo;


# direct methods
.method constructor <init>(Lbbo;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbo;

    .prologue
    .line 1330
    iput-object p1, p0, Lbbo$2;->d:Lbbo;

    iput-object p2, p0, Lbbo$2;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iput-object p3, p0, Lbbo$2;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    iput-object p4, p0, Lbbo$2;->c:Lcma;

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
    .line 1330
    .line 2335
    iget-object v0, p0, Lbbo$2;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v1, p0, Lbbo$2;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;)V

    .line 2338
    iget-object v0, p0, Lbbo$2;->d:Lbbo;

    .line 3139
    iget-object v0, v0, Lbbo;->f:Lbgp;

    .line 2338
    iget-object v1, p0, Lbbo$2;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbbo$2;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->getValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lbgp;->f(Ljava/lang/String;I)I

    .line 2341
    iget-object v0, p0, Lbbo$2;->d:Lbbo;

    invoke-virtual {v0}, Lbbo;->e()V

    .line 2343
    iget-object v0, p0, Lbbo$2;->d:Lbbo;

    iget-object v1, p0, Lbbo$2;->c:Lcma;

    const/4 v2, 0x0

    .line 4139
    invoke-virtual {v0, v1, v2}, Lbbo;->a(Lcma;Ljava/lang/Object;)V

    .line 2345
    iget-object v0, p0, Lbbo$2;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbjs;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 1330
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
    .line 1354
    iget-object v0, p0, Lbbo$2;->d:Lbbo;

    iget-object v1, p0, Lbbo$2;->c:Lcma;

    .line 2139
    invoke-virtual {v0, v1, p1, p2}, Lbbo;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 1350
    return-void
.end method
