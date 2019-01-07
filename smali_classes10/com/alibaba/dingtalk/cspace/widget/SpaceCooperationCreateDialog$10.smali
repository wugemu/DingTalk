.class public final Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$10;
.super Ljava/lang/Object;
.source "SpaceCooperationCreateDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 254
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$10;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 257
    const/4 v2, 0x4

    if-ne p2, v2, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$10;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->h(Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 258
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$10;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->h(Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 259
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$10;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->i(Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 262
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
