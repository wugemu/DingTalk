.class final Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$a;
.super Lcq;
.source "CMailAttendeeListActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;Lcn;)V
    .locals 0
    .param p2, "fm"    # Lcn;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    .line 278
    invoke-direct {p0, p2}, Lcq;-><init>(Lcn;)V

    .line 279
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/app/Fragment;
    .locals 5
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 283
    const/4 v0, 0x0

    .line 284
    .local v0, "fragment":Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;
    if-nez p1, :cond_4

    .line 285
    iget-object v1, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->a(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;)Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

    move-result-object v1

    if-nez v1, :cond_1

    .line 286
    iget-object v1, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    invoke-virtual {v1}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->d_()Z

    move-result v1

    if-nez v1, :cond_3

    .line 287
    iget-object v2, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    iget-object v1, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    .line 1266
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1267
    iget-object v4, v1, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->a:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    .line 1268
    iget-object v1, v1, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1269
    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 287
    :cond_0
    invoke-static {v3}, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;->a(Ljava/util/List;)Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->a(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;)Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

    .line 291
    :goto_1
    iget-object v1, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->a(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;)Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->g(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;)Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->getOwerAccount()Ljava/lang/String;

    move-result-object v2

    .line 2118
    iput-object v2, v1, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;->a:Ljava/lang/String;

    .line 292
    iget-object v1, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->a(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;)Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->b(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;->a(Ljava/util/Map;)V

    .line 294
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->a(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;)Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

    move-result-object v0

    .line 317
    :cond_2
    :goto_2
    return-object v0

    .line 289
    :cond_3
    iget-object v2, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    iget-object v1, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->f(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;)Ljava/util/HashMap;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;->a(Ljava/util/List;)Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->a(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;)Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

    goto :goto_1

    .line 295
    :cond_4
    if-ne p1, v3, :cond_6

    .line 296
    iget-object v1, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->c(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;)Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

    move-result-object v1

    if-nez v1, :cond_5

    .line 297
    iget-object v2, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    iget-object v1, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->f(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;->a(Ljava/util/List;)Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->b(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;)Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

    .line 298
    iget-object v1, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->c(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;)Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->g(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;)Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->getOwerAccount()Ljava/lang/String;

    move-result-object v2

    .line 3118
    iput-object v2, v1, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;->a:Ljava/lang/String;

    .line 299
    iget-object v1, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->c(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;)Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->b(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;->a(Ljava/util/Map;)V

    .line 301
    :cond_5
    iget-object v1, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->c(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;)Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

    move-result-object v0

    goto :goto_2

    .line 302
    :cond_6
    if-ne p1, v4, :cond_8

    .line 303
    iget-object v1, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->d(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;)Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

    move-result-object v1

    if-nez v1, :cond_7

    .line 304
    iget-object v2, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    iget-object v1, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->f(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;)Ljava/util/HashMap;

    move-result-object v1

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;->a(Ljava/util/List;)Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->c(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;)Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

    .line 305
    iget-object v1, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->d(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;)Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->g(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;)Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->getOwerAccount()Ljava/lang/String;

    move-result-object v2

    .line 4118
    iput-object v2, v1, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;->a:Ljava/lang/String;

    .line 306
    iget-object v1, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->d(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;)Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->b(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;->a(Ljava/util/Map;)V

    .line 308
    :cond_7
    iget-object v1, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->d(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;)Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

    move-result-object v0

    goto/16 :goto_2

    .line 309
    :cond_8
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 310
    iget-object v1, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->e(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;)Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

    move-result-object v1

    if-nez v1, :cond_9

    .line 311
    iget-object v2, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    iget-object v1, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->f(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;->a(Ljava/util/List;)Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->d(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;)Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

    .line 312
    iget-object v1, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->e(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;)Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->g(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;)Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->getOwerAccount()Ljava/lang/String;

    move-result-object v2

    .line 5118
    iput-object v2, v1, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;->a:Ljava/lang/String;

    .line 313
    iget-object v1, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->e(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;)Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->b(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;->a(Ljava/util/Map;)V

    .line 315
    :cond_9
    iget-object v1, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->e(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;)Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

    move-result-object v0

    goto/16 :goto_2
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 322
    invoke-static {}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->b()[I

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public final getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 327
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->h(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method
