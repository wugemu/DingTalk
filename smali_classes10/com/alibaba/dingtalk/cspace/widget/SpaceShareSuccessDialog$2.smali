.class final Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog$2;
.super Ljava/lang/Object;
.source "SpaceShareSuccessDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog$2;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog$2;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog;->dismiss()V

    .line 101
    return-void
.end method
