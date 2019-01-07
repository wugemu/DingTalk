.class final Lffb$1;
.super Ljava/lang/Object;
.source "ShieldModel.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lffb;->a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;Lcma;)V
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
.field final synthetic a:J

.field final synthetic b:Lcma;

.field final synthetic c:Lffb;


# direct methods
.method constructor <init>(Lffb;JLcma;)V
    .locals 0
    .param p1, "this$0"    # Lffb;

    .prologue
    .line 40
    iput-object p1, p0, Lffb$1;->c:Lffb;

    iput-wide p2, p0, Lffb$1;->a:J

    iput-object p4, p0, Lffb$1;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 40
    check-cast p1, Ljava/lang/Void;

    .line 1043
    invoke-static {}, Lfdw;->a()Lfdw;

    move-result-object v1

    iget-wide v2, p0, Lffb$1;->a:J

    .line 2026
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 2030
    invoke-static {}, Lfdo;->a()Lfdo;

    move-result-object v4

    .line 2031
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lfdo;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 2032
    const/4 v5, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 2033
    new-instance v2, Lfdw$1;

    invoke-direct {v2, v1, v0, v4}, Lfdw$1;-><init>(Lfdw;[Ljava/lang/String;Lfdo;)V

    invoke-static {v2}, Lfdw;->a(Ljava/lang/Runnable;)V

    .line 1044
    :cond_0
    iget-object v0, p0, Lffb$1;->b:Lcma;

    if-eqz v0, :cond_1

    .line 1045
    iget-object v0, p0, Lffb$1;->b:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 40
    :cond_1
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 58
    iget-object v0, p0, Lffb$1;->b:Lcma;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lffb$1;->b:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lffb$1;->b:Lcma;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lffb$1;->b:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onProgress(Ljava/lang/Object;I)V

    .line 54
    :cond_0
    return-void
.end method
