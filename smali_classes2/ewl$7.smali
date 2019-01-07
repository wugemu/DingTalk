.class final Lewl$7;
.super Ljava/lang/Object;
.source "TeleConfPhoneHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewl;->e(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lewl;


# direct methods
.method constructor <init>(Lewl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lewl;

    .prologue
    .line 971
    iput-object p1, p0, Lewl$7;->b:Lewl;

    iput-object p2, p0, Lewl$7;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 974
    const/4 v1, 0x1

    .line 975
    .local v1, "numValid":Z
    iget-object v2, p0, Lewl$7;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 976
    invoke-static {}, Lewl;->a()Lewl;

    move-result-object v2

    iget-object v3, p0, Lewl$7;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lewl;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 977
    const/4 v1, 0x0

    .line 979
    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Lcms;->g(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 981
    iget-object v2, p0, Lewl$7;->b:Lewl;

    invoke-static {v2}, Lewl;->e(Lewl;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 982
    new-instance v0, Lcom/alibaba/android/teleconf/widget/ConfPhoneCallingFloatView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/android/teleconf/widget/ConfPhoneCallingFloatView;-><init>(Landroid/content/Context;)V

    .line 983
    .local v0, "confPhoneCallingFloatView":Lcom/alibaba/android/teleconf/widget/ConfPhoneCallingFloatView;
    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/widget/ConfPhoneCallingFloatView;->a()V

    .line 984
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    invoke-static {}, Levi;->p()Levi;

    move-result-object v2

    invoke-virtual {v2}, Levi;->i()Ljava/lang/String;

    move-result-object v2

    .line 1032
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 1033
    check-cast v2, Ljava/lang/String;

    .line 1034
    sget v3, Leuj$i;->tv_caller_information:I

    invoke-virtual {v0, v3}, Lcom/alibaba/android/teleconf/widget/ConfPhoneCallingFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1035
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1036
    sget v2, Leuj$i;->tv_caller_title:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/teleconf/widget/ConfPhoneCallingFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1037
    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1038
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1053
    :cond_1
    :goto_0
    sget v2, Leuj$i;->tv_contact_header:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/teleconf/widget/ConfPhoneCallingFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v3, Leuj$l;->conf_txt_floating_title:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1054
    sget v2, Leuj$i;->tv_tips:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/teleconf/widget/ConfPhoneCallingFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v3, Leuj$l;->conf_txt_floating_tips:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1055
    sget v2, Leuj$i;->img_close:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/teleconf/widget/ConfPhoneCallingFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/teleconf/widget/ConfPhoneCallingFloatView$1;

    invoke-direct {v3, v0}, Lcom/alibaba/android/teleconf/widget/ConfPhoneCallingFloatView$1;-><init>(Lcom/alibaba/android/teleconf/widget/ConfPhoneCallingFloatView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 987
    .end local v0    # "confPhoneCallingFloatView":Lcom/alibaba/android/teleconf/widget/ConfPhoneCallingFloatView;
    :cond_2
    return-void

    .line 1039
    .restart local v0    # "confPhoneCallingFloatView":Lcom/alibaba/android/teleconf/widget/ConfPhoneCallingFloatView;
    :cond_3
    instance-of v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    if-eqz v3, :cond_1

    .line 1040
    sget v3, Leuj$i;->tv_caller_information:I

    invoke-virtual {v0, v3}, Lcom/alibaba/android/teleconf/widget/ConfPhoneCallingFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1041
    invoke-static {}, Levi;->p()Levi;

    move-result-object v4

    invoke-virtual {v4}, Levi;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1042
    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    .line 1043
    iget-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgTitle:Ljava/lang/String;

    .line 1044
    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->deptList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 1045
    const-string/jumbo v4, "%s-%s"

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->deptList:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    aput-object v3, v5, v6

    const/4 v3, 0x1

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgTitle:Ljava/lang/String;

    aput-object v2, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 1047
    :cond_4
    sget v2, Leuj$i;->tv_caller_title:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/teleconf/widget/ConfPhoneCallingFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1048
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1049
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
