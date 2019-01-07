.class final Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$7;
.super Ljava/lang/Object;
.source "TeleConfHomeManageFragment.java"

# interfaces
.implements Lewj$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    .prologue
    .line 657
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$7;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3
    .param p1, "menuId"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 666
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$7;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$7;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 667
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$7;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    .line 668
    .local v0, "numInfo":Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;
    if-eqz v0, :cond_0

    .line 669
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$7;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    sget-object v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardType;->TYPE_BIZCALL:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardType;

    invoke-static {v1, v0, v2}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardType;)V

    .line 672
    .end local v0    # "numInfo":Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;
    :cond_0
    return-void
.end method

.method public final a([Ljava/lang/CharSequence;I)V
    .locals 0
    .param p1, "menuItems"    # [Ljava/lang/CharSequence;
    .param p2, "menuId"    # I

    .prologue
    .line 661
    return-void
.end method
