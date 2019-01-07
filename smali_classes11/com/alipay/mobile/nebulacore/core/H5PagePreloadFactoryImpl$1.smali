.class Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl$1;
.super Ljava/lang/Object;
.source "H5PagePreloadFactoryImpl.java"

# interfaces
.implements Liop$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;->createPage(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl$1;->this$0:Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldExit()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    return v0
.end method
