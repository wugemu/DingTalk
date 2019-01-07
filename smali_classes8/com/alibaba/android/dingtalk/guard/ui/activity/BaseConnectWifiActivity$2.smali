.class final Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$2;
.super Ljava/lang/Object;
.source "BaseConnectWifiActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$2;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 63
    invoke-static {}, Lcpi;->a()V

    .line 64
    return-void
.end method
