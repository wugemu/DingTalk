.class final Lewn$16;
.super Ljava/lang/Object;
.source "TeleConfQuickStartCallHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewn;->b(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;)Landroid/content/DialogInterface$OnClickListener;
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
    .line 1410
    iput-object p1, p0, Lewn$16;->d:Lewn;

    iput-object p2, p0, Lewn$16;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iput-object p3, p0, Lewn$16;->b:Landroid/app/Activity;

    iput-object p4, p0, Lewn$16;->c:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

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
    .line 1413
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1414
    .local v1, "uidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v2, p0, Lewn$16;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1415
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v2

    iget-object v3, p0, Lewn$16;->b:Landroid/app/Activity;

    invoke-virtual {v2, v3, v1}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->b(Landroid/content/Context;Ljava/util/List;)V

    .line 1417
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1418
    .local v0, "quickStartProperty":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "type"

    iget-object v3, p0, Lewn$16;->c:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->valueOf()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1419
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "phone_calllist_videocall_click"

    invoke-interface {v2, v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 1420
    return-void
.end method
