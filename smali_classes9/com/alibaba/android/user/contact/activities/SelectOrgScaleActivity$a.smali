.class public final Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity$a;
.super Lfxq;
.source "SelectOrgScaleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfxq",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "originalScale"    # I

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lfxq;-><init>(Landroid/app/Activity;)V

    .line 116
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity$a;->a:Landroid/content/Context;

    .line 117
    iput p2, p0, Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity$a;->b:I

    .line 118
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 123
    if-nez p2, :cond_0

    .line 124
    new-instance v1, Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity$b;

    invoke-direct {v1}, Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity$b;-><init>()V

    .line 125
    .local v1, "viewHolder":Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity$b;
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity$a;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lezg$j;->select_org_scale_item:I

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 126
    sget v2, Lezg$h;->tv_scale:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity$b;->a:Landroid/widget/TextView;

    .line 127
    sget v2, Lezg$h;->iv_scale:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v2, v1, Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity$b;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 128
    sget v2, Lezg$h;->v_divider:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity$b;->c:Landroid/view/View;

    .line 129
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 134
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity$a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;

    .line 135
    .local v0, "item":Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;
    if-nez v0, :cond_1

    .line 148
    :goto_1
    return-object p2

    .line 131
    .end local v0    # "item":Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;
    .end local v1    # "viewHolder":Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity$b;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity$b;

    .restart local v1    # "viewHolder":Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity$b;
    goto :goto_0

    .line 138
    .restart local v0    # "item":Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;
    :cond_1
    iget-object v2, v1, Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity$b;->a:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;->id:I

    iget v3, p0, Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity$a;->b:I

    if-ne v2, v3, :cond_2

    .line 141
    iget-object v2, v1, Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity$b;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 142
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;->text:Ljava/lang/String;

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v5, Lezg$l;->dt_accessibility_selected:I

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 144
    :cond_2
    iget-object v2, v1, Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity$b;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 145
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;->text:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
