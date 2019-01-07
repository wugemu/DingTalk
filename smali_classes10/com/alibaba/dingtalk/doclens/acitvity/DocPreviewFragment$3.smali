.class final Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment$3;
.super Ljava/lang/Object;
.source "DocPreviewFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment$3;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 154
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 155
    return-void
.end method
