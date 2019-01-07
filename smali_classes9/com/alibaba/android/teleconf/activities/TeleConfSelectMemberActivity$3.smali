.class final Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$3;
.super Ljava/lang/Object;
.source "TeleConfSelectMemberActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 199
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
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
    .line 202
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;)Leum;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;)Leum;

    move-result-object v0

    invoke-virtual {v0}, Leum;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;)Leum;

    move-result-object v0

    invoke-virtual {v0, p3}, Leum;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;

    .line 206
    .local v9, "userObject":Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;
    if-eqz v9, :cond_0

    .line 207
    sget-object v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->ExtraTailType:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    iget-object v1, v9, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->b:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    if-ne v0, v1, :cond_3

    .line 208
    iget-boolean v6, v9, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->c:Z

    .line 209
    .local v6, "deleteState":Z
    if-eqz v6, :cond_2

    .line 210
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;)Leum;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;)Leum;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Leum;->d(Z)V

    goto :goto_0

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;)Leum;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;)Leum;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Leum;->c(Z)V

    goto :goto_0

    .line 218
    .end local v6    # "deleteState":Z
    :cond_3
    sget-object v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->TailType:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    iget-object v1, v9, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->b:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    if-ne v0, v1, :cond_8

    .line 220
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;)Leum;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 221
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;)Leum;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Leum;->d(Z)V

    .line 223
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->e(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->e(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 224
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->e(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 226
    :cond_5
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->c(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;)I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 227
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    .line 228
    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->f(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;)I

    move-result v2

    .line 229
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Leuj$l;->dt_conference_make_call:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Leuj$l;->conference_choose_limit:I

    const/4 v5, 0x0

    .line 227
    invoke-static/range {v0 .. v5}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;IILjava/lang/String;ILjava/lang/String;)V

    .line 239
    :cond_6
    :goto_1
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Add member on preview panel."

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 232
    :cond_7
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->c(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;)I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 233
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    .line 234
    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->f(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;)I

    move-result v2

    .line 235
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Leuj$l;->dt_conference_make_call:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Leuj$l;->conference_choose_limit:I

    const/4 v5, 0x0

    .line 233
    invoke-static/range {v0 .. v5}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;IILjava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 241
    :cond_8
    iget-object v7, v9, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    check-cast v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 242
    .local v7, "identityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v7, :cond_0

    .line 243
    iget-boolean v0, v9, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->c:Z

    if-eqz v0, :cond_0

    .line 244
    iget-wide v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 246
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Leuj$l;->conf_txt_video_delete_self_tip:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 247
    .local v8, "toast":Ljava/lang/String;
    invoke-static {v8}, Lcms;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 250
    .end local v8    # "toast":Ljava/lang/String;
    :cond_9
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 251
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;Ljava/util/List;)V

    .line 254
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 255
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method
