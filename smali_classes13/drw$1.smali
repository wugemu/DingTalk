.class final Ldrw$1;
.super Ljava/lang/Object;
.source "PublicAccountMenuManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldrw;->a(JZ)V
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
        "Lcom/alibaba/android/dingtalkim/models/idl/CustomMenuModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:J

.field final synthetic c:Ldrw;


# direct methods
.method constructor <init>(Ldrw;ZJ)V
    .locals 1
    .param p1, "this$0"    # Ldrw;

    .prologue
    .line 157
    iput-object p1, p0, Ldrw$1;->c:Ldrw;

    iput-boolean p2, p0, Ldrw$1;->a:Z

    iput-wide p3, p0, Ldrw$1;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 157
    check-cast p1, Lcom/alibaba/android/dingtalkim/models/idl/CustomMenuModel;

    .line 8160
    const-string/jumbo v3, "im"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const-string/jumbo v0, "loadMenuData success:"

    aput-object v0, v4, v1

    if-nez p1, :cond_2

    const-string/jumbo v0, " result null"

    :goto_0
    aput-object v0, v4, v6

    iget-boolean v0, p0, Ldrw$1;->a:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, " hasData"

    :goto_1
    aput-object v0, v4, v8

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v7, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8161
    if-eqz p1, :cond_9

    .line 8162
    iget-object v0, p0, Ldrw$1;->c:Ldrw;

    iget-wide v4, p0, Ldrw$1;->b:J

    .line 9049
    invoke-virtual {v0, p1, v4, v5}, Ldrw;->a(Lcom/alibaba/android/dingtalkim/models/idl/CustomMenuModel;J)Z

    move-result v0

    .line 8162
    if-eqz v0, :cond_7

    .line 8163
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/models/idl/CustomMenuModel;->menu:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/models/idl/CustomMenuModel;->menu:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 8164
    :cond_0
    const-string/jumbo v0, "im"

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "loadMenuData saveCache success menu size 0"

    aput-object v4, v3, v1

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v7, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8166
    iget-object v0, p0, Ldrw$1;->c:Ldrw;

    .line 10049
    iget-boolean v0, v0, Ldrw;->e:Z

    .line 8166
    if-nez v0, :cond_4

    .line 8168
    iget-object v0, p0, Ldrw$1;->c:Ldrw;

    .line 11049
    iget-object v0, v0, Ldrw;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 8168
    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setVisibility(I)V

    .line 8188
    :cond_1
    :goto_2
    iget-object v0, p0, Ldrw$1;->c:Ldrw;

    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/models/idl/CustomMenuModel;->menu:Ljava/util/List;

    .line 24049
    invoke-virtual {v0, v1}, Ldrw;->a(Ljava/util/List;)V

    .line 8190
    :goto_3
    return-void

    .line 8160
    :cond_2
    const-string/jumbo v0, "result not null "

    goto :goto_0

    :cond_3
    const-string/jumbo v0, " noData"

    goto :goto_1

    .line 8170
    :cond_4
    iget-object v0, p0, Ldrw$1;->c:Ldrw;

    .line 12049
    iget-object v0, v0, Ldrw;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 8170
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setVisibility(I)V

    .line 8171
    iget-object v0, p0, Ldrw$1;->c:Ldrw;

    .line 13049
    iget-object v0, v0, Ldrw;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    .line 8171
    if-eqz v0, :cond_1

    iget-object v0, p0, Ldrw$1;->c:Ldrw;

    .line 14049
    iget-object v0, v0, Ldrw;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    .line 8171
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->N()Ldrk;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8172
    iget-object v0, p0, Ldrw$1;->c:Ldrw;

    .line 15049
    iget-object v0, v0, Ldrw;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    .line 8172
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->N()Ldrk;

    move-result-object v0

    invoke-virtual {v0, v1}, Ldrk;->a(Z)V

    goto :goto_2

    .line 8176
    :cond_5
    const-string/jumbo v0, "im"

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "loadMenuData saveCache success menu size :"

    aput-object v3, v2, v1

    iget-object v3, p1, Lcom/alibaba/android/dingtalkim/models/idl/CustomMenuModel;->menu:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v7, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8178
    iget-boolean v0, p0, Ldrw$1;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Ldrw$1;->c:Ldrw;

    .line 16049
    iget-object v0, v0, Ldrw;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 8178
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldrw$1;->c:Ldrw;

    .line 17049
    iget-object v0, v0, Ldrw;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    .line 8179
    if-eqz v0, :cond_1

    iget-object v0, p0, Ldrw$1;->c:Ldrw;

    .line 18049
    iget-object v0, v0, Ldrw;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    .line 8179
    instance-of v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldrw$1;->c:Ldrw;

    .line 19049
    iget-object v0, v0, Ldrw;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    .line 8179
    check-cast v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .line 19223
    iget v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->b:I

    .line 8179
    if-nez v0, :cond_1

    .line 8180
    iget-object v0, p0, Ldrw$1;->c:Ldrw;

    .line 20049
    iget-object v0, v0, Ldrw;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    .line 8180
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->N()Ldrk;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8182
    iget-object v0, p0, Ldrw$1;->c:Ldrw;

    .line 21049
    invoke-virtual {v0}, Ldrw;->a()Z

    move-result v0

    .line 8182
    if-nez v0, :cond_6

    iget-object v0, p0, Ldrw$1;->c:Ldrw;

    .line 22049
    iget-boolean v0, v0, Ldrw;->d:Z

    .line 8182
    if-eqz v0, :cond_1

    .line 8183
    :cond_6
    iget-object v0, p0, Ldrw$1;->c:Ldrw;

    .line 23049
    iget-object v0, v0, Ldrw;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    .line 8183
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->N()Ldrk;

    move-result-object v0

    invoke-virtual {v0, v1}, Ldrk;->b(Z)V

    goto/16 :goto_2

    .line 8190
    :cond_7
    const-string/jumbo v2, "im"

    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v0, "loadMenuData saveCache fail menu size :"

    aput-object v0, v3, v1

    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/models/idl/CustomMenuModel;->menu:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/models/idl/CustomMenuModel;->menu:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v7, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_8
    move v0, v1

    goto :goto_4

    .line 8193
    :cond_9
    iget-object v0, p0, Ldrw$1;->c:Ldrw;

    .line 25049
    iget-object v0, v0, Ldrw;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 8193
    iget-object v3, p0, Ldrw$1;->c:Ldrw;

    .line 26049
    iget-boolean v3, v3, Ldrw;->e:Z

    .line 8193
    if-eqz v3, :cond_a

    :goto_5
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_a
    move v1, v2

    goto :goto_5
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 203
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "loadMenuData error code:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " reason:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 199
    return-void
.end method
