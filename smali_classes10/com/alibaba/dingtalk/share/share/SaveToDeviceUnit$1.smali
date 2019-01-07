.class final Lcom/alibaba/dingtalk/share/share/SaveToDeviceUnit$1;
.super Ljava/lang/Object;
.source "SaveToDeviceUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/share/share/SaveToDeviceUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/alibaba/dingtalk/share/share/SaveToDeviceUnit;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/share/share/SaveToDeviceUnit;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/share/share/SaveToDeviceUnit;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/share/SaveToDeviceUnit$1;->b:Lcom/alibaba/dingtalk/share/share/SaveToDeviceUnit;

    iput-object p2, p0, Lcom/alibaba/dingtalk/share/share/SaveToDeviceUnit$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 76
    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/SaveToDeviceUnit$1;->a:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 89
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/SaveToDeviceUnit$1;->a:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/SaveToDeviceUnit$1;->b:Lcom/alibaba/dingtalk/share/share/SaveToDeviceUnit;

    invoke-static {v2}, Lcom/alibaba/dingtalk/share/share/SaveToDeviceUnit;->a(Lcom/alibaba/dingtalk/share/share/SaveToDeviceUnit;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcnx;->a(Landroid/graphics/Bitmap;Landroid/content/Context;Landroid/graphics/Bitmap$CompressFormat;Z)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "savedPath":Ljava/lang/String;
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/dingtalk/share/share/SaveToDeviceUnit$1$1;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/dingtalk/share/share/SaveToDeviceUnit$1$1;-><init>(Lcom/alibaba/dingtalk/share/share/SaveToDeviceUnit$1;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
