.class final Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity$a;
.super Landroid/widget/BaseAdapter;
.source "LocaleSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity$a$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity$a;->b:Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 122
    iput-object p2, p0, Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity$a;->c:Landroid/content/Context;

    .line 123
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity$a;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 128
    const/4 v0, 0x0

    .line 130
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 136
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity$a;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-object v0

    .line 139
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity$a;->a:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 142
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 147
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 153
    if-nez p2, :cond_1

    .line 154
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity$a;->c:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lezg$j;->item_locale:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 155
    new-instance v0, Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity$a$a;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity$a$a;-><init>(Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity$a;)V

    .line 156
    .local v0, "holder":Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity$a$a;
    sget v2, Lezg$h;->locale_title:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity$a$a;->a:Landroid/widget/TextView;

    .line 157
    sget v2, Lezg$h;->locale_selected:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity$a$a;->b:Landroid/widget/ImageView;

    .line 158
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 162
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity$a;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 163
    .local v1, "item":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 164
    iget-object v3, v0, Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity$a$a;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity$a;->b:Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity;

    iget-object v2, v2, Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity$a;->b:Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity;

    iget-object v2, v2, Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 166
    iget-object v2, v0, Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity$a$a;->b:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 171
    :cond_0
    :goto_1
    return-object p2

    .line 160
    .end local v0    # "holder":Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity$a$a;
    .end local v1    # "item":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity$a$a;

    .restart local v0    # "holder":Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity$a$a;
    goto :goto_0

    .line 168
    .restart local v1    # "item":Ljava/lang/String;
    :cond_2
    iget-object v2, v0, Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity$a$a;->b:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
