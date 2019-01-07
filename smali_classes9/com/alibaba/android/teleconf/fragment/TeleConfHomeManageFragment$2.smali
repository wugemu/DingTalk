.class final Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$2;
.super Ljava/lang/Object;
.source "TeleConfHomeManageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 204
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$2;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 207
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$2;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->b(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 209
    new-instance v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$a;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$2;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    invoke-direct {v0, v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$a;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)V

    .line 210
    .local v0, "warnBanner":Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$a;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$a;->b:Z

    .line 211
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$2;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->c(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;->content:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$a;->a:Ljava/lang/String;

    .line 212
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$2;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->c(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;->reddotModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageReddotModel;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageReddotModel;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$2;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->c(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;->reddotModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageReddotModel;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageReddotModel;->reddotKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$a;->c:Ljava/lang/String;

    .line 215
    :cond_0
    const-string/jumbo v1, "conf_management_ad_info"

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void
.end method
