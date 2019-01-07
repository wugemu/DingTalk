.class final Ldmt$1;
.super Ljava/lang/Object;
.source "LuckyTimeBannerManager2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldmt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldmt;


# direct methods
.method constructor <init>(Ldmt;)V
    .locals 0
    .param p1, "this$0"    # Ldmt;

    .prologue
    .line 54
    iput-object p1, p0, Ldmt$1;->a:Ldmt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 57
    iget-object v0, p0, Ldmt$1;->a:Ldmt;

    iget-object v0, v0, Ldmt;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Ldmt$1;->a:Ldmt;

    .line 1033
    iget-object v0, v0, Ldmt;->c:Landroid/app/Activity;

    .line 58
    check-cast v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->Q()V

    .line 60
    iget-object v1, p0, Ldmt$1;->a:Ldmt;

    iget-object v0, p0, Ldmt$1;->a:Ldmt;

    iget-object v0, v0, Ldmt;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;

    .line 2033
    invoke-virtual {v1}, Ldmt;->e()V

    .line 62
    :cond_0
    return-void
.end method
