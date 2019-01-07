.class final Lajl$1;
.super Lcmi;
.source "ConversationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lajl;->a(ZLcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/wukong/Callback;


# direct methods
.method constructor <init>(ZLcom/alibaba/wukong/Callback;)V
    .locals 0

    .prologue
    .line 352
    iput-boolean p1, p0, Lajl$1;->a:Z

    iput-object p2, p0, Lajl$1;->b:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 364
    const-string/jumbo v0, "Get cmail conversation object error: "

    invoke-static {v0, p1, p2, p3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 366
    iget-object v0, p0, Lajl$1;->b:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lajl$1;->b:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 352
    .line 1355
    iget-boolean v0, p0, Lajl$1;->a:Z

    invoke-static {v0}, Lafe;->a(Z)V

    .line 1357
    iget-object v0, p0, Lajl$1;->b:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 1358
    iget-object v0, p0, Lajl$1;->b:Lcom/alibaba/wukong/Callback;

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 352
    :cond_0
    return-void
.end method
