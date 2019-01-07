.class public Lcom/alibaba/android/dingtalkbase/widgets/DDTimePickerDialog;
.super Landroid/app/TimePickerDialog;
.source "DDTimePickerDialog.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Landroid/app/TimePickerDialog$OnTimeSetListener;
    .param p3, "hourOfDay"    # I
    .param p4, "minute"    # I
    .param p5, "is24HourView"    # Z

    .prologue
    .line 25
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 26
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/DDTimePickerDialog;->a:Landroid/content/Context;

    .line 1039
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DDTimePickerDialog;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcig$h;->layout_dd_time_picker_dialog_custom_title_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DDTimePickerDialog;->b:Landroid/view/View;

    .line 1040
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DDTimePickerDialog;->b:Landroid/view/View;

    sget v1, Lcig$f;->text_time:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DDTimePickerDialog;->c:Landroid/widget/TextView;

    .line 1041
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DDTimePickerDialog;->b:Landroid/view/View;

    sget v1, Lcig$f;->text_tip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DDTimePickerDialog;->d:Landroid/widget/TextView;

    .line 1042
    invoke-direct {p0, p3, p4}, Lcom/alibaba/android/dingtalkbase/widgets/DDTimePickerDialog;->a(II)V

    .line 28
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DDTimePickerDialog;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/DDTimePickerDialog;->setCustomTitle(Landroid/view/View;)V

    .line 29
    return-void
.end method

.method private a(II)V
    .locals 4
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 56
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 57
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v2, 0xb

    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 58
    const/16 v2, 0xc

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 59
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 60
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/DDTimePickerDialog;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method


# virtual methods
.method protected onStop()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 0
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 64
    invoke-super {p0, p1, p2, p3}, Landroid/app/TimePickerDialog;->onTimeChanged(Landroid/widget/TimePicker;II)V

    .line 65
    invoke-direct {p0, p2, p3}, Lcom/alibaba/android/dingtalkbase/widgets/DDTimePickerDialog;->a(II)V

    .line 66
    return-void
.end method
