.class final Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$12$2;
.super Ljava/lang/Object;
.source "ConversationSearchActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$12;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$12;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$12;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$12;

    .prologue
    .line 517
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$12$2;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 520
    const-string/jumbo v0, "cid"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$12$2;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$12;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$12;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->m(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 521
    const-string/jumbo v0, "keyword"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$12$2;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$12;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$12;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 522
    return-object p1
.end method
