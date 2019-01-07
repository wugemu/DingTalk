.class final Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$b;
.super Ljava/lang/Object;
.source "GuideDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;Landroid/view/View;)V
    .locals 1
    .param p2, "convertView"    # Landroid/view/View;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$b;->a:Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    sget v0, Lbtp$e;->iv_cover:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$b;->b:Landroid/widget/ImageView;

    .line 137
    sget v0, Lbtp$e;->tv_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$b;->c:Landroid/widget/TextView;

    .line 138
    sget v0, Lbtp$e;->tv_action:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$b;->d:Landroid/widget/TextView;

    .line 139
    sget v0, Lbtp$e;->layout_action:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$b;->e:Landroid/view/View;

    .line 141
    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 142
    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;Landroid/view/View;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;
    .param p2, "x1"    # Landroid/view/View;

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$b;-><init>(Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$b;Lbxi;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$b;
    .param p1, "x1"    # Lbxi;

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x41800000    # 16.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 128
    .line 1145
    if-eqz p1, :cond_0

    .line 1150
    iget v0, p1, Lbxi;->a:I

    packed-switch v0, :pswitch_data_0

    .line 1168
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "showGuide, receive wrong type="

    aput-object v1, v0, v6

    iget v1, p1, Lbxi;->a:I

    .line 1169
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 1168
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2013
    const-string/jumbo v1, "live"

    invoke-static {v1, v4, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    :cond_0
    :goto_0
    return-void

    .line 1152
    :pswitch_0
    sget v0, Lbtp$g;->and_create_org_rightnow:I

    .line 1153
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$b;->c:Landroid/widget/TextView;

    sget v2, Lbtp$g;->dt_mail_create_team:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1154
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$b;->b:Landroid/widget/ImageView;

    sget v2, Lbtp$d;->live_permission_create_team:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1172
    :goto_1
    iget v1, p1, Lbxi;->b:I

    if-ne v1, v3, :cond_1

    .line 1173
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$b;->d:Landroid/widget/TextView;

    sget v1, Lbtp$g;->dt_ding_already_finished:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1174
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$b;->d:Landroid/widget/TextView;

    .line 2205
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$b;->a:Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lbtp$g;->icon_bluetooth_fail:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2206
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$b;->a:Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lbtp$b;->ui_common_green_icon_bg_color:I

    invoke-static {v2, v3}, Ldp;->c(Landroid/content/Context;I)I

    move-result v2

    .line 2208
    new-instance v3, Lecw;

    invoke-direct {v3, v1, v2}, Lecw;-><init>(Ljava/lang/String;I)V

    .line 2209
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$b;->a:Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    .line 3070
    iput v1, v3, Lecw;->a:I

    .line 2210
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$b;->a:Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    .line 3079
    iput v1, v3, Lecw;->b:I

    .line 1174
    invoke-virtual {v0, v3, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1175
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$b;->e:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 1176
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$b;->e:Landroid/view/View;

    sget v1, Lbtp$d;->ui_common_level3_button_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1183
    :goto_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$b;->e:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1184
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$b;->e:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1157
    :pswitch_1
    sget v0, Lbtp$g;->dt_lv_org_manager_auth_alert_confirm:I

    .line 1158
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$b;->c:Landroid/widget/TextView;

    sget v2, Lbtp$g;->dt_lv_live_certify_org:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1159
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$b;->b:Landroid/widget/ImageView;

    sget v2, Lbtp$d;->live_permission_org_certification:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1162
    :pswitch_2
    sget v0, Lbtp$g;->dt_lv_realname_alert_confirm:I

    .line 1163
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$b;->c:Landroid/widget/TextView;

    sget v2, Lbtp$g;->dt_user_profile_certify_title:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1164
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$b;->b:Landroid/widget/ImageView;

    sget v2, Lbtp$d;->live_permission_personal_certification:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 1178
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$b;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1179
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$b;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1180
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$b;->e:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1181
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$b;->e:Landroid/view/View;

    sget v1, Lbtp$d;->ui_common_level1_button_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 1150
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 189
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 190
    .local v0, "id":I
    sget v2, Lbtp$e;->layout_action:I

    if-ne v0, v2, :cond_0

    .line 191
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lbxi;

    if-nez v2, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbxi;

    .line 195
    .local v1, "object":Lbxi;
    iget v2, v1, Lbxi;->b:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 199
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$b;->a:Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;->dismiss()V

    .line 200
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$b;->a:Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;->b(Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Lbty;->a(Landroid/app/Activity;Lbxi;)V

    goto :goto_0
.end method
