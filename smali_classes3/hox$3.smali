.class final Lhox$3;
.super Ljava/lang/Object;
.source "AlipayHandleUrlImpl.java"

# interfaces
.implements Lgvk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhox;->a(Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;Ljava/lang/String;Lhot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lhot;

.field final synthetic d:Lhox;


# direct methods
.method constructor <init>(Lhox;Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;Ljava/lang/String;Lhot;)V
    .locals 0
    .param p1, "this$0"    # Lhox;

    .prologue
    .line 465
    iput-object p1, p0, Lhox$3;->d:Lhox;

    iput-object p2, p0, Lhox$3;->a:Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;

    iput-object p3, p0, Lhox$3;->b:Ljava/lang/String;

    iput-object p4, p0, Lhox$3;->c:Lhot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 4
    .param p1, "isOpenApp4MiniApp"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 468
    const-string/jumbo v0, "AlipayHandleUrlImpl"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "startMiniApp"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "checkOpenType="

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1082
    const-string/jumbo v2, "mini_task"

    invoke-static {v2, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 469
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v0

    new-instance v1, Lhox$3$1;

    invoke-direct {v1, p0, p1}, Lhox$3$1;-><init>(Lhox$3;Z)V

    invoke-virtual {v0, v1}, Lcaa;->post(Ljava/lang/Runnable;)Z

    .line 475
    return-void
.end method
