.class final Lcom/alibaba/android/projection/activity/FocusProjectionActivity$61;
.super Ljava/lang/Object;
.source "FocusProjectionActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;ZI)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 3384
    iput-object p1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$61;->c:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    iput-boolean p2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$61;->a:Z

    iput p3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$61;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v12, 0x1

    .line 3387
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$61;->c:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->F(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lehw;

    move-result-object v6

    .line 5132
    iget-object v1, v6, Lehw;->a:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, v6, Lehw;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    move-object v1, v5

    .line 4249
    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4250
    invoke-virtual {v6, v1, v12}, Lehw;->a(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    .line 4251
    if-eqz v1, :cond_1

    .line 4253
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4255
    invoke-interface {v5, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4258
    :cond_1
    iget-object v1, v6, Lehw;->a:Ljava/util/HashMap;

    if-eqz v1, :cond_8

    iget-object v1, v6, Lehw;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 4260
    if-nez v5, :cond_2

    .line 4261
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4267
    :cond_2
    iget-object v1, v6, Lehw;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 4268
    if-eqz v1, :cond_7

    .line 4269
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4270
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 4273
    iget-object v3, v6, Lehw;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v6, v1, v12}, Lehw;->a(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    .line 4274
    if-eqz v1, :cond_3

    .line 4275
    invoke-interface {v5, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 5142
    :cond_4
    const-string/jumbo v1, "focus_key_recent_devices"

    invoke-static {v1, v5}, Lcpk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5143
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 5144
    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 5145
    if-eqz v7, :cond_a

    array-length v1, v7

    if-lez v1, :cond_a

    .line 5147
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    .line 5149
    :goto_2
    array-length v1, v7

    if-ge v2, v1, :cond_9

    .line 5150
    aget-object v1, v7, v2

    .line 5151
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 5152
    const-string/jumbo v8, ":"

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 5153
    if-eqz v1, :cond_6

    array-length v8, v1

    const/4 v9, 0x2

    if-ne v8, v9, :cond_6

    .line 5154
    aget-object v8, v1, v3

    .line 5155
    aget-object v9, v1, v12

    .line 5156
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 5157
    iget-object v1, v6, Lehw;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 5158
    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    .line 5159
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/projection/data/FocusDeviceObject;

    .line 5160
    if-eqz v1, :cond_5

    .line 5163
    iget-wide v10, v1, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceUid:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 5164
    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 5166
    new-instance v8, Lcom/alibaba/android/projection/data/FocusDeviceObject;

    invoke-direct {v8, v1}, Lcom/alibaba/android/projection/data/FocusDeviceObject;-><init>(Lcom/alibaba/android/projection/data/FocusDeviceObject;)V

    .line 5167
    iput-boolean v12, v8, Lcom/alibaba/android/projection/data/FocusDeviceObject;->beCached:Z

    .line 5168
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5177
    :cond_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    const/4 v8, 0x3

    if-ge v1, v8, :cond_9

    .line 5149
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_7
    move-object v0, v5

    .line 3389
    .local v0, "devicesList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;>;"
    :goto_3
    const-string/jumbo v1, "focus_devices"

    check-cast v0, Ljava/util/ArrayList;

    .end local v0    # "devicesList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;>;"
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 3390
    const-string/jumbo v1, "is_Extra"

    iget-boolean v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$61;->a:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3391
    const-string/jumbo v1, "focus_selected_position"

    iget v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$61;->b:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3392
    return-object p1

    :cond_8
    move-object v0, v5

    goto :goto_3

    :cond_9
    move-object v1, v4

    goto/16 :goto_0

    :cond_a
    move-object v1, v5

    goto/16 :goto_0
.end method
