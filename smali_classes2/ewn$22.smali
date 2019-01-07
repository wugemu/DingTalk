.class final Lewn$22;
.super Ljava/lang/Object;
.source "TeleConfQuickStartCallHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lewn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

.field final synthetic d:Lewn;


# direct methods
.method constructor <init>(Lewn;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Landroid/app/Activity;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;)V
    .locals 0
    .param p1, "this$0"    # Lewn;

    .prologue
    .line 485
    iput-object p1, p0, Lewn$22;->d:Lewn;

    iput-object p2, p0, Lewn$22;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iput-object p3, p0, Lewn$22;->b:Landroid/app/Activity;

    iput-object p4, p0, Lewn$22;->c:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 488
    const-string/jumbo v1, "tele_conf"

    invoke-static {}, Lewn;->b()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Do short dialing"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    iget-object v1, p0, Lewn$22;->d:Lewn;

    invoke-static {v1}, Lewn;->a(Lewn;)Lewj;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lewn$22;->d:Lewn;

    invoke-static {v1}, Lewn;->a(Lewn;)Lewj;

    move-result-object v1

    .line 1463
    iget-object v1, v1, Lewj;->h:Ljava/lang/String;

    .line 489
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 490
    iget-object v1, p0, Lewn$22;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lewn$22;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 491
    .local v4, "nickName":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lewn$22;->d:Lewn;

    invoke-static {v1}, Lewn;->a(Lewn;)Lewj;

    move-result-object v1

    .line 2463
    iget-object v6, v1, Lewj;->h:Ljava/lang/String;

    .line 492
    .local v6, "shortCode":Ljava/lang/String;
    iget-object v1, p0, Lewn$22;->b:Landroid/app/Activity;

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Lewf;->a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 494
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 495
    .local v8, "quickStartProperty":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    iget-object v2, p0, Lewn$22;->c:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->valueOf()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    const-string/jumbo v0, "phone_calllist_shortnumber_call_click"

    .line 497
    .local v0, "ctlKey":Ljava/lang/String;
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    invoke-interface {v1, v0, v8}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 499
    .end local v0    # "ctlKey":Ljava/lang/String;
    .end local v4    # "nickName":Ljava/lang/String;
    .end local v6    # "shortCode":Ljava/lang/String;
    .end local v8    # "quickStartProperty":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void

    .line 490
    :cond_1
    iget-object v1, p0, Lewn$22;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    goto :goto_0
.end method
