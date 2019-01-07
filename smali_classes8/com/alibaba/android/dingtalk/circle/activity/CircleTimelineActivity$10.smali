.class final Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;
.super Ljava/lang/Object;
.source "CircleTimelineActivity.java"

# interfaces
.implements Lbpv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbpv",
        "<",
        "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    .prologue
    .line 1008
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x2

    .line 1122
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "User_On_Clear_Latest_Red_Dot"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1123
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->f(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Landroid/view/View;

    move-result-object v0

    sget v1, Lbpu$d;->item_circle_header_pull_loading:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView;

    .line 1148
    iget v1, v0, Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView;->a:I

    if-eq v1, v3, :cond_0

    .line 1149
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView;->a()V

    .line 1150
    iput v3, v0, Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView;->a:I

    .line 1151
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1124
    :cond_0
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;IIZ)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1008
    check-cast p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;

    .line 2031
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->m(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2032
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v0, v8}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->b(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;Ljava/util/List;)Ljava/util/List;

    .line 2033
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2034
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2038
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->l(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)V

    .line 2040
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->f(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Landroid/view/View;

    move-result-object v0

    sget v3, Lbpu$d;->item_circle_header_pull_loading:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView;

    .line 2156
    iget v3, v0, Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView;->a:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 2157
    const/4 v3, 0x3

    iput v3, v0, Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView;->a:I

    .line 2158
    new-instance v3, Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView$2;

    invoke-direct {v3, v0}, Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView$2;-><init>(Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView;)V

    iput-object v3, v0, Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView;->c:Ljava/lang/Runnable;

    .line 2169
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v3

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView;->c:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v0, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2043
    :cond_1
    if-eqz p1, :cond_8

    .line 2044
    if-nez p4, :cond_2

    .line 2045
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;->getAlbumCoverMediaId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;Ljava/lang/String;)V

    .line 2047
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;->getPosts()Ljava/util/List;

    move-result-object v3

    .line 2049
    invoke-static {v3}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2050
    const-string/jumbo v0, "posts is empty"

    .line 3076
    invoke-static {v2, v0}, Lbqh;->a(ZLjava/lang/String;)V

    .line 2107
    :cond_3
    :goto_0
    return-void

    .line 2055
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->n(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Ljava/util/List;

    move-result-object v0

    .line 4032
    if-nez v3, :cond_d

    .line 4033
    if-nez v0, :cond_c

    move v0, v1

    .line 2057
    :goto_1
    if-nez v0, :cond_6

    .line 2059
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    if-nez p4, :cond_14

    if-gt p2, v1, :cond_14

    .line 2060
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v0, v3}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->c(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;Ljava/util/List;)Ljava/util/List;

    .line 2061
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->b(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Lbnq;

    move-result-object v0

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Lbnq;->a(Ljava/util/List;)V

    .line 2068
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2069
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 2070
    if-eqz v0, :cond_7

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->o(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2072
    const-string/jumbo v4, "circle_last_postId"

    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    invoke-static {v4, v6, v7}, Lcpk;->b(Ljava/lang/String;J)V

    .line 2074
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->p(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->p(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    move-result-object v0

    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_7

    .line 2075
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->p(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2076
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v0, v8}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->c(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 2082
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->b(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Lbnq;

    move-result-object v0

    invoke-virtual {v0}, Lbnq;->notifyDataSetChanged()V

    .line 2083
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v0, v3}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->b(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;Ljava/util/List;)Ljava/util/List;

    .line 2086
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->b(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Lbnq;

    move-result-object v3

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;->hasMore()Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v1

    .line 4085
    :goto_3
    iget-boolean v2, v3, Lbnq;->b:Z

    if-eq v2, v0, :cond_9

    .line 4086
    iput-boolean v0, v3, Lbnq;->b:Z

    .line 4087
    invoke-virtual {v3}, Lbnq;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Lbnq;->a(I)V

    .line 2089
    :cond_9
    if-eqz p2, :cond_a

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->o(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2090
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v2, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10$1;

    invoke-direct {v2, p0, p2, p3}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10$1;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;II)V

    invoke-virtual {v0, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 2097
    :cond_a
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->q(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2098
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->b(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;Z)Z

    .line 2099
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->r(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)V

    .line 2103
    :cond_b
    if-nez p1, :cond_16

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_16

    .line 2104
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->b(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Lbnq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->s(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbnq;->d(Landroid/view/View;)V

    .line 2106
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->b(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Lbnq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->t(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbnq;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2107
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->b(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Lbnq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->t(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbnq;->b(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_c
    move v0, v2

    .line 4033
    goto/16 :goto_1

    .line 4034
    :cond_d
    if-nez v0, :cond_e

    move v0, v2

    .line 4035
    goto/16 :goto_1

    .line 4037
    :cond_e
    if-eq v3, v0, :cond_13

    .line 4040
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v4

    .line 4041
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v5

    .line 4042
    if-eq v4, v5, :cond_f

    move v0, v2

    .line 4043
    goto/16 :goto_1

    .line 4046
    :cond_f
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 4047
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4049
    :cond_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 4050
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 4051
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 4052
    if-nez v5, :cond_11

    .line 4053
    if-eqz v6, :cond_10

    move v0, v2

    .line 4054
    goto/16 :goto_1

    .line 4056
    :cond_11
    if-nez v6, :cond_12

    move v0, v2

    .line 4057
    goto/16 :goto_1

    .line 4059
    :cond_12
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    move v0, v2

    .line 4060
    goto/16 :goto_1

    :cond_13
    move v0, v1

    .line 4065
    goto/16 :goto_1

    .line 2063
    :cond_14
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2064
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->b(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Lbnq;

    move-result-object v0

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Lbnq;->a(Ljava/util/List;)V

    goto/16 :goto_2

    :cond_15
    move v0, v2

    .line 2086
    goto/16 :goto_3

    .line 2111
    :cond_16
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->b(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Lbnq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->t(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbnq;->d(Landroid/view/View;)V

    .line 2114
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->b(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Lbnq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->s(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbnq;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2115
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->b(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Lbnq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->s(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbnq;->b(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1021
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
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

    invoke-static {v0}, Lbqh;->a(Ljava/lang/String;)V

    .line 1026
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->l(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)V

    .line 1027
    return-void
.end method
