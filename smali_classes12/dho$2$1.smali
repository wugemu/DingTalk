.class final Ldho$2$1;
.super Ljava/lang/Object;
.source "EncryptManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldho$2;->getCode(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/dtencrypt/DTGetCodeProxy$DTGetCodeCallback;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dtencrypt/DTGetCodeProxy$DTGetCodeCallback;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ldho$2;


# direct methods
.method constructor <init>(Ldho$2;Lcom/alibaba/android/dtencrypt/DTGetCodeProxy$DTGetCodeCallback;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Ldho$2;

    .prologue
    .line 162
    iput-object p1, p0, Ldho$2$1;->c:Ldho$2;

    iput-object p2, p0, Ldho$2$1;->a:Lcom/alibaba/android/dtencrypt/DTGetCodeProxy$DTGetCodeCallback;

    iput-object p3, p0, Ldho$2$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 162
    check-cast p1, Ljava/lang/String;

    .line 1165
    const-string/jumbo v0, "crypto"

    const-string/jumbo v1, "getDTGetCodeProxy"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "getDTGetCodeProxy request onDataReceived. code:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 1166
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1165
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    iget-object v0, p0, Ldho$2$1;->c:Ldho$2;

    iget-object v1, p0, Ldho$2$1;->a:Lcom/alibaba/android/dtencrypt/DTGetCodeProxy$DTGetCodeCallback;

    invoke-static {v0, v1, p1}, Ldho$2;->a(Ldho$2;Lcom/alibaba/android/dtencrypt/DTGetCodeProxy$DTGetCodeCallback;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 176
    const-string/jumbo v0, "crypto"

    const-string/jumbo v1, "getDTGetCodeProxy"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "getDTGetCodeProxy request onFail. corpId="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Ldho$2$1;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", errorCode:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p1, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, ", reason:"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p2, v2, v3

    .line 177
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 176
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Ldho$2$1;->c:Ldho$2;

    iget-object v1, p0, Ldho$2$1;->a:Lcom/alibaba/android/dtencrypt/DTGetCodeProxy$DTGetCodeCallback;

    iget-object v2, p0, Ldho$2$1;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1, p2}, Ldho$2;->a(Ldho$2;Lcom/alibaba/android/dtencrypt/DTGetCodeProxy$DTGetCodeCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 172
    return-void
.end method
