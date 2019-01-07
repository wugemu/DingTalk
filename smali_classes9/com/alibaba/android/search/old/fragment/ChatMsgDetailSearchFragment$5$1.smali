.class final Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$5$1;
.super Ljava/lang/Object;
.source "ChatMsgDetailSearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$5;->a(Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$5;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$5;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$5;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$5$1;->b:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$5;

    iput-object p2, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$5$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 364
    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$5$1;->b:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$5;

    iget-object v3, v3, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$5;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    iget-object v4, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$5$1;->b:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$5;

    iget-object v4, v4, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$5;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    iget-object v4, v4, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->h:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$5$1;->b:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$5;

    iget-object v5, v5, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$5;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    invoke-static {v5}, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->d(Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;)J

    move-result-wide v6

    iget-object v5, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$5$1;->a:Ljava/util/List;

    invoke-virtual {v3, v4, v6, v7, v5}, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->a(Ljava/lang/String;JLjava/util/List;)V

    .line 365
    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$5$1;->b:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$5;

    iget-object v3, v3, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$5;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    invoke-static {v3}, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->f(Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;)Ljava/lang/String;

    move-result-object v1

    .line 367
    .local v1, "showCount":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x3e7

    if-le v3, v4, :cond_0

    .line 368
    const-string/jumbo v1, "999+"
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$5$1;->b:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$5;

    iget-object v3, v3, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$5;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    sget v4, Lemt$g;->search_chat_message_relate_count:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$5$1;->b:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$5;

    iget-object v6, v6, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$5;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    iget-object v6, v6, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->h:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 374
    .local v2, "title":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$5$1;->b:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$5;

    iget-object v3, v3, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$5;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    .line 1204
    iput-object v2, v3, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->r:Ljava/lang/String;

    .line 375
    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$5$1;->b:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$5;

    iget-object v3, v3, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$5;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    invoke-static {v3}, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->e(Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;)V

    .line 376
    return-void

    .line 370
    .end local v2    # "title":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method
