.class final Ldho$2$3;
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

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ldho$2;


# direct methods
.method constructor <init>(Ldho$2;Lcom/alibaba/android/dtencrypt/DTGetCodeProxy$DTGetCodeCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Ldho$2;

    .prologue
    .line 200
    iput-object p1, p0, Ldho$2$3;->d:Ldho$2;

    iput-object p2, p0, Ldho$2$3;->a:Lcom/alibaba/android/dtencrypt/DTGetCodeProxy$DTGetCodeCallback;

    iput-object p3, p0, Ldho$2$3;->b:Ljava/lang/String;

    iput-object p4, p0, Ldho$2$3;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 204
    :try_start_0
    iget-object v1, p0, Ldho$2$3;->a:Lcom/alibaba/android/dtencrypt/DTGetCodeProxy$DTGetCodeCallback;

    iget-object v2, p0, Ldho$2$3;->b:Ljava/lang/String;

    iget-object v3, p0, Ldho$2$3;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/alibaba/android/dtencrypt/DTGetCodeProxy$DTGetCodeCallback;->onFail(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
