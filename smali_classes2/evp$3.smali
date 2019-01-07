.class final Levp$3;
.super Ljava/lang/Object;
.source "TeleVideoMemberListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Levp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Levp;


# direct methods
.method constructor <init>(Levp;)V
    .locals 0
    .param p1, "this$0"    # Levp;

    .prologue
    .line 175
    iput-object p1, p0, Levp$3;->a:Levp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 178
    invoke-static {}, Levp;->b()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "Mute all members"

    invoke-static {v3, v6}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-static {}, Levm;->a()Levm;

    move-result-object v3

    .line 1118
    iget-boolean v1, v3, Levm;->c:Z

    .line 180
    .local v1, "beMuted":Z
    iget-object v3, p0, Levp$3;->a:Levp;

    invoke-static {v3}, Levp;->c(Levp;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 181
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 182
    .local v0, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "muted"

    if-nez v1, :cond_1

    move v3, v4

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v6, "videoconf_conf_memlist_muteall_click"

    invoke-interface {v3, v6, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 186
    iget-object v3, p0, Levp$3;->a:Levp;

    invoke-static {v3}, Levp;->c(Levp;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    move-result-object v6

    if-nez v1, :cond_2

    move v3, v4

    :goto_1
    invoke-interface {v6, v3}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->d(Z)V

    .line 187
    invoke-static {}, Levm;->a()Levm;

    move-result-object v3

    if-nez v1, :cond_3

    .line 1126
    :goto_2
    iput-boolean v4, v3, Levm;->c:Z

    .line 190
    .end local v0    # "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-static {}, Levm;->a()Levm;

    move-result-object v3

    .line 2118
    iget-boolean v3, v3, Levm;->c:Z

    .line 190
    if-eqz v3, :cond_4

    .line 191
    iget-object v3, p0, Levp$3;->a:Levp;

    invoke-static {v3}, Levp;->d(Levp;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Leuj$l;->dt_conf_video_unmute_all:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, "muteTxt":Ljava/lang/String;
    iget-object v3, p0, Levp$3;->a:Levp;

    invoke-static {v3}, Levp;->e(Levp;)Landroid/widget/Button;

    move-result-object v3

    sget v4, Leuj$h;->conf_btn_bg_blue:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 193
    iget-object v3, p0, Levp$3;->a:Levp;

    invoke-static {v3}, Levp;->e(Levp;)Landroid/widget/Button;

    move-result-object v3

    iget-object v4, p0, Levp$3;->a:Levp;

    invoke-static {v4}, Levp;->d(Levp;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Leuj$f;->pure_white:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 199
    :goto_3
    iget-object v3, p0, Levp$3;->a:Levp;

    invoke-static {v3}, Levp;->e(Levp;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 200
    return-void

    .end local v2    # "muteTxt":Ljava/lang/String;
    .restart local v0    # "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    move v3, v5

    .line 182
    goto :goto_0

    :cond_2
    move v3, v5

    .line 186
    goto :goto_1

    :cond_3
    move v4, v5

    .line 187
    goto :goto_2

    .line 195
    .end local v0    # "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    iget-object v3, p0, Levp$3;->a:Levp;

    invoke-static {v3}, Levp;->d(Levp;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Leuj$l;->conf_txt_mute_everyone:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 196
    .restart local v2    # "muteTxt":Ljava/lang/String;
    iget-object v3, p0, Levp$3;->a:Levp;

    invoke-static {v3}, Levp;->e(Levp;)Landroid/widget/Button;

    move-result-object v3

    sget v4, Leuj$h;->conf_btn_blue_stroke_bg:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 197
    iget-object v3, p0, Levp$3;->a:Levp;

    invoke-static {v3}, Levp;->e(Levp;)Landroid/widget/Button;

    move-result-object v3

    iget-object v4, p0, Levp$3;->a:Levp;

    invoke-static {v4}, Levp;->d(Levp;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Leuj$f;->ui_common_theme_bg_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_3
.end method
