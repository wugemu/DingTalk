.class public Lcom/alibaba/android/dingtalkbase/widgets/DDDatePickerDialog;
.super Landroid/app/DatePickerDialog;
.source "DDDatePickerDialog.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Landroid/app/DatePickerDialog$OnDateSetListener;
    .param p3, "year"    # I
    .param p4, "monthOfYear"    # I
    .param p5, "dayOfMonth"    # I

    .prologue
    .line 25
    invoke-direct/range {p0 .. p5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 26
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/DDDatePickerDialog;->a:Landroid/content/Context;

    .line 1039
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DDDatePickerDialog;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcig$h;->layout_dd_date_picker_dialog_custom_title_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DDDatePickerDialog;->b:Landroid/view/View;

    .line 1040
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DDDatePickerDialog;->b:Landroid/view/View;

    sget v1, Lcig$f;->text_date:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DDDatePickerDialog;->c:Landroid/widget/TextView;

    .line 1041
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DDDatePickerDialog;->b:Landroid/view/View;

    sget v1, Lcig$f;->text_tip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DDDatePickerDialog;->d:Landroid/widget/TextView;

    .line 1042
    invoke-direct {p0, p3, p4, p5}, Lcom/alibaba/android/dingtalkbase/widgets/DDDatePickerDialog;->a(III)V

    .line 28
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DDDatePickerDialog;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/DDDatePickerDialog;->setCustomTitle(Landroid/view/View;)V

    .line 29
    return-void
.end method

.method private a(III)V
    .locals 6
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 56
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 57
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 58
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/DDDatePickerDialog;->a:Landroid/content/Context;

    .line 59
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const v3, 0x18016

    .line 58
    invoke-static {v2, v4, v5, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "title":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/DDDatePickerDialog;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    return-void
.end method


# virtual methods
.method public onDateChanged(Landroid/widget/DatePicker;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 69
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/DatePickerDialog;->onDateChanged(Landroid/widget/DatePicker;III)V

    .line 70
    invoke-direct {p0, p2, p3, p4}, Lcom/alibaba/android/dingtalkbase/widgets/DDDatePickerDialog;->a(III)V

    .line 71
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method
