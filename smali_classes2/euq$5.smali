.class final Leuq$5;
.super Ljava/lang/Object;
.source "TeleConfFunctionsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leuq;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailModel;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageJumpModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageJumpModel;

.field final synthetic b:Leuq;


# direct methods
.method constructor <init>(Leuq;Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageJumpModel;)V
    .locals 0
    .param p1, "this$0"    # Leuq;

    .prologue
    .line 398
    iput-object p1, p0, Leuq$5;->b:Leuq;

    iput-object p2, p0, Leuq$5;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageJumpModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 401
    iget-object v0, p0, Leuq$5;->b:Leuq;

    invoke-virtual {v0}, Leuq;->b()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Leuq$5;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageJumpModel;

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->a(Landroid/app/Activity;Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageJumpModel;)V

    .line 402
    return-void
.end method
