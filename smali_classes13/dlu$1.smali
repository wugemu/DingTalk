.class final Ldlu$1;
.super Ljava/lang/Object;
.source "ForwardCombineTask.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldlu;->a(Ldlm;Ljava/util/Map;)V
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
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldll;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Ldlu;


# direct methods
.method constructor <init>(Ldlu;Ldll;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Ldlu;

    .prologue
    .line 56
    iput-object p1, p0, Ldlu$1;->c:Ldlu;

    iput-object p2, p0, Ldlu$1;->a:Ldll;

    iput-object p3, p0, Ldlu$1;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 64
    iget-object v1, p0, Ldlu$1;->c:Ldlu;

    iget-object v2, p0, Ldlu$1;->a:Ldll;

    const/4 v3, 0x0

    iget-object v4, p0, Ldlu$1;->b:Ljava/util/Map;

    invoke-static {v1, v2, v3, v4}, Ldlu;->a(Ldlu;Ldll;Ljava/util/Map;Ljava/util/Map;)V

    .line 65
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "ForwardCombineTask"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "getSenderNames failed, code="

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

    .line 67
    .local v0, "errorMsg":Ljava/lang/String;
    const-string/jumbo v1, "im"

    const-string/jumbo v2, "ForwardCombineTask"

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 56
    check-cast p1, Ljava/util/Map;

    .line 1059
    iget-object v0, p0, Ldlu$1;->c:Ldlu;

    iget-object v1, p0, Ldlu$1;->a:Ldll;

    iget-object v2, p0, Ldlu$1;->b:Ljava/util/Map;

    invoke-static {v0, v1, p1, v2}, Ldlu;->a(Ldlu;Ldll;Ljava/util/Map;Ljava/util/Map;)V

    .line 56
    return-void
.end method
