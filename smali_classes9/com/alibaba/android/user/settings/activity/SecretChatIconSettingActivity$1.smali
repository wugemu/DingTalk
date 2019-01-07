.class final Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity$1;
.super Landroid/widget/SimpleAdapter;
.source "SecretChatIconSettingActivity.java"


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
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 6
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;
    .param p2, "x0"    # Landroid/content/Context;
    .param p4, "x2"    # I
    .param p5, "x3"    # [Ljava/lang/String;
    .param p6, "x4"    # [I

    .prologue
    .line 157
    .local p3, "x1":Ljava/util/List;, "Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity$1;->a:Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 160
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 162
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    sget v1, Lezg$h;->click_img:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 163
    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity$1;->a:Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->a(Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 164
    sget v1, Lezg$h;->click_img:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 169
    :cond_0
    :goto_0
    return-object v0

    .line 166
    :cond_1
    sget v1, Lezg$h;->click_img:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
