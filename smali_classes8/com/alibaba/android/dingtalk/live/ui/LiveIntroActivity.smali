.class public Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "LiveIntroActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity$b;,
        Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity$c;,
        Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 155
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 66
    .local v1, "id":I
    sget v2, Lbtp$e;->btn_action:I

    if-ne v1, v2, :cond_0

    .line 67
    new-instance v0, Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity$1;-><init>(Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity;)V

    .line 85
    .local v0, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v2, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 86
    .restart local v0    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    const-string/jumbo v2, "intro_displayed"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lbyp;->a(Ljava/lang/String;Z)V

    .line 87
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity;->a:Ljava/lang/String;

    invoke-static {p0, v2, v0}, Lbyq;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 89
    .end local v0    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 36
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    sget v0, Lbtp$f;->activity_live_intro:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity;->setContentView(I)V

    .line 1043
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "cid"

    invoke-static {v0, v1}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity;->a:Ljava/lang/String;

    .line 1047
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1048
    new-instance v1, Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity$b;

    sget v2, Lbtp$d;->guide_icon1:I

    sget v3, Lbtp$g;->dt_lv_start_guide_title_1:I

    sget v4, Lbtp$g;->dt_lv_start_guide_desc_1:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity$b;-><init>(IIIB)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1050
    new-instance v1, Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity$b;

    sget v2, Lbtp$d;->guide_icon2:I

    sget v3, Lbtp$g;->dt_lv_start_guide_title_2:I

    sget v4, Lbtp$g;->dt_lv_start_guide_desc_2:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity$b;-><init>(IIIB)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1052
    new-instance v1, Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity$b;

    sget v2, Lbtp$d;->guide_icon3:I

    sget v3, Lbtp$g;->dt_lv_start_guide_title_3:I

    sget v4, Lbtp$g;->dt_lv_start_guide_desc_3:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity$b;-><init>(IIIB)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1054
    new-instance v1, Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity$a;

    invoke-direct {v1, p0, v5}, Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity$a;-><init>(Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity;B)V

    .line 1055
    invoke-static {v1, v0}, Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity$a;->a(Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity$a;Ljava/util/List;)V

    .line 1056
    sget v0, Lbtp$e;->list_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 1057
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1059
    sget v0, Lbtp$e;->btn_action:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    return-void
.end method
