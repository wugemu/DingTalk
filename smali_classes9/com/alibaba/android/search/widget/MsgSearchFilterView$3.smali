.class final Lcom/alibaba/android/search/widget/MsgSearchFilterView$3;
.super Ljava/lang/Object;
.source "MsgSearchFilterView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/widget/MsgSearchFilterView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

.field final synthetic b:Lcom/alibaba/android/search/widget/MsgSearchFilterView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/widget/MsgSearchFilterView;Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/widget/MsgSearchFilterView;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView$3;->b:Lcom/alibaba/android/search/widget/MsgSearchFilterView;

    iput-object p2, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView$3;->a:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 302
    iget-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView$3;->a:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    .line 1355
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->f:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$a;

    if-eqz v1, :cond_0

    .line 1356
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->f:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$a;

    invoke-interface {v1}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$a;->a()V

    .line 1358
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->dismiss()V

    .line 303
    return-void
.end method
