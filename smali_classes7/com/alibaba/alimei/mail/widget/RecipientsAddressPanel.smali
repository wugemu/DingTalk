.class public Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;
.super Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;
.source "RecipientsAddressPanel.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InflateParams"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$a;,
        Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$d;,
        Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$c;,
        Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$b;,
        Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$e;
    }
.end annotation


# instance fields
.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AddressModel;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$d;

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/sdk/model/AddressModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/widget/AutoCompleteTextView;

.field private f:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

.field private g:Z

.field private h:Z

.field private i:Lajo;

.field private j:Landroid/app/Activity;

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$c;

.field private n:I

.field private o:I

.field private p:Z

.field private q:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$a;

.field private r:Landroid/view/View$OnClickListener;

.field private s:Landroid/view/View$OnFocusChangeListener;

.field private t:Z

.field private u:Landroid/view/View$OnFocusChangeListener;

.field private v:Landroid/view/View$OnTouchListener;

.field private w:Landroid/widget/TextView$OnEditorActionListener;

.field private x:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$b;

.field private y:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$e;

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->d:Ljava/util/HashMap;

    .line 46
    iput-boolean v1, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->g:Z

    .line 47
    iput-boolean v1, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->h:Z

    .line 100
    new-instance v0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$1;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$1;-><init>(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->r:Landroid/view/View$OnClickListener;

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->s:Landroid/view/View$OnFocusChangeListener;

    .line 166
    new-instance v0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$3;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$3;-><init>(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->u:Landroid/view/View$OnFocusChangeListener;

    .line 199
    new-instance v0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$4;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$4;-><init>(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->v:Landroid/view/View$OnTouchListener;

    .line 247
    new-instance v0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$5;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$5;-><init>(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->w:Landroid/widget/TextView$OnEditorActionListener;

    .line 535
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->z:I

    .line 62
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->d()V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->d:Ljava/util/HashMap;

    .line 46
    iput-boolean v1, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->g:Z

    .line 47
    iput-boolean v1, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->h:Z

    .line 100
    new-instance v0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$1;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$1;-><init>(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->r:Landroid/view/View$OnClickListener;

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->s:Landroid/view/View$OnFocusChangeListener;

    .line 166
    new-instance v0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$3;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$3;-><init>(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->u:Landroid/view/View$OnFocusChangeListener;

    .line 199
    new-instance v0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$4;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$4;-><init>(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->v:Landroid/view/View$OnTouchListener;

    .line 247
    new-instance v0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$5;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$5;-><init>(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->w:Landroid/widget/TextView$OnEditorActionListener;

    .line 535
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->z:I

    .line 67
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->d()V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->d:Ljava/util/HashMap;

    .line 46
    iput-boolean v1, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->g:Z

    .line 47
    iput-boolean v1, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->h:Z

    .line 100
    new-instance v0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$1;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$1;-><init>(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->r:Landroid/view/View$OnClickListener;

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->s:Landroid/view/View$OnFocusChangeListener;

    .line 166
    new-instance v0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$3;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$3;-><init>(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->u:Landroid/view/View$OnFocusChangeListener;

    .line 199
    new-instance v0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$4;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$4;-><init>(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->v:Landroid/view/View$OnTouchListener;

    .line 247
    new-instance v0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$5;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$5;-><init>(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->w:Landroid/widget/TextView$OnEditorActionListener;

    .line 535
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->z:I

    .line 72
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->d()V

    .line 73
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)Landroid/widget/AutoCompleteTextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->e:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;ILandroid/view/KeyEvent;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, -0x1

    .line 40
    .line 8618
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->g:Z

    if-eqz v0, :cond_0

    .line 8619
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 8623
    iget v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->z:I

    if-ne v2, v0, :cond_1

    .line 9557
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 9558
    if-lez v0, :cond_0

    .line 9559
    add-int/lit8 v0, v0, -0x1

    .line 9560
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->setSelectedIndex(I)V

    .line 8624
    :cond_0
    :goto_0
    return-void

    .line 10538
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 10539
    if-lez v0, :cond_0

    iget v1, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->z:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->z:I

    if-ge v1, v0, :cond_0

    .line 10541
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->b:Ljava/util/ArrayList;

    iget v1, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->z:I

    .line 10542
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 10543
    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->setSelectedIndex(I)V

    .line 10544
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a(Lcom/alibaba/alimei/sdk/model/AddressModel;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;Landroid/view/View;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 40
    .line 7778
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    .line 7779
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 7780
    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;Z)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    .line 7263
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->e:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_1

    .line 7266
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->e:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7268
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->e:Landroid/widget/AutoCompleteTextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 7270
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 7272
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 7273
    const-string/jumbo v1, " "

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7274
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 7275
    new-instance v1, Lcom/alibaba/alimei/sdk/model/AddressModel;

    invoke-direct {v1}, Lcom/alibaba/alimei/sdk/model/AddressModel;-><init>()V

    .line 7276
    iput-object v0, v1, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    .line 7277
    iget-object v2, v1, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 7278
    if-lez v2, :cond_0

    .line 7279
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    .line 7281
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a(Lcom/alibaba/alimei/sdk/model/AddressModel;Z)V

    .line 40
    :cond_1
    return-void
.end method

.method private b(Lcom/alibaba/alimei/sdk/model/AddressModel;IZ)Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;
    .locals 5
    .param p1, "model"    # Lcom/alibaba/alimei/sdk/model/AddressModel;
    .param p2, "index"    # I
    .param p3, "isNotifyReciepientChanged"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 408
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->d:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    .line 409
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 410
    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->c(Lcom/alibaba/alimei/sdk/model/AddressModel;)Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    move-result-object v1

    .line 454
    :cond_1
    :goto_0
    return-object v1

    .line 413
    :cond_2
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->d:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 415
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3458
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->getChildCount()I

    move-result v2

    move v3, v2

    :goto_1
    if-lez v3, :cond_4

    .line 3459
    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3460
    instance-of v4, v2, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    if-eqz v4, :cond_3

    .line 3461
    check-cast v2, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    .line 3462
    invoke-virtual {v2}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->getAddressModel()Lcom/alibaba/alimei/sdk/model/AddressModel;

    move-result-object v4

    if-ne v4, p1, :cond_3

    .line 3463
    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->removeView(Landroid/view/View;)V

    .line 3458
    :cond_3
    add-int/lit8 v2, v3, -0x1

    move v3, v2

    goto :goto_1

    .line 417
    :cond_4
    add-int/lit8 p2, p2, -0x1

    .line 419
    :cond_5
    if-ltz p2, :cond_6

    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le p2, v2, :cond_7

    .line 420
    :cond_6
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 422
    :cond_7
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 423
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->c(Lcom/alibaba/alimei/sdk/model/AddressModel;)Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    move-result-object v0

    .line 424
    .local v0, "bar":Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;
    iget-boolean v2, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->g:Z

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->setEnabled(Z)V

    .line 425
    iget-boolean v2, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->t:Z

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->setActivated(Z)V

    .line 426
    invoke-static {}, Lafj;->a()Lafj;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 427
    new-instance v2, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$6;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$6;-><init>(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)V

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->addView(Landroid/view/View;I)V

    .line 450
    move-object v1, v0

    .line 451
    .local v1, "result":Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;
    if-eqz p3, :cond_1

    .line 452
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->e()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$e;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->y:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$e;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->t:Z

    return p1
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)Landroid/view/View$OnFocusChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->s:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method private c(Lcom/alibaba/alimei/sdk/model/AddressModel;)Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;
    .locals 8
    .param p1, "model"    # Lcom/alibaba/alimei/sdk/model/AddressModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v7, -0x2

    .line 490
    new-instance v0, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;-><init>(Landroid/content/Context;)V

    .line 491
    .local v0, "addressBar":Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-int v1, v4

    .line 492
    .local v1, "id":I
    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->setId(I)V

    .line 4095
    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4096
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Address can not be null!!!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4099
    :cond_1
    iget-object v3, p1, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->a(Ljava/lang/String;)V

    .line 4101
    iget-object v3, p1, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4102
    iget-object v3, p1, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 4103
    if-gtz v3, :cond_2

    .line 4104
    iget-object v3, v0, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->a:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4111
    :goto_0
    iput-object p1, v0, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->b:Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 494
    iget-object v3, p1, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->setTag(Ljava/lang/Object;)V

    .line 495
    new-instance v2, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;-><init>(II)V

    .line 496
    .local v2, "lp":Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;
    iget v3, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->n:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->o:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->n:I

    div-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->o:I

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->setMargins(IIII)V

    .line 497
    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 499
    return-object v0

    .line 4106
    .end local v2    # "lp":Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;
    :cond_2
    iget-object v4, v0, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->a:Landroid/widget/TextView;

    iget-object v5, p1, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4109
    :cond_3
    iget-object v3, v0, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->a:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->b:Ljava/util/ArrayList;

    .line 86
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->u:Landroid/view/View$OnFocusChangeListener;

    invoke-super {p0, v0}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 87
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->setClickable(Z)V

    .line 88
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->setFocusable(Z)V

    .line 89
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->r:Landroid/view/View$OnClickListener;

    invoke-super {p0, v0}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2094
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laxo$d;->alm_cmail_8_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 2095
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxo$d;->alm_cmail_6_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 2096
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->setHorizontalSpace(I)V

    .line 2097
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->setVerticalSpace(I)V

    .line 91
    return-void
.end method

.method static synthetic d(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->g:Z

    return v0
.end method

.method static synthetic e(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$d;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->c:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$d;

    return-object v0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->x:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$b;

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->x:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$b;

    invoke-interface {v0, p0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$b;->a(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)V

    .line 533
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->f:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    return-object v0
.end method

.method private declared-synchronized f()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 655
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->e:Landroid/widget/AutoCompleteTextView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 767
    :goto_0
    monitor-exit p0

    return-void

    .line 658
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 659
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v3, Laxo$g;->alm_cmail_widget_recipients_editor_view:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/AutoCompleteTextView;

    iput-object v3, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->e:Landroid/widget/AutoCompleteTextView;

    .line 661
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->e:Landroid/widget/AutoCompleteTextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 662
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->e:Landroid/widget/AutoCompleteTextView;

    iget v4, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->k:I

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->setDropDownWidth(I)V

    .line 663
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->e:Landroid/widget/AutoCompleteTextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->setDropDownVerticalOffset(I)V

    .line 664
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->e:Landroid/widget/AutoCompleteTextView;

    iget-object v4, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->w:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 665
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->e:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->setDropDownAnchor(I)V

    .line 666
    new-instance v2, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;-><init>(II)V

    .line 667
    .local v2, "lp":Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;
    iget v3, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->n:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->o:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->n:I

    div-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->o:I

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->setMargins(IIII)V

    .line 5552
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->b:Z

    .line 669
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->e:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3, v2}, Landroid/widget/AutoCompleteTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 671
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->e:Landroid/widget/AutoCompleteTextView;

    new-instance v4, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$7;

    invoke-direct {v4, p0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$7;-><init>(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)V

    .line 672
    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 691
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->e:Landroid/widget/AutoCompleteTextView;

    new-instance v4, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$8;

    invoke-direct {v4, p0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$8;-><init>(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)V

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 724
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->e:Landroid/widget/AutoCompleteTextView;

    iget-object v4, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->u:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 725
    new-instance v1, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$9;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$9;-><init>(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)V

    .line 752
    .local v1, "listener":Landroid/text/TextWatcher;
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->e:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 753
    new-instance v3, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->f:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    .line 754
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->f:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    new-instance v4, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$2;

    invoke-direct {v4, p0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$2;-><init>(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)V

    .line 6278
    iput-object v4, v3, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->m:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$a;

    .line 762
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->f:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    iget-object v4, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->i:Lajo;

    iput-object v4, v3, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->i:Lajo;

    .line 763
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->f:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    iget-object v4, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->j:Landroid/app/Activity;

    iput-object v4, v3, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->j:Landroid/app/Activity;

    .line 764
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->e:Landroid/widget/AutoCompleteTextView;

    iget-object v4, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->f:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 765
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->v:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 766
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->e:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->getChildCount()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->addView(Landroid/view/View;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 655
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v1    # "listener":Landroid/text/TextWatcher;
    .end local v2    # "lp":Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method static synthetic g(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)Landroid/widget/TextView$OnEditorActionListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->w:Landroid/widget/TextView$OnEditorActionListener;

    return-object v0
.end method

.method private declared-synchronized g()V
    .locals 1

    .prologue
    .line 770
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->e:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->e:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->removeView(Landroid/view/View;)V

    .line 772
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->e:Landroid/widget/AutoCompleteTextView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 774
    :cond_0
    monitor-exit p0

    return-void

    .line 770
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic h(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$c;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->m:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$c;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alibaba/alimei/sdk/model/AddressModel;IZ)Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;
    .locals 2
    .param p1, "model"    # Lcom/alibaba/alimei/sdk/model/AddressModel;
    .param p2, "index"    # I
    .param p3, "isNotifyReciepientChanged"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 372
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->b(Lcom/alibaba/alimei/sdk/model/AddressModel;IZ)Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    move-result-object v0

    .line 376
    .local v0, "result":Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;
    return-object v0
.end method

.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 108
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->e:Landroid/widget/AutoCompleteTextView;

    if-nez v1, :cond_0

    .line 117
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->e:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setVisibility(I)V

    .line 112
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->e:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 113
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->e:Landroid/widget/AutoCompleteTextView;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->e:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    .line 115
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->setIsExpend(Z)V

    .line 116
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->requestLayout()V

    goto :goto_0

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->e:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 114
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    goto :goto_1
.end method

.method public final a(Lajo;Landroid/app/Activity;)V
    .locals 2
    .param p1, "seacher"    # Lajo;
    .param p2, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->i:Lajo;

    .line 77
    iput-object p2, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->j:Landroid/app/Activity;

    .line 78
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->f:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->f:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->i:Lajo;

    iput-object v1, v0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->i:Lajo;

    .line 80
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->f:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->j:Landroid/app/Activity;

    iput-object v1, v0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->j:Landroid/app/Activity;

    .line 82
    :cond_0
    return-void
.end method

.method public final a(Lcom/alibaba/alimei/sdk/model/AddressModel;)V
    .locals 3
    .param p1, "model"    # Lcom/alibaba/alimei/sdk/model/AddressModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 503
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->d:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    .line 504
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 516
    :cond_0
    :goto_0
    return-void

    .line 507
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 508
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->d:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    iget-object v1, p1, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 510
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 511
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->removeView(Landroid/view/View;)V

    .line 513
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->e()V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/alimei/sdk/model/AddressModel;Z)V
    .locals 1
    .param p1, "model"    # Lcom/alibaba/alimei/sdk/model/AddressModel;
    .param p2, "isNotifyReciepientChanged"    # Z

    .prologue
    .line 357
    .line 2403
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->b(Lcom/alibaba/alimei/sdk/model/AddressModel;IZ)Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    .line 358
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->q:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$a;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->q:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$a;

    invoke-interface {v0, p1}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$a;->a(Lcom/alibaba/alimei/sdk/model/AddressModel;)V

    .line 364
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "oldAccount"    # Ljava/lang/String;
    .param p2, "newAccount"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 825
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->getChildCount()I

    move-result v0

    .line 826
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 827
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 828
    .local v2, "v":Landroid/view/View;
    instance-of v3, v2, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    if-eqz v3, :cond_0

    .line 829
    check-cast v2, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    .line 7185
    .end local v2    # "v":Landroid/view/View;
    iput-object p2, v2, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->c:Ljava/lang/String;

    .line 7186
    iget-object v3, v2, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->b:Lcom/alibaba/alimei/sdk/model/AddressModel;

    iget-object v3, v3, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->a(Ljava/lang/String;)V

    .line 826
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 832
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "isNotifyReciepientChanged"    # Z

    .prologue
    .line 344
    new-instance v0, Lcom/alibaba/alimei/sdk/model/AddressModel;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/model/AddressModel;-><init>()V

    .line 345
    .local v0, "model":Lcom/alibaba/alimei/sdk/model/AddressModel;
    iput-object p1, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    .line 346
    iput-object p2, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    .line 347
    invoke-virtual {p0, v0, p3}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a(Lcom/alibaba/alimei/sdk/model/AddressModel;Z)V

    .line 348
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "isNotifyReciepientChanged"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 328
    new-instance v1, Lcom/alibaba/alimei/sdk/model/AddressModel;

    invoke-direct {v1}, Lcom/alibaba/alimei/sdk/model/AddressModel;-><init>()V

    .line 329
    .local v1, "model":Lcom/alibaba/alimei/sdk/model/AddressModel;
    iput-object p1, v1, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    .line 330
    const/16 v2, 0x40

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 331
    .local v0, "indexOf":I
    if-lez v0, :cond_0

    .line 332
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    .line 334
    :cond_0
    invoke-virtual {p0, v1, p2}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a(Lcom/alibaba/alimei/sdk/model/AddressModel;Z)V

    .line 335
    return-void
.end method

.method public final a(Ljava/util/List;Z)V
    .locals 3
    .param p2, "isNotifyReciepientChanged"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AddressModel;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 387
    .local p1, "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 400
    :cond_0
    return-void

    .line 391
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 3403
    .local v0, "model":Lcom/alibaba/alimei/sdk/model/AddressModel;
    const/4 v2, -0x1

    invoke-direct {p0, v0, v2, p2}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->b(Lcom/alibaba/alimei/sdk/model/AddressModel;IZ)Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 1
    .param p1, "isEditable"    # Z

    .prologue
    .line 311
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->g:Z

    .line 312
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->g:Z

    if-eqz v0, :cond_0

    .line 313
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->f()V

    .line 317
    :goto_0
    return-void

    .line 315
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->g()V

    goto :goto_0
.end method

.method public final b(Lcom/alibaba/alimei/sdk/model/AddressModel;)I
    .locals 1
    .param p1, "addressModel"    # Lcom/alibaba/alimei/sdk/model/AddressModel;

    .prologue
    .line 609
    if-nez p1, :cond_0

    .line 610
    const/4 v0, -0x1

    .line 613
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public final b()Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 124
    iget-object v4, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    move v1, v2

    .line 125
    .local v1, "hasRecipient":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 130
    :cond_0
    :goto_1
    return v2

    .end local v1    # "hasRecipient":Z
    :cond_1
    move v1, v3

    .line 124
    goto :goto_0

    .line 129
    .restart local v1    # "hasRecipient":Z
    :cond_2
    iget-object v4, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->e:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "emailAddress":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_1
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 550
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->e:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->e:Landroid/widget/AutoCompleteTextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->e:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 554
    :cond_0
    return-void
.end method

.method public getAllRecipient()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AddressModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 143
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->e:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "emailAddress":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 145
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->b:Ljava/util/ArrayList;

    .line 161
    :goto_0
    return-object v1

    .line 147
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v1, "addressModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->b:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 149
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 150
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 151
    .local v0, "addressModel":Lcom/alibaba/alimei/sdk/model/AddressModel;
    if-eqz v0, :cond_1

    .line 154
    iget-object v4, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 159
    .end local v0    # "addressModel":Lcom/alibaba/alimei/sdk/model/AddressModel;
    :cond_2
    new-instance v0, Lcom/alibaba/alimei/sdk/model/AddressModel;

    invoke-direct {v0, v2}, Lcom/alibaba/alimei/sdk/model/AddressModel;-><init>(Ljava/lang/String;)V

    .line 160
    .restart local v0    # "addressModel":Lcom/alibaba/alimei/sdk/model/AddressModel;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getLastCountIndex()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->getChildCount()I

    move-result v0

    .line 633
    .local v0, "count":I
    if-nez v0, :cond_1

    .line 634
    const/4 v0, 0x0

    .line 644
    .end local v0    # "count":I
    :cond_0
    :goto_0
    return v0

    .line 637
    .restart local v0    # "count":I
    :cond_1
    iget-boolean v2, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->g:Z

    if-eqz v2, :cond_0

    .line 638
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 639
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Landroid/widget/AutoCompleteTextView;

    if-eqz v2, :cond_0

    .line 640
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 800
    invoke-super {p0}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->onDetachedFromWindow()V

    .line 801
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->f:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    .line 802
    .local v0, "adapter":Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;
    iput-object v3, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->f:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    .line 803
    if-eqz v0, :cond_1

    .line 6568
    iget-object v1, v0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->n:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$c;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->o:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 6569
    iget-object v1, v0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->o:Landroid/os/Handler;

    .line 6571
    :try_start_0
    iget-object v2, v0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->n:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$c;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6572
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 6573
    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 6575
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 6576
    const/16 v2, 0x200

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 6577
    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 6582
    :cond_0
    :goto_0
    iput-object v3, v0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->o:Landroid/os/Handler;

    .line 6583
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->k:Z

    .line 6584
    iput-object v3, v0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->n:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$c;

    .line 6585
    iput-object v3, v0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->i:Lajo;

    .line 6586
    iput-object v3, v0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->j:Landroid/app/Activity;

    .line 6587
    iput-object v3, v0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->h:Landroid/content/Context;

    .line 6588
    iput-object v3, v0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->g:Landroid/view/LayoutInflater;

    .line 6589
    iput-object v3, v0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->l:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$b;

    .line 6590
    iget-object v1, v0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 6591
    iget-object v1, v0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 6592
    iget-object v1, v0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 6593
    iget-object v1, v0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 6594
    iget-object v1, v0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 6595
    iget-object v1, v0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 806
    :cond_1
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setActive(Z)V
    .locals 3
    .param p1, "b"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 809
    if-nez p1, :cond_0

    iget-boolean v2, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->t:Z

    if-eqz v2, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 810
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->getChildCount()I

    move-result v0

    .line 811
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 812
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setActivated(Z)V

    .line 811
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 809
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    .line 814
    .restart local v0    # "childCount":I
    .restart local v1    # "i":I
    :cond_2
    return-void
.end method

.method public setCursorVisible(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 648
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->e:Landroid/widget/AutoCompleteTextView;

    if-nez v0, :cond_0

    .line 652
    :goto_0
    return-void

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->e:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setCursorVisible(Z)V

    goto :goto_0
.end method

.method public setDragMode(Z)V
    .locals 1
    .param p1, "isDragMode"    # Z

    .prologue
    .line 840
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->p:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->setIsExpend(Z)V

    .line 841
    return-void

    .line 840
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDropDownWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 320
    iput p1, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->k:I

    .line 321
    return-void
.end method

.method public setHorizontalSpace(I)V
    .locals 1
    .param p1, "space"    # I

    .prologue
    .line 470
    if-gtz p1, :cond_1

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    iget v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->n:I

    if-nez v0, :cond_0

    .line 476
    iput p1, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->n:I

    goto :goto_0
.end method

.method public setIsEditMode(Z)V
    .locals 0
    .param p1, "isEditMode"    # Z

    .prologue
    .line 844
    iput-boolean p1, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->p:Z

    .line 845
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->setIsExpend(Z)V

    .line 846
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "lablel"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->l:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setOnBeforeTextChangeListener(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$c;)V
    .locals 0
    .param p1, "onBeforeTextChangeListener"    # Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$c;

    .prologue
    .line 835
    iput-object p1, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->m:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$c;

    .line 836
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 121
    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnFocusChangeListener;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->s:Landroid/view/View$OnFocusChangeListener;

    .line 302
    return-void
.end method

.method public setOnReciepientAddListener(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$a;)V
    .locals 0
    .param p1, "l"    # Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$a;

    .prologue
    .line 858
    iput-object p1, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->q:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$a;

    .line 859
    return-void
.end method

.method public setOnReciepientChangedListener(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$b;)V
    .locals 0
    .param p1, "l"    # Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$b;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->x:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$b;

    .line 290
    return-void
.end method

.method public setReciepientEditorFocusListener(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$e;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$e;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->y:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$e;

    .line 297
    return-void
.end method

.method public setSelectedIndex(I)V
    .locals 8
    .param p1, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v7, -0x1

    .line 565
    iget-object v5, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt p1, v5, :cond_0

    .line 566
    invoke-virtual {p0, v7}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->setSelectedIndex(I)V

    .line 598
    :goto_0
    return-void

    .line 4601
    :cond_0
    iget-object v5, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt p1, v5, :cond_1

    .line 4602
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "index can not be greater than addresses size, index = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", address size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->b:Ljava/util/ArrayList;

    .line 4604
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 571
    :cond_1
    iget v4, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->z:I

    .line 572
    .local v4, "oldSelectIndex":I
    iget v5, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->z:I

    iget-object v6, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->b:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v5, v6, :cond_2

    .line 573
    iput v7, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->z:I

    .line 575
    :cond_2
    if-ltz v4, :cond_3

    .line 576
    iget-object v5, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 577
    .local v2, "oldAddressModel":Lcom/alibaba/alimei/sdk/model/AddressModel;
    if-eqz v2, :cond_3

    .line 578
    iget-object v5, v2, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    .line 579
    .local v3, "oldSelectBar":Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;
    if-eqz v3, :cond_3

    .line 580
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->setAddressBarSelected(Z)V

    .line 585
    .end local v2    # "oldAddressModel":Lcom/alibaba/alimei/sdk/model/AddressModel;
    .end local v3    # "oldSelectBar":Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;
    :cond_3
    if-ltz p1, :cond_5

    .line 586
    iget-object v5, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 587
    .local v0, "currentAddressModel":Lcom/alibaba/alimei/sdk/model/AddressModel;
    if-eqz v0, :cond_5

    .line 588
    iget-object v5, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    .line 589
    .local v1, "currentSelectBar":Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;
    if-eqz v1, :cond_5

    .line 590
    iget-object v5, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->c:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$d;

    if-eqz v5, :cond_4

    .line 591
    iget-object v5, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->c:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$d;

    invoke-interface {v5}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$d;->a()V

    .line 593
    :cond_4
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->setAddressBarSelected(Z)V

    .line 597
    .end local v0    # "currentAddressModel":Lcom/alibaba/alimei/sdk/model/AddressModel;
    .end local v1    # "currentSelectBar":Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;
    :cond_5
    iput p1, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->z:I

    goto :goto_0
.end method

.method public setVerticalSpace(I)V
    .locals 1
    .param p1, "space"    # I

    .prologue
    .line 480
    if-gtz p1, :cond_1

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    iget v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->o:I

    if-nez v0, :cond_0

    .line 486
    iput p1, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->o:I

    goto :goto_0
.end method
