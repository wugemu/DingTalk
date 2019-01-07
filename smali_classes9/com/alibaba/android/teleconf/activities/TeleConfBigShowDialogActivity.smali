.class public Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "TeleConfBigShowDialogActivity.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/View;

.field private h:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private i:Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 51
    iput-object p0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;)Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->i:Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "object"    # Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;

    .prologue
    .line 231
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 248
    .end local p0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 234
    .restart local p0    # "context":Landroid/content/Context;
    :cond_1
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/conf_big_show_dialog"

    new-instance v2, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity$3;

    invoke-direct {v2, p1}, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity$3;-><init>(Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 245
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 246
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    const/high16 v0, 0x10a0000

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->b:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 73
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->finish()V

    .line 74
    const/4 v0, 0x0

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->overridePendingTransition(II)V

    .line 75
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v2, Leuj$f;->conf_feedback_background:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 66
    sget v0, Leuj$j;->activity_teleconf_dialog_big_show:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->setContentView(I)V

    .line 1091
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1092
    if-eqz v0, :cond_0

    .line 1093
    const-string/jumbo v2, "conf_call_biz_big_show_info"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->i:Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;

    .line 1098
    :cond_0
    sget v0, Leuj$i;->img:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->c:Landroid/widget/ImageView;

    .line 1099
    sget v0, Leuj$i;->tv_tip_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->d:Landroid/widget/TextView;

    .line 1100
    sget v0, Leuj$i;->tv_tips:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->e:Landroid/widget/TextView;

    .line 1101
    sget v0, Leuj$i;->ll_cancel:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->g:Landroid/view/View;

    .line 1102
    sget v0, Leuj$i;->cancel:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->h:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1103
    sget v0, Leuj$i;->btn_right_text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->f:Landroid/widget/TextView;

    .line 1208
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject$CloseBtnType;->BLACK:Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject$CloseBtnType;

    .line 1209
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->i:Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;

    if-eqz v2, :cond_1

    .line 1210
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->i:Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;->getCloseBtnType()Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject$CloseBtnType;

    move-result-object v0

    .line 1212
    :cond_1
    sget-object v2, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity$4;->a:[I

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject$CloseBtnType;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 1220
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->h:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Leuj$f;->uidic_global_color_6_2:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 1107
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->g:Landroid/view/View;

    new-instance v2, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity$1;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1120
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->f:Landroid/widget/TextView;

    new-instance v2, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity$2;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1167
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->i:Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;

    if-eqz v0, :cond_6

    .line 1168
    const/4 v0, 0x1

    .line 1169
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->i:Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;

    iget v2, v2, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;->type:I

    sget-object v3, Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;->TYPE_ADD_EXTERNAL:Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;->valueOf()I

    move-result v3

    if-ne v2, v3, :cond_7

    .line 1170
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->c:Landroid/widget/ImageView;

    sget v3, Leuj$h;->teleconf_add_external_contact:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1171
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->d:Landroid/widget/TextView;

    sget v3, Leuj$l;->dt_conference_bizcall_add_extern_title:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1172
    sget v2, Leuj$l;->dt_conference_bizcall_add_extern_content:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->a(Ljava/lang/String;)V

    .line 1173
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->f:Landroid/widget/TextView;

    sget v3, Leuj$l;->dt_conference_bizcall_add_extern_confirm:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1183
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->i:Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;->getUrlFromMediaId()Ljava/lang/String;

    move-result-object v2

    .line 1184
    invoke-static {}, Levx;->a()Levx;

    move-result-object v3

    invoke-virtual {v3, v2}, Levx;->a(Ljava/lang/String;)Z

    move-result v3

    .line 1185
    if-eqz v3, :cond_9

    .line 1186
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1187
    invoke-static {}, Levx;->a()Levx;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Levx;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 1192
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->i:Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1193
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->i:Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1195
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->i:Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;->content:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1196
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->i:Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;->content:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->a(Ljava/lang/String;)V

    .line 1198
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->i:Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;->extension:Ljava/util/Map;

    if-eqz v0, :cond_6

    .line 1199
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->i:Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;->extension:Ljava/util/Map;

    const-string/jumbo v1, "jumpText"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1200
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1201
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    :cond_6
    return-void

    .line 1214
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->h:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Leuj$f;->uidic_global_color_6_5:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 1217
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->h:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Leuj$f;->uidic_global_color_6_2:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 1174
    :cond_7
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->i:Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;

    iget v2, v2, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;->type:I

    sget-object v3, Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;->TYPE_OPEN_BIZCALL:Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;->valueOf()I

    move-result v3

    if-ne v2, v3, :cond_8

    .line 1175
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->c:Landroid/widget/ImageView;

    sget v3, Leuj$h;->teleconf_new_senior_auth_user:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1176
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->d:Landroid/widget/TextView;

    sget v3, Leuj$l;->dt_conference_bizcall_open_title:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1177
    sget v2, Leuj$l;->dt_conference_bizcall_open_content:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->a(Ljava/lang/String;)V

    .line 1178
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->f:Landroid/widget/TextView;

    sget v3, Leuj$l;->dt_conference_bizcall_open_confirm:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 1179
    :cond_8
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->i:Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;

    iget v2, v2, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;->type:I

    sget-object v3, Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;->TYPE_GENERAL_URL_JUMP:Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;->valueOf()I

    move-result v3

    if-ne v2, v3, :cond_2

    move v0, v1

    .line 1181
    goto/16 :goto_1

    .line 1188
    :cond_9
    if-nez v0, :cond_3

    .line 1189
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1212
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 80
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 81
    const/4 v0, 0x1

    .line 83
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
