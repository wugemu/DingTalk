.class final Lewn$21;
.super Ljava/lang/Object;
.source "TeleConfQuickStartCallHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewn;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;Z)Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

.field final synthetic d:Z

.field final synthetic e:Lewn;


# direct methods
.method constructor <init>(Lewn;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Landroid/app/Activity;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;Z)V
    .locals 0
    .param p1, "this$0"    # Lewn;

    .prologue
    .line 448
    iput-object p1, p0, Lewn$21;->e:Lewn;

    iput-object p2, p0, Lewn$21;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iput-object p3, p0, Lewn$21;->b:Landroid/app/Activity;

    iput-object p4, p0, Lewn$21;->c:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    iput-boolean p5, p0, Lewn$21;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 12
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const-wide/16 v10, 0x0

    const/4 v7, 0x1

    .line 451
    iget-object v1, p0, Lewn$21;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-nez v1, :cond_0

    .line 474
    :goto_0
    return-void

    .line 455
    :cond_0
    iget-object v1, p0, Lewn$21;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->workMobile:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lewn$21;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 456
    .local v6, "mobile":Ljava/lang/String;
    :goto_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lewn$21;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    if-eq v1, v7, :cond_1

    iget-object v1, p0, Lewn$21;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v1, v2, v10

    if-gtz v1, :cond_5

    .line 459
    :cond_1
    iget-object v1, p0, Lewn$21;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lewn$21;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    .line 460
    .local v4, "nick":Ljava/lang/String;
    :goto_2
    iget-object v1, p0, Lewn$21;->b:Landroid/app/Activity;

    iget-object v2, p0, Lewn$21;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lewf;->a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 465
    .end local v4    # "nick":Ljava/lang/String;
    :cond_2
    :goto_3
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 466
    .local v8, "quickStartProperty":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    iget-object v2, p0, Lewn$21;->c:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->valueOf()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    iget-boolean v1, p0, Lewn$21;->d:Z

    if-eqz v1, :cond_6

    .line 469
    const-string/jumbo v0, "phone_calllist_normalcall_gray_click"

    .line 473
    .local v0, "ctlKey":Ljava/lang/String;
    :goto_4
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    invoke-interface {v1, v0, v8}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 455
    .end local v0    # "ctlKey":Ljava/lang/String;
    .end local v6    # "mobile":Ljava/lang/String;
    .end local v8    # "quickStartProperty":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    iget-object v1, p0, Lewn$21;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->workMobile:Ljava/lang/String;

    goto :goto_1

    .line 459
    .restart local v6    # "mobile":Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lewn$21;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    goto :goto_2

    .line 461
    :cond_5
    iget-object v1, p0, Lewn$21;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v1, v2, v10

    if-lez v1, :cond_2

    .line 462
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v1

    iget-object v2, p0, Lewn$21;->b:Landroid/app/Activity;

    iget-object v3, p0, Lewn$21;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v10, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-virtual {v1, v2, v10, v11}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Landroid/app/Activity;J)V

    goto :goto_3

    .line 471
    .restart local v8    # "quickStartProperty":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    const-string/jumbo v0, "phone_calllist_normalcall_click"

    .restart local v0    # "ctlKey":Ljava/lang/String;
    goto :goto_4
.end method
