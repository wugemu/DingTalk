.class final Lbbk$1;
.super Lcmi;
.source "DataSourceRemote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbk;->a(Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Integer;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ljava/util/List",
        "<",
        "Lazm;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lbbk;


# direct methods
.method constructor <init>(Lbbk;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbk;

    .prologue
    .line 124
    iput-object p1, p0, Lbbk$1;->b:Lbbk;

    iput-object p2, p0, Lbbk$1;->a:Lcma;

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
    .line 134
    iget-object v0, p0, Lbbk$1;->a:Lcma;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lbbk$1;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_0
    const-string/jumbo v0, "retrieveAllDing failed"

    invoke-static {v0, p1, p2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 124
    check-cast p1, Ljava/util/List;

    .line 1127
    iget-object v0, p0, Lbbk$1;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1128
    iget-object v0, p0, Lbbk$1;->a:Lcma;

    iget-object v1, p0, Lbbk$1;->b:Lbbk;

    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->NORMAL:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    invoke-static {v1, p1, v2}, Lbbk;->a(Lbbk;Ljava/lang/Iterable;Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 124
    :cond_0
    return-void
.end method
