.class public final Lcup;
.super Ljava/lang/Object;
.source "DingToManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcup$a;
    }
.end annotation


# instance fields
.field a:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

.field b:Landroid/app/Activity;

.field c:Lcom/alibaba/wukong/im/Message;

.field d:Lckm$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lckm$a",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcup$a;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Lcup$a;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "holder"    # Lcup$a;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcup;->a:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    .line 37
    new-instance v0, Lcup$1;

    invoke-direct {v0, p0}, Lcup$1;-><init>(Lcup;)V

    iput-object v0, p0, Lcup;->d:Lckm$a;

    .line 51
    iput-object p2, p0, Lcup;->e:Lcup$a;

    .line 52
    iget-object v0, p0, Lcup;->d:Lckm$a;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lckm$a;->a(Landroid/content/Context;Landroid/app/Application;)V

    .line 53
    return-void
.end method

.method static synthetic a(Lcup;)V
    .locals 8
    .param p0, "x0"    # Lcup;

    .prologue
    const/4 v7, 0x1

    .line 20
    .line 1071
    iget-object v0, p0, Lcup;->a:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    if-eqz v0, :cond_0

    .line 1072
    iget-object v0, p0, Lcup;->e:Lcup$a;

    invoke-interface {v0}, Lcup$a;->a()Ldac;

    move-result-object v0

    .line 1073
    iget-object v1, p0, Lcup;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcup;->c:Lcom/alibaba/wukong/im/Message;

    iget-object v3, p0, Lcup;->a:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    iget-object v4, p0, Lcup;->e:Lcup$a;

    invoke-interface {v4}, Lcup$a;->b()Z

    move-result v4

    .line 1621
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    .line 1647
    :cond_0
    :goto_0
    return-void

    .line 1625
    :cond_1
    iget-object v5, v0, Ldac;->c:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1626
    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->ad()I

    move-result v6

    if-lez v6, :cond_3

    .line 1627
    if-eqz v4, :cond_2

    .line 1628
    iget-object v4, v0, Ldac;->c:Landroid/widget/TextView;

    sget v6, Lctk$i;->dt_ding_unconfirmed:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1629
    iget-object v4, v0, Ldac;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1630
    new-instance v4, Ldac$9;

    invoke-direct {v4, v0, v1, v2, v3}, Ldac$9;-><init>(Ldac;Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 1636
    iget-object v1, v0, Ldac;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1647
    :goto_1
    iget-object v0, v0, Ldac;->c:Landroid/widget/TextView;

    sget v1, Lctk$c;->ui_common_theme_text_color:I

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 1638
    :cond_2
    new-instance v2, Ldac$10;

    invoke-direct {v2, v0, v1, v3}, Ldac$10;-><init>(Ldac;Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 1644
    iget-object v1, v0, Ldac;->c:Landroid/widget/TextView;

    sget v4, Lctk$i;->dt_ding_unconfirmed_AT:I

    new-array v6, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->ad()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v7

    invoke-virtual {v5, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1645
    iget-object v1, v0, Ldac;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 1649
    :cond_3
    if-eqz v4, :cond_4

    .line 1650
    iget-object v1, v0, Ldac;->c:Landroid/widget/TextView;

    sget v2, Lctk$i;->dt_ding_confirmed:I

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1654
    :goto_2
    iget-object v1, v0, Ldac;->c:Landroid/widget/TextView;

    sget v2, Lctk$c;->ui_common_uninput_text_color:I

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1655
    iget-object v0, v0, Ldac;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1652
    :cond_4
    iget-object v1, v0, Ldac;->c:Landroid/widget/TextView;

    sget v2, Lctk$i;->dt_ding_confirmed_all:I

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 56
    iget-object v0, p0, Lcup;->a:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    if-eqz v0, :cond_0

    .line 57
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v0

    iget-object v1, p0, Lcup;->a:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 59
    :cond_0
    return-void
.end method
