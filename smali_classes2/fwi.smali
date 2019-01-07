.class public final Lfwi;
.super Lfxq;
.source "NotificationSettingSoundAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfwi$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfxq",
        "<",
        "Lcom/alibaba/android/dingtalkbase/notification/Sound;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field private b:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "scene"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lfxq;-><init>(Landroid/app/Activity;)V

    .line 28
    iput p2, p0, Lfwi;->b:I

    .line 29
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/16 v9, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 38
    if-nez p2, :cond_1

    .line 39
    new-instance v2, Lfwi$a;

    invoke-direct {v2, p0}, Lfwi$a;-><init>(Lfwi;)V

    .line 40
    .local v2, "viewHolder":Lfwi$a;
    iget-object v3, p0, Lfwi;->i:Landroid/app/Activity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v6, Lezg$j;->notification_setting_style_item:I

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 41
    sget v3, Lezg$h;->tv_name:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lfwi$a;->a:Landroid/widget/TextView;

    .line 42
    sget v3, Lezg$h;->img_select:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v3, v2, Lfwi$a;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 43
    sget v3, Lezg$h;->line_full:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lfwi$a;->d:Landroid/view/View;

    .line 44
    sget v3, Lezg$h;->line_partial:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lfwi$a;->c:Landroid/view/View;

    .line 45
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 50
    :goto_0
    iget-object v3, p0, Lfwi;->h:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/notification/Sound;

    .line 52
    .local v0, "sound":Lcom/alibaba/android/dingtalkbase/notification/Sound;
    if-eqz v0, :cond_0

    .line 53
    invoke-static {}, Lfwn;->i()Lfwn;

    move-result-object v6

    iget-object v7, p0, Lfwi;->i:Landroid/app/Activity;

    iget v8, p0, Lfwi;->b:I

    iget-object v3, p0, Lfwi;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v4, :cond_2

    move v3, v4

    :goto_1
    invoke-virtual {v6, v7, v8, v0, v3}, Lfwn;->a(Landroid/content/Context;ILcom/alibaba/android/dingtalkbase/notification/Sound;Z)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "soundName":Ljava/lang/String;
    iget-object v3, v2, Lfwi$a;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/notification/Sound;->getValue()I

    move-result v3

    iget v6, p0, Lfwi;->a:I

    if-ne v3, v6, :cond_3

    .line 57
    iget-object v3, v2, Lfwi$a;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v3, v5}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 58
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object v1, v3, v5

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    sget v7, Lezg$l;->dt_accessibility_selected:I

    invoke-virtual {v6, v7}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 64
    :goto_2
    iget-object v3, p0, Lfwi;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_4

    .line 65
    iget-object v3, v2, Lfwi$a;->d:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 66
    iget-object v3, v2, Lfwi$a;->c:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .end local v1    # "soundName":Ljava/lang/String;
    :cond_0
    :goto_3
    return-object p2

    .line 47
    .end local v0    # "sound":Lcom/alibaba/android/dingtalkbase/notification/Sound;
    .end local v2    # "viewHolder":Lfwi$a;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfwi$a;

    .restart local v2    # "viewHolder":Lfwi$a;
    goto :goto_0

    .restart local v0    # "sound":Lcom/alibaba/android/dingtalkbase/notification/Sound;
    :cond_2
    move v3, v5

    .line 53
    goto :goto_1

    .line 60
    .restart local v1    # "soundName":Ljava/lang/String;
    :cond_3
    iget-object v3, v2, Lfwi$a;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v3, v9}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 61
    invoke-virtual {p2, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 68
    :cond_4
    iget-object v3, v2, Lfwi$a;->d:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 69
    iget-object v3, v2, Lfwi$a;->c:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method
