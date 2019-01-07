.class final Lcom/alibaba/android/search/activity/SearchJournalActivity$2;
.super Ljava/lang/Object;
.source "SearchJournalActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/activity/SearchJournalActivity;
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
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/activity/SearchJournalActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/activity/SearchJournalActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/activity/SearchJournalActivity;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/alibaba/android/search/activity/SearchJournalActivity$2;->a:Lcom/alibaba/android/search/activity/SearchJournalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchJournalActivity$2;->a:Lcom/alibaba/android/search/activity/SearchJournalActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/search/activity/SearchJournalActivity;->finish()V

    .line 173
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 155
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 155
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1158
    if-nez p1, :cond_0

    .line 1159
    const-string/jumbo v0, "conversation is null"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Letc;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1160
    :goto_0
    return-void

    .line 1162
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchJournalActivity$2;->a:Lcom/alibaba/android/search/activity/SearchJournalActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/search/activity/SearchJournalActivity;->a(Lcom/alibaba/android/search/activity/SearchJournalActivity;Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0
.end method
