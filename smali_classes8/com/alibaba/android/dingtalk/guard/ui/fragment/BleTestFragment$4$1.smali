.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$4$1;
.super Ljava/lang/Object;
.source "BleTestFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$4;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$4;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$4;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$4;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$4$1;->c:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$4;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$4$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$4$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 302
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$4$1;->c:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$4;->c:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$4$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$4$1;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    return-void
.end method
