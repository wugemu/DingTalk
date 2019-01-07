.class Lcom/alibaba/laiwang/alive/g$2;
.super Ljava/lang/Object;
.source "BasePushChannel.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/laiwang/alive/g;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic n:Lcom/alibaba/laiwang/alive/g;


# direct methods
.method constructor <init>(Lcom/alibaba/laiwang/alive/g;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/laiwang/alive/g;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/alibaba/laiwang/alive/g$2;->n:Lcom/alibaba/laiwang/alive/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Void;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Void;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 123
    const-string/jumbo v0, "[TAG] XPN"

    const-string/jumbo v1, "BasePushChannel unregDevice success"

    invoke-static {v0, v1}, Lcom/alibaba/laiwang/alive/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/alibaba/laiwang/alive/g$2;->n:Lcom/alibaba/laiwang/alive/g;

    sget-object v1, Lcom/alibaba/laiwang/alive/i;->q:Lcom/alibaba/laiwang/alive/i;

    iput-object v1, v0, Lcom/alibaba/laiwang/alive/g;->l:Lcom/alibaba/laiwang/alive/i;

    .line 125
    return-void
.end method

.method public a(Ljava/lang/Void;I)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Void;
    .param p2, "progress"    # I

    .prologue
    .line 134
    return-void
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 129
    const-string/jumbo v0, "[TAG] XPN"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "BasePushChannel unregDevice fail code = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/laiwang/alive/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 120
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/laiwang/alive/g$2;->a(Ljava/lang/Void;I)V

    return-void
.end method

.method public synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 120
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/alibaba/laiwang/alive/g$2;->a(Ljava/lang/Void;)V

    return-void
.end method
