.class public Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;
.super Landroid/widget/LinearLayout;
.source "AlipayKeyboard.java"

# interfaces
.implements Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;
    }
.end annotation


# static fields
.field private static final LOCK_SHOW_KEYBOARD:Ljava/lang/Object;


# instance fields
.field private cachedKeyboardAction:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

.field private currentKeyboard:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

.field private editText:Landroid/widget/EditText;

.field private isShowKeyboard:Z

.field private isSwitchedSystemKeyboard:Z

.field private final keyboardMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;",
            "Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;",
            ">;"
        }
    .end annotation
.end field

.field private mActionListener:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboardActionListener;

.field private mStatisticImpl:Lcom/alipay/android/app/safepaybase/alikeyboard/StatisticInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 155
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->LOCK_SHOW_KEYBOARD:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 37
    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->none:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->currentKeyboard:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->keyboardMap:Ljava/util/HashMap;

    .line 43
    iput-boolean v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->isShowKeyboard:Z

    .line 44
    iput-boolean v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->isSwitchedSystemKeyboard:Z

    .line 46
    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;->None:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->cachedKeyboardAction:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    .line 48
    iput-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->mActionListener:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboardActionListener;

    .line 50
    iput-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->mStatisticImpl:Lcom/alipay/android/app/safepaybase/alikeyboard/StatisticInterface;

    .line 61
    invoke-static {p1}, Lcom/alipay/android/app/safepaybase/util/ResUtils;->setUiContext(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->none:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->currentKeyboard:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->keyboardMap:Ljava/util/HashMap;

    .line 43
    iput-boolean v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->isShowKeyboard:Z

    .line 44
    iput-boolean v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->isSwitchedSystemKeyboard:Z

    .line 46
    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;->None:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->cachedKeyboardAction:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    .line 48
    iput-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->mActionListener:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboardActionListener;

    .line 50
    iput-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->mStatisticImpl:Lcom/alipay/android/app/safepaybase/alikeyboard/StatisticInterface;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;)Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->cachedKeyboardAction:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;Landroid/widget/EditText;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;
    .param p1, "x1"    # Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;
    .param p2, "x2"    # Landroid/widget/EditText;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->showKeyboard(Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;Landroid/widget/EditText;)V

    return-void
.end method

.method private initializeIdcardKeyboard()V
    .locals 2

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->removeAllViews()V

    .line 147
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->keyboardMap:Ljava/util/HashMap;

    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->idcard:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;

    invoke-virtual {v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->addView(Landroid/view/View;)V

    .line 148
    return-void
.end method

.method private initializeMoneyKeyboard()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->editText:Landroid/widget/EditText;

    new-instance v1, Lcom/alipay/android/app/safepaybase/alikeyboard/MoneyKeyListener;

    invoke-direct {v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/MoneyKeyListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->removeAllViews()V

    .line 137
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->keyboardMap:Ljava/util/HashMap;

    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->money:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;

    invoke-virtual {v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->addView(Landroid/view/View;)V

    .line 138
    return-void
.end method

.method private initializeNoneKeyboard()V
    .locals 0

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->hideKeyboard()V

    .line 125
    return-void
.end method

.method private initializeNumKeyboard()V
    .locals 2

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->removeAllViews()V

    .line 129
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->keyboardMap:Ljava/util/HashMap;

    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->num:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;

    invoke-virtual {v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->addView(Landroid/view/View;)V

    .line 130
    return-void
.end method

.method private initializePhoneKeyboard()V
    .locals 2

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->removeAllViews()V

    .line 152
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->keyboardMap:Ljava/util/HashMap;

    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->phone:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;

    invoke-virtual {v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->addView(Landroid/view/View;)V

    .line 153
    return-void
.end method

.method private initializeQwertyKeyboard()V
    .locals 2

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->removeAllViews()V

    .line 142
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->keyboardMap:Ljava/util/HashMap;

    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->abc:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;

    invoke-virtual {v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->addView(Landroid/view/View;)V

    .line 143
    return-void
.end method

.method private setSelection(Landroid/widget/EditText;I)V
    .locals 2
    .param p1, "showText"    # Landroid/widget/EditText;
    .param p2, "newpos"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 283
    if-nez p1, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    invoke-virtual {p1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 287
    .local v0, "etext":Landroid/text/Editable;
    if-eqz v0, :cond_0

    .line 290
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 291
    .local v1, "pos":I
    if-ltz p2, :cond_2

    if-le p2, v1, :cond_3

    .line 292
    :cond_2
    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    .line 294
    :cond_3
    invoke-static {v0, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0
.end method

.method private showKeyboard(Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;Landroid/widget/EditText;)V
    .locals 3
    .param p1, "targetKeyboard"    # Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;
    .param p2, "editText"    # Landroid/widget/EditText;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 159
    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->LOCK_SHOW_KEYBOARD:Ljava/lang/Object;

    monitor-enter v1

    .line 160
    :try_start_0
    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;->None:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->cachedKeyboardAction:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->isShowKeyboard:Z

    .line 162
    iput-object p2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->editText:Landroid/widget/EditText;

    .line 165
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureEditText;

    if-nez v0, :cond_0

    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->money:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    if-eq p1, v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->editText:Landroid/widget/EditText;

    new-instance v2, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureAccessbilityDelegate;

    invoke-direct {v2}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureAccessbilityDelegate;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->currentKeyboard:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    if-eq v0, p1, :cond_1

    .line 170
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->currentKeyboard:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    .line 171
    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->switchKeyboard()V

    .line 173
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->setVisibility(I)V

    .line 174
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private switchKeyboard()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 73
    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$2;->$SwitchMap$com$alipay$android$app$safepaybase$alikeyboard$AliKeyboardType:[I

    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->currentKeyboard:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    invoke-virtual {v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 93
    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->initializeQwertyKeyboard()V

    .line 96
    :goto_0
    return-void

    .line 75
    :pswitch_0
    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->initializeNoneKeyboard()V

    goto :goto_0

    .line 78
    :pswitch_1
    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->initializeQwertyKeyboard()V

    goto :goto_0

    .line 81
    :pswitch_2
    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->initializeMoneyKeyboard()V

    goto :goto_0

    .line 84
    :pswitch_3
    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->initializeNumKeyboard()V

    goto :goto_0

    .line 87
    :pswitch_4
    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->initializeIdcardKeyboard()V

    goto :goto_0

    .line 90
    :pswitch_5
    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->initializePhoneKeyboard()V

    goto :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public hideKeyboard()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 205
    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->LOCK_SHOW_KEYBOARD:Ljava/lang/Object;

    monitor-enter v1

    .line 206
    :try_start_0
    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;->None:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->cachedKeyboardAction:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->isShowKeyboard:Z

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->editText:Landroid/widget/EditText;

    .line 209
    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->none:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->currentKeyboard:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    .line 210
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->setVisibility(I)V

    .line 211
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public initializeKeyboard(Landroid/widget/FrameLayout;)V
    .locals 8
    .param p1, "container"    # Landroid/widget/FrameLayout;

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x1

    .line 102
    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "accessibility"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 103
    .local v0, "mManager":Landroid/view/accessibility/AccessibilityManager;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 104
    .local v1, "needSecureType":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 105
    iget-object v3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->keyboardMap:Ljava/util/HashMap;

    sget-object v4, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->num:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    new-instance v5, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;

    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;-><init>(Landroid/content/Context;Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->keyboardMap:Ljava/util/HashMap;

    sget-object v4, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->money:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    new-instance v5, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;

    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;-><init>(Landroid/content/Context;Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->keyboardMap:Ljava/util/HashMap;

    sget-object v4, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->abc:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    new-instance v5, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;

    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, p1, p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->keyboardMap:Ljava/util/HashMap;

    sget-object v4, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->idcard:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    new-instance v5, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;

    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, p0, v7}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;-><init>(Landroid/content/Context;Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;I)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->keyboardMap:Ljava/util/HashMap;

    sget-object v4, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->phone:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    new-instance v5, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;

    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, p0, v2}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;-><init>(Landroid/content/Context;Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;I)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :goto_1
    invoke-virtual {p0, v2}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->setOrientation(I)V

    .line 119
    sget v2, Liid$a;->keyboard_shape:I

    invoke-virtual {p0, v2}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->setBackgroundResource(I)V

    .line 120
    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->removeAllViews()V

    .line 121
    return-void

    .line 103
    .end local v1    # "needSecureType":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 111
    .restart local v1    # "needSecureType":Z
    :cond_1
    iget-object v3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->keyboardMap:Ljava/util/HashMap;

    sget-object v4, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->num:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    new-instance v5, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard;

    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard;-><init>(Landroid/content/Context;Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->keyboardMap:Ljava/util/HashMap;

    sget-object v4, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->money:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    new-instance v5, Lcom/alipay/android/app/safepaybase/alikeyboard/MoneyKeyboard;

    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/MoneyKeyboard;-><init>(Landroid/content/Context;Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->keyboardMap:Ljava/util/HashMap;

    sget-object v4, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->abc:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    new-instance v5, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;

    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, p1, p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->keyboardMap:Ljava/util/HashMap;

    sget-object v4, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->idcard:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    new-instance v5, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard;

    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, p0, v7}, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard;-><init>(Landroid/content/Context;Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;I)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->keyboardMap:Ljava/util/HashMap;

    sget-object v4, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->phone:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    new-instance v5, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard;

    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, p0, v2}, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard;-><init>(Landroid/content/Context;Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;I)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public isShowKeyboard()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->isShowKeyboard:Z

    return v0
.end method

.method public onDel()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 220
    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->mActionListener:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboardActionListener;

    if-eqz v2, :cond_0

    .line 221
    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->mActionListener:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboardActionListener;

    invoke-virtual {v2}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboardActionListener;->onDel()V

    .line 224
    :cond_0
    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->editText:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-nez v2, :cond_2

    .line 240
    :cond_1
    :goto_0
    return-void

    .line 228
    :cond_2
    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    .line 229
    .local v1, "st":I
    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 231
    .local v0, "et":I
    if-lez v1, :cond_1

    .line 235
    if-ne v1, v0, :cond_3

    .line 236
    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 238
    :cond_3
    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0
.end method

.method public onInput(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 258
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->mActionListener:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboardActionListener;

    if-eqz v1, :cond_0

    .line 259
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->mActionListener:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboardActionListener;

    invoke-virtual {v1, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboardActionListener;->onInput(Ljava/lang/String;)V

    .line 261
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->editText:Landroid/widget/EditText;

    if-nez v1, :cond_1

    .line 268
    :goto_0
    return-void

    .line 265
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 266
    .local v0, "pos":I
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 267
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->setSelection(Landroid/widget/EditText;I)V

    goto :goto_0
.end method

.method public onOK()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->mActionListener:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboardActionListener;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->mActionListener:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboardActionListener;

    invoke-virtual {v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboardActionListener;->onOk()V

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->hideKeyboard()V

    .line 251
    return-void
.end method

.method public onStatisticEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->mStatisticImpl:Lcom/alipay/android/app/safepaybase/alikeyboard/StatisticInterface;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->mStatisticImpl:Lcom/alipay/android/app/safepaybase/alikeyboard/StatisticInterface;

    invoke-interface {v0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/StatisticInterface;->onStatistic(Ljava/lang/String;)V

    .line 275
    :cond_0
    return-void
.end method

.method public setKeyboardActionListener(Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboardActionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboardActionListener;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->mActionListener:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboardActionListener;

    .line 299
    return-void
.end method

.method public setStatisticInterface(Lcom/alipay/android/app/safepaybase/alikeyboard/StatisticInterface;)V
    .locals 0
    .param p1, "statisticImpl"    # Lcom/alipay/android/app/safepaybase/alikeyboard/StatisticInterface;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->mStatisticImpl:Lcom/alipay/android/app/safepaybase/alikeyboard/StatisticInterface;

    .line 303
    return-void
.end method

.method public showKeyboard(Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;Landroid/widget/EditText;J)V
    .locals 5
    .param p1, "targetKeyboard"    # Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;
    .param p2, "editText"    # Landroid/widget/EditText;
    .param p3, "delayMillis"    # J

    .prologue
    .line 178
    iget-boolean v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->isSwitchedSystemKeyboard:Z

    if-eqz v1, :cond_0

    .line 179
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->isSwitchedSystemKeyboard:Z

    .line 180
    const-wide/16 p3, 0xc8

    .line 183
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-gtz v1, :cond_1

    .line 184
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->showKeyboard(Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;Landroid/widget/EditText;)V

    .line 202
    :goto_0
    return-void

    .line 188
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->isShowKeyboard:Z

    .line 189
    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;->Show:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->cachedKeyboardAction:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    .line 190
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 191
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$1;-><init>(Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
