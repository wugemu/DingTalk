.class final Lboy$2;
.super Ljava/lang/Object;
.source "CommentPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lboy;->a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;Ljava/lang/String;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;)V
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
        "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lboy;


# direct methods
.method constructor <init>(Lboy;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lboy;

    .prologue
    .line 549
    iput-object p1, p0, Lboy$2;->b:Lboy;

    iput-object p2, p0, Lboy$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 549
    check-cast p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 1565
    iget-object v0, p0, Lboy$2;->b:Lboy;

    invoke-static {v0}, Lboy;->a(Lboy;)V

    .line 1566
    if-nez p1, :cond_1

    .line 1567
    const-string/jumbo v0, "sendComment postObject = null"

    .line 2076
    invoke-static {v2, v0}, Lbqh;->a(ZLjava/lang/String;)V

    .line 1568
    :cond_0
    :goto_0
    return-void

    .line 1570
    :cond_1
    iget-object v0, p0, Lboy$2;->b:Lboy;

    .line 3063
    iget-object v0, v0, Lboy;->o:Ljava/util/Map;

    .line 1570
    iget-object v1, p0, Lboy$2;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1571
    if-eqz v0, :cond_2

    .line 1572
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1575
    :cond_2
    iget-object v0, p0, Lboy$2;->b:Lboy;

    .line 4063
    iget-object v0, v0, Lboy;->d:Ljava/util/Map;

    .line 1575
    iget-object v1, p0, Lboy$2;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1577
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->saveLike2DbAsync()V

    .line 1578
    iget-object v0, p0, Lboy$2;->b:Lboy;

    .line 5063
    iget-object v0, v0, Lboy;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 1578
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1579
    iget-object v0, p0, Lboy$2;->b:Lboy;

    .line 6063
    iput v2, v0, Lboy;->i:I

    .line 1581
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "circle_on_comment_sent_success"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1582
    const-string/jumbo v1, "circle_on_comment_sent_success"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1583
    invoke-static {}, Lbqj;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1585
    iget-object v0, p0, Lboy$2;->b:Lboy;

    .line 7063
    iget-object v0, v0, Lboy;->c:Lcov;

    .line 1585
    if-eqz v0, :cond_0

    .line 1586
    iget-object v0, p0, Lboy$2;->b:Lboy;

    .line 8063
    iget-object v0, v0, Lboy;->c:Lcov;

    .line 1586
    invoke-interface {v0, p1}, Lcov;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 552
    iget-object v0, p0, Lboy$2;->b:Lboy;

    invoke-static {v0}, Lboy;->a(Lboy;)V

    .line 554
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

    invoke-static {v0}, Lbqh;->a(Ljava/lang/String;)V

    .line 555
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 561
    return-void
.end method
