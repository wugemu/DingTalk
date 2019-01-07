.class final Lcom/taobao/ma/ui/ScanCombineActivity$2;
.super Ljava/lang/Object;
.source "ScanCombineActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/ma/ui/ScanCombineActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/ma/ui/ScanCombineActivity;


# direct methods
.method constructor <init>(Lcom/taobao/ma/ui/ScanCombineActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/ma/ui/ScanCombineActivity;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/taobao/ma/ui/ScanCombineActivity$2;->a:Lcom/taobao/ma/ui/ScanCombineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 178
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->q:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->setWidgetHiden(Ljava/lang/String;Z)V

    .line 179
    return-void
.end method
