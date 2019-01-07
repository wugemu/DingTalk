.class final Lewn$20;
.super Ljava/lang/Object;
.source "TeleConfQuickStartCallHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewn;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;ZLandroid/os/Bundle;)Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

.field final synthetic e:Z

.field final synthetic f:Lewn;


# direct methods
.method constructor <init>(Lewn;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Landroid/os/Bundle;Landroid/app/Activity;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;Z)V
    .locals 0
    .param p1, "this$0"    # Lewn;

    .prologue
    .line 395
    iput-object p1, p0, Lewn$20;->f:Lewn;

    iput-object p2, p0, Lewn$20;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iput-object p3, p0, Lewn$20;->b:Landroid/os/Bundle;

    iput-object p4, p0, Lewn$20;->c:Landroid/app/Activity;

    iput-object p5, p0, Lewn$20;->d:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    iput-boolean p6, p0, Lewn$20;->e:Z

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
    const/4 v8, 0x0

    .line 398
    iget-object v3, p0, Lewn$20;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lewn$20;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    iget-object v3, p0, Lewn$20;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 402
    iget-object v3, p0, Lewn$20;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iput-object v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 404
    :cond_2
    const/4 v0, 0x0

    .line 405
    .local v0, "cid":Ljava/lang/String;
    iget-object v3, p0, Lewn$20;->b:Landroid/os/Bundle;

    if-eqz v3, :cond_3

    .line 406
    iget-object v3, p0, Lewn$20;->b:Landroid/os/Bundle;

    const-string/jumbo v4, "conversation_id"

    invoke-virtual {v3, v4, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 408
    :cond_3
    iget-object v3, p0, Lewn$20;->c:Landroid/app/Activity;

    iget-object v4, p0, Lewn$20;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-static {v3, v4, v0}, Lewb;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;)V

    .line 410
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 411
    .local v2, "quickStartProperty":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "type"

    iget-object v4, p0, Lewn$20;->d:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->valueOf()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    iget-boolean v3, p0, Lewn$20;->e:Z

    if-eqz v3, :cond_4

    .line 414
    const-string/jumbo v1, "phone_calllist_voipcall_gray_click"

    .line 418
    .local v1, "ctlKey":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 416
    .end local v1    # "ctlKey":Ljava/lang/String;
    :cond_4
    const-string/jumbo v1, "phone_calllist_voipcall_click"

    .restart local v1    # "ctlKey":Ljava/lang/String;
    goto :goto_1
.end method
