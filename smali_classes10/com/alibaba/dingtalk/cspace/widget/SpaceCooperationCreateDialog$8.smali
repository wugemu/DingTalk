.class public final Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$8;
.super Ljava/lang/Object;
.source "SpaceCooperationCreateDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;


# direct methods
.method public constructor <init>(Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$8;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 239
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$8;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->c(Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$8;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->c(Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;)Landroid/widget/EditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 242
    :cond_0
    return-void
.end method
