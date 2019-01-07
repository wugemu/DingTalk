.class final Ldho$1$1;
.super Ljava/lang/Object;
.source "EncryptManager.java"

# interfaces
.implements Lcom/alibaba/android/dtencrypt/DTHttpRequestProxy$DTHttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldho$1;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/alibaba/android/dtencrypt/DTHttpRequestProxy$DTHttpRequestCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/dtencrypt/DTHttpRequestProxy$DTHttpRequestCallback;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ldho$1;


# direct methods
.method constructor <init>(Ldho$1;Ljava/lang/String;Lcom/alibaba/android/dtencrypt/DTHttpRequestProxy$DTHttpRequestCallback;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Ldho$1;

    .prologue
    .line 121
    iput-object p1, p0, Ldho$1$1;->d:Ldho$1;

    iput-object p2, p0, Ldho$1$1;->a:Ljava/lang/String;

    iput-object p3, p0, Ldho$1$1;->b:Lcom/alibaba/android/dtencrypt/DTHttpRequestProxy$DTHttpRequestCallback;

    iput-object p4, p0, Ldho$1$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(ILjava/lang/String;)V
    .locals 6
    .param p1, "errorCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x5

    .line 136
    const-string/jumbo v0, "crypto"

    const-string/jumbo v1, "DTHttpRequestProxy"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "DTHttpRequestProxy request onFail. urlString="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Ldho$1$1;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", corpId="

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Ldho$1$1;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, ", errorCode:"

    aput-object v4, v2, v3

    .line 138
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x6

    const-string/jumbo v4, ", errorMsg:"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    aput-object p2, v2, v3

    .line 137
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Ldho$1$1;->b:Lcom/alibaba/android/dtencrypt/DTHttpRequestProxy$DTHttpRequestCallback;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Ldho$1$1;->b:Lcom/alibaba/android/dtencrypt/DTHttpRequestProxy$DTHttpRequestCallback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/android/dtencrypt/DTHttpRequestProxy$DTHttpRequestCallback;->onFail(ILjava/lang/String;)V

    .line 142
    :cond_0
    iget-object v0, p0, Ldho$1$1;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v5, v1, p2}, Ldhq;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .locals 6
    .param p1, "response"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 124
    const-string/jumbo v1, "crypto"

    const-string/jumbo v2, "DTHttpRequestProxy"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "DTHttpRequestProxy request onSuccess. response:"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, ", corpId="

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Ldho$1$1;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Ldho$1$1;->b:Lcom/alibaba/android/dtencrypt/DTHttpRequestProxy$DTHttpRequestCallback;

    if-eqz v1, :cond_0

    .line 127
    :try_start_0
    iget-object v1, p0, Ldho$1$1;->b:Lcom/alibaba/android/dtencrypt/DTHttpRequestProxy$DTHttpRequestCallback;

    invoke-interface {v1, p1}, Lcom/alibaba/android/dtencrypt/DTHttpRequestProxy$DTHttpRequestCallback;->onSuccess(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Lcom/alibaba/android/dtencrypt/DTEncryptException;
    iget-object v1, p0, Ldho$1$1;->a:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-virtual {v0}, Lcom/alibaba/android/dtencrypt/DTEncryptException;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alibaba/android/dtencrypt/DTEncryptException;->getErrorMsg()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Ldhq;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
