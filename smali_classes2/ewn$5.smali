.class final Lewn$5;
.super Ljava/lang/Object;
.source "TeleConfQuickStartCallHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewn;->a(Landroid/app/Activity;Ljava/util/List;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

.field final synthetic d:Lewn;


# direct methods
.method constructor <init>(Lewn;Ljava/util/List;Landroid/app/Activity;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;)V
    .locals 0
    .param p1, "this$0"    # Lewn;

    .prologue
    .line 953
    iput-object p1, p0, Lewn$5;->d:Lewn;

    iput-object p2, p0, Lewn$5;->a:Ljava/util/List;

    iput-object p3, p0, Lewn$5;->b:Landroid/app/Activity;

    iput-object p4, p0, Lewn$5;->c:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v10, 0x1

    .line 956
    const/4 v1, 0x0

    .line 957
    .local v1, "memCount":I
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v6

    invoke-virtual {v6}, Lccr;->c()J

    move-result-wide v2

    .line 958
    .local v2, "currentUid":J
    iget-object v6, p0, Lewn$5;->a:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 959
    .local v4, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v4, :cond_0

    iget-wide v8, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v7, v8, v2

    if-eqz v7, :cond_0

    .line 960
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 963
    .end local v4    # "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_1
    if-ne v1, v10, :cond_2

    .line 964
    iget-object v6, p0, Lewn$5;->b:Landroid/app/Activity;

    sget v7, Leuj$l;->and_conf_callselect_conf_member_remind_tip:I

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "1"

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcms;->a(Ljava/lang/String;)V

    .line 965
    iget-object v6, p0, Lewn$5;->b:Landroid/app/Activity;

    iget-object v7, p0, Lewn$5;->a:Ljava/util/List;

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lewb;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 972
    :goto_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 973
    .local v5, "quickStartProperty":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "type"

    iget-object v7, p0, Lewn$5;->c:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    invoke-virtual {v7}, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->valueOf()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v6

    const-string/jumbo v7, "phone_calllist_confcall_click"

    invoke-interface {v6, v7, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 975
    return-void

    .line 967
    .end local v5    # "quickStartProperty":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 968
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "conference_from_home"

    invoke-virtual {v0, v6, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 969
    iget-object v6, p0, Lewn$5;->b:Landroid/app/Activity;

    iget-object v7, p0, Lewn$5;->a:Ljava/util/List;

    invoke-static {v6, v7, v0}, Lewb;->a(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_1
.end method
