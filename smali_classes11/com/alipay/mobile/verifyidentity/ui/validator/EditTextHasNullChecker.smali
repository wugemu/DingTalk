.class public Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;
.super Ljava/lang/Object;
.source "EditTextHasNullChecker.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/widget/CheckBox;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;->a:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;->b:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;->c:Ljava/util/Set;

    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;->d:Ljava/util/Set;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private a()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;->c:Ljava/util/Set;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 98
    :cond_0
    return-void

    .line 1101
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1102
    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;->a(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1105
    const-string/jumbo v4, ""

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    .line 95
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 96
    if-nez v1, :cond_9

    move v4, v2

    :goto_2
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 1110
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 1111
    const-string/jumbo v1, "TextViewIndex"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 1112
    const-string/jumbo v1, "TextViewIndex"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1114
    invoke-static {v1}, Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;->a(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1116
    const-string/jumbo v5, ""

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1117
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "TextViewDefalutTxt"

    .line 1118
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_5
    move v1, v2

    .line 1119
    goto :goto_0

    .line 1123
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1124
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_7

    move v1, v2

    .line 1125
    goto/16 :goto_0

    :cond_8
    move v1, v3

    .line 1129
    goto/16 :goto_0

    :cond_9
    move v4, v3

    .line 96
    goto/16 :goto_2
.end method

.method private static a(Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 133
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x1020002

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 141
    :goto_1
    return v0

    .line 136
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 137
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 138
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/TabHost;

    if-nez v0, :cond_3

    .line 139
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object p0, v0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 141
    goto :goto_1
.end method


# virtual methods
.method public addNeedCheckCheckBox(Landroid/widget/CheckBox;)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;->a()V

    .line 45
    return-void
.end method

.method public addNeedCheckTextView(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 36
    const-string/jumbo v1, "TextViewIndex"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string/jumbo v1, "TextViewDefalutTxt"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;->a()V

    .line 40
    return-void
.end method

.method public addNeedCheckView(Landroid/widget/EditText;)V
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;->a()V

    .line 32
    return-void
.end method

.method public addNeedEnabledButton(Landroid/widget/Button;)V
    .locals 1

    .prologue
    .line 60
    if-eqz p1, :cond_0

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;->a()V

    .line 65
    :cond_0
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;->a()V

    .line 86
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;->a()V

    .line 150
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public removeButton(Landroid/widget/Button;)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method

.method public removeNeedCheckView(Landroid/widget/EditText;)V
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 53
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;->a()V

    .line 54
    return-void
.end method
