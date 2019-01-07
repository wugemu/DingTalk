.class public final Lcwb;
.super Lcqr;
.source "GroupRingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcwb$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcqr",
        "<",
        "Lcom/alibaba/android/dingtalkim/models/GroupRingObject;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Ljava/lang/String;

.field public e:Lear;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcqr;-><init>(Landroid/app/Activity;)V

    .line 27
    return-void
.end method

.method static synthetic a(Lcwb;)Lear;
    .locals 1
    .param p0, "x0"    # Lcwb;

    .prologue
    .line 19
    iget-object v0, p0, Lcwb;->e:Lear;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    check-cast p1, Lcom/alibaba/android/dingtalkim/models/GroupRingObject;

    .line 1044
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/models/GroupRingObject;->ringId:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "i"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 50
    if-nez p2, :cond_1

    .line 51
    iget-object v2, p0, Lcwb;->b:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v5, Lctk$g;->layout_group_ring_item:I

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 52
    new-instance v0, Lcwb$a;

    invoke-direct {v0, p0}, Lcwb$a;-><init>(Lcwb;)V

    .line 53
    .local v0, "holder":Lcwb$a;
    sget v2, Lctk$f;->rl_ring_name:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v0, Lcwb$a;->d:Landroid/widget/RelativeLayout;

    .line 54
    sget v2, Lctk$f;->tv_ring_name:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcwb$a;->b:Landroid/widget/TextView;

    .line 55
    sget v2, Lctk$f;->tv_type_name:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcwb$a;->a:Landroid/widget/TextView;

    .line 56
    sget v2, Lctk$f;->icon_font_select:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v2, v0, Lcwb$a;->c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 57
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 62
    :goto_0
    iget-object v2, p0, Lcwb;->a:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/GroupRingObject;

    .line 63
    .local v1, "ringObject":Lcom/alibaba/android/dingtalkim/models/GroupRingObject;
    if-eqz v1, :cond_0

    .line 64
    iget-object v5, v0, Lcwb$a;->a:Landroid/widget/TextView;

    iget-boolean v2, v1, Lcom/alibaba/android/dingtalkim/models/GroupRingObject;->typeFirst:Z

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    iget-object v2, v0, Lcwb$a;->a:Landroid/widget/TextView;

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    iget-object v6, v1, Lcom/alibaba/android/dingtalkim/models/GroupRingObject;->typeName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v2, v0, Lcwb$a;->b:Landroid/widget/TextView;

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    iget-object v6, v1, Lcom/alibaba/android/dingtalkim/models/GroupRingObject;->ringName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/models/GroupRingObject;->ringId:Ljava/lang/String;

    iget-object v5, p0, Lcwb;->d:Ljava/lang/String;

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 68
    iget-object v2, v0, Lcwb$a;->c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 73
    :goto_2
    iget-object v2, v0, Lcwb$a;->d:Landroid/widget/RelativeLayout;

    new-instance v3, Lcwb$1;

    invoke-direct {v3, p0, v1}, Lcwb$1;-><init>(Lcwb;Lcom/alibaba/android/dingtalkim/models/GroupRingObject;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    :cond_0
    return-object p2

    .line 59
    .end local v0    # "holder":Lcwb$a;
    .end local v1    # "ringObject":Lcom/alibaba/android/dingtalkim/models/GroupRingObject;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcwb$a;

    .restart local v0    # "holder":Lcwb$a;
    goto :goto_0

    .restart local v1    # "ringObject":Lcom/alibaba/android/dingtalkim/models/GroupRingObject;
    :cond_2
    move v2, v4

    .line 64
    goto :goto_1

    .line 70
    :cond_3
    iget-object v2, v0, Lcwb$a;->c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto :goto_2
.end method
