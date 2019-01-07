.class final Lcom/alibaba/android/ding/activity/EventSelectRemindActivity$a;
.super Ljava/lang/Object;
.source "EventSelectRemindActivity.java"

# interfaces
.implements Lbay$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity$a;->a:Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity$a;-><init>(Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity$a;->a:Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;

    return-object v0
.end method

.method public final a(ILjava/util/List;)V
    .locals 2
    .param p1, "remindModeIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 89
    .line 1084
    .local p2, "desResIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity$a;->a:Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 89
    if-nez v0, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity$a;->a:Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;->a(Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;)Lcom/alibaba/android/dingtalkbase/BaseSelectView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity$a;->a:Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;->a(Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;)Lcom/alibaba/android/dingtalkbase/BaseSelectView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p1, v1}, Lcom/alibaba/android/dingtalkbase/BaseSelectView;->a(Ljava/util/List;IZ)V

    goto :goto_0
.end method

.method public final a(IZ)V
    .locals 2
    .param p1, "remindModeTypeValue"    # I
    .param p2, "show"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 99
    .line 2084
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity$a;->a:Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 99
    if-nez v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity$a;->a:Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;->b(Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;)Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity$a;->a:Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;->b(Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;)Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    move-result-object v0

    invoke-static {p1}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->fromValue(I)Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->setRemindType(Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;)V

    .line 105
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity$a;->a:Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;->b(Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;)Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->a()V

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity$a;->a:Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;->c(Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public final a(J)V
    .locals 3
    .param p1, "timeStamp"    # J

    .prologue
    .line 135
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity$a;->a:Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;->a(Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;)Lcom/alibaba/android/dingtalkbase/BaseSelectView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity$a;->a:Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;

    .line 136
    invoke-static {v1}, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;->b(Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;)Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity$a;->a:Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;

    .line 137
    invoke-static {v1}, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;->b(Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;)Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->getRemindType()Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 138
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.ding.choose.event.remind.mode"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "intent_key_remind_mode_index"

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity$a;->a:Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;->a(Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;)Lcom/alibaba/android/dingtalkbase/BaseSelectView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/BaseSelectView;->getSelectIndex()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    const-string/jumbo v1, "intent_key_remind_type_value"

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity$a;->a:Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;->b(Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;)Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->getRemindType()Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    const-string/jumbo v1, "intent_key_menu_seed"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 142
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity$a;->a:Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 144
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 126
    .line 4084
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity$a;->a:Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 126
    if-nez v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity$a;->a:Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 2
    .param p1, "isDisable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 113
    .line 3084
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity$a;->a:Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 113
    if-nez v0, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity$a;->a:Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;->b(Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;)Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity$a;->a:Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;->b(Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;)Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->setIsDisable(Z)V

    .line 118
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity$a;->a:Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;->b(Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;)Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->setSelectedNum(I)V

    .line 119
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity$a;->a:Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;->b(Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;)Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->a()V

    goto :goto_0
.end method
