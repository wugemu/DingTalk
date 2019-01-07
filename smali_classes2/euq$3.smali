.class final Leuq$3;
.super Ljava/lang/Object;
.source "TeleConfFunctionsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leuq;->a(Leuq$c;Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardBottomModel;

.field final synthetic b:Leuq$c;

.field final synthetic c:Leuq;


# direct methods
.method constructor <init>(Leuq;Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardBottomModel;Leuq$c;)V
    .locals 0
    .param p1, "this$0"    # Leuq;

    .prologue
    .line 306
    iput-object p1, p0, Leuq$3;->c:Leuq;

    iput-object p2, p0, Leuq$3;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardBottomModel;

    iput-object p3, p0, Leuq$3;->b:Leuq$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 309
    iget-object v0, p0, Leuq$3;->c:Leuq;

    invoke-virtual {v0}, Leuq;->b()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Leuq$3;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardBottomModel;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardBottomModel;->jumpModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageJumpModel;

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->a(Landroid/app/Activity;Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageJumpModel;)V

    .line 311
    iget-object v0, p0, Leuq$3;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardBottomModel;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardBottomModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Leuq$3;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardBottomModel;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardBottomModel;->content:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 313
    iget-object v0, p0, Leuq$3;->b:Leuq$c;

    iget-object v0, v0, Leuq$c;->N:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Leuq$3;->c:Leuq;

    iget-object v1, p0, Leuq$3;->b:Leuq$c;

    iget-object v1, v1, Leuq$c;->N:Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Leuq;->a(Leuq;Landroid/widget/TextView;Z)V

    .line 315
    iget-object v0, p0, Leuq$3;->b:Leuq$c;

    iget-object v0, v0, Leuq$c;->N:Landroid/widget/TextView;

    iget-object v1, p0, Leuq$3;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardBottomModel;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardBottomModel;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    :goto_0
    iget-object v0, p0, Leuq$3;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardBottomModel;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardBottomModel;->reddotModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageReddotModel;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageReddotModel;->reddotKey:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 324
    :cond_0
    return-void

    .line 317
    :cond_1
    iget-object v0, p0, Leuq$3;->b:Leuq$c;

    iget-object v0, v0, Leuq$c;->N:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
