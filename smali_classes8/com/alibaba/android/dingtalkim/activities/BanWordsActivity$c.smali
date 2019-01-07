.class final Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$c;
.super Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$f;
.source "BanWordsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Landroid/widget/ToggleButton;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;)V
    .locals 2

    .prologue
    .line 868
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$c;->b:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    .line 869
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$f;-><init>(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;)V

    .line 870
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$c;->c:Landroid/view/View;

    sget v1, Lctk$f;->toggle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$c;->a:Landroid/widget/ToggleButton;

    .line 871
    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    .prologue
    .line 888
    sget v0, Lctk$g;->activity_ban_words_list_item_all_ban:I

    return v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 875
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$c;->b:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->d(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 876
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$c;->a:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$c;->b:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->d(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->isBanWords()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 878
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$c;->a:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$c$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$c$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 884
    return-void
.end method
