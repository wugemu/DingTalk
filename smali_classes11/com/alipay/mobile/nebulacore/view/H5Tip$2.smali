.class final Lcom/alipay/mobile/nebulacore/view/H5Tip$2;
.super Ljava/lang/Object;
.source "H5Tip.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/view/H5Tip;->showTip(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .prologue
    .line 73
    invoke-static {}, Lcom/alipay/mobile/nebulacore/view/H5Tip;->dismissTip()V

    .line 74
    return-void
.end method
