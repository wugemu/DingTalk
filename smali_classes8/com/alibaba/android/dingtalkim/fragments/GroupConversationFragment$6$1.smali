.class final Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$6$1;
.super Ljava/lang/Object;
.source "GroupConversationFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$6;->a(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$6;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$6;

    .prologue
    .line 346
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$6$1;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$6;

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
    .line 349
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$6$1;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$6;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$6;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->f(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$6$1;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$6;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$6;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->j(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    move-result-object v0

    sget v1, Lctk$e;->icon_no_search_result:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyImageResource(I)V

    .line 351
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$6$1;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$6;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$6;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->j(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    move-result-object v0

    sget v1, Lctk$i;->empty_search_content:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$6$1;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$6;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$6;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->a(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)V

    .line 354
    return-void
.end method
