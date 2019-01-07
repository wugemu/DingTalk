.class public Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;
.super Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/ToolPropertyPanel;
.source "InsertLinkPropertyPanel.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

.field public d:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

.field private e:Landroid/text/TextWatcher;

.field private f:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/ToolPropertyPanel;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lbqt$e;->insert_link_popup_panel_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 52
    sget v0, Lbqt$d;->insert_link_title_et:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 53
    sget v0, Lbqt$d;->insert_link_address_et:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 55
    new-instance v0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel$1;-><init>(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;->f:Landroid/text/TextWatcher;

    .line 69
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;->f:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 71
    new-instance v0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel$2;-><init>(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;->e:Landroid/text/TextWatcher;

    .line 85
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;->e:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 86
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;->b:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 155
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;->f:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;->e:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 160
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 162
    :cond_1
    return-void
.end method

.method public final a(Lbqy;)V
    .locals 1
    .param p1, "toolDescriptor"    # Lbqy;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->requestFocus()Z

    .line 151
    :cond_0
    return-void
.end method

.method public getEditTextFocusView()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    return-object v0
.end method

.method public getInsertLinkResult()Lorg/json/JSONObject;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 117
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 138
    :goto_0
    return-object v1

    .line 122
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 123
    .local v1, "jsonObj":Lorg/json/JSONObject;
    const-string/jumbo v3, "text"

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;->b:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    const-string/jumbo v3, "link"

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;->a:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    if-eqz v3, :cond_1

    .line 127
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 129
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    if-eqz v3, :cond_2

    .line 130
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :cond_2
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;->a:Ljava/lang/String;

    .line 133
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;->b:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v1, v2

    .line 138
    goto :goto_0
.end method
