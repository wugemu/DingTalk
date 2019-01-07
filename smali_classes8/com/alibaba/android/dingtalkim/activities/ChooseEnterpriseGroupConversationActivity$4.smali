.class final Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity$4;
.super Ljava/lang/Object;
.source "ChooseEnterpriseGroupConversationActivity.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onQueryTextChange(Ljava/lang/String;)Z
    .locals 10
    .param p1, "newText"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 240
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;)Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    move-result-object v2

    .line 1303
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1304
    new-instance v6, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$6;

    invoke-direct {v6, v2, p1}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$6;-><init>(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;Ljava/lang/String;)V

    .line 1365
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v0

    iget-wide v4, v2, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->c:J

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-nez v3, :cond_0

    const/4 v4, 0x0

    :goto_0
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move v2, v1

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a(IILjava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Lcca;)V

    .line 1369
    :goto_1
    const/4 v0, 0x1

    .line 240
    return v0

    .line 1365
    :cond_0
    iget-wide v2, v2, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_0

    .line 1367
    :cond_1
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->c()V

    goto :goto_1
.end method

.method public final onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 235
    const/4 v0, 0x0

    return v0
.end method
