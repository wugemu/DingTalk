.class final Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10;
.super Ljava/lang/Object;
.source "ConnectionActivity.java"

# interfaces
.implements Lfet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/connection/activity/ConnectionActivity;
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
.field final synthetic a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    .prologue
    .line 1053
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x2

    .line 1176
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "User_On_Clear_Latest_Red_Dot"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1177
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->f(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Landroid/view/View;

    move-result-object v0

    sget v1, Lezg$h;->item_circle_header_pull_loading:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;

    .line 2147
    iget v1, v0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->a:I

    if-eq v1, v3, :cond_0

    .line 2148
    invoke-virtual {v0}, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->a()V

    .line 2149
    iput v3, v0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->a:I

    .line 2150
    iget-object v0, v0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1178
    :cond_0
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

    .line 1053
    check-cast p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;

    .line 3076
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->n(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3077
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v0, v8}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->b(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;Ljava/util/List;)Ljava/util/List;

    .line 3078
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->a(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3079
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->a(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3083
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->m(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)V

    .line 3085
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->f(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Landroid/view/View;

    move-result-object v0

    sget v3, Lezg$h;->item_circle_header_pull_loading:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;

    .line 4155
    iget v3, v0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->a:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 4156
    const/4 v3, 0x3

    iput v3, v0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->a:I

    .line 4157
    new-instance v3, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$2;

    invoke-direct {v3, v0}, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$2;-><init>(Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;)V

    iput-object v3, v0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->c:Ljava/lang/Runnable;

    .line 4168
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v3

    iget-object v0, v0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->c:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v0, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3088
    :cond_1
    if-eqz p1, :cond_9

    .line 3089
    if-nez p4, :cond_2

    .line 3090
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-virtual {p1}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;->getAlbumCoverMediaId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->a(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;Ljava/lang/String;)V

    .line 3092
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;->getPosts()Ljava/util/List;

    move-result-object v3

    .line 3094
    invoke-static {v3}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3095
    const-string/jumbo v0, "posts is empty"

    .line 5060
    invoke-static {v2, v0}, Lffe;->a(ZLjava/lang/String;)V

    .line 3160
    :cond_3
    :goto_0
    return-void

    .line 3100
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->o(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Ljava/util/List;

    move-result-object v0

    invoke-static {v3, v0}, Lffi;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    .line 3102
    if-nez v0, :cond_6

    .line 3103
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->b(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Lfce;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 3105
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->a(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    if-nez p4, :cond_d

    if-gt p2, v1, :cond_d

    .line 3106
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v0, v3}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->c(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;Ljava/util/List;)Ljava/util/List;

    .line 3107
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->b(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Lfce;

    move-result-object v0

    iget-object v4, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->a(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Lfce;->a(Ljava/util/List;)V

    .line 3115
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->a(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3116
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->a(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 3117
    if-eqz v0, :cond_7

    iget-object v4, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->p(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3119
    const-string/jumbo v4, "connection_last_postId"

    iget-wide v6, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    invoke-static {v4, v6, v7}, Lcpk;->b(Ljava/lang/String;J)V

    .line 3121
    iget-object v4, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->q(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-wide v4, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->q(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    move-result-object v0

    iget-wide v6, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_7

    .line 3122
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->a(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v4, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->q(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3123
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v0, v8}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->c(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 3129
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->b(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Lfce;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 3130
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->b(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Lfce;

    move-result-object v0

    invoke-virtual {v0}, Lfce;->notifyDataSetChanged()V

    .line 3132
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v0, v3}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->b(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;Ljava/util/List;)Ljava/util/List;

    .line 3135
    :cond_9
    iget-object v3, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;->hasMore()Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    :goto_2
    invoke-static {v3, v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->b(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;Z)Z

    .line 3136
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->b(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Lfce;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 3137
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->b(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Lfce;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->l(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lfce;->a(Z)V

    .line 3141
    :cond_a
    if-eqz p2, :cond_b

    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->p(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3142
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v2, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10$1;

    invoke-direct {v2, p0, p2, p3}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10$1;-><init>(Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10;II)V

    invoke-virtual {v0, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 3149
    :cond_b
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->r(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 3150
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->c(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;Z)Z

    .line 3151
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->s(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)V

    .line 3155
    :cond_c
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->b(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Lfce;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3156
    if-nez p1, :cond_f

    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->a(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_f

    .line 3157
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->b(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Lfce;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->t(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfce;->d(Landroid/view/View;)V

    .line 3159
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->b(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Lfce;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->u(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfce;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3160
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->b(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Lfce;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->u(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfce;->b(Landroid/view/View;)V

    goto/16 :goto_0

    .line 3109
    :cond_d
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->a(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3110
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->b(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Lfce;

    move-result-object v0

    iget-object v4, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->a(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Lfce;->a(Ljava/util/List;)V

    goto/16 :goto_1

    :cond_e
    move v0, v2

    .line 3135
    goto/16 :goto_2

    .line 3164
    :cond_f
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->b(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Lfce;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->u(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfce;->d(Landroid/view/View;)V

    .line 3167
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->b(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Lfce;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->t(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfce;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3168
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->b(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Lfce;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->t(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Landroid/view/View;

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
    .line 1066
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
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

    .line 1071
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->m(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)V

    .line 1072
    return-void
.end method
