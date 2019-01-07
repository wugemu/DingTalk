.class public final Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$3;
.super Ljava/lang/Object;
.source "SpaceCooperationCreateDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 163
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$3;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 181
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .prologue
    .line 167
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 171
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$3;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->a(Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$3;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->a(Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
