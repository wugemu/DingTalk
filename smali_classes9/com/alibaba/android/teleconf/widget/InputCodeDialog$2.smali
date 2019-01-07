.class final Lcom/alibaba/android/teleconf/widget/InputCodeDialog$2;
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
    .line 91
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/InputCodeDialog$2;->a:Lcom/alibaba/android/teleconf/widget/InputCodeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 94
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/InputCodeDialog$2;->a:Lcom/alibaba/android/teleconf/widget/InputCodeDialog;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/widget/InputCodeDialog;->a(Lcom/alibaba/android/teleconf/widget/InputCodeDialog;)Lcom/alibaba/android/teleconf/widget/InputCodeDialog$a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 95
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/InputCodeDialog$2;->a:Lcom/alibaba/android/teleconf/widget/InputCodeDialog;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/widget/InputCodeDialog;->b(Lcom/alibaba/android/teleconf/widget/InputCodeDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "code":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    const-string/jumbo v0, ""

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/InputCodeDialog$2;->a:Lcom/alibaba/android/teleconf/widget/InputCodeDialog;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/widget/InputCodeDialog;->a(Lcom/alibaba/android/teleconf/widget/InputCodeDialog;)Lcom/alibaba/android/teleconf/widget/InputCodeDialog$a;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/android/teleconf/widget/InputCodeDialog$2;->a:Lcom/alibaba/android/teleconf/widget/InputCodeDialog;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/widget/InputCodeDialog;->c(Lcom/alibaba/android/teleconf/widget/InputCodeDialog;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alibaba/android/teleconf/widget/InputCodeDialog$a;->a(Ljava/lang/String;)V

    .line 101
    .end local v0    # "code":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "call_records_keypad_match_city_code_alert_call_click"

    invoke-interface {v1, v5, v2, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 102
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/InputCodeDialog$2;->a:Lcom/alibaba/android/teleconf/widget/InputCodeDialog;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/widget/InputCodeDialog;->dismiss()V

    .line 103
    return-void
.end method
