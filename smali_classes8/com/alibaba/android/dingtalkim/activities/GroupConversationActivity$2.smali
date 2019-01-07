.class final Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity$2;
.super Ljava/lang/Object;
.source "GroupConversationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->c(Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;)Landroid/widget/SearchView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->c(Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;)Landroid/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->c(Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->a(Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;Ljava/lang/String;)V

    .line 108
    :cond_0
    return-void
.end method
