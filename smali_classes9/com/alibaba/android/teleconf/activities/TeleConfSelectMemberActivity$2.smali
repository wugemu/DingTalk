.class final Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$2;
.super Ljava/lang/Object;
.source "TeleConfSelectMemberActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 166
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v3, :cond_1

    .line 167
    :cond_0
    sget v0, Leuj$l;->conf_txt_conference_members_empty_error:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 195
    :goto_0
    return-void

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;)Leum;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 174
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;)Leum;

    move-result-object v0

    invoke-virtual {v0, v3}, Leum;->d(Z)V

    .line 175
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;)Leum;

    move-result-object v0

    invoke-virtual {v0, v3}, Leum;->b(Z)V

    .line 176
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;)Leum;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Leum;->a(Z)V

    .line 179
    :cond_2
    invoke-static {v4}, Lcms;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 180
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Net is error."

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    invoke-static {v0}, Lewb;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 184
    :cond_3
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Start conference call"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->c(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;)I

    move-result v0

    if-ne v3, v0, :cond_5

    .line 186
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;Ljava/util/List;)V

    .line 194
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->finish()V

    goto :goto_0

    .line 187
    :cond_5
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->c(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;)I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 188
    const/16 v0, 0x16

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->d(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;)I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 189
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;

    invoke-static {v1, v0, v4}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V

    goto :goto_1

    .line 190
    :cond_6
    const/16 v0, 0x15

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->d(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;)I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 191
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;

    invoke-static {v1, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;)V

    goto :goto_1
.end method
