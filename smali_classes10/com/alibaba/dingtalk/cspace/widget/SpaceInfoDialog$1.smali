.class final Lcom/alibaba/dingtalk/cspace/widget/SpaceInfoDialog$1;
.super Ljava/lang/Object;
.source "SpaceInfoDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/widget/SpaceInfoDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/widget/SpaceInfoDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/widget/SpaceInfoDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceInfoDialog;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceInfoDialog$1;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceInfoDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceInfoDialog$1;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceInfoDialog;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceInfoDialog;->dismiss()V

    .line 64
    return-void
.end method
