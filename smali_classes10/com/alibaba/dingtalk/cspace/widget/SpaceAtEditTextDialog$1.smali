.class final Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog$1;
.super Ljava/lang/Object;
.source "SpaceAtEditTextDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog$1;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog$1;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->dismiss()V

    .line 143
    return-void
.end method
