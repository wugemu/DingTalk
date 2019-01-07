.class public final Lfzn$1;
.super Ljava/lang/Object;
.source "AlimeiSearchFacede.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfzn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcma;

.field final synthetic e:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILcma;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lfzn$1;->a:Ljava/lang/String;

    iput p2, p0, Lfzn$1;->b:I

    iput p3, p0, Lfzn$1;->c:I

    iput-object p4, p0, Lfzn$1;->d:Lcma;

    iput-object p5, p0, Lfzn$1;->e:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 42
    check-cast p1, Ljava/util/List;

    .line 1045
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1046
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lfzn$1$1;

    invoke-direct {v1, p0, p1}, Lfzn$1$1;-><init>(Lfzn$1;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    .line 1072
    :cond_0
    iget-object v0, p0, Lfzn$1;->d:Lcma;

    const/4 v1, 0x0

    .line 2027
    invoke-static {v0, v1}, Lfzn;->a(Lcma;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 83
    iget-object v0, p0, Lfzn$1;->d:Lcma;

    const/4 v1, 0x0

    .line 1027
    invoke-static {v0, v1}, Lfzn;->a(Lcma;Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 79
    return-void
.end method
