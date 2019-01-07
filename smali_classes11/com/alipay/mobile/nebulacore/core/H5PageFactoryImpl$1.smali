.class Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl$1;
.super Ljava/lang/Object;
.source "H5PageFactoryImpl.java"

# interfaces
.implements Liop$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;->createPage(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl$1;->this$0:Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldExit()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method
