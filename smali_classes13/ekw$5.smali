.class final Lekw$5;
.super Ljava/lang/Object;
.source "PwdManager.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lekw;->b(Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
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
        "Lcom/alibaba/wukong/settings/CloudSetting;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lekw;


# direct methods
.method constructor <init>(Lekw;Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lekw;

    .prologue
    .line 263
    iput-object p1, p0, Lekw$5;->c:Lekw;

    iput-object p2, p0, Lekw$5;->a:Lcom/alibaba/wukong/Callback;

    iput-object p3, p0, Lekw$5;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 275
    const-string/jumbo v0, "pwd"

    const-string/jumbo v1, "PwdManager"

    const-string/jumbo v2, "set screen lock async error"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lekw$5;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lekw$5;->a:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 263
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 263
    .line 1266
    const-string/jumbo v0, "pwd"

    const-string/jumbo v1, "PwdManager"

    const-string/jumbo v2, "set screen lock async success"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    iget-object v0, p0, Lekw$5;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 1268
    iget-object v0, p0, Lekw$5;->a:Lcom/alibaba/wukong/Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 1270
    :cond_0
    iget-object v0, p0, Lekw$5;->c:Lekw;

    iget-object v1, p0, Lekw$5;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lekw;->b(Lekw;Ljava/lang/String;)V

    .line 263
    return-void
.end method
