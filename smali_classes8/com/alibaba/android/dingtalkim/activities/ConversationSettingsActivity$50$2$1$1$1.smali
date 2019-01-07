.class final Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2$1$1$1;
.super Ljava/lang/Object;
.source "ConversationSettingsActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2$1$1;
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
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2$1$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2$1$1;)V
    .locals 0
    .param p1, "this$4"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2$1$1;

    .prologue
    .line 2872
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2889
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2$1$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    sget v1, Lctk$i;->update_title_error:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 2890
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2$1$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ac(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    .line 2891
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 2872
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2872
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 3881
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2$1$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ac(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    .line 3882
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2$1$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 3883
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2$1$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ad(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2$1$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ab(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3884
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2$1$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2$1$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2$1$1;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2$1;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50$2;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ab(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2872
    return-void
.end method
