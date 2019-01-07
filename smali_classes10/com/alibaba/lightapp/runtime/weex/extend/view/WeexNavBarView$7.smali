.class Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView$7;
.super Ljava/lang/Object;
.source "WeexNavBarView.java"

# interfaces
.implements Lioi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->setRightButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

.field final synthetic val$listener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView$7;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView$7;->val$listener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImage(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 147
    if-eqz p1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView$7;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->access$200(Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView$7;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->access$300(Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView$7;->val$listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView$7;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->access$200(Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 151
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView$7;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->access$300(Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView$7;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;->access$400(Lcom/alibaba/lightapp/runtime/weex/extend/view/WeexNavBarView;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    :cond_0
    return-void
.end method
