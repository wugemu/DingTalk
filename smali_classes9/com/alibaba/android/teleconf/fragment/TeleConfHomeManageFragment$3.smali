.class final Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$3;
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
.field final synthetic a:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;

.field final synthetic b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$3;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$3;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 256
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$3;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;->bgColor:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 257
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$3;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;->bgColor:Ljava/lang/String;

    invoke-static {v2}, Leyq;->a(Ljava/lang/String;)I

    move-result v0

    .line 258
    .local v0, "bgColor":I
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$3;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->b(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 259
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$3;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->d(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$3;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Leuj$f;->uidic_global_color_6_7:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 261
    .end local v0    # "bgColor":I
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$3;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$3;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;

    iget-object v3, v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;->jumpModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageJumpModel;

    invoke-static {v2, v3}, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->a(Landroid/app/Activity;Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageJumpModel;)V

    .line 264
    new-instance v1, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$a;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$3;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    invoke-direct {v1, v2}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$a;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)V

    .line 265
    .local v1, "warnBanner":Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$a;
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$a;->b:Z

    .line 266
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$3;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->c(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;->content:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$a;->a:Ljava/lang/String;

    .line 267
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$3;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->c(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;->reddotModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageReddotModel;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageReddotModel;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 268
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$3;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->c(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;)Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageADModel;->reddotModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageReddotModel;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageReddotModel;->reddotKey:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$a;->c:Ljava/lang/String;

    .line 270
    :cond_1
    const-string/jumbo v2, "conf_management_ad_info"

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    return-void
.end method
