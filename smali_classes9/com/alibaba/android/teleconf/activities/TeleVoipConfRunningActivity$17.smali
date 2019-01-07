.class final Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$17;
.super Ljava/lang/Object;
.source "TeleVoipConfRunningActivity.java"

# interfaces
.implements Leyo$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leyo$d",
        "<",
        "Lcom/alibaba/android/teleconf/sdk/idl/model/UserInfoCard;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    .prologue
    .line 1121
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$17;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x0

    .line 1121
    check-cast p1, Lcom/alibaba/android/teleconf/sdk/idl/model/UserInfoCard;

    .line 2124
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$17;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    .line 2125
    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2126
    :cond_0
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->h()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Get user card info no show"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2127
    :goto_0
    return-void

    .line 2129
    :cond_1
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/UserInfoCard;->orgName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2130
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$17;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->l(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2131
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$17;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->l(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/UserInfoCard;->orgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2135
    :goto_1
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/UserInfoCard;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2136
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$17;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->m(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2137
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$17;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->m(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/UserInfoCard;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2142
    :goto_2
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->h()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "User position "

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/UserInfoCard;->title:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " company "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/UserInfoCard;->orgName:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 2143
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2142
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2133
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$17;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->l(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 2139
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$17;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->m(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1148
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->h()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Get user card info "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    return-void
.end method
