.class final Latj$4;
.super Ljava/lang/Object;
.source "MailCalendarEventProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Latj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Latj;


# direct methods
.method constructor <init>(Latj;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Latj;

    .prologue
    .line 234
    iput-object p1, p0, Latj$4;->b:Latj;

    iput-object p2, p0, Latj$4;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 237
    iget-object v2, p0, Latj$4;->b:Latj;

    iget-object v0, p0, Latj$4;->a:Ljava/util/List;

    .line 1204
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 238
    :cond_0
    iget-object v6, p0, Latj$4;->b:Latj;

    iget-object v0, p0, Latj$4;->a:Ljava/util/List;

    .line 2249
    iget-object v1, v6, Latj;->a:Lfp;

    invoke-virtual {v1}, Lfp;->b()V

    .line 2250
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 239
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[MailCalendarEventProvider]handleMailEvent update size="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Latj$4;->b:Latj;

    iget-object v2, v2, Latj;->a:Lfp;

    .line 240
    invoke-virtual {v2}, Lfp;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 239
    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Latj$4;->b:Latj;

    invoke-virtual {v0}, Latj;->b()V

    .line 242
    iget-object v0, p0, Latj$4;->b:Latj;

    iget-object v1, p0, Latj$4;->a:Ljava/util/List;

    invoke-static {v0, v1}, Latj;->b(Latj;Ljava/util/List;)V

    .line 243
    return-void

    .line 1208
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    .line 1209
    if-eqz v0, :cond_3

    .line 1213
    iget-object v1, v2, Latj;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getFolderServerId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    sget v4, Laow$a;->ding_calendar_share_folder_ali_mail_folder_color:I

    .line 1214
    invoke-static {v4}, Leda;->b(I)I

    move-result v4

    .line 1213
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 1215
    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->setColor(I)V

    goto :goto_0

    .line 2254
    :cond_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 2257
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    .line 2258
    if-eqz v0, :cond_5

    .line 2259
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->isAllDay()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2260
    new-instance v1, Landroid/text/format/Time;

    const-string/jumbo v2, "UTC"

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2261
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getStartMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 2262
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    .line 2264
    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 2265
    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 2266
    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 2267
    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 2268
    const/4 v2, 0x5

    iget v3, v1, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 2269
    const/4 v2, 0x2

    iget v3, v1, Landroid/text/format/Time;->month:I

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 2270
    const/4 v2, 0x1

    iget v3, v1, Landroid/text/format/Time;->year:I

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 2271
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 2273
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getEndMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 2274
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    .line 2275
    const/4 v2, 0x5

    iget v3, v1, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 2276
    const/4 v2, 0x2

    iget v3, v1, Landroid/text/format/Time;->month:I

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 2277
    const/4 v2, 0x1

    iget v1, v1, Landroid/text/format/Time;->year:I

    invoke-virtual {v7, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 2278
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 2289
    :cond_6
    :goto_2
    iget-object v1, v6, Latj;->a:Lfp;

    .line 3096
    const/4 v9, 0x0

    invoke-virtual {v1, v4, v5, v9}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2289
    if-nez v1, :cond_7

    .line 2290
    iget-object v1, v6, Latj;->a:Lfp;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v4, v5, v9}, Lfp;->b(JLjava/lang/Object;)V

    .line 2293
    :cond_7
    iget-object v1, v6, Latj;->a:Lfp;

    .line 4096
    const/4 v9, 0x0

    invoke-virtual {v1, v4, v5, v9}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2293
    check-cast v1, Ljava/util/Collection;

    new-instance v9, Lcom/alibaba/android/calendar/data/object/MailEvent;

    invoke-direct {v9, v4, v5, v0}, Lcom/alibaba/android/calendar/data/object/MailEvent;-><init>(JLcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;)V

    invoke-interface {v1, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2294
    const-wide/32 v10, 0x5265c00

    add-long/2addr v4, v10

    .line 2295
    cmp-long v1, v4, v2

    if-ltz v1, :cond_6

    goto/16 :goto_1

    .line 2280
    :cond_8
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getStartMillis()J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2281
    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 2282
    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 2283
    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 2284
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 2285
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 2286
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getEndMillis()J

    move-result-wide v2

    goto :goto_2
.end method
