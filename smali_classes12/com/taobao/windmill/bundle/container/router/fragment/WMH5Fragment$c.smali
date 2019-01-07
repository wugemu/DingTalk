.class final Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment$c;
.super Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;
.source "WMH5Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;


# direct methods
.method public constructor <init>(Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 371
    iput-object p1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment$c;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;

    .line 372
    invoke-direct {p0, p2}, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;-><init>(Landroid/content/Context;)V

    .line 373
    return-void
.end method
