.class public Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;
.super Landroid/widget/LinearLayout;
.source "SingleAddressBar.java"


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Lcom/alibaba/alimei/sdk/model/AddressModel;

.field public c:Ljava/lang/String;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 28
    iput-boolean v1, p0, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->d:Z

    .line 30
    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->c:Ljava/lang/String;

    .line 45
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->setOrientation(I)V

    .line 46
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->setGravity(I)V

    .line 47
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->a(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->d:Z

    .line 30
    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->c:Ljava/lang/String;

    .line 40
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->a(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->d:Z

    .line 30
    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->c:Ljava/lang/String;

    .line 35
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->a(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 51
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Laxo$g;->alm_cmail_widget_mail_address_bar:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 52
    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->setClickable(Z)V

    .line 53
    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->setLongClickable(Z)V

    .line 54
    const v0, 0x1020014

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->a:Landroid/widget/TextView;

    .line 55
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->e:Z

    .line 155
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->a:Landroid/widget/TextView;

    const v1, 0x33333333

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 158
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 166
    invoke-static {p1}, Lair;->o(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 167
    invoke-static {}, Lafc;->a()Lafc;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->c:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lafc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 169
    .local v0, "isInTheSameCompany":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Laxo$c;->alm_widget_address_text_normal_selector:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 171
    iget-object v1, p0, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->a:Landroid/widget/TextView;

    sget v2, Laxo$e;->alm_widget_address_bg_normal_selector:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 182
    .end local v0    # "isInTheSameCompany":Ljava/lang/Boolean;
    :goto_0
    return-void

    .line 174
    .restart local v0    # "isInTheSameCompany":Ljava/lang/Boolean;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Laxo$c;->alm_widget_address_text_out_org_selector:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 175
    iget-object v1, p0, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->a:Landroid/widget/TextView;

    sget v2, Laxo$e;->alm_widget_address_bg_out_org_selector:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 179
    .end local v0    # "isInTheSameCompany":Ljava/lang/Boolean;
    :cond_2
    iget-object v1, p0, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Laxo$c;->alm_widget_address_text_invalid_selector:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 180
    iget-object v1, p0, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->a:Landroid/widget/TextView;

    sget v2, Laxo$e;->alm_widget_address_bg_invalid_selector:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public getAddressModel()Lcom/alibaba/alimei/sdk/model/AddressModel;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->b:Lcom/alibaba/alimei/sdk/model/AddressModel;

    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public setAddressBarSelected(Z)V
    .locals 0
    .param p1, "isSelected"    # Z

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->setSelected(Z)V

    .line 68
    return-void
.end method

.method public setAddressBarWarning(Z)V
    .locals 0
    .param p1, "isWarning"    # Z

    .prologue
    .line 77
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 148
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    :cond_0
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnLongClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 141
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 144
    :cond_0
    return-void
.end method
