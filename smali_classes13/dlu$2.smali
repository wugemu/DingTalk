.class final Ldlu$2;
.super Ljava/lang/Object;
.source "ForwardCombineTask.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldlu;
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
        "Lcom/alibaba/wukong/im/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldll;

.field final synthetic b:Ldlu;


# direct methods
.method constructor <init>(Ldlu;Ldll;)V
    .locals 0
    .param p1, "this$0"    # Ldlu;

    .prologue
    .line 80
    iput-object p1, p0, Ldlu$2;->b:Ldlu;

    iput-object p2, p0, Ldlu$2;->a:Ldll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 88
    iget-object v1, p0, Ldlu$2;->a:Ldll;

    invoke-static {v1, p1, p2}, Ldlu;->a(Ldlm;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "ForwardCombineTask"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "forward failed, code="

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, ", reason="

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "errorMsg":Ljava/lang/String;
    const-string/jumbo v1, "im"

    const-string/jumbo v2, "ForwardCombineTask"

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 80
    check-cast p1, Lcom/alibaba/wukong/im/Message;

    .line 1083
    iget-object v0, p0, Ldlu$2;->a:Ldll;

    invoke-static {v0, p1}, Ldlu;->a(Ldlm;Ljava/lang/Object;)V

    .line 80
    return-void
.end method
