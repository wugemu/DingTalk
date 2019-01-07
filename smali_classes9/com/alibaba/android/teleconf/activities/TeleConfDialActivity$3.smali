.class final Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$3;
.super Ljava/lang/Object;
.source "TeleConfDialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const v7, 0x61ac7

    const v5, 0x61ac3

    const v4, 0x61ac2

    const v8, 0x61ac1

    const v6, 0x61aad

    .line 207
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->d(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 209
    .local v0, "args":Ljava/util/Map;
    const-string/jumbo v2, "code"

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->e(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 211
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)I

    move-result v2

    if-eq v2, v6, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    .line 212
    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)I

    move-result v2

    const v3, 0x61ac8

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    .line 213
    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)I

    move-result v2

    if-ne v2, v7, :cond_5

    .line 215
    :cond_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "phone_call_charge_click"

    invoke-interface {v2, v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 216
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->f(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)V

    .line 248
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)I

    move-result v2

    const v3, 0x61ab4

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)I

    move-result v2

    if-ne v2, v8, :cond_4

    .line 249
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)I

    move-result v2

    if-ne v2, v8, :cond_3

    .line 250
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "phone_launch_servicephone_addextra_click"

    invoke-interface {v2, v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 252
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)I

    .line 256
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    const-wide/16 v4, 0x0

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->j(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v4, v5, v3, v6}, Lewb;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->finish()V

    .line 260
    .end local v0    # "args":Ljava/util/Map;
    :cond_4
    return-void

    .line 217
    .restart local v0    # "args":Ljava/util/Map;
    :cond_5
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)I

    move-result v2

    if-eq v2, v4, :cond_6

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    .line 218
    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)I

    move-result v2

    if-ne v2, v5, :cond_7

    .line 220
    :cond_6
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "phone_launch_servicephone_setminute_click"

    invoke-interface {v2, v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 221
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)V

    goto :goto_0

    .line 222
    :cond_7
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)I

    move-result v2

    const v3, 0x61ac9

    if-ne v2, v3, :cond_1

    .line 224
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->h(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 225
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "bizcall_fixed_line_block_page_open_click"

    invoke-interface {v2, v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 227
    const-string/jumbo v2, "https://tms.dingtalk.com/markets/dingtalk/open_telephone?corpId=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->h(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mCorpId:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "url":Ljava/lang/String;
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 233
    .end local v1    # "url":Ljava/lang/String;
    :cond_8
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)I

    move-result v2

    if-eq v2, v6, :cond_9

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    .line 234
    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)I

    move-result v2

    if-eq v2, v4, :cond_9

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    .line 235
    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)I

    move-result v2

    if-eq v2, v5, :cond_9

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    .line 236
    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)I

    move-result v2

    const v3, 0x61ac8

    if-eq v2, v3, :cond_9

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    .line 237
    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)I

    move-result v2

    if-eq v2, v7, :cond_9

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    .line 238
    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)I

    move-result v2

    const v3, 0x61ac9

    if-ne v2, v3, :cond_1

    .line 239
    :cond_9
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->i(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 240
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)I

    move-result v2

    if-ne v2, v6, :cond_a

    .line 241
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "phone_charge_callmanager_click"

    invoke-interface {v2, v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 243
    :cond_a
    const-string/jumbo v2, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Goto detail "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->i(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->i(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;J)V

    goto/16 :goto_0
.end method
