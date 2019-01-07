.class public final Ldvz;
.super Ldvv;
.source "WorkBoxAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldvv",
        "<",
        "Lcom/alibaba/android/dingtalkim/models/WorkItemObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "loadMoreDataType"    # Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ldvv;-><init>(Landroid/app/Activity;Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;)V

    .line 33
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 37
    sget-object v0, Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;->WORK_ITEM:Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;

    return-object v0
.end method

.method public final synthetic b(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 29
    check-cast p1, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;

    .line 1042
    invoke-super {p0, p1}, Ldvv;->b(Ljava/lang/Object;)V

    .line 1043
    if-eqz p1, :cond_1

    iget-object v0, p0, Ldvz;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldvz;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1044
    iget-object v0, p0, Ldvz;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;

    .line 1045
    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;->id:J

    iget-wide v4, p1, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;->id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 1046
    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;->title:Ljava/lang/String;

    .line 1047
    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;->actions:Ljava/util/List;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;->actions:Ljava/util/List;

    .line 1048
    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;->contents:Ljava/util/List;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;->contents:Ljava/util/List;

    .line 1049
    iget-wide v2, p1, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;->createAt:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;->createAt:J

    .line 1050
    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;->icon:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;->icon:Ljava/lang/String;

    .line 1051
    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;->pcUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;->pcUrl:Ljava/lang/String;

    .line 1053
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "send_key_box_action_do"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1054
    const-string/jumbo v1, "key_oa_todo_id"

    iget-wide v2, p1, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;->id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1055
    iget-object v1, p0, Ldvz;->b:Landroid/app/Activity;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1056
    :cond_1
    return-void
.end method
