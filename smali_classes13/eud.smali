.class public final Leud;
.super Lete;
.source "SuggestionGuideSearchViewHolder.java"


# instance fields
.field public e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "layoutId"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lete;-><init>(Landroid/app/Activity;I)V

    .line 33
    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 38
    if-nez p1, :cond_0

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    sget v0, Lemt$e;->tv_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leud;->e:Landroid/widget/TextView;

    .line 43
    sget v0, Lemt$e;->divider_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Leud;->b:Landroid/view/View;

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/search/model/BaseModel;Landroid/widget/AbsListView;)V
    .locals 3
    .param p1, "model"    # Lcom/alibaba/android/search/model/BaseModel;
    .param p2, "parent"    # Landroid/widget/AbsListView;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 48
    instance-of v1, p1, Lcom/alibaba/android/search/model/SuggestionGuideModel;

    if-eqz v1, :cond_0

    .line 49
    check-cast p1, Lcom/alibaba/android/search/model/SuggestionGuideModel;

    .end local p1    # "model":Lcom/alibaba/android/search/model/BaseModel;
    invoke-virtual {p1}, Lcom/alibaba/android/search/model/SuggestionGuideModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "title":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    iget-object v1, p0, Leud;->e:Landroid/widget/TextView;

    sget v2, Lemt$g;->search_mail_no_subject:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 56
    .end local v0    # "title":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 53
    .restart local v0    # "title":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Leud;->e:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Leud;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0
.end method
