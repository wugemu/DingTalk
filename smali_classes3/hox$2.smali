.class final Lhox$2;
.super Ljava/lang/Object;
.source "AlipayHandleUrlImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhox;->a(Landroid/app/Activity;Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;Ljava/lang/String;Lhot;)V
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
    .line 433
    iput-object p1, p0, Lhox$2;->d:Lhox;

    iput-object p2, p0, Lhox$2;->a:Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;

    iput-object p3, p0, Lhox$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lhox$2;->c:Lhot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 436
    iget-object v0, p0, Lhox$2;->d:Lhox;

    iget-object v1, p0, Lhox$2;->a:Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;

    iget-object v2, p0, Lhox$2;->b:Ljava/lang/String;

    iget-object v3, p0, Lhox$2;->c:Lhot;

    .line 1054
    invoke-virtual {v0, v1, v2, v3}, Lhox;->a(Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;Ljava/lang/String;Lhot;)V

    .line 437
    return-void
.end method
