.class final Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$a;
.super Landroid/widget/BaseAdapter;
.source "FirstCreateTeamTipDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;

    .prologue
    .line 302
    .local p0, "this":Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$a;, "Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog<TT;>.a;"
    iput-object p1, p0, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$a;->a:Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 306
    .local p0, "this":Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$a;, "Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog<TT;>.a;"
    iget-object v0, p0, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$a;->a:Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;

    invoke-static {v0}, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;->b(Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 311
    .local p0, "this":Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$a;, "Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog<TT;>.a;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 316
    .local p0, "this":Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$a;, "Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog<TT;>.a;"
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 321
    .local p0, "this":Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$a;, "Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog<TT;>.a;"
    if-nez p2, :cond_0

    .line 323
    iget-object v0, p0, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$a;->a:Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;

    invoke-static {v0}, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;->d(Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;)Landroid/content/Context;

    move-result-object v0

    sget v1, Ledz$g;->first_create_dialog_grid_item_layout:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$a;->a:Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;

    invoke-static {v0}, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;->c(Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$a;->a:Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;

    invoke-static {v0}, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;->d(Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 333
    :goto_0
    return-object p2

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$a;->a:Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;

    invoke-static {v0}, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;->d(Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Ledz$c;->first_create_team_tips_bg_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method
