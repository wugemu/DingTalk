.class public Lcom/alibaba/android/user/widget/GroupLabelView;
.super Landroid/widget/LinearLayout;
.source "GroupLabelView.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/user/widget/GroupLabelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/user/widget/GroupLabelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1038
    sget v0, Lezg$g;->cell_click_selector:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/widget/GroupLabelView;->setBackgroundResource(I)V

    .line 1039
    invoke-virtual {p0, v5}, Lcom/alibaba/android/user/widget/GroupLabelView;->setOrientation(I)V

    .line 1040
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->layout_group_label:I

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1042
    sget v0, Lezg$h;->tv_auth_label:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/widget/GroupLabelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1043
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 1044
    new-array v1, v6, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alibaba/android/user/widget/GroupLabelView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lezg$l;->dt_contact_subManager_permission:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string/jumbo v2, ": "

    aput-object v2, v1, v4

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1045
    sget v0, Lezg$h;->tv_scope_label:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/widget/GroupLabelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1046
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 1047
    new-array v1, v6, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alibaba/android/user/widget/GroupLabelView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lezg$l;->dt_contact_subManager_scope:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string/jumbo v2, ": "

    aput-object v2, v1, v4

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1048
    sget v0, Lezg$h;->tv_manager_roles:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/widget/GroupLabelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/widget/GroupLabelView;->a:Landroid/widget/TextView;

    .line 1049
    sget v0, Lezg$h;->tv_scope_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/widget/GroupLabelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/widget/GroupLabelView;->b:Landroid/widget/TextView;

    .line 1050
    sget v0, Lezg$h;->tv_grant_resource:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/widget/GroupLabelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/widget/GroupLabelView;->c:Landroid/widget/TextView;

    .line 35
    return-void
.end method


# virtual methods
.method public setGrantResource(Ljava/lang/String;)V
    .locals 1
    .param p1, "auth"    # Ljava/lang/String;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alibaba/android/user/widget/GroupLabelView;->c:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 78
    :cond_0
    if-nez p1, :cond_1

    .line 79
    const-string/jumbo p1, ""

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/widget/GroupLabelView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setRoles(Ljava/lang/String;)V
    .locals 1
    .param p1, "roles"    # Ljava/lang/String;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/android/user/widget/GroupLabelView;->a:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 61
    :goto_0
    return-void

    .line 57
    :cond_0
    if-nez p1, :cond_1

    .line 58
    const-string/jumbo p1, ""

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/widget/GroupLabelView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setScope(Ljava/lang/String;)V
    .locals 1
    .param p1, "scope"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/android/user/widget/GroupLabelView;->b:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 67
    :cond_0
    if-nez p1, :cond_1

    .line 68
    const-string/jumbo p1, ""

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/widget/GroupLabelView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
