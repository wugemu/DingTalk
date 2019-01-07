.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$2;
.super Ljava/lang/Object;
.source "LanNetSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;

    .prologue
    .line 557
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$2;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 560
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$2;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->m()Lbsw$b;

    move-result-object v0

    .line 561
    .local v0, "dataSource":Lbsw$b;
    if-eqz v0, :cond_0

    .line 562
    invoke-interface {v0}, Lbsw$b;->a()Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    move-result-object v1

    .line 563
    .local v1, "group":Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;
    if-eqz v1, :cond_0

    .line 564
    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->orgId:J

    invoke-interface {v0, v4, v5}, Lbsw$b;->d(J)Z

    move-result v2

    .line 565
    .local v2, "staAuthOn":Z
    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->orgId:J

    if-nez v2, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-interface {v0, v4, v5, v3}, Lbsw$b;->a(JZ)V

    .line 568
    .end local v1    # "group":Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;
    .end local v2    # "staAuthOn":Z
    :cond_0
    return-void

    .line 565
    .restart local v1    # "group":Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;
    .restart local v2    # "staAuthOn":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
