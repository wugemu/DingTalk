.class final Lcom/alibaba/android/teleconf/widget/InputCodeDialog$3;
.super Ljava/lang/Object;
.source "InputCodeDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 105
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/InputCodeDialog$3;->a:Lcom/alibaba/android/teleconf/widget/InputCodeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "s"    # Landroid/text/Editable;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 116
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_2

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/InputCodeDialog$3;->a:Lcom/alibaba/android/teleconf/widget/InputCodeDialog;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/InputCodeDialog;->d(Lcom/alibaba/android/teleconf/widget/InputCodeDialog;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 118
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/InputCodeDialog$3;->a:Lcom/alibaba/android/teleconf/widget/InputCodeDialog;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/InputCodeDialog;->d(Lcom/alibaba/android/teleconf/widget/InputCodeDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/InputCodeDialog$3;->a:Lcom/alibaba/android/teleconf/widget/InputCodeDialog;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/widget/InputCodeDialog;->e(Lcom/alibaba/android/teleconf/widget/InputCodeDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->uidic_global_color_c11_9:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    :goto_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 124
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "call_records_keypad_match_city_code_alert_empty"

    invoke-interface {v0, v3, v1, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 126
    :cond_1
    return-void

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/InputCodeDialog$3;->a:Lcom/alibaba/android/teleconf/widget/InputCodeDialog;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/InputCodeDialog;->d(Lcom/alibaba/android/teleconf/widget/InputCodeDialog;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 121
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/InputCodeDialog$3;->a:Lcom/alibaba/android/teleconf/widget/InputCodeDialog;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/InputCodeDialog;->d(Lcom/alibaba/android/teleconf/widget/InputCodeDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/InputCodeDialog$3;->a:Lcom/alibaba/android/teleconf/widget/InputCodeDialog;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/widget/InputCodeDialog;->e(Lcom/alibaba/android/teleconf/widget/InputCodeDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->uidic_global_color_c2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 108
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 112
    return-void
.end method
