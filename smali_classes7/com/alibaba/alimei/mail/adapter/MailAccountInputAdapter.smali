.class public Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;
.super Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;
.source "MailAccountInputAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter$b;,
        Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter$b;

.field private b:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;-><init>(Landroid/content/Context;)V

    .line 42
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "qq.com"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "163.com"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "126.com"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "189.cn"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "139.com"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "sina.com"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "foxmail.com"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "gmail.com"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "outlook.com"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "hotmail.com"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;->b:[Ljava/lang/String;

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;->d:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 39
    .line 1148
    iget-object v0, p0, Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;->d:Ljava/util/List;

    .line 1152
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1154
    iget-object v3, p0, Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;->b:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_4

    aget-object v5, v3, v1

    .line 1155
    const-string/jumbo v0, ""

    .line 1156
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1157
    :cond_1
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v2

    const/4 v6, 0x1

    const-string/jumbo v7, "@"

    aput-object v7, v0, v6

    const/4 v6, 0x2

    aput-object v5, v0, v6

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1160
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1161
    iget-object v5, p0, Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;->d:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1154
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 39
    :cond_4
    return-void
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;->d:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;->a:Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter$b;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter$b;

    invoke-direct {v0, p0, p0}, Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter$b;-><init>(Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;->a:Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter$b;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;->a:Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter$b;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 56
    if-nez p2, :cond_0

    .line 57
    new-instance v1, Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter$a;-><init>(Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;B)V

    .line 58
    .local v1, "viewHolder":Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter$a;
    iget-object v2, p0, Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;->e:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Laxo$g;->alm_cmail_account_input_filter_item_layout:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 59
    sget v2, Laxo$f;->tv_text:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter$a;->a:Landroid/widget/TextView;

    .line 60
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 65
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 67
    .local v0, "recommendedAccount":Ljava/lang/String;
    iget-object v2, v1, Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter$a;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    return-object p2

    .line 62
    .end local v0    # "recommendedAccount":Ljava/lang/String;
    .end local v1    # "viewHolder":Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter$a;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter$a;

    .restart local v1    # "viewHolder":Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter$a;
    goto :goto_0
.end method
