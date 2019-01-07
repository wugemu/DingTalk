.class final Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$2;
.super Ljava/lang/Object;
.source "ChatMsgDetailSearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$2;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

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
    .line 144
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$2;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->a(Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;)Leqd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$2;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->a(Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;)Leqd;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$2;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    invoke-static {v1}, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->b(Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$2;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->c(Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Leqd;->a(Ljava/util/List;Ljava/util/HashMap;)V

    .line 146
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$2;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->a(Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;)Leqd;

    move-result-object v0

    invoke-virtual {v0}, Leqd;->notifyDataSetChanged()V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$2;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$2;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    invoke-static {v1}, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->b(Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->b(Ljava/util/List;)V

    .line 149
    return-void
.end method
