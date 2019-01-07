.class public final Lfny;
.super Ljava/lang/Object;
.source "ExternalShareView.java"

# interfaces
.implements Lfnv$b;


# instance fields
.field a:Lfnv$a;

.field b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 1
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "shareTipView"    # Landroid/widget/TextView;
    .param p3, "shareTextView"    # Landroid/widget/TextView;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p1}, Lciv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iput-object v0, p0, Lfny;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 39
    invoke-static {p2}, Lciv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfny;->c:Landroid/widget/TextView;

    .line 40
    invoke-static {p3}, Lciv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfny;->d:Landroid/widget/TextView;

    .line 41
    return-void
.end method


# virtual methods
.method public final H_()V
    .locals 1

    .prologue
    .line 137
    .line 2149
    iget-object v0, p0, Lfny;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 137
    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lfny;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 140
    :cond_0
    return-void
.end method

.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 61
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lfny;->a(J)V

    .line 62
    return-void
.end method

.method public final a(J)V
    .locals 3
    .param p1, "orgId"    # J

    .prologue
    .line 66
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 67
    iget-object v0, p0, Lfny;->a:Lfnv$a;

    invoke-interface {v0, p1, p2}, Lfnv$a;->a(J)V

    .line 69
    :cond_0
    iget-object v0, p0, Lfny;->a:Lfnv$a;

    invoke-interface {v0}, Lfnv$a;->b()V

    .line 70
    return-void
.end method

.method public final a(Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .local p1, "lastSelectUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .local p2, "lastSelectOrgDepts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    const/4 v7, 0x0

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, ""

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .local v1, "sb":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 82
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 83
    .local v3, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v3, :cond_0

    .line 86
    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->orgUserName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 87
    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->orgUserName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 91
    .end local v3    # "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_1
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 92
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 93
    .local v0, "deptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    if-eqz v0, :cond_2

    .line 97
    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 98
    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 103
    .end local v0    # "deptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    :cond_3
    iget-object v4, p0, Lfny;->c:Landroid/widget/TextView;

    iget-object v5, p0, Lfny;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v6, Lezg$l;->dt_external_label_select_share:I

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 105
    iget-object v4, p0, Lfny;->d:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    :goto_2
    return-void

    .line 107
    :cond_4
    iget-object v4, p0, Lfny;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    iget-object v4, p0, Lfny;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    new-instance v2, Landroid/text/SpannableString;

    iget-object v4, p0, Lfny;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v5, Lezg$l;->dt_external_label_select_share_link:I

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 111
    .local v2, "shareSpan":Landroid/text/SpannableString;
    new-instance v4, Lfny$2;

    invoke-direct {v4, p0}, Lfny$2;-><init>(Lfny;)V

    .line 116
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v5

    const/16 v6, 0x21

    .line 111
    invoke-virtual {v2, v4, v7, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 117
    iget-object v4, p0, Lfny;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v4, p0, Lfny;->c:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_2
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 145
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 130
    .line 1149
    iget-object v0, p0, Lfny;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 130
    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lfny;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 133
    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lfny;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lfny;->a:Lfnv$a;

    invoke-interface {v0}, Lfnv$a;->c()V

    .line 75
    return-void
.end method

.method public final f()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 154
    iget-object v0, p0, Lfny;->a:Lfnv$a;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lfny;->a:Lfnv$a;

    invoke-interface {v0}, Lfnv$a;->i()V

    .line 158
    :cond_0
    iput-object v1, p0, Lfny;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 159
    iput-object v1, p0, Lfny;->a:Lfnv$a;

    .line 160
    iput-object v1, p0, Lfny;->c:Landroid/widget/TextView;

    .line 161
    iput-object v1, p0, Lfny;->d:Landroid/widget/TextView;

    .line 162
    return-void
.end method

.method public final synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 29
    check-cast p1, Lfnv$a;

    .line 3124
    invoke-static {p1}, Lciv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3125
    iput-object p1, p0, Lfny;->a:Lfnv$a;

    .line 29
    return-void
.end method
