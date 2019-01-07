.class final Ldps$2;
.super Ljava/lang/Object;
.source "CustomEmotionMgr.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ldra;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Ldps;


# direct methods
.method constructor <init>(Ldps;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Ldps;

    .prologue
    .line 218
    iput-object p1, p0, Ldps$2;->b:Ldps;

    iput-object p2, p0, Ldps$2;->a:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 218
    check-cast p1, Ldra;

    .line 1221
    if-nez p1, :cond_0

    .line 1222
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "traceEmotion"

    const-string/jumbo v2, "addCustomAuthEmotion rpc return null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    :goto_0
    return-void

    .line 1225
    :cond_0
    iget-object v0, p0, Ldps$2;->b:Ldps;

    iget-object v1, p0, Ldps$2;->a:Lcma;

    invoke-static {v0, p1, v1}, Ldps;->a(Ldps;Ldra;Lcma;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 235
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "traceEmotion"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "addCustomLoginAuthEmotion rpc error,code="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ",reason="

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Ldps$2;->a:Lcma;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Ldps$2;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 231
    return-void
.end method
