.class final Lewn$7;
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
    .line 999
    iput-object p1, p0, Lewn$7;->d:Lewn;

    iput-object p2, p0, Lewn$7;->a:Landroid/app/Activity;

    iput-object p3, p0, Lewn$7;->b:Ljava/util/List;

    iput-object p4, p0, Lewn$7;->c:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 1002
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1003
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "message"

    const-string/jumbo v3, "conf_caller"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    const-string/jumbo v2, "conf_video_to_user_type"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1005
    const-string/jumbo v2, "conf_video_auto"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1006
    const-string/jumbo v2, "conf_video_3g_remind_flag"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1007
    iget-object v2, p0, Lewn$7;->a:Landroid/app/Activity;

    iget-object v3, p0, Lewn$7;->b:Ljava/util/List;

    invoke-static {v2, v3, v0}, Lewb;->c(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;)V

    .line 1009
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1010
    .local v1, "quickStartProperty":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "type"

    iget-object v3, p0, Lewn$7;->c:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->valueOf()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "phone_calllist_videocall_click"

    invoke-interface {v2, v3, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 1012
    return-void
.end method
