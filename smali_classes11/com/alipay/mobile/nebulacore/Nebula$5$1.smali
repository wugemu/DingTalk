.class Lcom/alipay/mobile/nebulacore/Nebula$5$1;
.super Ljava/lang/Object;
.source "Nebula.java"

# interfaces
.implements Lioi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/Nebula$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/Nebula$5;

.field final synthetic val$appName:Ljava/lang/String;

.field final synthetic val$finalLogUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/Nebula$5;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/Nebula$5;

    .prologue
    .line 733
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/Nebula$5$1;->this$0:Lcom/alipay/mobile/nebulacore/Nebula$5;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/Nebula$5$1;->val$finalLogUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/Nebula$5$1;->val$appName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImage(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 738
    const-string/jumbo v1, "H5Nebula"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "logUrl "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/Nebula$5$1;->val$finalLogUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Bitmap "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 741
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/Nebula$5$1;->val$appName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 745
    .local v0, "td":Landroid/app/ActivityManager$TaskDescription;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/Nebula$5$1;->this$0:Lcom/alipay/mobile/nebulacore/Nebula$5;

    iget-object v1, v1, Lcom/alipay/mobile/nebulacore/Nebula$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 747
    .end local v0    # "td":Landroid/app/ActivityManager$TaskDescription;
    :cond_0
    return-void
.end method
