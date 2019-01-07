.class Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView$11;
.super Ljava/lang/Object;
.source "WeexNavBarView.java"

# interfaces
.implements Lioi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->setLeftButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView$11;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImage(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 243
    if-eqz p1, :cond_0

    .line 244
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView$11;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->access$800(Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView$11;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->access$900(Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 247
    :cond_0
    return-void
.end method
