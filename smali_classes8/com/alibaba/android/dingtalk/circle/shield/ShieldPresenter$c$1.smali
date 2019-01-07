.class final Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$c$1;
.super Ljava/lang/Object;
.source "ShieldPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$c;->a(Landroid/app/Activity;Landroid/view/View;Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$ShieldOperation$a;Landroid/widget/PopupWindow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/PopupWindow;

.field final synthetic b:Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$ShieldOperation$a;

.field final synthetic c:Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$c;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$c;Landroid/widget/PopupWindow;Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$ShieldOperation$a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$c;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$c$1;->c:Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$c;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$c$1;->a:Landroid/widget/PopupWindow;

    iput-object p3, p0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$c$1;->b:Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$ShieldOperation$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 356
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$c$1;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 357
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$c$1;->b:Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$ShieldOperation$a;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$c$1;->b:Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$ShieldOperation$a;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$c$1;->c:Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$c;

    .line 1338
    iget-object v1, v1, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$c;->a:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 358
    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$ShieldOperation$a;->b(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V

    .line 360
    :cond_0
    return-void
.end method
