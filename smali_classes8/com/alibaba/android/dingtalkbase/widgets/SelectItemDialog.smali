.class public Lcom/alibaba/android/dingtalkbase/widgets/SelectItemDialog;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
.source "SelectItemDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:I


# direct methods
.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/SelectItemDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/SelectItemDialog;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SelectItemDialog;->d:I

    return p1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcig$f;->date_btn_cancel:I

    if-ne v0, v1, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/SelectItemDialog;->dismiss()V

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcig$f;->date_btn_sure:I

    if-ne v0, v1, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/SelectItemDialog;->dismiss()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, -0x2

    .line 71
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->onCreate(Landroid/os/Bundle;)V

    .line 72
    sget v0, Lcig$h;->dialog_select_items:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/SelectItemDialog;->setContentView(I)V

    .line 73
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/SelectItemDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/SelectItemDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 75
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/SelectItemDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcig$k;->SelectItemDialogAnimation:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 77
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/SelectItemDialog;->setCanceledOnTouchOutside(Z)V

    .line 1084
    sget v0, Lcig$f;->wheel_view_item1:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/SelectItemDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SelectItemDialog;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    .line 1085
    sget v0, Lcig$f;->date_btn_cancel:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/SelectItemDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SelectItemDialog;->b:Landroid/view/View;

    .line 1086
    sget v0, Lcig$f;->date_btn_sure:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/SelectItemDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SelectItemDialog;->c:Landroid/view/View;

    .line 1090
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SelectItemDialog;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1091
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SelectItemDialog;->c:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1093
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SelectItemDialog;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/SelectItemDialog$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/SelectItemDialog$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/SelectItemDialog;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setOnWheelItemSelectedListener(Lctf;)V

    .line 81
    return-void
.end method
