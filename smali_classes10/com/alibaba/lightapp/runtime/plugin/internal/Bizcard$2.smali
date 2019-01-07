.class Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard$2;
.super Ljava/lang/Object;
.source "Bizcard.java"

# interfaces
.implements Lifv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->uploadImageFile(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lifv",
        "<",
        "Lifx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;

    .prologue
    .line 323
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard$2;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(ILjava/lang/String;)V
    .locals 8
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 347
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;

    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string/jumbo v4, "exception code: %d, reason: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->access$800(Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->access$1200(Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 348
    return-void
.end method

.method public onProgress(JJI)V
    .locals 0
    .param p1, "l"    # J
    .param p3, "l1"    # J
    .param p5, "i"    # I

    .prologue
    .line 327
    return-void
.end method

.method public onSuccess(Lifx;)V
    .locals 4
    .param p1, "uploadResponse"    # Lifx;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 331
    if-nez p1, :cond_0

    .line 332
    const-string/jumbo v0, "lightapp"

    const-string/jumbo v1, "Bizcard"

    const-string/jumbo v2, "upload user avatar response null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;

    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v3, "upload user avatar response null"

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->access$800(Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->access$900(Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 343
    :goto_0
    return-void

    .line 1026
    :cond_0
    iget-object v0, p1, Lifx;->a:Ljava/lang/String;

    .line 337
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard$2;->val$path:Ljava/lang/String;

    .line 2026
    iget-object v2, p1, Lifx;->a:Ljava/lang/String;

    .line 338
    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->access$1000(Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;

    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v3, "upload user avatar response media null"

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->access$800(Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->access$1100(Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 323
    check-cast p1, Lifx;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard$2;->onSuccess(Lifx;)V

    return-void
.end method
