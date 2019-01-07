.class public Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;
.super Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseBleFragment;
.source "StaticIpFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/view/View;

.field private j:Lbsy$b;

.field private k:Lbsy$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseBleFragment;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->a:I

    .line 345
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment$4;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->j:Lbsy$b;

    .line 379
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment$5;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment$5;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->k:Lbsy$c;

    .line 427
    return-void
.end method

.method private E()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->m()Lbsw$b;

    move-result-object v0

    .line 261
    .local v0, "dataSource":Lbsw$b;
    if-eqz v0, :cond_0

    .line 262
    invoke-interface {v0}, Lbsw$b;->r()Z

    move-result v1

    .line 264
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private K()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 320
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->d:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, "ipaddress":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 322
    .local v3, "subnetmask":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->f:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "gateway":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 325
    .local v2, "preferredDns":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 326
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 327
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 328
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 329
    :cond_0
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->i:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 333
    :goto_0
    return-void

    .line 331
    :cond_1
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->i:Landroid/view/View;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method private a(Landroid/widget/EditText;Z)V
    .locals 2
    .param p1, "editText"    # Landroid/widget/EditText;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "error"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 420
    if-eqz p2, :cond_0

    .line 421
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lbrx$b;->device_red:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 425
    :goto_0
    return-void

    .line 423
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lbrx$b;->device_config_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;)V
    .locals 10
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 34
    .line 1158
    iget v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->a:I

    if-nez v0, :cond_0

    .line 1161
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1162
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1163
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 1164
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 1166
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 1168
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1169
    sget v0, Lbrx$g;->dt_smart_device_config_static_ip_input_error_tips_1:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1245
    :cond_0
    :goto_0
    return-void

    .line 1173
    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1174
    sget v0, Lbrx$g;->dt_smart_device_config_static_ip_input_error_tips_2:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 1178
    :cond_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1179
    sget v0, Lbrx$g;->dt_smart_device_config_static_ip_input_error_tips_3:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 1183
    :cond_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1184
    sget v0, Lbrx$g;->dt_smart_device_config_static_ip_input_error_tips_4:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 1190
    :cond_4
    invoke-static {v4}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1192
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->d:Landroid/widget/EditText;

    invoke-direct {p0, v0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->a(Landroid/widget/EditText;Z)V

    move v0, v1

    .line 1197
    :goto_1
    invoke-static {v5}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->b(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 1199
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->e:Landroid/widget/EditText;

    invoke-direct {p0, v0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->a(Landroid/widget/EditText;Z)V

    move v0, v1

    .line 1204
    :goto_2
    invoke-static {v6}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->b(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 1206
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->f:Landroid/widget/EditText;

    invoke-direct {p0, v0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->a(Landroid/widget/EditText;Z)V

    move v0, v1

    .line 1211
    :goto_3
    invoke-static {v7}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->b(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 1213
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->g:Landroid/widget/EditText;

    invoke-direct {p0, v0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->a(Landroid/widget/EditText;Z)V

    move v0, v1

    .line 1218
    :goto_4
    invoke-static {v8}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->b(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 1220
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->h:Landroid/widget/EditText;

    invoke-direct {p0, v0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->a(Landroid/widget/EditText;Z)V

    .line 1225
    :goto_5
    if-eqz v1, :cond_e

    .line 1226
    new-instance v0, Lbsm;

    invoke-direct {v0}, Lbsm;-><init>()V

    .line 1227
    iput-object v4, v0, Lbsm;->a:Ljava/lang/String;

    .line 1228
    iput-object v5, v0, Lbsm;->b:Ljava/lang/String;

    .line 1229
    iput-object v6, v0, Lbsm;->c:Ljava/lang/String;

    .line 1230
    iput-object v7, v0, Lbsm;->d:Ljava/lang/String;

    .line 1231
    iput-object v8, v0, Lbsm;->e:Ljava/lang/String;

    .line 1233
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->m()Lbsw$b;

    move-result-object v1

    .line 1234
    if-eqz v1, :cond_5

    .line 1235
    invoke-interface {v1, v0}, Lbsw$b;->a(Lbsm;)V

    .line 1238
    :cond_5
    invoke-direct {p0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->b(I)V

    .line 1240
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->E()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1269
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->m()Lbsw$b;

    move-result-object v0

    .line 1270
    if-eqz v0, :cond_c

    .line 1271
    invoke-interface {v0}, Lbsw$b;->B()Ljava/lang/String;

    move-result-object v0

    .line 1278
    :goto_6
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->m()Lbsw$b;

    move-result-object v1

    .line 1279
    if-eqz v1, :cond_6

    .line 1280
    invoke-interface {v1}, Lbsw$b;->C()Ljava/lang/String;

    move-result-object v3

    .line 1241
    :cond_6
    invoke-virtual {p0, v0, v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1194
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->d:Landroid/widget/EditText;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->a(Landroid/widget/EditText;Z)V

    move v0, v2

    goto :goto_1

    .line 1201
    :cond_8
    iget-object v9, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->e:Landroid/widget/EditText;

    invoke-direct {p0, v9, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->a(Landroid/widget/EditText;Z)V

    goto :goto_2

    .line 1208
    :cond_9
    iget-object v9, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->f:Landroid/widget/EditText;

    invoke-direct {p0, v9, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->a(Landroid/widget/EditText;Z)V

    goto :goto_3

    .line 1215
    :cond_a
    iget-object v9, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->g:Landroid/widget/EditText;

    invoke-direct {p0, v9, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->a(Landroid/widget/EditText;Z)V

    goto :goto_4

    .line 1222
    :cond_b
    iget-object v9, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->h:Landroid/widget/EditText;

    invoke-direct {p0, v9, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->a(Landroid/widget/EditText;Z)V

    move v1, v0

    goto :goto_5

    :cond_c
    move-object v0, v3

    .line 1273
    goto :goto_6

    .line 1243
    :cond_d
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->j()V

    goto/16 :goto_0

    .line 1246
    :cond_e
    sget v0, Lbrx$g;->dt_smart_device_config_static_ip_input_error:I

    invoke-static {v0}, Lcms;->a(I)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;
    .param p1, "x1"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;Landroid/widget/EditText;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;
    .param p1, "x1"    # Landroid/widget/EditText;
    .param p2, "x2"    # Z

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->a(Landroid/widget/EditText;Z)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private b(I)V
    .locals 4
    .param p1, "state"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 286
    iput p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->a:I

    .line 287
    if-ne p1, v1, :cond_0

    .line 289
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 290
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 291
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->f:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 292
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 293
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->h:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 295
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->c:Landroid/widget/TextView;

    sget v1, Lbrx$g;->dt_device_config_wifi_connecting:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 316
    :goto_0
    return-void

    .line 297
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 299
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 300
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->f:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 301
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 302
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->h:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 304
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->b:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->c:Landroid/widget/TextView;

    sget v1, Lbrx$g;->dt_door_guard_connected_wifi:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 308
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 309
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->f:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 310
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 311
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->h:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 313
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->b:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->c:Landroid/widget/TextView;

    sget v1, Lbrx$g;->dt_smart_device_config_static_ip_apply:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->E()Z

    move-result v0

    return v0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 251
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    const/4 v1, 0x1

    .line 255
    :goto_0
    return v1

    .line 254
    :cond_0
    const-string/jumbo v1, "(25[0-5]|2[0-4]\\d|1\\d{2}|[1-9]\\d|[1-9])\\.(25[0-5]|2[0-4]\\d|1\\d{1,2}|\\d{2}|\\d)\\.(25[0-5]|2[0-4]\\d|1\\d{1,2}|\\d{2}|\\d)\\.(25[0-5]|2[0-4]\\d|1\\d{1,2}|\\d{2}|\\d)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 255
    .local v0, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->K()V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 337
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseBleFragment;->onDestroy()V

    .line 338
    const-string/jumbo v0, "StaticIpFragment"

    const-string/jumbo v1, "unregisterWifiConnectStateListener"

    invoke-static {v0, v1}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v1, "sdevice_fs_wire_static_ip_enable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->j:Lbsy$b;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->b(Lbsy$b;)V

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->k:Lbsy$c;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->b(Lbsy$a;)V

    .line 343
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 68
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseBleFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 70
    sget v3, Lbrx$d;->state_loading:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->a(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->b:Landroid/view/View;

    .line 71
    sget v3, Lbrx$d;->state_text:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->a(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->c:Landroid/widget/TextView;

    .line 73
    sget v3, Lbrx$d;->et_ipaddress:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->d:Landroid/widget/EditText;

    .line 74
    sget v3, Lbrx$d;->et_subnetmask:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->e:Landroid/widget/EditText;

    .line 75
    sget v3, Lbrx$d;->et_gateway:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->f:Landroid/widget/EditText;

    .line 76
    sget v3, Lbrx$d;->et_preferred_dns:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->g:Landroid/widget/EditText;

    .line 77
    sget v3, Lbrx$d;->et_alternative_dns:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->h:Landroid/widget/EditText;

    .line 80
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->h:Landroid/widget/EditText;

    new-instance v4, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment$1;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment$1;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 91
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->d:Landroid/widget/EditText;

    new-instance v4, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment$a;

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->d:Landroid/widget/EditText;

    invoke-direct {v4, p0, v5, v6}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment$a;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;Landroid/widget/EditText;B)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 92
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->e:Landroid/widget/EditText;

    new-instance v4, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment$a;

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->e:Landroid/widget/EditText;

    invoke-direct {v4, p0, v5, v6}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment$a;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;Landroid/widget/EditText;B)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 93
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->f:Landroid/widget/EditText;

    new-instance v4, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment$a;

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->f:Landroid/widget/EditText;

    invoke-direct {v4, p0, v5, v6}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment$a;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;Landroid/widget/EditText;B)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 94
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->g:Landroid/widget/EditText;

    new-instance v4, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment$a;

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->g:Landroid/widget/EditText;

    invoke-direct {v4, p0, v5, v6}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment$a;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;Landroid/widget/EditText;B)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 95
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->h:Landroid/widget/EditText;

    new-instance v4, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment$a;

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->h:Landroid/widget/EditText;

    invoke-direct {v4, p0, v5, v6}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment$a;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;Landroid/widget/EditText;B)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 97
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->m()Lbsw$b;

    move-result-object v1

    .line 98
    .local v1, "dataSource":Lbsw$b;
    if-nez v1, :cond_6

    const/4 v0, 0x0

    .line 99
    .local v0, "config":Lbsm;
    :goto_0
    if-eqz v0, :cond_4

    .line 100
    iget-object v3, v0, Lbsm;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 101
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->d:Landroid/widget/EditText;

    iget-object v4, v0, Lbsm;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :cond_0
    iget-object v3, v0, Lbsm;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 105
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->e:Landroid/widget/EditText;

    iget-object v4, v0, Lbsm;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 108
    :cond_1
    iget-object v3, v0, Lbsm;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 109
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->f:Landroid/widget/EditText;

    iget-object v4, v0, Lbsm;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 112
    :cond_2
    iget-object v3, v0, Lbsm;->d:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 113
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->g:Landroid/widget/EditText;

    iget-object v4, v0, Lbsm;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 116
    :cond_3
    iget-object v3, v0, Lbsm;->e:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 117
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->h:Landroid/widget/EditText;

    iget-object v4, v0, Lbsm;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 121
    :cond_4
    new-instance v2, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment$2;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;)V

    .line 133
    .local v2, "listener":Landroid/view/View$OnFocusChangeListener;
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->d:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 134
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 135
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->f:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 136
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 137
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->h:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 139
    sget v3, Lbrx$d;->confirm_button:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->i:Landroid/view/View;

    .line 140
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->i:Landroid/view/View;

    new-instance v4, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment$3;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment$3;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    invoke-direct {p0, v6}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->b(I)V

    .line 148
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->K()V

    .line 149
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->k:Lbsy$c;

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->a(Lbsy$a;)V

    .line 150
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    const-string/jumbo v4, "sdevice_fs_wire_static_ip_enable"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 151
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->j:Lbsy$b;

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;->a(Lbsy$b;)V

    .line 153
    :cond_5
    const-string/jumbo v3, "StaticIpFragment"

    const-string/jumbo v4, "registerWifiConnectStateListener"

    invoke-static {v3, v4}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void

    .line 98
    .end local v0    # "config":Lbsm;
    .end local v2    # "listener":Landroid/view/View$OnFocusChangeListener;
    :cond_6
    invoke-interface {v1}, Lbsw$b;->q()Lbsm;

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 63
    sget v0, Lbrx$e;->activity_device_config_static_ip:I

    return v0
.end method
