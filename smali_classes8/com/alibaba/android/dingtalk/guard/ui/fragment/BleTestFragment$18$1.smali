.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$18$1;
.super Ljava/lang/Object;
.source "BleTestFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$18;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$a;

.field final synthetic b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$18;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$18;Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$a;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$18;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$18$1;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$18;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$18$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 181
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$18$1;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$18;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$18;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$18$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$a;

    iget v1, v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$a;->f:I

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$18$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$a;

    iget v2, v2, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$a;->e:I

    int-to-long v2, v2

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$18$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$a;

    iget v4, v4, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$a;->c:I

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$18$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$a;

    iget v5, v5, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$a;->d:I

    invoke-static/range {v0 .. v5}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;IJII)V

    .line 182
    return-void
.end method
