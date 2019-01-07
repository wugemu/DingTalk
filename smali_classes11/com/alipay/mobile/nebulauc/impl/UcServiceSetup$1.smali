.class final Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$1;
.super Ljava/lang/Object;
.source "UcServiceSetup.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChange(Ljava/lang/String;)V
    .locals 0
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-static {p1}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->access$000(Ljava/lang/String;)V

    .line 97
    return-void
.end method
