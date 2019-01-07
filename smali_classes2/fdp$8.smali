.class final Lfdp$8;
.super Ljava/lang/Object;
.source "CommentPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfdp;->a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;Ljava/lang/String;Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;)V
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
        "Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lfdp;


# direct methods
.method constructor <init>(Lfdp;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lfdp;

    .prologue
    .line 537
    iput-object p1, p0, Lfdp$8;->b:Lfdp;

    iput-object p2, p0, Lfdp$8;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 537
    check-cast p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 1540
    iget-object v0, p0, Lfdp$8;->b:Lfdp;

    invoke-static {v0}, Lfdp;->a(Lfdp;)V

    .line 1542
    iget-object v0, p0, Lfdp$8;->b:Lfdp;

    .line 2072
    iget-object v0, v0, Lfdp;->d:Ljava/util/Map;

    .line 1542
    iget-object v1, p0, Lfdp$8;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1543
    if-eqz p1, :cond_1

    .line 1544
    invoke-virtual {p1}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->saveLike2DbAsync()V

    .line 1545
    const-string/jumbo v0, "TESTDY"

    const-string/jumbo v1, "object not null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    :goto_0
    iget-object v0, p0, Lfdp$8;->b:Lfdp;

    .line 3072
    iget-object v0, v0, Lfdp;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 1550
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1551
    iget-object v0, p0, Lfdp$8;->b:Lfdp;

    const/4 v1, 0x0

    .line 4072
    iput v1, v0, Lfdp;->i:I

    .line 1553
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "connection_on_comment_sent_success"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1554
    const-string/jumbo v1, "connection_on_comment_sent_success"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1555
    invoke-static {}, Lffg;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1557
    iget-object v0, p0, Lfdp$8;->b:Lfdp;

    .line 5072
    iget-object v0, v0, Lfdp;->c:Lcov;

    .line 1557
    if-eqz v0, :cond_0

    .line 1558
    iget-object v0, p0, Lfdp$8;->b:Lfdp;

    .line 6072
    iget-object v0, v0, Lfdp;->c:Lcov;

    .line 1558
    invoke-interface {v0, p1}, Lcov;->a(Ljava/lang/Object;)V

    .line 537
    :cond_0
    return-void

    .line 1547
    :cond_1
    const-string/jumbo v0, "TESTDY"

    const-string/jumbo v1, "object null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 569
    iget-object v0, p0, Lfdp$8;->b:Lfdp;

    invoke-static {v0}, Lfdp;->a(Lfdp;)V

    .line 570
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "sendComment error, code = "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, " exception = "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lffe;->a(Ljava/lang/String;)V

    .line 571
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 565
    return-void
.end method
