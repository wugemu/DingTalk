.class final Lctv$1;
.super Ljava/lang/Object;
.source "AbsUserMsgHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lctv;->a(Landroid/app/Activity;JLcom/alibaba/wukong/im/Message;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lctv;


# direct methods
.method constructor <init>(Lctv;)V
    .locals 0
    .param p1, "this$0"    # Lctv;

    .prologue
    .line 127
    iput-object p1, p0, Lctv$1;->a:Lctv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v9, 0x41500000    # 13.0f

    const/4 v2, 0x0

    .line 130
    new-instance v3, Lcom/alibaba/android/dingtalkim/views/TextTipDialog;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/alibaba/android/dingtalkim/views/TextTipDialog;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lctv$1;->a:Lctv;

    iget-object v4, v0, Lctv;->F:Landroid/view/View;

    iget-object v0, p0, Lctv$1;->a:Lctv;

    iget-object v0, v0, Lctv;->d:Landroid/app/Activity;

    sget v1, Lctk$i;->dt_message_tap_safe_icon_alert:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lctv$1;->a:Lctv;

    iget-boolean v0, v0, Lctv;->O:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    move v1, v0

    .line 1042
    :goto_0
    iget-object v0, v3, Lcom/alibaba/android/dingtalkim/views/TextTipDialog;->a:Landroid/content/Context;

    if-eqz v0, :cond_2

    if-eqz v4, :cond_2

    .line 1043
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1044
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/views/TextTipDialog;->getContentView()Landroid/view/View;

    move-result-object v0

    sget v6, Lctk$f;->text_tip_textview:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1046
    :cond_0
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 1047
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 1048
    invoke-virtual {v4, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1049
    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1050
    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1052
    :cond_1
    if-eqz v1, :cond_4

    .line 1053
    iget-object v0, v3, Lcom/alibaba/android/dingtalkim/views/TextTipDialog;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1054
    const/4 v1, 0x3

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1055
    iget-object v1, v3, Lcom/alibaba/android/dingtalkim/views/TextTipDialog;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1056
    iget-object v0, v3, Lcom/alibaba/android/dingtalkim/views/TextTipDialog;->b:Landroid/view/View;

    iget v1, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v1, v7

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    invoke-static {v7, v9}, Lcms;->c(Landroid/content/Context;F)I

    move-result v7

    sub-int/2addr v1, v7

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1057
    const/16 v0, 0x53

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v5

    invoke-virtual {v3, v4, v0, v2, v1}, Lcom/alibaba/android/dingtalkim/views/TextTipDialog;->showAtLocation(Landroid/view/View;III)V

    .line 1058
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v1, v2

    .line 130
    goto :goto_0

    .line 1059
    :cond_4
    iget-object v0, v3, Lcom/alibaba/android/dingtalkim/views/TextTipDialog;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1060
    const/4 v1, 0x5

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1061
    iget-object v1, v3, Lcom/alibaba/android/dingtalkim/views/TextTipDialog;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1062
    iget-object v0, v3, Lcom/alibaba/android/dingtalkim/views/TextTipDialog;->b:Landroid/view/View;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v7, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    sub-int/2addr v1, v7

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    invoke-static {v7, v9}, Lcms;->c(Landroid/content/Context;F)I

    move-result v7

    sub-int/2addr v1, v7

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1063
    const/16 v0, 0x55

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v5

    invoke-virtual {v3, v4, v0, v2, v1}, Lcom/alibaba/android/dingtalkim/views/TextTipDialog;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1
.end method
