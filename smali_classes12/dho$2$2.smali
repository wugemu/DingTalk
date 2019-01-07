.class final Ldho$2$2;
.super Ljava/lang/Object;
.source "EncryptManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldho$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
    .line 185
    iput-object p1, p0, Ldho$2$2;->c:Ldho$2;

    iput-object p2, p0, Ldho$2$2;->a:Lcom/alibaba/android/dtencrypt/DTGetCodeProxy$DTGetCodeCallback;

    iput-object p3, p0, Ldho$2$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 188
    :try_start_0
    iget-object v1, p0, Ldho$2$2;->a:Lcom/alibaba/android/dtencrypt/DTGetCodeProxy$DTGetCodeCallback;

    iget-object v2, p0, Ldho$2$2;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/alibaba/android/dtencrypt/DTGetCodeProxy$DTGetCodeCallback;->onSuccess(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 191
    const-string/jumbo v1, "crypto"

    sget-object v2, Ldho;->a:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "postSuccess "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
