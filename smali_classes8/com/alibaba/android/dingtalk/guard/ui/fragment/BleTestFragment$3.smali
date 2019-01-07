.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$3;
.super Ljava/lang/Object;
.source "BleTestFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$a;

.field final synthetic b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$3;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$3;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 272
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$3;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$3;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$a;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->b(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;Ljava/lang/String;)V

    .line 273
    return-void
.end method
