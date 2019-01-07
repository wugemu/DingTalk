.class final Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$e;
.super Lgl;
.source "NewMsgUnreadActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$e;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-direct {p0}, Lgl;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$e;-><init>(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)V

    return-void
.end method


# virtual methods
.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 276
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    instance-of v0, p3, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 277
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 279
    :cond_0
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x2

    return v0
.end method

.method public final getPageTitle(I)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 282
    if-nez p1, :cond_0

    .line 283
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$e;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    sget v1, Lctk$i;->msg_unread_count:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$e;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->f(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 285
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$e;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    sget v1, Lctk$i;->msg_read_count:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$e;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->g(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 245
    if-nez p2, :cond_1

    .line 246
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$e;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->c(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$e;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    sget v2, Lctk$g;->new_msg_unread_member_list:I

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 248
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$e;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v1, v0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->a(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;Landroid/view/View;)Landroid/view/View;

    .line 249
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$e;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    sget v2, Lctk$f;->v_split:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->b(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;Landroid/view/View;)Landroid/view/View;

    .line 250
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$e;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    sget v1, Lctk$f;->list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-static {v2, v1}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->a(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;Landroid/widget/ListView;)Landroid/widget/ListView;

    .line 252
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$e;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    sget v2, Lctk$f;->ll_ding:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->c(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;Landroid/view/View;)Landroid/view/View;

    .line 253
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$e;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    sget v2, Lctk$f;->tv_ding:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->d(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;Landroid/view/View;)Landroid/view/View;

    .line 254
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$e;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    sget v2, Lctk$f;->tv_ding_tips:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->e(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;Landroid/view/View;)Landroid/view/View;

    .line 255
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$e;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    sget v1, Lctk$f;->tv_select_all:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v2, v1}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->a(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 256
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$e;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    sget v1, Lctk$f;->tv_cancel_select_all:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v2, v1}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->b(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 257
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$e;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    sget v1, Lctk$f;->tv_confirm_to_send:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v2, v1}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->c(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 258
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$e;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->d(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)V

    .line 271
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 272
    return-object v0

    .line 260
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$e;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->c(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "v":Landroid/view/View;
    goto :goto_0

    .line 263
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$e;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->e(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    .line 264
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$e;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    sget v2, Lctk$g;->new_msg_unread_member_list:I

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 265
    .restart local v0    # "v":Landroid/view/View;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$e;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v1, v0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->f(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;Landroid/view/View;)Landroid/view/View;

    .line 266
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$e;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    sget v1, Lctk$f;->list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-static {v2, v1}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->b(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;Landroid/widget/ListView;)Landroid/widget/ListView;

    goto :goto_0

    .line 268
    .end local v0    # "v":Landroid/view/View;
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$e;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->e(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 240
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
