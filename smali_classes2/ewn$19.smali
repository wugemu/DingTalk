.class final Lewn$19;
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
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

.field final synthetic c:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

.field final synthetic d:Z

.field final synthetic e:Lewn;


# direct methods
.method constructor <init>(Lewn;Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;Z)V
    .locals 0
    .param p1, "this$0"    # Lewn;

    .prologue
    .line 349
    iput-object p1, p0, Lewn$19;->e:Lewn;

    iput-object p2, p0, Lewn$19;->a:Landroid/app/Activity;

    iput-object p3, p0, Lewn$19;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iput-object p4, p0, Lewn$19;->c:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    iput-boolean p5, p0, Lewn$19;->d:Z

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
    .line 352
    iget-object v2, p0, Lewn$19;->e:Lewn;

    iget-object v3, p0, Lewn$19;->a:Landroid/app/Activity;

    iget-object v4, p0, Lewn$19;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-static {v2, v3, v4}, Lewn;->a(Lewn;Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    .line 354
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 355
    .local v1, "quickStartProperty":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "type"

    iget-object v3, p0, Lewn$19;->c:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->valueOf()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    iget-boolean v2, p0, Lewn$19;->d:Z

    if-eqz v2, :cond_0

    .line 358
    const-string/jumbo v0, "phone_calllist_more_gray_click"

    .line 362
    .local v0, "ctrKey":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 363
    return-void

    .line 360
    .end local v0    # "ctrKey":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "phone_calllist_more_click"

    .restart local v0    # "ctrKey":Ljava/lang/String;
    goto :goto_0
.end method
