.class final Lcom/alibaba/android/teleconf/widget/InputCodeDialog$1;
.super Ljava/lang/Object;
.source "InputCodeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/widget/InputCodeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/widget/InputCodeDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/widget/InputCodeDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/widget/InputCodeDialog;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/InputCodeDialog$1;->a:Lcom/alibaba/android/teleconf/widget/InputCodeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 85
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "call_records_keypad_match_city_code_alert_cancel_click"

    invoke-interface {v0, v2, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 86
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/InputCodeDialog$1;->a:Lcom/alibaba/android/teleconf/widget/InputCodeDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/widget/InputCodeDialog;->cancel()V

    .line 87
    return-void
.end method
