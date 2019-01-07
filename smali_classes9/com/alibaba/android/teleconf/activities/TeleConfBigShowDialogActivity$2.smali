.class final Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity$2;
.super Ljava/lang/Object;
.source "TeleConfBigShowDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v9, 0x0

    .line 123
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;)Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 124
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;)Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;

    move-result-object v5

    iget v5, v5, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;->type:I

    sget-object v6, Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;->TYPE_ADD_EXTERNAL:Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;

    invoke-virtual {v6}, Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;->valueOf()I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 126
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;)Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;

    move-result-object v5

    iget-object v5, v5, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;->extension:Ljava/util/Map;

    if-eqz v5, :cond_0

    .line 127
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;)Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;

    move-result-object v5

    iget-object v5, v5, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;->extension:Ljava/util/Map;

    const-string/jumbo v6, "orgId"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 128
    .local v2, "orgId":Ljava/lang/String;
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;)Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;

    move-result-object v5

    iget-object v5, v5, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;->extension:Ljava/util/Map;

    const-string/jumbo v6, "name"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 129
    .local v0, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v8, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;

    invoke-static {v8}, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;)Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;

    move-result-object v8

    iget-object v8, v8, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;->phoneNum:Ljava/lang/String;

    invoke-static {v5, v6, v7, v8, v0}, Lewb;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v5

    const-string/jumbo v6, "phone_extracontact_pop_add_click"

    invoke-interface {v5, v6}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 164
    .end local v0    # "name":Ljava/lang/String;
    .end local v2    # "orgId":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;

    invoke-virtual {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->finish()V

    .line 165
    return-void

    .line 132
    :cond_1
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;)Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;

    move-result-object v5

    iget v5, v5, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;->type:I

    sget-object v6, Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;->TYPE_OPEN_BIZCALL:Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;

    invoke-virtual {v6}, Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;->valueOf()I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 134
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;)Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;->getJumpUrl()Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "openUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 136
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, v1, v9}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v5

    const-string/jumbo v6, "auth_pop_servicephone_choice_click"

    invoke-interface {v5, v6}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    .end local v1    # "openUrl":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;)Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;

    move-result-object v5

    iget v5, v5, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;->type:I

    sget-object v6, Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;->TYPE_GENERAL_URL_JUMP:Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;

    invoke-virtual {v6}, Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;->valueOf()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 141
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;)Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;->getJumpUrl()Ljava/lang/String;

    move-result-object v1

    .line 142
    .restart local v1    # "openUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 143
    invoke-static {v1}, Levh;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 144
    const-string/jumbo v5, "NAVIGATOR"

    invoke-static {v5}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;)Landroid/content/Context;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v5

    new-instance v6, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity$2$1;

    invoke-direct {v6, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity$2$1;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity$2;)V

    invoke-interface {v5, v1, v6}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 155
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;)Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;->getStatistic()Ljava/lang/String;

    move-result-object v4

    .line 156
    .local v4, "subType":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 157
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;)Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;->getStatistic()Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, "statistic":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 159
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "_ok"

    aput-object v8, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v9, v6, v9}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 152
    .end local v3    # "statistic":Ljava/lang/String;
    .end local v4    # "subType":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, v1, v9}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
