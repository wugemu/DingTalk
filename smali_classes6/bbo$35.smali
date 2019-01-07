.class final Lbbo$35;
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
.field final synthetic a:Lbfo;

.field final synthetic b:Lcma;

.field final synthetic c:Lbbo;


# direct methods
.method constructor <init>(Lbbo;Lbfo;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbo;

    .prologue
    .line 3389
    iput-object p1, p0, Lbbo$35;->c:Lbbo;

    iput-object p2, p0, Lbbo$35;->a:Lbfo;

    iput-object p3, p0, Lbbo$35;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v4, 0x3

    .line 3389
    check-cast p1, Ljava/lang/Void;

    .line 4392
    iget-object v0, p0, Lbbo$35;->c:Lbbo;

    iget-object v1, p0, Lbbo$35;->a:Lbfo;

    .line 5048
    iget-wide v2, v1, Lbfo;->a:J

    .line 4392
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbbo;->b(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    .line 4393
    if-eqz v0, :cond_0

    .line 4394
    invoke-virtual {v0, v4}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->b(I)V

    .line 4396
    :cond_0
    iget-object v0, p0, Lbbo$35;->c:Lbbo;

    .line 5139
    iget-object v0, v0, Lbbo;->f:Lbgp;

    .line 4396
    iget-object v1, p0, Lbbo$35;->a:Lbfo;

    .line 6048
    iget-wide v2, v1, Lbfo;->a:J

    .line 4396
    invoke-interface {v0, v2, v3, v4}, Lbgp;->a(JI)I

    .line 4397
    iget-object v0, p0, Lbbo$35;->c:Lbbo;

    iget-object v1, p0, Lbbo$35;->b:Lcma;

    .line 6139
    invoke-virtual {v0, v1, p1}, Lbbo;->a(Lcma;Ljava/lang/Object;)V

    .line 4399
    iget-object v0, p0, Lbbo$35;->c:Lbbo;

    invoke-virtual {v0}, Lbbo;->e()V

    .line 3389
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 3408
    iget-object v1, p0, Lbbo$35;->c:Lbbo;

    iget-object v2, p0, Lbbo$35;->a:Lbfo;

    .line 4048
    iget-wide v2, v2, Lbfo;->a:J

    .line 3408
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbbo;->b(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    .line 3409
    .local v0, "objectDing":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    if-eqz v0, :cond_0

    .line 3411
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->b(I)V

    .line 3413
    :cond_0
    iget-object v1, p0, Lbbo$35;->c:Lbbo;

    iget-object v2, p0, Lbbo$35;->b:Lcma;

    .line 4139
    invoke-virtual {v1, v2, p1, p2}, Lbbo;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 3414
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 3404
    return-void
.end method
