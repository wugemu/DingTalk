.class final Lgoj$2;
.super Ljava/lang/Object;
.source "CSpaceProxy.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgoj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Ltl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lgoj;


# direct methods
.method constructor <init>(Lgoj;Lcma;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lgoj;

    .prologue
    .line 565
    iput-object p1, p0, Lgoj$2;->f:Lgoj;

    iput-object p2, p0, Lgoj$2;->a:Lcma;

    iput-object p3, p0, Lgoj$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lgoj$2;->c:Ljava/lang/String;

    iput-object p5, p0, Lgoj$2;->d:Ljava/lang/String;

    iput-object p6, p0, Lgoj$2;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 2
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 575
    iget-object v0, p0, Lgoj$2;->a:Lcma;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lgoj$2;->a:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 578
    :cond_0
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 565
    check-cast p1, Ltl;

    .line 1568
    iget-object v0, p0, Lgoj$2;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1569
    iget-object v0, p0, Lgoj$2;->a:Lcma;

    iget-object v1, p0, Lgoj$2;->b:Ljava/lang/String;

    iget-object v2, p0, Lgoj$2;->c:Ljava/lang/String;

    iget-object v3, p0, Lgoj$2;->d:Ljava/lang/String;

    iget-object v4, p0, Lgoj$2;->e:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3, v4}, Lgoj$a;->a(Ltl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ltl;

    move-result-object v1

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 565
    :cond_0
    return-void
.end method
