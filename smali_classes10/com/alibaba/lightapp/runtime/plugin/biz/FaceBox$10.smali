.class Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$10;
.super Ljava/lang/Object;
.source "FaceBox.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->showRemindDialog(Ljava/lang/String;Ljava/util/List;Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRemindModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;

.field final synthetic val$callbackId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;

    .prologue
    .line 646
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$10;->val$callbackId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 649
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$10;->val$callbackId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->access$1800(Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;Ljava/lang/String;)V

    .line 650
    return-void
.end method
