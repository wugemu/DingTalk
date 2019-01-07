.class final Lewn$11;
.super Ljava/lang/Object;
.source "TeleConfQuickStartCallHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewn;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;Landroid/os/Bundle;Ljava/lang/String;)Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

.field final synthetic g:Lewn;


# direct methods
.method constructor <init>(Lewn;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Landroid/os/Bundle;Landroid/app/Activity;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;)V
    .locals 0
    .param p1, "this$0"    # Lewn;

    .prologue
    .line 237
    iput-object p1, p0, Lewn$11;->g:Lewn;

    iput-object p2, p0, Lewn$11;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iput-object p3, p0, Lewn$11;->b:Landroid/os/Bundle;

    iput-object p4, p0, Lewn$11;->c:Landroid/app/Activity;

    iput-object p5, p0, Lewn$11;->d:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    iput-object p6, p0, Lewn$11;->e:Ljava/lang/String;

    iput-object p7, p0, Lewn$11;->f:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 240
    iget-object v3, p0, Lewn$11;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-nez v3, :cond_0

    .line 261
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v3, p0, Lewn$11;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->workMobile:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lewn$11;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v1, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 245
    .local v1, "mobile":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lewn$11;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_4

    .line 246
    iget-object v3, p0, Lewn$11;->b:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    .line 247
    iget-object v3, p0, Lewn$11;->b:Landroid/os/Bundle;

    const-string/jumbo v4, "conf_call_biz_call_with_mobile"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 248
    .local v0, "beWithMobile":Z
    if-nez v0, :cond_1

    .line 249
    iget-object v3, p0, Lewn$11;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 250
    const/4 v1, 0x0

    .line 253
    .end local v0    # "beWithMobile":Z
    :cond_1
    iget-object v3, p0, Lewn$11;->c:Landroid/app/Activity;

    iget-object v4, p0, Lewn$11;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v5, p0, Lewn$11;->d:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    iget-object v6, p0, Lewn$11;->e:Ljava/lang/String;

    invoke-static {v3, v4, v1, v5, v6}, Lewb;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;Ljava/lang/String;)V

    .line 258
    :cond_2
    :goto_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 259
    .local v2, "quickStartProperty":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "type"

    iget-object v4, p0, Lewn$11;->f:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->valueOf()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "phone_calllist_servicecall_click"

    invoke-interface {v3, v4, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 244
    .end local v1    # "mobile":Ljava/lang/String;
    .end local v2    # "quickStartProperty":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    iget-object v3, p0, Lewn$11;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v1, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->workMobile:Ljava/lang/String;

    goto :goto_1

    .line 254
    .restart local v1    # "mobile":Ljava/lang/String;
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 255
    iget-object v3, p0, Lewn$11;->c:Landroid/app/Activity;

    iget-object v4, p0, Lewn$11;->d:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    iget-object v5, p0, Lewn$11;->e:Ljava/lang/String;

    invoke-static {v3, v1, v4, v5}, Lewb;->a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;Ljava/lang/String;)V

    goto :goto_2
.end method
