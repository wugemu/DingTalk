.class public Lcom/alibaba/android/projection/widget/ProjectionEditItemView;
.super Landroid/widget/RelativeLayout;
.source "ProjectionEditItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/projection/widget/ProjectionEditItemView$a;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/String;


# instance fields
.field a:Landroid/widget/EditText;

.field b:Landroid/view/View;

.field c:Landroid/view/View;

.field d:Landroid/widget/ProgressBar;

.field e:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Legm$d;->layout_focus_running_device_edit_item:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 50
    sget v0, Legm$c;->device_status:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->b:Landroid/view/View;

    .line 51
    sget v0, Legm$c;->device_close:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->c:Landroid/view/View;

    .line 52
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->c:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/projection/widget/ProjectionEditItemView$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/projection/widget/ProjectionEditItemView$1;-><init>(Lcom/alibaba/android/projection/widget/ProjectionEditItemView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    sget v0, Legm$c;->device_loading:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->d:Landroid/widget/ProgressBar;

    .line 63
    sget v0, Legm$c;->device_running:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->e:Landroid/widget/TextView;

    .line 64
    sget v0, Legm$c;->device_cast_code:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->a:Landroid/widget/EditText;

    .line 66
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/alibaba/android/projection/widget/ProjectionEditItemView$a;

    invoke-direct {v1, p0, v4}, Lcom/alibaba/android/projection/widget/ProjectionEditItemView$a;-><init>(Lcom/alibaba/android/projection/widget/ProjectionEditItemView;B)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 68
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->a:Landroid/widget/EditText;

    new-array v1, v2, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 70
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/alibaba/android/projection/widget/ProjectionEditItemView$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/projection/widget/ProjectionEditItemView$2;-><init>(Lcom/alibaba/android/projection/widget/ProjectionEditItemView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 82
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 113
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 115
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 116
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 118
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/projection/widget/ProjectionEditItemView$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/projection/widget/ProjectionEditItemView$3;-><init>(Lcom/alibaba/android/projection/widget/ProjectionEditItemView;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 128
    :cond_0
    return-void
.end method

.method public final a(Lcom/alibaba/android/projection/data/FocusDeviceObject;)V
    .locals 5
    .param p1, "deviceObject"    # Lcom/alibaba/android/projection/data/FocusDeviceObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 143
    if-nez p1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v0, p1, Lcom/alibaba/android/projection/data/FocusDeviceObject;->showType:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    sget-object v1, Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;->UNKNOWN:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    if-eq v0, v1, :cond_5

    .line 147
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 148
    iget-object v0, p1, Lcom/alibaba/android/projection/data/FocusDeviceObject;->showType:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    sget-object v1, Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;->EDITABLE:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    if-ne v0, v1, :cond_3

    .line 149
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 152
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setClickable(Z)V

    .line 153
    invoke-virtual {p0}, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->getCastCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 154
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->c:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 158
    :cond_3
    iget-object v0, p1, Lcom/alibaba/android/projection/data/FocusDeviceObject;->showType:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    sget-object v1, Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;->LOADING:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    if-ne v0, v1, :cond_4

    .line 159
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->c:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 163
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setClickable(Z)V

    goto :goto_0

    .line 164
    :cond_4
    iget-object v0, p1, Lcom/alibaba/android/projection/data/FocusDeviceObject;->showType:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    sget-object v1, Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;->RUNNING:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    if-ne v0, v1, :cond_0

    .line 165
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->c:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 169
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setClickable(Z)V

    goto/16 :goto_0

    .line 172
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->b:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public getCastCode()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 95
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->a:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 97
    .local v0, "editable":Landroid/text/Editable;
    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 101
    .end local v0    # "editable":Landroid/text/Editable;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCastCode(Ljava/lang/String;)V
    .locals 2
    .param p1, "castCode"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->a:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 109
    :cond_0
    return-void
.end method

.method public setKeyListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .locals 1
    .param p1, "keyListener"    # Landroid/widget/TextView$OnEditorActionListener;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 140
    :cond_0
    return-void
.end method

.method public setTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1
    .param p1, "watcher"    # Landroid/text/TextWatcher;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 134
    :cond_0
    return-void
.end method
