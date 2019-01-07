.class final Lcom/taobao/ma/ui/CaptureNewFragmentV2$5;
.super Ljava/lang/Object;
.source "CaptureNewFragmentV2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/ma/ui/CaptureNewFragmentV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/ma/ui/CaptureNewFragmentV2;


# direct methods
.method constructor <init>(Lcom/taobao/ma/ui/CaptureNewFragmentV2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    .prologue
    .line 449
    iput-object p1, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2$5;->a:Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 452
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2$5;->a:Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    invoke-virtual {v0}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->d()V

    .line 453
    return-void
.end method
