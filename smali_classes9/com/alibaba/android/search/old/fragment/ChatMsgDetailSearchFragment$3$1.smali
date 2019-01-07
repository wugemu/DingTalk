.class final Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$3$1;
.super Ljava/lang/Object;
.source "ChatMsgDetailSearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$3;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$3$1;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 178
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$3$1;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$3;

    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$3;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->a(Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;)Leqd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$3$1;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$3;

    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$3;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->a(Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;)Leqd;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$3$1;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$3;

    iget-object v1, v1, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$3;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    invoke-static {v1}, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->b(Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$3$1;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$3;

    iget-object v2, v2, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$3;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->c(Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Leqd;->a(Ljava/util/List;Ljava/util/HashMap;)V

    .line 180
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$3$1;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$3;

    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$3;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->a(Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;)Leqd;

    move-result-object v0

    invoke-virtual {v0}, Leqd;->notifyDataSetChanged()V

    .line 181
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$3$1;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$3;

    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$3;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$3$1;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$3;

    iget-object v1, v1, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$3;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    invoke-static {v1}, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->b(Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->b(Ljava/util/List;)V

    .line 183
    :cond_0
    return-void
.end method
