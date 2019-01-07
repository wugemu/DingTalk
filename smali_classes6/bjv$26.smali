.class public final Lbjv$26;
.super Ljava/lang/Object;
.source "DingNavUtil.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbjv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;

.field final synthetic b:J

.field final synthetic c:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_DEADLINE_TYPE;

.field final synthetic d:J

.field final synthetic e:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;

.field final synthetic f:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;JLcom/alibaba/android/ding/base/interfaces/DingConstants$DING_DEADLINE_TYPE;JLcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lbjv$26;->a:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;

    iput-wide p2, p0, Lbjv$26;->b:J

    iput-object p4, p0, Lbjv$26;->c:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_DEADLINE_TYPE;

    iput-wide p5, p0, Lbjv$26;->d:J

    iput-object p7, p0, Lbjv$26;->e:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;

    iput-object p8, p0, Lbjv$26;->f:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 394
    const-string/jumbo v0, "intent_key_send_type"

    iget-object v1, p0, Lbjv$26;->a:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;->getValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 395
    iget-object v0, p0, Lbjv$26;->a:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;

    sget-object v1, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;->SEND_LATER:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;

    if-ne v0, v1, :cond_0

    .line 396
    const-string/jumbo v0, "intent_key_send_time"

    iget-wide v2, p0, Lbjv$26;->b:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 400
    :goto_0
    iget-object v0, p0, Lbjv$26;->c:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_DEADLINE_TYPE;

    sget-object v1, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_DEADLINE_TYPE;->SET:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_DEADLINE_TYPE;

    if-ne v0, v1, :cond_1

    .line 401
    const-string/jumbo v0, "intent_key_deadline_time"

    iget-wide v2, p0, Lbjv$26;->d:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 405
    :goto_1
    const-string/jumbo v0, "intent_key_deadline_remind_type"

    iget-object v1, p0, Lbjv$26;->e:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;->getValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 406
    const-string/jumbo v0, "intent_key_task_remind_type"

    iget-object v1, p0, Lbjv$26;->f:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->getValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 407
    return-object p1

    .line 398
    :cond_0
    const-string/jumbo v0, "intent_key_send_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0

    .line 403
    :cond_1
    const-string/jumbo v0, "intent_key_deadline_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_1
.end method
