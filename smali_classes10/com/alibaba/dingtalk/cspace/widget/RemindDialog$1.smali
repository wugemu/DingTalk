.class final Lcom/alibaba/dingtalk/cspace/widget/RemindDialog$1;
.super Ljava/lang/Object;
.source "RemindDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog$1;->a:Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog$1;->a:Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;->dismiss()V

    .line 53
    return-void
.end method
