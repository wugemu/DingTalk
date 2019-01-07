.class final Lbab$1;
.super Landroid/content/BroadcastReceiver;
.source "BaseCreateEventActivityPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbab;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbab;


# direct methods
.method constructor <init>(Lbab;)V
    .locals 0
    .param p1, "this$0"    # Lbab;

    .prologue
    .line 219
    iput-object p1, p0, Lbab$1;->a:Lbab;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 222
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "ding create event: receiver_action:"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v8}, Lbkd;->a([Ljava/lang/String;)V

    .line 223
    const-string/jumbo v8, "com.workapp.ding.choose.event.remind.mode"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 224
    iget-object v8, p0, Lbab$1;->a:Lbab;

    const-string/jumbo v9, "intent_key_remind_mode_index"

    const/4 v10, 0x0

    invoke-static {p2, v9, v10}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v9

    iput v9, v8, Lbab;->k:I

    .line 225
    iget-object v8, p0, Lbab$1;->a:Lbab;

    const-string/jumbo v9, "intent_key_remind_type_value"

    sget-object v10, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->APP:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .line 226
    invoke-virtual {v10}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->getValue()I

    move-result v10

    .line 225
    invoke-static {p2, v9, v10}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->fromValue(I)Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    move-result-object v9

    iput-object v9, v8, Lbab;->l:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .line 227
    iget-object v8, p0, Lbab$1;->a:Lbab;

    invoke-virtual {v8}, Lbab;->k()V

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    const-string/jumbo v8, "com.workapp.action.poi_info_v2"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 229
    const-string/jumbo v8, "intent_key_seed"

    const-wide/16 v10, 0x0

    invoke-virtual {p2, v8, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 230
    .local v6, "seed":J
    iget-object v8, p0, Lbab$1;->a:Lbab;

    iget-wide v8, v8, Lbab;->q:J

    cmp-long v8, v8, v6

    if-nez v8, :cond_0

    .line 233
    iget-object v9, p0, Lbab$1;->a:Lbab;

    const-string/jumbo v8, "poi_info_key"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/amap/api/services/core/PoiItem;

    iput-object v8, v9, Lbab;->o:Lcom/amap/api/services/core/PoiItem;

    .line 234
    iget-object v8, p0, Lbab$1;->a:Lbab;

    iget-object v8, v8, Lbab;->a:Lbac$b;

    iget-object v9, p0, Lbab$1;->a:Lbab;

    iget-object v9, v9, Lbab;->o:Lcom/amap/api/services/core/PoiItem;

    invoke-interface {v8, v9}, Lbac$b;->a(Lcom/amap/api/services/core/PoiItem;)V

    goto :goto_0

    .line 235
    .end local v6    # "seed":J
    :cond_2
    const-string/jumbo v8, "com.workapp.ding.choose.repeat.mode"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 236
    const-string/jumbo v8, "intent_key_repeat_mode_data"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    .line 237
    .local v1, "data":Ljava/io/Serializable;
    const-string/jumbo v8, "intent_key_menu_seed"

    const-wide/16 v10, 0x0

    invoke-virtual {p2, v8, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 238
    .local v4, "menuSeed":J
    iget-object v8, p0, Lbab$1;->a:Lbab;

    iget-wide v8, v8, Lbab;->q:J

    cmp-long v8, v4, v8

    if-nez v8, :cond_0

    instance-of v8, v1, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    if-eqz v8, :cond_0

    .line 242
    const-string/jumbo v8, "intent_key_deadline_date"

    invoke-static {}, Lcms;->u()J

    move-result-wide v10

    invoke-static {p2, v8, v10, v11}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;J)J

    move-result-wide v2

    .line 243
    .local v2, "deadlineDate":J
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v0

    .line 244
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 245
    const/16 v8, 0xb

    const/16 v9, 0x17

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 246
    const/16 v8, 0xc

    const/16 v9, 0x3b

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 247
    const/16 v8, 0xd

    const/16 v9, 0x3b

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 248
    const/16 v8, 0xe

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 249
    iget-object v8, p0, Lbab$1;->a:Lbab;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    iput-wide v10, v8, Lbab;->s:J

    .line 251
    iget-object v8, p0, Lbab$1;->a:Lbab;

    check-cast v1, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    .end local v1    # "data":Ljava/io/Serializable;
    iput-object v1, v8, Lbab;->r:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    .line 252
    iget-object v8, p0, Lbab$1;->a:Lbab;

    iget-object v8, v8, Lbab;->a:Lbac$b;

    iget-object v9, p0, Lbab$1;->a:Lbab;

    iget-object v9, v9, Lbab;->r:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    invoke-interface {v8, v9}, Lbac$b;->a(Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;)V

    goto/16 :goto_0
.end method
