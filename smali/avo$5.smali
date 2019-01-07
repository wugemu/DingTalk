.class final Lavo$5;
.super Ljava/lang/Object;
.source "CalendarEventUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lavo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

.field final synthetic c:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

.field final synthetic d:Landroid/app/Activity;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;Lcom/alibaba/android/calendar/data/object/InstanceShowObject;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lavo$5;->a:Ljava/util/List;

    iput-object p2, p0, Lavo$5;->b:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    iput-object p3, p0, Lavo$5;->c:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    iput-object p4, p0, Lavo$5;->d:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v2, 0x2

    const/4 v6, 0x1

    .line 258
    if-ltz p2, :cond_0

    iget-object v0, p0, Lavo$5;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    iget-object v0, p0, Lavo$5;->b:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcng;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lavo$5;->b:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcng;

    .line 266
    .local v9, "menuObject":Lcng;
    invoke-static {}, Lavq;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lavo$5;->c:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 267
    invoke-static {v0}, Lawc;->l(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lavo$5;->c:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 268
    invoke-static {v0}, Lawc;->d(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 269
    iget v0, v9, Lcng;->a:I

    if-ne v0, v6, :cond_2

    .line 270
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v0

    iget-object v1, p0, Lavo$5;->d:Landroid/app/Activity;

    iget-object v3, p0, Lavo$5;->c:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 272
    invoke-virtual {v3}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getBizId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lavo$5;->c:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 273
    invoke-virtual {v4}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lavo$5;->c:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 274
    invoke-virtual {v5}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getRecurrenceIdOrStartTime()Ljava/lang/String;

    move-result-object v5

    .line 270
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 276
    :cond_2
    iget v0, v9, Lcng;->a:I

    if-ne v0, v2, :cond_0

    .line 277
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v0

    iget-object v1, p0, Lavo$5;->d:Landroid/app/Activity;

    iget-object v2, p0, Lavo$5;->c:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 279
    invoke-virtual {v2}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getBizId()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lavo$5;->c:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 280
    invoke-virtual {v2}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lavo$5;->c:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 281
    invoke-virtual {v2}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getRecurrenceIdOrStartTime()Ljava/lang/String;

    move-result-object v5

    move v2, v6

    .line 277
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_3
    iget v0, v9, Lcng;->a:I

    if-ne v0, v6, :cond_4

    .line 286
    iget-object v0, p0, Lavo$5;->d:Landroid/app/Activity;

    iget-object v6, p0, Lavo$5;->c:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 1345
    new-instance v1, Lavo$8;

    invoke-direct {v1}, Lavo$8;-><init>()V

    .line 1361
    const-class v2, Lcom/alibaba/wukong/Callback;

    invoke-static {v1, v2, v0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/wukong/Callback;

    .line 1362
    invoke-static {}, Latf;->a()Latf;

    move-result-object v1

    invoke-virtual {v6}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getCalendarId()J

    move-result-wide v2

    .line 1363
    invoke-virtual {v6}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getEventId()J

    move-result-wide v4

    .line 1364
    invoke-virtual {v6}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getInstanceStartTimeMillis()J

    move-result-wide v6

    .line 1362
    invoke-virtual/range {v1 .. v8}, Latf;->a(JJJLcom/alibaba/wukong/Callback;)V

    goto/16 :goto_0

    .line 287
    :cond_4
    iget v0, v9, Lcng;->a:I

    if-ne v0, v2, :cond_0

    .line 288
    iget-object v0, p0, Lavo$5;->d:Landroid/app/Activity;

    iget-object v1, p0, Lavo$5;->c:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    invoke-static {v0, v1}, Lavo;->a(Landroid/app/Activity;Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)V

    goto/16 :goto_0
.end method
