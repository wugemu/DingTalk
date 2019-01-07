.class final Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$17;
.super Ljava/lang/Object;
.source "MsgForwardActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    .prologue
    .line 2246
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$17;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 2257
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$17;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->v(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)V

    .line 2258
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2249
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$17;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->k:Lcvm;

    if-eqz v0, :cond_0

    .line 2250
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$17;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->k:Lcvm;

    invoke-static {p1}, Ldhy;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcvm;->a(Ljava/util/List;)V

    .line 2252
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$17;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->c(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)V

    .line 2253
    return-void
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2262
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$17;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->b(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$17;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->b(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->getRecipientList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2263
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2264
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "intent_key_message_recipients"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$17;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->b(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->getRecipientList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2265
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$17;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->d(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 2267
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method
