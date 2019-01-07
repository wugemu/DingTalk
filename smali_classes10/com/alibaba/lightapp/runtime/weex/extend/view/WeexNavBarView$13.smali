.class Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView$13;
.super Ljava/lang/Object;
.source "WeexNavBarView.java"

# interfaces
.implements Lioi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->doSwitchToWhiteTheme()V
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
    .line 386
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView$13;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImage(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 389
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView$13;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->access$500(Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 390
    return-void
.end method
