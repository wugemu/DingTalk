.class abstract Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$ParseRunnable;
.super Ljava/lang/Object;
.source "H5ContentPackage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "ParseRunnable"
.end annotation


# instance fields
.field sid:Ljava/lang/String;

.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;Ljava/lang/String;)V
    .locals 0
    .param p2, "sid"    # Ljava/lang/String;

    .prologue
    .line 832
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$ParseRunnable;->this$0:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 833
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$ParseRunnable;->sid:Ljava/lang/String;

    .line 834
    return-void
.end method
