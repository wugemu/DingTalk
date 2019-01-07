.class final Lfrg$4;
.super Ljava/lang/Object;
.source "AlipayLoginView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfrg;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lfrg;


# direct methods
.method constructor <init>(Lfrg;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lfrg;

    .prologue
    .line 220
    iput-object p1, p0, Lfrg$4;->c:Lfrg;

    iput-object p2, p0, Lfrg$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    iput-object p3, p0, Lfrg$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 223
    iget-object v0, p0, Lfrg$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lfrg$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->dismiss()V

    .line 226
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a()Lcom/alibaba/android/dingtalk/userbase/AccountInterface;

    move-result-object v0

    iget-object v1, p0, Lfrg$4;->c:Lfrg;

    .line 1066
    iget-object v1, v1, Lfrg;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 226
    iget-object v2, p0, Lfrg$4;->b:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 227
    return-void
.end method
