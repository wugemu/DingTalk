.class final Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2$1$1;
.super Ljava/lang/Object;
.source "FCRemindManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2$1;->onClick(Landroid/view/View;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2$1;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2$1;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2$1$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 155
    .line 1158
    const-string/jumbo v0, "FCRemindManager"

    const-string/jumbo v1, "showPrivacyDialog deny onDataReceived"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1159
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2$1$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;->d:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->access$200(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;)V

    .line 1160
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2$1$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;->d:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2$1$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2$1;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2$1$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2$1;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;

    iget-boolean v2, v2, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;->c:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->denyPrivacy(Landroid/content/Context;ZZ)V

    .line 1161
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2$1$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;->b:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$a;

    if-eqz v0, :cond_0

    .line 1162
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2$1$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;->b:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$a;

    invoke-interface {v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$a;->onDeny()V

    .line 155
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 172
    const-string/jumbo v0, "FCRemindManager"

    const-string/jumbo v1, "showPrivacyDialog deny onException"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "code"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "msg"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2$1$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;->d:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->access$200(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;)V

    .line 174
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2$1$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;->b:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$a;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2$1$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;->b:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$a;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$a;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2$1$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;

    iget-boolean v0, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;->c:Z

    if-nez v0, :cond_1

    .line 178
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    .line 180
    :cond_1
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 168
    return-void
.end method
