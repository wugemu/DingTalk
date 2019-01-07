.class final Lewn$6;
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
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

.field final synthetic d:Lewn;


# direct methods
.method constructor <init>(Lewn;Landroid/app/Activity;Ljava/util/List;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;)V
    .locals 0
    .param p1, "this$0"    # Lewn;

    .prologue
    .line 980
    iput-object p1, p0, Lewn$6;->d:Lewn;

    iput-object p2, p0, Lewn$6;->a:Landroid/app/Activity;

    iput-object p3, p0, Lewn$6;->b:Ljava/util/List;

    iput-object p4, p0, Lewn$6;->c:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 983
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 984
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "conference_from_home"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 985
    const-string/jumbo v2, "conversation_id"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    const-string/jumbo v2, "conf_type"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 989
    iget-object v2, p0, Lewn$6;->a:Landroid/app/Activity;

    iget-object v3, p0, Lewn$6;->b:Ljava/util/List;

    invoke-static {v2, v3, v0}, Lewb;->b(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;)V

    .line 991
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 992
    .local v1, "quickStartProperty":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "type"

    iget-object v3, p0, Lewn$6;->c:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->valueOf()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "phone_calllist_voipconf_click"

    invoke-interface {v2, v3, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 994
    return-void
.end method
