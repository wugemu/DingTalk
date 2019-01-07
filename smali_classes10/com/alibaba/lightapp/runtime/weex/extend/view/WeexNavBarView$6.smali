.class Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView$6;
.super Ljava/lang/Object;
.source "WeexNavBarView.java"

# interfaces
.implements Lioi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->setTitleIcon(Ljava/lang/String;)V
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
    .line 128
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView$6;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImage(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 130
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView$6;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->access$000(Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView$6;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->access$100(Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;)Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 133
    :cond_0
    return-void
.end method
