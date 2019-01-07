.class final Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity$3;
.super Ljava/lang/Object;
.source "ConversationBaseActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;->a(Lcom/alibaba/wukong/im/Conversation;)V
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
        "Lcom/alibaba/wukong/im/category/CategoryObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 125
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 126
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "getCategory info fail s:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " s1:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    .line 127
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 126
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 109
    check-cast p1, Lcom/alibaba/wukong/im/category/CategoryObject;

    .line 1112
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1113
    if-nez p1, :cond_1

    .line 1114
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    .line 1116
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1117
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;->b:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/alibaba/wukong/im/category/CategoryObject;->title:Ljava/lang/String;

    iget-wide v2, p1, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    invoke-static {v1, v2, v3}, Ldde;->a(Ljava/lang/String;J)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
