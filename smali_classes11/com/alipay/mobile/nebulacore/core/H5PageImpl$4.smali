.class Lcom/alipay/mobile/nebulacore/core/H5PageImpl$4;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "H5PageImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/core/H5PageImpl;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$4;->this$0:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 335
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$4;->this$0:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->access$302(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;J)J

    .line 336
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$4;->this$0:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->access$300(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)J

    move-result-wide v0

    sput-wide v0, Liog;->d:J

    .line 337
    const-string/jumbo v0, "H5PageImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onDown "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$4;->this$0:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->access$300(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const/4 v0, 0x0

    return v0
.end method
