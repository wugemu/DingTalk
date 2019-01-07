.class final Lcn/com/chinatelecom/gateway/lib/f;
.super Ljava/lang/Object;
.source "CtAuth.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/com/chinatelecom/gateway/lib/PreCodeListener;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/com/chinatelecom/gateway/lib/PreCodeListener;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcn/com/chinatelecom/gateway/lib/f;->a:Lcn/com/chinatelecom/gateway/lib/PreCodeListener;

    iput-object p2, p0, Lcn/com/chinatelecom/gateway/lib/f;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 63
    iget-object v0, p0, Lcn/com/chinatelecom/gateway/lib/f;->a:Lcn/com/chinatelecom/gateway/lib/PreCodeListener;

    if-eqz v0, :cond_0

    .line 64
    invoke-static {}, Lcn/com/chinatelecom/gateway/lib/CtAuth;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "callback result : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/com/chinatelecom/gateway/lib/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/chinatelecom/gateway/lib/CtAuth;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcn/com/chinatelecom/gateway/lib/f;->a:Lcn/com/chinatelecom/gateway/lib/PreCodeListener;

    iget-object v1, p0, Lcn/com/chinatelecom/gateway/lib/f;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/com/chinatelecom/gateway/lib/PreCodeListener;->onResult(Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    sput-object v0, Lcn/com/chinatelecom/gateway/lib/CtAuth;->mTraceLogger:Lcn/com/chinatelecom/gateway/lib/o;

    .line 68
    :cond_0
    return-void
.end method
