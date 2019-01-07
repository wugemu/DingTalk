.class final Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog$4;
.super Ljava/lang/Object;
.source "CustomDatePickerDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 276
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->c(Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;)Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->b(Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setSelectionPosition(I)V

    .line 277
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->e(Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;)Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->d(Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setSelectionPosition(I)V

    .line 278
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->f(Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->h(Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;)Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->g(Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setSelectionPosition(I)V

    .line 281
    :cond_0
    return-void
.end method
