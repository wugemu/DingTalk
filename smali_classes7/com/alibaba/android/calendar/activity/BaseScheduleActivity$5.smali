.class final Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$5;
.super Ljava/lang/Object;
.source "BaseScheduleActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$5;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "editable"    # Landroid/text/Editable;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 197
    iget-object v3, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$5;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    iget-object v3, v3, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 198
    .local v1, "charSequence":Ljava/lang/CharSequence;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    .line 199
    .local v2, "subject":Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x1

    .line 200
    .local v0, "canCreate":Z
    :goto_1
    iget-object v3, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$5;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-static {v3}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->c(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 201
    iget-object v3, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$5;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-static {v3}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->c(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 202
    return-void

    .line 198
    .end local v0    # "canCreate":Z
    .end local v2    # "subject":Ljava/lang/String;
    :cond_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 199
    .restart local v2    # "subject":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 188
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 192
    return-void
.end method
