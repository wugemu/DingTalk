.class Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame$1;
.super Ljava/lang/Object;
.source "WMLAppLoadingFrame.java"

# interfaces
.implements Lioi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;->loadLogo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImage(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 112
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;->access$000(Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;->access$100(Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;->access$200(Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;->access$100(Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 117
    :cond_0
    return-void
.end method
