.class public final Lfva;
.super Lcom/alibaba/android/user/service/SearchNameCenter;
.source "SearchProfessionCenterForRegister.java"


# instance fields
.field public a:[Ljava/lang/String;

.field public b:Landroid/view/View;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:I

.field public h:I

.field public i:I

.field public j:Z


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V
    .locals 6
    .param p1, "professionView"    # Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;
    .param p2, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/user/service/SearchNameCenter;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    .line 33
    iput v1, p0, Lfva;->g:I

    .line 34
    iput v1, p0, Lfva;->h:I

    .line 35
    const/4 v0, 0x6

    iput v0, p0, Lfva;->i:I

    .line 37
    iput-boolean v1, p0, Lfva;->j:Z

    .line 1047
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lezg$c;->educations_items:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfva;->a:[Ljava/lang/String;

    .line 1048
    iget-object v0, p0, Lfva;->a:[Ljava/lang/String;

    array-length v0, v0

    if-le v0, v4, :cond_0

    .line 1049
    iput v4, p0, Lfva;->g:I

    .line 1054
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1055
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-long v2, v1

    .line 1056
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    .line 1057
    const-wide/16 v4, 0x6

    cmp-long v0, v0, v4

    if-gtz v0, :cond_1

    .line 1058
    long-to-int v0, v2

    iput v0, p0, Lfva;->h:I

    :goto_0
    return-void

    .line 1060
    :cond_1
    const-wide/16 v0, 0x1

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lfva;->h:I

    goto :goto_0
.end method

.method static synthetic a(Lfva;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .locals 1
    .param p0, "x0"    # Lfva;

    .prologue
    .line 24
    iget-object v0, p0, Lfva;->k:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    return-object v0
.end method

.method static synthetic b(Lfva;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .locals 1
    .param p0, "x0"    # Lfva;

    .prologue
    .line 24
    iget-object v0, p0, Lfva;->k:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    return-object v0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-object v0, p0, Lfva;->l:Lfwa$a;

    if-nez v0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lfva;->l:Lfwa$a;

    invoke-interface {v0, p1}, Lfwa$a;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 151
    iget-boolean v1, p0, Lfva;->j:Z

    if-nez v1, :cond_1

    .line 163
    :cond_0
    :goto_0
    return v0

    .line 154
    :cond_1
    iget-object v1, p0, Lfva;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lfva;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 157
    :cond_2
    iget-object v1, p0, Lfva;->e:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lfva;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    :cond_3
    iget-object v1, p0, Lfva;->f:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lfva;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method
