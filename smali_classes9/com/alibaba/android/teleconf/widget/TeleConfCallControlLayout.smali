.class public Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;
.super Landroid/widget/LinearLayout;
.source "TeleConfCallControlLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;,
        Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;,
        Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ShowState;
    }
.end annotation


# instance fields
.field private A:Landroid/view/View;

.field private B:Landroid/widget/ImageView;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/view/View;

.field private E:Landroid/view/View;

.field private F:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private G:Landroid/widget/TextView;

.field private H:Landroid/content/Context;

.field public a:Z

.field public b:Landroid/view/View;

.field public c:Landroid/widget/ImageView;

.field public d:Landroid/widget/TextView;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/view/View;

.field private t:Landroid/view/View;

.field private u:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/view/View;

.field private x:Landroid/view/View;

.field private y:Landroid/widget/ImageView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->e:Z

    .line 47
    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->f:Z

    .line 48
    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->g:Z

    .line 49
    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->a:Z

    .line 50
    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->h:Z

    .line 51
    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->i:Z

    .line 52
    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->j:Z

    .line 116
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->H:Landroid/content/Context;

    .line 1121
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Leuj$j;->teleconf_voip_control_btns_v2:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1123
    sget v0, Leuj$i;->voip_control_btn_left:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->k:Landroid/view/View;

    .line 1124
    sget v0, Leuj$i;->voip_control_btn_left_icon_bg:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->l:Landroid/view/View;

    .line 1125
    sget v0, Leuj$i;->voip_control_btn_left_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1126
    sget v0, Leuj$i;->voip_control_btn_left_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->n:Landroid/widget/TextView;

    .line 1128
    sget v0, Leuj$i;->voip_control_btn_middle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->s:Landroid/view/View;

    .line 1129
    sget v0, Leuj$i;->voip_control_btn_middle_icon_bg:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->t:Landroid/view/View;

    .line 1130
    sget v0, Leuj$i;->voip_control_btn_middle_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->u:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1131
    sget v0, Leuj$i;->voip_control_btn_middle_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->v:Landroid/widget/TextView;

    .line 1133
    sget v0, Leuj$i;->voip_control_btn_right:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->o:Landroid/view/View;

    .line 1134
    sget v0, Leuj$i;->voip_control_btn_right_icon_bg:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->p:Landroid/view/View;

    .line 1135
    sget v0, Leuj$i;->voip_control_btn_right_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->q:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1136
    sget v0, Leuj$i;->voip_control_btn_right_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->r:Landroid/widget/TextView;

    .line 1138
    sget v0, Leuj$i;->voip_operation_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->w:Landroid/view/View;

    .line 1140
    sget v0, Leuj$i;->voip_operation_call_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->b:Landroid/view/View;

    .line 1141
    sget v0, Leuj$i;->voip_operation_call_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->c:Landroid/widget/ImageView;

    .line 1142
    sget v0, Leuj$i;->voip_operation_call_tv:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->d:Landroid/widget/TextView;

    .line 1144
    sget v0, Leuj$i;->voip_operation_msg_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->x:Landroid/view/View;

    .line 1145
    sget v0, Leuj$i;->voip_operation_msg_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->y:Landroid/widget/ImageView;

    .line 1146
    sget v0, Leuj$i;->voip_operation_msg_tv:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->z:Landroid/widget/TextView;

    .line 1148
    sget v0, Leuj$i;->voip_operation_ding_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->A:Landroid/view/View;

    .line 1149
    sget v0, Leuj$i;->voip_operation_ding_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->B:Landroid/widget/ImageView;

    .line 1150
    sget v0, Leuj$i;->voip_operation_ding_tv:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->C:Landroid/widget/TextView;

    .line 1152
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->b:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$1;-><init>(Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1175
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->x:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$2;-><init>(Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1194
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->A:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$3;-><init>(Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1212
    sget v0, Leuj$i;->voip_control_extra_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->D:Landroid/view/View;

    .line 1213
    sget v0, Leuj$i;->voip_control_extra_right_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->E:Landroid/view/View;

    .line 1214
    sget v0, Leuj$i;->voip_control_btn_right_accept_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->F:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1215
    sget v0, Leuj$i;->voip_control_btn_right_accept_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->G:Landroid/widget/TextView;

    .line 118
    return-void
.end method

.method private a(Landroid/view/View;Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;Z)V
    .locals 4
    .param p1, "destView"    # Landroid/view/View;
    .param p2, "destIcon"    # Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    .param p3, "beSmall"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 359
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->H:Landroid/content/Context;

    const/high16 v3, 0x42800000    # 64.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    .line 368
    .local v0, "destSize":I
    const/4 v2, 0x2

    const/high16 v3, 0x42100000    # 36.0f

    invoke-virtual {p2, v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextSize(IF)V

    .line 370
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 371
    .local v1, "param":Landroid/widget/LinearLayout$LayoutParams;
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 372
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 373
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private a(ZZ)V
    .locals 3
    .param p1, "silenceState"    # Z
    .param p2, "enabled"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 238
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->l:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 239
    if-eqz p2, :cond_2

    .line 240
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->n:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->ui_common_white_icon_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 241
    if-eqz p1, :cond_1

    .line 242
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->l:Landroid/view/View;

    sget v1, Leuj$h;->conf_status_bg_circle_64_white_shape:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 243
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Leuj$l;->icon_muteoff_fill:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 244
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->ui_common_content_fg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->l:Landroid/view/View;

    sget v1, Leuj$h;->conf_stroke_circle_64_shape:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 247
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Leuj$l;->icon_muteoff_fill:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 248
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->ui_common_white_icon_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    goto :goto_0

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->l:Landroid/view/View;

    sget v1, Leuj$h;->conf_stroke_circle_64_shape:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 252
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Leuj$l;->icon_muteoff_fill:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 253
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->ui_common_white_icon_pressed_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 254
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->n:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->ui_common_white_icon_pressed_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->a:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method private b(ZZ)V
    .locals 2
    .param p1, "handsfreeState"    # Z
    .param p2, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 266
    iput-boolean p1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->g:Z

    .line 267
    if-eqz p1, :cond_0

    .line 268
    sget-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;->MODE_N_SPEAKER:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->a(Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;Z)V

    .line 272
    :goto_0
    return-void

    .line 270
    :cond_0
    sget-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;->MODE_N_RECEIVER:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->a(Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;Z)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->y:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->z:Landroid/widget/TextView;

    return-object v0
.end method

.method private e(Z)V
    .locals 3
    .param p1, "cameraClosed"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 329
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->q:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->p:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->r:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->ui_common_white_icon_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 333
    if-eqz p1, :cond_1

    .line 334
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->p:Landroid/view/View;

    sget v1, Leuj$h;->conf_stroke_circle_64_shape:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 335
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->q:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Leuj$l;->icon_ph_unvideo_fill:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 336
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->q:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->ui_common_white_icon_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->p:Landroid/view/View;

    sget v1, Leuj$h;->conf_status_bg_circle_64_white_shape:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 339
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->q:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Leuj$l;->icon_ph_video_fill:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 340
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->q:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->ui_common_content_fg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->B:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->C:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->s:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;Z)V
    .locals 3
    .param p1, "outputMode"    # Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;
    .param p2, "enabled"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 275
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->q:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->p:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 276
    if-eqz p2, :cond_8

    .line 277
    if-nez p1, :cond_1

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->p:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 281
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->q:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setEnabled(Z)V

    .line 282
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->r:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->ui_common_white_icon_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 283
    sget-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;->MODE_N_SPEAKER:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;->MODE_S_SPEAKER:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;

    if-ne p1, v0, :cond_4

    .line 285
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->p:Landroid/view/View;

    sget v1, Leuj$h;->conf_status_bg_circle_64_white_shape:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 286
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->q:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Leuj$l;->icon_speaker_fill:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 287
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->q:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->ui_common_content_fg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 289
    sget-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;->MODE_N_SPEAKER:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;

    if-ne p1, v0, :cond_3

    .line 290
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->r:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Leuj$l;->conf_txt_voip_handsfree:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 292
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->r:Landroid/widget/TextView;

    sget v1, Leuj$l;->dt_conference_voip_have_bluetooth_input:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 294
    :cond_4
    sget-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;->MODE_N_RECEIVER:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;

    if-eq p1, v0, :cond_5

    sget-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;->MODE_S_RECEIVER:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;

    if-ne p1, v0, :cond_7

    .line 296
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->p:Landroid/view/View;

    sget v1, Leuj$h;->conf_stroke_circle_64_shape:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 297
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->q:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Leuj$l;->icon_speaker_fill:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 298
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->q:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->ui_common_white_icon_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 299
    sget-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;->MODE_N_RECEIVER:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;

    if-ne p1, v0, :cond_6

    .line 300
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->r:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Leuj$l;->conf_txt_voip_handsfree:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 302
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->r:Landroid/widget/TextView;

    sget v1, Leuj$l;->dt_conference_voip_have_bluetooth_input:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 304
    :cond_7
    sget-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;->MODE_S_BLUETOOTH:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;

    if-ne p1, v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->p:Landroid/view/View;

    sget v1, Leuj$h;->conf_status_bg_circle_64_white_shape:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 306
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->q:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Leuj$l;->icon_voip_bluetooth_fill:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 307
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->q:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->ui_common_content_fg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 309
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->r:Landroid/widget/TextView;

    sget v1, Leuj$l;->dt_conference_voip_have_bluetooth_input:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 312
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->p:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 313
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->q:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setEnabled(Z)V

    .line 314
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->p:Landroid/view/View;

    sget v1, Leuj$h;->conf_stroke_circle_64_shape:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 315
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->q:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Leuj$l;->icon_speaker_fill:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 316
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->q:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->ui_common_white_icon_pressed_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 317
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->r:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->ui_common_white_icon_pressed_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0
.end method

.method public final a(Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;)V
    .locals 8
    .param p1, "callType"    # Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 378
    sget-object v1, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$6;->a:[I

    invoke-virtual {p1}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 541
    :goto_0
    return-void

    .line 381
    :pswitch_0
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->k:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 382
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->l:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 383
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setEnabled(Z)V

    .line 384
    invoke-direct {p0, v4, v4}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->a(ZZ)V

    .line 386
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 387
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->n:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Leuj$l;->conf_txt_voip_slience:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->l:Landroid/view/View;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-direct {p0, v1, v2, v4}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->a(Landroid/view/View;Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;Z)V

    .line 389
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Leuj$l;->conf_txt_voip_slience:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 391
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->o:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 392
    iget-boolean v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->i:Z

    if-eqz v1, :cond_0

    .line 393
    iget-boolean v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->h:Z

    invoke-direct {p0, v1}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->e(Z)V

    .line 395
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 396
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->r:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Leuj$l;->dt_conf_video_camera_control_tip:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->q:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Leuj$l;->dt_conf_video_camera_control_tip:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 399
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->p:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 400
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->q:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setEnabled(Z)V

    .line 408
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->p:Landroid/view/View;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->q:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-direct {p0, v1, v2, v4}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->a(Landroid/view/View;Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;Z)V

    .line 410
    sget-object v1, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;->TYPE_CALLING:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;

    if-ne p1, v1, :cond_1

    .line 411
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->s:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 412
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->v:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 413
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->v:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Leuj$l;->cancel:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->u:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Leuj$l;->cancel:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 402
    :cond_0
    iget-boolean v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->g:Z

    invoke-direct {p0, v1, v5}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->b(ZZ)V

    .line 404
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 405
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->r:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Leuj$l;->conf_txt_voip_handsfree:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->q:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Leuj$l;->conf_txt_voip_handsfree:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 416
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->s:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    .line 417
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->H:Landroid/content/Context;

    sget v2, Leuj$a;->conf_redpacktes_alpha_in:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 418
    .local v0, "alphaAnimation":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->s:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 419
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->s:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setAlpha(F)V

    .line 420
    new-instance v1, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$4;-><init>(Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 436
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->s:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 438
    .end local v0    # "alphaAnimation":Landroid/view/animation/Animation;
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->v:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 439
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->v:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Leuj$l;->conf_txt_voip_hangup:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->u:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Leuj$l;->conf_txt_voip_hangup:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 444
    :pswitch_1
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->k:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 445
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->l:Landroid/view/View;

    sget v2, Leuj$h;->teleconf_hanpup_call_bg:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 446
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v2, Leuj$l;->icon_reject_fill:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 447
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Leuj$f;->txt_color_white_bg_selector:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 449
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 450
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->n:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Leuj$f;->ui_common_white_icon_bg_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 451
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->n:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Leuj$l;->conf_txt_voip_reject:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->l:Landroid/view/View;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-direct {p0, v1, v2, v4}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->a(Landroid/view/View;Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;Z)V

    .line 454
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->o:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 455
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->p:Landroid/view/View;

    sget v2, Leuj$h;->teleconf_accept_call_bg:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 456
    iget-boolean v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->j:Z

    if-eqz v1, :cond_3

    .line 457
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->q:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v2, Leuj$l;->icon_video_fill:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 461
    :goto_2
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->q:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Leuj$f;->txt_color_white_bg_selector:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 463
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 464
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->r:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Leuj$f;->ui_common_white_icon_bg_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 465
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->r:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Leuj$l;->conf_txt_voip_answer:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->p:Landroid/view/View;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->q:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-direct {p0, v1, v2, v4}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->a(Landroid/view/View;Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;Z)V

    .line 468
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->s:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 469
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->v:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 471
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Leuj$l;->conf_txt_voip_reject:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 472
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->q:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Leuj$l;->conf_txt_voip_answer:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 459
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->q:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v2, Leuj$l;->icon_phone_fill:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    goto :goto_2

    .line 475
    :pswitch_2
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->k:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 476
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->l:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 477
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v1, v5}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setEnabled(Z)V

    .line 478
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Leuj$l;->conf_txt_voip_slience:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 479
    iget-boolean v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->f:Z

    invoke-direct {p0, v1, v5}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->a(ZZ)V

    .line 481
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 482
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->n:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Leuj$l;->conf_txt_voip_slience:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->l:Landroid/view/View;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-direct {p0, v1, v2, v4}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->a(Landroid/view/View;Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;Z)V

    .line 485
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->o:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 486
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->p:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 487
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->q:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v1, v5}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setEnabled(Z)V

    .line 488
    iget-boolean v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->i:Z

    if-eqz v1, :cond_5

    .line 489
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->q:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Leuj$l;->dt_conf_video_camera_control_tip:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 490
    iget-boolean v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->h:Z

    invoke-direct {p0, v1}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->e(Z)V

    .line 492
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 493
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->r:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Leuj$l;->dt_conf_video_camera_control_tip:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    :goto_3
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->p:Landroid/view/View;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->q:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-direct {p0, v1, v2, v4}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->a(Landroid/view/View;Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;Z)V

    .line 503
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->s:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_4

    .line 504
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->H:Landroid/content/Context;

    sget v2, Leuj$a;->conf_redpacktes_alpha_in:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 505
    .restart local v0    # "alphaAnimation":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->s:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 506
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->s:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setAlpha(F)V

    .line 507
    new-instance v1, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$5;-><init>(Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 523
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->s:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 526
    .end local v0    # "alphaAnimation":Landroid/view/animation/Animation;
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->v:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 527
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->v:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Leuj$l;->conf_txt_voip_hangup:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->u:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Leuj$l;->conf_txt_voip_hangup:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 495
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->q:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Leuj$l;->conf_txt_voip_handsfree:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 496
    iget-boolean v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->g:Z

    invoke-direct {p0, v1, v5}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->b(ZZ)V

    .line 498
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 499
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->r:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Leuj$l;->conf_txt_voip_handsfree:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 531
    :pswitch_3
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->k:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 532
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->o:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 533
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->s:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 534
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->v:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 535
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->v:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Leuj$l;->conf_txt_voip_hangup:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->u:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Leuj$l;->conf_txt_voip_hangup:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 378
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Z)V
    .locals 1
    .param p1, "silenceState"    # Z

    .prologue
    .line 233
    iput-boolean p1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->f:Z

    .line 234
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->a(ZZ)V

    .line 235
    return-void
.end method

.method public final b(Z)V
    .locals 0
    .param p1, "cameraClosed"    # Z

    .prologue
    .line 324
    iput-boolean p1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->h:Z

    .line 325
    invoke-direct {p0, p1}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->e(Z)V

    .line 326
    return-void
.end method

.method public final c(Z)V
    .locals 2
    .param p1, "show"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 544
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->D:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 545
    return-void
.end method

.method public final d(Z)V
    .locals 2
    .param p1, "showOperation"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 558
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->w:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 560
    return-void
.end method

.method public setCaller(Z)V
    .locals 0
    .param p1, "isCaller"    # Z

    .prologue
    .line 220
    iput-boolean p1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->e:Z

    .line 221
    return-void
.end method

.method public setCameraControlEnable(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 224
    iput-boolean p1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->i:Z

    .line 225
    return-void
.end method

.method public setDingListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "dingListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 589
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->A:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 590
    return-void
.end method

.method public setExtraRightOnClick(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "rightClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 593
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->E:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 594
    return-void
.end method

.method public setLeftOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "leftOnClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 563
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->l:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 564
    return-void
.end method

.method public setMiddleClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "middleClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 567
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->t:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 568
    return-void
.end method

.method public setMsgListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "msgListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 585
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->x:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 586
    return-void
.end method

.method public setNormalCallListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "normalCallListener"    # Landroid/view/View$OnClickListener;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 575
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 576
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->b:Landroid/view/View;

    const-string/jumbo v1, "system_call"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 577
    return-void
.end method

.method public setReplyMsgListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "replyMsgListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 582
    return-void
.end method

.method public setRightClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "rightClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 571
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->p:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 572
    return-void
.end method

.method public setVideoAcceptEnable(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 228
    iput-boolean p1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->j:Z

    .line 229
    return-void
.end method
