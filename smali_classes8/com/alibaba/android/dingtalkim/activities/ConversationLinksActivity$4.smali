.class final Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$4;
.super Ljava/lang/Object;
.source "ConversationLinksActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 296
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;->g(Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;->i(Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->a(I)V

    .line 298
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;->h(Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;)V

    .line 300
    :cond_0
    return-void
.end method
