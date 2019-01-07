.class public final Ldfb;
.super Ldfa;
.source "EducationChatPlugin.java"

# interfaces
.implements Ldfc;


# instance fields
.field private d:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Ldfa;-><init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;)V

    .line 72
    new-instance v0, Ldfb$1;

    invoke-direct {v0, p0}, Ldfb$1;-><init>(Ldfb;)V

    iput-object v0, p0, Ldfb;->d:Landroid/view/View$OnClickListener;

    .line 53
    return-void
.end method

.method static synthetic a(Ldfb;)V
    .locals 7
    .param p0, "x0"    # Ldfb;

    .prologue
    .line 47
    .line 2081
    iget-object v0, p0, Ldfb;->a:Landroid/content/Context;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 2082
    iget-object v0, p0, Ldfb;->a:Landroid/content/Context;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 2083
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 1096
    :cond_0
    iget-object v0, p0, Ldfb;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v2

    .line 1097
    const-class v0, Lcom/alibaba/android/dingtalkim/models/idl/service/TagIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/idl/service/TagIService;

    .line 1098
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v4

    new-instance v5, Ldfb$2;

    invoke-direct {v5, p0, v2, v3}, Ldfb$2;-><init>(Ldfb;J)V

    const-class v6, Lcma;

    iget-object v1, p0, Ldfb;->a:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-interface {v4, v5, v6, v1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcma;

    .line 1174
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 3031
    invoke-static {}, Ldik$a;->a()Ldik;

    move-result-object v2

    .line 1175
    iget-object v3, p0, Ldfb;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Ldik;->b(Ljava/util/Map;)Ldij;

    move-result-object v2

    iget-object v2, v2, Ldij;->k:Ljava/util/List;

    iget-object v3, p0, Ldfb;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 1176
    invoke-static {v3}, Ldjl;->y(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ldfb$3;

    invoke-direct {v5, p0, v6}, Ldfb$3;-><init>(Ldfb;Lcma;)V

    .line 1174
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/models/idl/service/TagIService;->listEntities(Ljava/lang/Long;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Liyv;)V

    .line 47
    return-void
.end method

.method static synthetic b(Ldfb;)V
    .locals 1
    .param p0, "x0"    # Ldfb;

    .prologue
    .line 47
    .line 3088
    iget-object v0, p0, Ldfb;->a:Landroid/content/Context;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 3089
    iget-object v0, p0, Ldfb;->a:Landroid/content/Context;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 3090
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)V
    .locals 9
    .param p1, "rlListContainer"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v8, 0x41a00000    # 20.0f

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 57
    if-nez p1, :cond_0

    .line 70
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v3, p0, Ldfb;->a:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lctk$g;->chatting_education_top_entrance:I

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 61
    .local v1, "layout":Landroid/view/ViewGroup;
    new-instance v0, Lcjz;

    iget-object v3, p0, Ldfb;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcig$j;->icon_filter:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ldfb;->a:Landroid/content/Context;

    .line 62
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lctk$c;->ui_common_blue1_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v0, v3, v4}, Lcjz;-><init>(Ljava/lang/String;I)V

    .line 63
    .local v0, "drawable":Lcjz;
    iget-object v3, p0, Ldfb;->a:Landroid/content/Context;

    invoke-static {v3, v8}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    iget-object v4, p0, Ldfb;->a:Landroid/content/Context;

    invoke-static {v4, v8}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v7, v7, v3, v4}, Lcjz;->setBounds(IIII)V

    .line 64
    sget v3, Lctk$f;->rl_text:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 65
    .local v2, "tvHeaderText":Landroid/widget/TextView;
    invoke-virtual {v2, v0, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 66
    iget-object v3, p0, Ldfb;->a:Landroid/content/Context;

    sget v4, Lctk$i;->dt_im_check_teacher_msg:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v3, p0, Ldfb;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 69
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    iget-object v5, p0, Ldfb;->a:Landroid/content/Context;

    const/high16 v6, 0x42300000    # 44.0f

    invoke-static {v5, v6}, Lcms;->c(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public final a(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "ivWaterMark"    # Landroid/widget/ImageView;

    .prologue
    .line 196
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)V
    .locals 0
    .param p1, "inputPanelView"    # Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .prologue
    .line 191
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;)Z
    .locals 1
    .param p1, "addAppContainer"    # Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    .prologue
    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method public final e()V
    .locals 0

    .prologue
    .line 216
    return-void
.end method
