.class final Ldlw$1;
.super Ljava/lang/Object;
.source "MultiToTaskEncryptFileTask.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldlw;
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
.field final synthetic a:Ldlp;

.field final synthetic b:Ldlw;


# direct methods
.method constructor <init>(Ldlw;Ldlp;)V
    .locals 0
    .param p1, "this$0"    # Ldlw;

    .prologue
    .line 60
    iput-object p1, p0, Ldlw$1;->b:Ldlw;

    iput-object p2, p0, Ldlw$1;->a:Ldlp;

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
    .line 60
    check-cast p1, Ljava/lang/String;

    .line 1063
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1064
    iget-object v0, p0, Ldlw$1;->a:Ldlp;

    const-string/jumbo v1, ""

    const-string/jumbo v2, "download filePath is empty"

    invoke-static {v0, v1, v2}, Ldlw;->a(Ldlm;Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    const-string/jumbo v0, "im"

    invoke-static {}, Ldlw;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "download filePath is empty"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    :goto_0
    return-void

    .line 1068
    :cond_0
    iget-object v0, p0, Ldlw$1;->b:Ldlw;

    iget-object v1, p0, Ldlw$1;->a:Ldlp;

    invoke-static {v0, v1, p1}, Ldlw;->a(Ldlw;Ldlp;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 78
    iget-object v1, p0, Ldlw$1;->a:Ldlp;

    invoke-static {v1, p1, p2}, Ldlw;->a(Ldlm;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {}, Ldlw;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "download failed, code="

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

    .line 81
    .local v0, "errorMsg":Ljava/lang/String;
    const-string/jumbo v1, "im"

    invoke-static {}, Ldlw;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 74
    return-void
.end method
