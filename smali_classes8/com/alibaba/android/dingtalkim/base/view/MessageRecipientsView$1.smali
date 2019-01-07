.class final Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView$1;
.super Landroid/content/BroadcastReceiver;
.source "MessageRecipientsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView$1;->a:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 63
    const-string/jumbo v2, "intent_key_identity"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 64
    .local v1, "identity":I
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView$1;->a:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->a(Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;)I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 65
    const-string/jumbo v2, "conversation"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 66
    .local v0, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    if-eqz v0, :cond_0

    .line 67
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView$1;->a:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->b(Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 69
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView$1;->a:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->a(Ljava/util/List;)Z

    .line 70
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView$1;->a:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->c(Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;)V

    .line 72
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView$1;->a:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->d(Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;)Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView$a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView$1;->a:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->d(Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;)Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView$a;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView$a;->a(Ljava/util/List;)V

    .line 77
    .end local v0    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    :cond_0
    return-void
.end method
