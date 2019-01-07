.class final Lcom/alibaba/android/user/settings/fragment/MineFragment$10;
.super Ljava/lang/Object;
.source "MineFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/settings/fragment/MineFragment;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/fragment/MineFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/fragment/MineFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;

    .prologue
    .line 1289
    iput-object p1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$10;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1292
    invoke-static {}, Lcom/alibaba/android/user/settings/utils/SettingsUtils;->a()Lcom/alibaba/android/dingtalk/userbase/model/RedDotObject;

    move-result-object v0

    .line 1293
    .local v0, "infoObj":Lcom/alibaba/android/dingtalk/userbase/model/RedDotObject;
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/user/settings/fragment/MineFragment$10$1;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/user/settings/fragment/MineFragment$10$1;-><init>(Lcom/alibaba/android/user/settings/fragment/MineFragment$10;Lcom/alibaba/android/dingtalk/userbase/model/RedDotObject;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 1328
    return-void
.end method
