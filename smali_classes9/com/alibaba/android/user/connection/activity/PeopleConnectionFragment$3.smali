.class final Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3;
.super Ljava/lang/Object;
.source "PeopleConnectionFragment.java"

# interfaces
.implements Lfet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfet",
        "<",
        "Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 282
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "User_On_Clear_Latest_Red_Dot"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 283
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;IIZ)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 174
    check-cast p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;

    .line 1200
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->e(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1201
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-static {v0, v8}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->a(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;Ljava/util/List;)Ljava/util/List;

    .line 1202
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->f(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1203
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->f(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1207
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->d(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)V

    .line 1210
    if-eqz p1, :cond_6

    .line 1211
    invoke-virtual {p1}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;->getPosts()Ljava/util/List;

    move-result-object v3

    .line 1213
    invoke-static {v3}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1214
    const-string/jumbo v0, "posts is empty"

    .line 2060
    invoke-static {v2, v0}, Lffe;->a(ZLjava/lang/String;)V

    .line 1215
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->c(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)V

    .line 1267
    :cond_1
    :goto_0
    return-void

    .line 1219
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->g(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Ljava/util/List;

    move-result-object v0

    invoke-static {v3, v0}, Lffi;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    .line 1221
    if-nez v0, :cond_4

    .line 1223
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->f(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    if-nez p4, :cond_8

    if-gt p2, v1, :cond_8

    .line 1224
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-static {v0, v3}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->b(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;Ljava/util/List;)Ljava/util/List;

    .line 1225
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->h(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Lfce;

    move-result-object v0

    iget-object v4, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-static {v4}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->f(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Lfce;->a(Ljava/util/List;)V

    .line 1233
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->f(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1234
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->f(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 1235
    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-static {v4}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->i(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1237
    const-string/jumbo v4, "circle_last_postId"

    iget-wide v6, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    invoke-static {v4, v6, v7}, Lcpk;->b(Ljava/lang/String;J)V

    .line 1239
    iget-object v4, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-static {v4}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->j(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-wide v4, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->j(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    move-result-object v0

    iget-wide v6, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_5

    .line 1240
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->f(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v4, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-static {v4}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->j(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1241
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-static {v0, v8}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->a(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 1247
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->h(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Lfce;

    move-result-object v0

    invoke-virtual {v0}, Lfce;->notifyDataSetChanged()V

    .line 1248
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-static {v0, v3}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->a(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;Ljava/util/List;)Ljava/util/List;

    .line 1251
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->h(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Lfce;

    move-result-object v3

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;->hasMore()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Lfce;->a(Z)V

    .line 1254
    if-eqz p2, :cond_7

    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->i(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1255
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3$1;-><init>(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3;II)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 1263
    :cond_7
    if-nez p1, :cond_a

    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->f(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_a

    .line 1264
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->h(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Lfce;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->k(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfce;->d(Landroid/view/View;)V

    .line 1266
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->h(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Lfce;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->l(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfce;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1267
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->h(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Lfce;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->l(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfce;->b(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1227
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->f(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1228
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->h(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Lfce;

    move-result-object v0

    iget-object v4, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-static {v4}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->f(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Lfce;->a(Ljava/util/List;)V

    goto/16 :goto_1

    :cond_9
    move v0, v2

    .line 1251
    goto :goto_2

    .line 1271
    :cond_a
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->h(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Lfce;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->l(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfce;->d(Landroid/view/View;)V

    .line 1274
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->h(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Lfce;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->k(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfce;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1275
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->h(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Lfce;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->k(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfce;->b(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 188
    const-string/jumbo v0, "FC_UNAUTHORISED"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->c(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)V

    .line 193
    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "Circle"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, " "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, " "

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object p2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lffe;->a(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->d(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)V

    .line 196
    return-void
.end method
