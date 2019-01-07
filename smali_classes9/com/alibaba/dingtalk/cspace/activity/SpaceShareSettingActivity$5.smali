.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity$5;
.super Ljava/lang/Object;
.source "SpaceShareSettingActivity.java"

# interfaces
.implements Lglg$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity$5;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgic;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 164
    .local p1, "spaceInfos":Ljava/util/List;, "Ljava/util/List<Lgic;>;"
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity$5;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;

    invoke-static {v1}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 168
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 169
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x68

    iput v1, v0, Landroid/os/Message;->what:I

    .line 170
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 171
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity$5;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->k:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
