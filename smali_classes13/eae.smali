.class public final Leae;
.super Ldzl;
.source "RecruitmentStudentHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ldzl;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 31
    sget v0, Lctk$g;->im_layout_session_recruitment:I

    return v0
.end method

.method final b()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 36
    iget-object v2, p0, Leae;->a:Landroid/view/View;

    sget v3, Lctk$f;->tv_title:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Leae;->f:Landroid/widget/TextView;

    .line 37
    iget-object v2, p0, Leae;->f:Landroid/widget/TextView;

    sget v3, Lctk$i;->dt_im_recruitment_student_complete_resume:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 38
    new-instance v0, Lecw;

    iget-object v2, p0, Leae;->c:Landroid/app/Activity;

    sget v3, Lctk$i;->icon_new_recruit_fill:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lctk$c;->im_recruitment_tips_color:I

    .line 39
    invoke-static {v3}, Leda;->b(I)I

    move-result v3

    invoke-direct {v0, v2, v3}, Lecw;-><init>(Ljava/lang/String;I)V

    .line 40
    .local v0, "dtIconFontDrawable":Lecw;
    iget-object v2, p0, Leae;->c:Landroid/app/Activity;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    .line 41
    .local v1, "size":I
    invoke-virtual {v0, v5, v5, v1, v1}, Lecw;->setBounds(IIII)V

    .line 42
    iget-object v2, p0, Leae;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 43
    iget-object v2, p0, Leae;->a:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public final d()Lcom/alibaba/android/dingtalkim/session/header/Header;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/alibaba/android/dingtalkim/session/header/Header;->CAMPUS_STUDENT:Lcom/alibaba/android/dingtalkim/session/header/Header;

    return-object v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 60
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->p()I

    move-result v2

    sget v3, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->e:I

    if-ne v2, v3, :cond_0

    .line 61
    const-string/jumbo v1, "https://pre-recruiment.dingtalk.com/recruiment/mobile/index/?showmenu=false&dd_progress=false&dd_share=false&isStu=true#/studentSquare"

    .line 65
    .local v1, "url":Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 66
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "url"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v2

    iget-object v3, p0, Leae;->c:Landroid/app/Activity;

    invoke-virtual {v2, v3, v0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 68
    return-void

    .line 63
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "https://recruiment.dingtalk.com/recruiment/mobile/index?showmenu=false&dd_progress=true&dd_share=false&isStu=true&_wml_code=mt_2018072610101%7C%7C0%7C%7C%7C%7C%7C%7C&_wml_path=pages/stu-main-page/index.js&dd_version=4.5.4.1&fromWeex=#/mainRoom"

    .restart local v1    # "url":Ljava/lang/String;
    goto :goto_0
.end method
