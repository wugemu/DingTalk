.class final Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$3;
.super Ljava/lang/Object;
.source "ConversationLinksActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;->a()V
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/Message;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 270
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;->l(Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;->f(Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;->m(Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 276
    :goto_0
    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;->i(Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->a(I)V

    goto :goto_0
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 224
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 224
    check-cast p1, Ljava/util/List;

    .line 1227
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 1259
    :cond_0
    :goto_0
    return-void

    .line 1231
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;->j(Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;)Lcul;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1232
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;->k(Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;)V

    .line 1233
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;->f(Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;->j(Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;)Lcul;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1236
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 1237
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    invoke-static {v1, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/wukong/im/Message;

    .line 1238
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1239
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1240
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;->j(Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;)Lcul;

    move-result-object v1

    invoke-virtual {v1}, Lcul;->c()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1241
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;->j(Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;)Lcul;

    move-result-object v1

    invoke-virtual {v1}, Lcul;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1243
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;->j(Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;)Lcul;

    move-result-object v1

    invoke-virtual {v1}, Lcul;->c()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;Ljava/util/List;)Ljava/util/List;

    .line 1246
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;->l(Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 1247
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;->f(Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1248
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;->m(Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1253
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;->l(Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_6

    .line 1254
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;Z)Z

    .line 1255
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;I)V

    goto/16 :goto_0

    .line 1250
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;->j(Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;)Lcul;

    move-result-object v0

    invoke-virtual {v0}, Lcul;->notifyDataSetChanged()V

    goto :goto_1

    .line 1257
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    invoke-static {v0, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;Z)Z

    .line 1258
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 1259
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    invoke-static {v0, v3}, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;I)V

    goto/16 :goto_0

    .line 1261
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;->i(Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1262
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;->i(Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->a(I)V

    goto/16 :goto_0
.end method
