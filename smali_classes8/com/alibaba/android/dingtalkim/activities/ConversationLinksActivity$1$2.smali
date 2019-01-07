.class final Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1$2;
.super Ljava/lang/Object;
.source "ConversationLinksActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1;->a(Ljava/lang/String;Ljava/util/Map;)V
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
        "Lgqw;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1$2;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 160
    .line 1163
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1$2;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1167
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1$2;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;Z)Z

    .line 1168
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1$2;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;->dismissLoadingDialog()V

    .line 1169
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1$2;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    sget v1, Lctk$i;->dt_im_comment_success:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 1170
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1$2;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;->c(Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setVisibility(I)V

    .line 1171
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1$2;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1$2;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;->c(Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 160
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 181
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1$2;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1$2;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;Z)Z

    .line 186
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1$2;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;->dismissLoadingDialog()V

    .line 188
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 177
    return-void
.end method
