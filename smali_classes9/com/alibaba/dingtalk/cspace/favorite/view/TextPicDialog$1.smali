.class final Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog$1;
.super Ljava/lang/Object;
.source "TextPicDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog$1;->a:Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog$1;->a:Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->dismiss()V

    .line 160
    return-void
.end method
