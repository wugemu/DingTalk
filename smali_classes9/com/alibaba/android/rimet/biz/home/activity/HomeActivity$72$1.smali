.class final Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72$1;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72;

    .prologue
    .line 4194
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72$1;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;)V
    .locals 7
    .param p1, "orgMicroAPPObject"    # Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 4197
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72$1;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72;

    iget-object v2, v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->T(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72$1;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72;

    iget-object v2, v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->v(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lecw;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4198
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72$1;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72;

    iget-object v2, v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->T(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72$1;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72;

    iget-object v3, v3, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->v(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lecw;

    move-result-object v3

    invoke-virtual {v2, v4, v4, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4201
    :cond_0
    if-nez p1, :cond_2

    .line 4211
    :cond_1
    :goto_0
    return-void

    .line 4205
    :cond_2
    iget-wide v0, p1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    .line 4206
    .local v0, "orgId":J
    const-string/jumbo v2, "oa"

    const-string/jumbo v3, ""

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "switchOA showWorkDropdownMenu orgId "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4207
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72$1;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72;

    iget-object v2, v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v2, v0, v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;J)V

    .line 4208
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72$1;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72;

    iget-object v2, v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->l(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4209
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72$1;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72;

    iget-object v2, v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->l(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/oa/fragment/OAFragment;

    invoke-virtual {v2}, Lcom/alibaba/android/oa/fragment/OAFragment;->g()V

    goto :goto_0
.end method

.method public final a(Lgts;)V
    .locals 6
    .param p1, "orgMicroAPPObjectWrapper"    # Lgts;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 4215
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72$1;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72;

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->T(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72$1;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72;

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->v(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lecw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4216
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72$1;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72;

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->T(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72$1;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72;

    iget-object v1, v1, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->v(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lecw;

    move-result-object v1

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4219
    :cond_0
    if-nez p1, :cond_2

    .line 4227
    :cond_1
    :goto_0
    return-void

    .line 4222
    :cond_2
    const-string/jumbo v0, "oa"

    const-string/jumbo v1, ""

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "switchWorkTab showWorkDropdownMenu orgId "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lgts;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4223
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72$1;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72;

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Lgts;)V

    .line 4224
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72$1;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72;

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->l(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4225
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72$1;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72;

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->l(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/oa/fragment/OAFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/oa/fragment/OAFragment;->g()V

    goto :goto_0
.end method
