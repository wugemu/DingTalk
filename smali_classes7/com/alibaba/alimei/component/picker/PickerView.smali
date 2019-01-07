.class public Lcom/alibaba/alimei/component/picker/PickerView;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
.source "PickerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private f:Lsj;

.field private g:Lsk;

.field private h:Landroid/content/Context;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lsj;Lsk;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataSource"    # Lsj;
    .param p3, "delegate"    # Lsk;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;-><init>(Landroid/content/Context;)V

    .line 29
    sget v0, Lcjj;->A:I

    iput v0, p0, Lcom/alibaba/alimei/component/picker/PickerView;->a:I

    .line 30
    sget v0, Lcjj;->q:I

    iput v0, p0, Lcom/alibaba/alimei/component/picker/PickerView;->b:I

    .line 31
    sget v0, Lcjj;->s:I

    iput v0, p0, Lcom/alibaba/alimei/component/picker/PickerView;->c:I

    .line 32
    sget v0, Lcjj;->s:I

    iput v0, p0, Lcom/alibaba/alimei/component/picker/PickerView;->d:I

    .line 33
    sget v0, Lcjj;->x:I

    iput v0, p0, Lcom/alibaba/alimei/component/picker/PickerView;->e:I

    move-object v0, p1

    .line 47
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/component/picker/PickerView;->setOwnerActivity(Landroid/app/Activity;)V

    .line 48
    iput-object p2, p0, Lcom/alibaba/alimei/component/picker/PickerView;->f:Lsj;

    .line 49
    iput-object p3, p0, Lcom/alibaba/alimei/component/picker/PickerView;->g:Lsk;

    .line 50
    iput-object p1, p0, Lcom/alibaba/alimei/component/picker/PickerView;->h:Landroid/content/Context;

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/component/picker/PickerView;)Lsk;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/component/picker/PickerView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/alimei/component/picker/PickerView;->g:Lsk;

    return-object v0
.end method

.method private a()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    .line 122
    iget-object v0, p0, Lcom/alibaba/alimei/component/picker/PickerView;->h:Landroid/content/Context;

    .line 123
    .local v0, "activity":Landroid/content/Context;
    instance-of v6, v0, Landroid/app/Activity;

    if-eqz v6, :cond_1

    check-cast v0, Landroid/app/Activity;

    .end local v0    # "activity":Landroid/content/Context;
    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/alibaba/alimei/component/picker/PickerView;->f:Lsj;

    if-eqz v6, :cond_1

    .line 126
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v9, :cond_1

    .line 127
    iget-object v6, p0, Lcom/alibaba/alimei/component/picker/PickerView;->f:Lsj;

    invoke-interface {v6, v3}, Lsj;->a(I)Ljava/util/List;

    move-result-object v2

    .line 129
    .local v2, "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Lcth;

    invoke-direct {v4}, Lcth;-><init>()V

    .line 130
    .local v4, "style":Lcth;
    const/4 v6, 0x0

    .line 2071
    iput-boolean v6, v4, Lcth;->a:Z

    .line 131
    const/4 v6, 0x5

    .line 2079
    iput v6, v4, Lcth;->b:I

    .line 132
    iget v6, p0, Lcom/alibaba/alimei/component/picker/PickerView;->a:I

    .line 2087
    iput v6, v4, Lcth;->c:I

    .line 133
    invoke-virtual {p0}, Lcom/alibaba/alimei/component/picker/PickerView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcig$c;->ui_common_level2_text_color:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 2103
    iput v6, v4, Lcth;->e:I

    .line 134
    iget v6, p0, Lcom/alibaba/alimei/component/picker/PickerView;->b:I

    .line 2111
    iput v6, v4, Lcth;->f:I

    .line 135
    invoke-virtual {p0}, Lcom/alibaba/alimei/component/picker/PickerView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcig$c;->ui_common_level1_text_color:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 2127
    iput v6, v4, Lcth;->h:I

    .line 136
    iget v6, p0, Lcom/alibaba/alimei/component/picker/PickerView;->c:I

    .line 2135
    iput v6, v4, Lcth;->i:I

    .line 2231
    iput-boolean v8, v4, Lcth;->u:Z

    .line 3191
    iput-boolean v8, v4, Lcth;->p:Z

    .line 4119
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v4, Lcth;->g:F

    .line 141
    iget-object v6, p0, Lcom/alibaba/alimei/component/picker/PickerView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    .line 142
    .local v5, "wheelView":Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;, "Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView<Ljava/lang/String;>;"
    invoke-virtual {v5, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setData(Ljava/util/List;)V

    .line 143
    invoke-virtual {v5, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setStyle(Lcth;)V

    .line 145
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;

    invoke-virtual {p0}, Lcom/alibaba/alimei/component/picker/PickerView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;-><init>(Landroid/content/Context;)V

    .line 146
    .local v1, "adapter":Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;, "Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter<Ljava/lang/String;>;"
    invoke-virtual {v5, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 148
    const/4 v6, 0x2

    if-ne v3, v6, :cond_0

    .line 149
    new-instance v6, Lcom/alibaba/alimei/component/picker/PickerView$2;

    invoke-direct {v6, p0, v9}, Lcom/alibaba/alimei/component/picker/PickerView$2;-><init>(Lcom/alibaba/alimei/component/picker/PickerView;I)V

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->post(Ljava/lang/Runnable;)Z

    .line 126
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 161
    .end local v1    # "adapter":Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;, "Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter<Ljava/lang/String;>;"
    .end local v2    # "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "i":I
    .end local v4    # "style":Lcth;
    .end local v5    # "wheelView":Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;, "Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView<Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/alibaba/alimei/component/picker/PickerView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/component/picker/PickerView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/alimei/component/picker/PickerView;->i:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/alimei/component/picker/PickerView;)Lsj;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/component/picker/PickerView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/alimei/component/picker/PickerView;->f:Lsj;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 165
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Laxo$f;->btn_cancel:I

    if-ne v0, v1, :cond_1

    .line 166
    invoke-virtual {p0}, Lcom/alibaba/alimei/component/picker/PickerView;->dismiss()V

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Laxo$f;->btn_sure:I

    if-ne v0, v1, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/alibaba/alimei/component/picker/PickerView;->dismiss()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v6, -0x1

    const/4 v1, -0x2

    const/4 v3, 0x0

    .line 55
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->onCreate(Landroid/os/Bundle;)V

    .line 56
    sget v0, Laxo$g;->data_picker_view_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/component/picker/PickerView;->setContentView(I)V

    .line 57
    invoke-virtual {p0}, Lcom/alibaba/alimei/component/picker/PickerView;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/alibaba/alimei/component/picker/PickerView;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 59
    invoke-virtual {p0}, Lcom/alibaba/alimei/component/picker/PickerView;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcig$k;->SelectDateDialogAnimation:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 61
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/component/picker/PickerView;->setCanceledOnTouchOutside(Z)V

    .line 1068
    sget v0, Laxo$f;->btn_cancel:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/component/picker/PickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/component/picker/PickerView;->j:Landroid/view/View;

    .line 1069
    sget v0, Laxo$f;->btn_sure:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/component/picker/PickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/component/picker/PickerView;->k:Landroid/view/View;

    .line 1070
    iget-object v0, p0, Lcom/alibaba/alimei/component/picker/PickerView;->j:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1071
    iget-object v0, p0, Lcom/alibaba/alimei/component/picker/PickerView;->k:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1073
    sget v0, Laxo$f;->data_container_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/component/picker/PickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/alimei/component/picker/PickerView;->i:Landroid/widget/LinearLayout;

    .line 1075
    iget-object v0, p0, Lcom/alibaba/alimei/component/picker/PickerView;->f:Lsj;

    if-eqz v0, :cond_3

    move v2, v3

    move v1, v3

    .line 1078
    :goto_0
    const/4 v0, 0x3

    if-ge v2, v0, :cond_2

    .line 1079
    new-instance v4, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    iget-object v0, p0, Lcom/alibaba/alimei/component/picker/PickerView;->h:Landroid/content/Context;

    invoke-direct {v4, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;-><init>(Landroid/content/Context;)V

    .line 1081
    iget-object v0, p0, Lcom/alibaba/alimei/component/picker/PickerView;->g:Lsk;

    if-eqz v0, :cond_1

    .line 1082
    iget-object v0, p0, Lcom/alibaba/alimei/component/picker/PickerView;->g:Lsk;

    invoke-virtual {v0, v2}, Lsk;->a(I)I

    move-result v5

    .line 1083
    add-int/2addr v1, v5

    .line 1084
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1088
    :goto_1
    const/16 v5, 0x11

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1089
    invoke-virtual {v4, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1090
    iget-object v0, p0, Lcom/alibaba/alimei/component/picker/PickerView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1094
    new-instance v0, Lcom/alibaba/alimei/component/picker/PickerView$1;

    invoke-direct {v0, p0, v2}, Lcom/alibaba/alimei/component/picker/PickerView$1;-><init>(Lcom/alibaba/alimei/component/picker/PickerView;I)V

    invoke-virtual {v4, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setOnWheelItemSelectedListener(Lctf;)V

    .line 1078
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1086
    :cond_1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    goto :goto_1

    .line 1105
    :cond_2
    if-lez v1, :cond_3

    .line 1106
    iget-object v0, p0, Lcom/alibaba/alimei/component/picker/PickerView;->h:Landroid/content/Context;

    invoke-static {v0}, Lcms;->a(Landroid/content/Context;)I

    move-result v0

    sub-int/2addr v0, v1

    div-int/lit8 v1, v0, 0x2

    .line 1107
    iget-object v0, p0, Lcom/alibaba/alimei/component/picker/PickerView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1108
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1109
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget v5, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1110
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1112
    iget-object v0, p0, Lcom/alibaba/alimei/component/picker/PickerView;->i:Landroid/widget/LinearLayout;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1113
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1114
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v5, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v3, v4, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1115
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/alimei/component/picker/PickerView;->a()V

    .line 64
    return-void
.end method
