.class final Lhhx$1;
.super Lcmi;
.source "ClientContainerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhhx;->a(Ljava/lang/String;Ljava/lang/String;I)Lhin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lhin;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lhhx$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lhhx$1;->b:Ljava/lang/String;

    iput p3, p0, Lhhx$1;->c:I

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 51
    const-string/jumbo v0, "ClientContainerHelper"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "queryRpc"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "getMiniAppOpenInfo"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "onException"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p1, v1, v2

    const/4 v2, 0x4

    aput-object p2, v1, v2

    .line 1071
    const-string/jumbo v2, "mini_app"

    invoke-static {v2, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 42
    check-cast p1, Lhin;

    .line 2046
    iget-object v0, p0, Lhhx$1;->a:Ljava/lang/String;

    iget-object v1, p0, Lhhx$1;->b:Ljava/lang/String;

    iget v2, p0, Lhhx$1;->c:I

    .line 3024
    invoke-static {p1, v0, v1, v2}, Lhhx;->a(Lhin;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 42
    return-void
.end method
