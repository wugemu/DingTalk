.class final Lcom/alipay/mobile/nebulacore/Nebula$3;
.super Ljava/lang/Object;
.source "Nebula.java"

# interfaces
.implements Lioi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/Nebula;->loadImageKeepSize(Ljava/lang/String;Lioi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$h5ImageListener:Lioi;


# direct methods
.method constructor <init>(Lioi;)V
    .locals 0

    .prologue
    .line 472
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/Nebula$3;->val$h5ImageListener:Lioi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onImage(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 475
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/Nebula$3;->val$h5ImageListener:Lioi;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/Nebula$3;->val$h5ImageListener:Lioi;

    invoke-interface {v0, p1}, Lioi;->onImage(Landroid/graphics/Bitmap;)V

    .line 478
    :cond_0
    return-void
.end method
