.class final Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity$2;
.super Ljava/lang/Object;
.source "SecretChatIconSettingActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity$2;->a:Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-nez p3, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity$2;->a:Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;

    invoke-static {v3, p3}, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->a(Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;I)I

    .line 181
    iget-object v3, p0, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity$2;->a:Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->a(Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity$2;->a:Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->b(Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;)I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 182
    iget-object v3, p0, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity$2;->a:Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->c(Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;)Landroid/widget/ListView;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity$2;->a:Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->b(Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    sget v4, Lezg$h;->click_img:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 183
    .local v2, "oldClickImg":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 184
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 186
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity$2;->a:Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->c(Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;)Landroid/widget/ListView;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity$2;->a:Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->a(Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    sget v4, Lezg$h;->click_img:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 187
    .local v1, "newClickImg":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 188
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 190
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity$2;->a:Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;

    iget-object v4, p0, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity$2;->a:Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->a(Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->b(Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;I)I

    .line 192
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v3

    const-string/jumbo v4, "dt_secret_chat"

    const-string/jumbo v5, "secret_chat_icon"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity$2;->a:Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;

    invoke-static {v7}, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->a(Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->ALL:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcmt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;)V

    .line 193
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "secret_icon_update"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity$2;->a:Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;

    invoke-static {v3}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v3

    invoke-virtual {v3, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 195
    iget-object v3, p0, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity$2;->a:Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;

    iget-object v4, p0, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity$2;->a:Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->a(Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->c(Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;I)V

    goto/16 :goto_0
.end method
