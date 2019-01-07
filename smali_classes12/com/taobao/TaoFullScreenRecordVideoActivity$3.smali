.class final Lcom/taobao/TaoFullScreenRecordVideoActivity$3;
.super Ljava/lang/Object;
.source "TaoFullScreenRecordVideoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/TaoFullScreenRecordVideoActivity;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/av/ui/view/NewDialog;

.field final synthetic b:Lcom/taobao/TaoFullScreenRecordVideoActivity;


# direct methods
.method constructor <init>(Lcom/taobao/TaoFullScreenRecordVideoActivity;Lcom/taobao/av/ui/view/NewDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/TaoFullScreenRecordVideoActivity;

    .prologue
    .line 974
    iput-object p1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity$3;->b:Lcom/taobao/TaoFullScreenRecordVideoActivity;

    iput-object p2, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity$3;->a:Lcom/taobao/av/ui/view/NewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 977
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity$3;->a:Lcom/taobao/av/ui/view/NewDialog;

    invoke-virtual {v0}, Lcom/taobao/av/ui/view/NewDialog;->dismiss()V

    .line 978
    return-void
.end method
