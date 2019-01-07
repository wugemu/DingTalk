.class public final Ladc;
.super Landroid/widget/BaseExpandableListAdapter;
.source "MailSignListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ladc$c;,
        Ladc$a;,
        Ladc$b;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Laca;

.field public final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/app/Activity;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laca;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ladc$c;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Z

.field private k:J

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private volatile n:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Ladc$c;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "email"    # Ljava/lang/String;
    .param p4, "listener"    # Ladc$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Laca;",
            ">;",
            "Ladc$c;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "dos":Ljava/util/List;, "Ljava/util/List<Laca;>;"
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 45
    const-string/jumbo v0, "MailSignListAdapter"

    iput-object v0, p0, Ladc;->a:Ljava/lang/String;

    .line 49
    iput-boolean v1, p0, Ladc;->b:Z

    .line 301
    iput-boolean v1, p0, Ladc;->n:Z

    .line 313
    const/4 v0, 0x0

    iput-object v0, p0, Ladc;->c:Laca;

    .line 356
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ladc;->d:Ljava/util/Set;

    .line 59
    iput-object p1, p0, Ladc;->e:Landroid/app/Activity;

    .line 60
    iput-object p3, p0, Ladc;->f:Ljava/util/List;

    .line 61
    iput-object p4, p0, Ladc;->g:Ladc$c;

    .line 62
    iput-object p2, p0, Ladc;->h:Ljava/lang/String;

    .line 63
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->v()Z

    move-result v0

    iput-boolean v0, p0, Ladc;->i:Z

    .line 64
    invoke-static {}, Lacn;->h()Z

    move-result v0

    iput-boolean v0, p0, Ladc;->j:Z

    .line 65
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ladc;->k:J

    .line 66
    iget-object v0, p0, Ladc;->e:Landroid/app/Activity;

    sget v1, Laxo$i;->dt_mail_signature_open_orgsignature_onstep_admin:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ladc;->l:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Ladc;->e:Landroid/app/Activity;

    sget v1, Laxo$i;->dt_mail_signature_open_orgsignature_already_admin:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ladc;->m:Ljava/lang/String;

    .line 70
    return-void
.end method

.method static synthetic a(Ladc;)Ladc$c;
    .locals 1
    .param p0, "x0"    # Ladc;

    .prologue
    .line 43
    iget-object v0, p0, Ladc;->g:Ladc$c;

    return-object v0
.end method

.method static synthetic a(Ladc;Z)Z
    .locals 1
    .param p0, "x0"    # Ladc;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Ladc;->b:Z

    return v0
.end method


# virtual methods
.method public final getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 91
    iget-object v0, p0, Ladc;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 101
    int-to-long v0, p2

    return-wide v0
.end method

.method public final getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 164
    if-nez p4, :cond_2

    .line 165
    move-object/from16 v0, p0

    iget-object v14, v0, Ladc;->e:Landroid/app/Activity;

    invoke-static {v14}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    sget v15, Laxo$g;->alm_cmail_fragment_mail_sign_list_child:I

    const/16 v16, 0x0

    move-object/from16 v0, p5

    move/from16 v1, v16

    invoke-virtual {v14, v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    .line 167
    new-instance v3, Ladc$a;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Ladc$a;-><init>(Ladc;)V

    .line 168
    .local v3, "childViewHolder":Ladc$a;
    sget v14, Laxo$f;->personal_sign_content:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    iput-object v14, v3, Ladc$a;->a:Landroid/widget/EditText;

    .line 169
    sget v14, Laxo$f;->enterprise_sign_content_layout:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    iput-object v14, v3, Ladc$a;->b:Landroid/view/View;

    .line 171
    sget v14, Laxo$f;->enterprise_sign_content:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    iput-object v14, v3, Ladc$a;->d:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    .line 172
    move-object/from16 v0, p0

    iget-object v14, v0, Ladc;->d:Ljava/util/Set;

    iget-object v15, v3, Ladc$a;->d:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-interface {v14, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 173
    sget v14, Laxo$f;->enterprise_switch_template:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v3, Ladc$a;->e:Landroid/widget/TextView;

    .line 174
    sget v14, Laxo$f;->enterprise_modify_content:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v3, Ladc$a;->g:Landroid/widget/TextView;

    .line 175
    sget v14, Laxo$f;->tv_mail_sign_template_overlay:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v3, Ladc$a;->c:Landroid/widget/TextView;

    .line 176
    sget v14, Laxo$f;->sing_open_by_admin_status:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v3, Ladc$a;->f:Landroid/widget/TextView;

    .line 177
    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 182
    :goto_0
    invoke-virtual/range {p0 .. p1}, Ladc;->getGroup(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laca;

    .line 184
    .local v12, "sign":Laca;
    invoke-virtual {v12}, Laca;->b()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 185
    iget-object v14, v3, Ladc$a;->a:Landroid/widget/EditText;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setVisibility(I)V

    .line 186
    iget-object v14, v3, Ladc$a;->b:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iget-object v14, v3, Ladc$a;->d:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    .line 1303
    if-eqz v14, :cond_0

    .line 1306
    move-object/from16 v0, p0

    iget-boolean v15, v0, Ladc;->n:Z

    if-nez v15, :cond_3

    .line 1307
    invoke-virtual {v14}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->resumeTimers()V

    .line 188
    :cond_0
    :goto_1
    new-instance v4, Lsh;

    invoke-direct {v4}, Lsh;-><init>()V

    .line 189
    .local v4, "config":Lsh;
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 190
    .local v7, "localDisplayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v14, v0, Ladc;->e:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v14

    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 191
    iget v14, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v14, v14

    iget v15, v7, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v14, v15

    iput v14, v4, Lsh;->b:F

    .line 192
    const/high16 v14, 0x41900000    # 18.0f

    iget v15, v7, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v14, v15

    iget v15, v7, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v14, v15

    iput v14, v4, Lsh;->c:F

    .line 193
    iget-object v14, v3, Ladc$a;->d:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-static {v14}, Lafh;->a(Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;)V

    .line 195
    const-string/jumbo v14, "<!DOCTYPE html><html lang=\"en\"><head><meta charset=\"UTF-8\"><meta name=\"viewport\" content=\"width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no\" ></head><body>%s</body></html>"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    iget-object v0, v12, Laca;->t:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 196
    .local v6, "htmlContent":Ljava/lang/String;
    iget-object v14, v3, Ladc$a;->d:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-virtual {v14, v6, v6, v4}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->a(Ljava/lang/String;Ljava/lang/String;Lsh;)Z

    .line 198
    iget-object v14, v3, Ladc$a;->d:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->setVerticalScrollBarEnabled(Z)V

    .line 199
    iget-object v14, v3, Ladc$a;->d:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 200
    iget-object v14, v3, Ladc$a;->e:Landroid/widget/TextView;

    new-instance v15, Ladc$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v12}, Ladc$1;-><init>(Ladc;Laca;)V

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v14, v3, Ladc$a;->c:Landroid/widget/TextView;

    new-instance v15, Ladc$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v12}, Ladc$2;-><init>(Ladc;Laca;)V

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v14, v3, Ladc$a;->g:Landroid/widget/TextView;

    new-instance v15, Ladc$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v12}, Ladc$3;-><init>(Ladc;Laca;)V

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    move-object/from16 v0, p0

    iget-boolean v14, v0, Ladc;->i:Z

    if-nez v14, :cond_1

    move-object/from16 v0, p0

    iget-boolean v14, v0, Ladc;->j:Z

    if-nez v14, :cond_4

    .line 298
    .end local v4    # "config":Lsh;
    .end local v6    # "htmlContent":Ljava/lang/String;
    .end local v7    # "localDisplayMetrics":Landroid/util/DisplayMetrics;
    :cond_1
    :goto_2
    return-object p4

    .line 179
    .end local v3    # "childViewHolder":Ladc$a;
    .end local v12    # "sign":Laca;
    :cond_2
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ladc$a;

    .restart local v3    # "childViewHolder":Ladc$a;
    goto/16 :goto_0

    .line 1309
    .restart local v12    # "sign":Laca;
    :cond_3
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Ladc;->n:Z

    goto/16 :goto_1

    .line 233
    .restart local v4    # "config":Lsh;
    .restart local v6    # "htmlContent":Ljava/lang/String;
    .restart local v7    # "localDisplayMetrics":Landroid/util/DisplayMetrics;
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Ladc;->h:Ljava/lang/String;

    invoke-static {v14}, Lacn;->e(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v9

    .line 234
    .local v9, "org":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v14

    .line 2105
    iget-object v8, v14, Lacr;->g:Ljava/util/List;

    .line 235
    .local v8, "models":Ljava/util/List;, "Ljava/util/List<Labk;>;"
    if-eqz v9, :cond_5

    if-nez v8, :cond_6

    .line 236
    :cond_5
    iget-object v14, v3, Ladc$a;->f:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Ladc;->l:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 238
    :cond_6
    if-eqz v9, :cond_7

    invoke-static {v9}, Lacn;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 239
    iget-wide v14, v9, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    move-object/from16 v0, p0

    iput-wide v14, v0, Ladc;->k:J

    .line 242
    :cond_7
    const/4 v5, 0x0

    .line 243
    .local v5, "flag":Z
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_8
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labk;

    .line 244
    .local v2, "adminOrgModel":Labk;
    if-eqz v2, :cond_8

    .line 245
    iget-object v15, v2, Labk;->a:Ljava/lang/Long;

    const-wide/16 v16, -0x1

    invoke-static/range {v15 .. v17}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v10

    .line 246
    .local v10, "orgId":J
    iget-wide v0, v9, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    move-wide/from16 v16, v0

    cmp-long v15, v10, v16

    if-nez v15, :cond_8

    .line 247
    const/4 v5, 0x1

    .line 248
    iget-object v14, v2, Labk;->f:Ljava/lang/Boolean;

    .line 3022
    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v13

    .line 249
    .local v13, "status":Z
    iget-object v15, v3, Ladc$a;->f:Landroid/widget/TextView;

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Ladc;->m:Ljava/lang/String;

    :goto_3
    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    .end local v2    # "adminOrgModel":Labk;
    .end local v10    # "orgId":J
    .end local v13    # "status":Z
    :cond_9
    if-nez v5, :cond_1

    .line 256
    iget-object v14, v3, Ladc$a;->f:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Ladc;->l:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 249
    .restart local v2    # "adminOrgModel":Labk;
    .restart local v10    # "orgId":J
    .restart local v13    # "status":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Ladc;->l:Ljava/lang/String;

    goto :goto_3

    .line 276
    .end local v2    # "adminOrgModel":Labk;
    .end local v4    # "config":Lsh;
    .end local v5    # "flag":Z
    .end local v6    # "htmlContent":Ljava/lang/String;
    .end local v7    # "localDisplayMetrics":Landroid/util/DisplayMetrics;
    .end local v8    # "models":Ljava/util/List;, "Ljava/util/List<Labk;>;"
    .end local v9    # "org":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .end local v10    # "orgId":J
    .end local v13    # "status":Z
    :cond_b
    iget-object v14, v3, Ladc$a;->a:Landroid/widget/EditText;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setVisibility(I)V

    .line 277
    iget-object v14, v3, Ladc$a;->a:Landroid/widget/EditText;

    iget-object v15, v12, Laca;->j:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v14, v3, Ladc$a;->b:Landroid/view/View;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 279
    iget-object v14, v3, Ladc$a;->a:Landroid/widget/EditText;

    new-instance v15, Ladc$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v12}, Ladc$4;-><init>(Ladc;Laca;)V

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_2
.end method

.method public final getChildrenCount(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public final getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 85
    iget-object v0, p0, Ladc;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getGroupCount()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Ladc;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 96
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 133
    if-nez p3, :cond_0

    .line 134
    iget-object v2, p0, Ladc;->e:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Laxo$g;->alm_cmail_fragment_mail_sign_list_group:I

    invoke-virtual {v2, v3, p4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 136
    new-instance v0, Ladc$b;

    invoke-direct {v0, p0}, Ladc$b;-><init>(Ladc;)V

    .line 137
    .local v0, "groupViewHolder":Ladc$b;
    sget v2, Laxo$f;->mail_sign_is_select:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Ladc$b;->a:Landroid/view/View;

    .line 138
    sget v2, Laxo$f;->mail_sign_title:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Ladc$b;->b:Landroid/widget/TextView;

    .line 139
    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 144
    :goto_0
    invoke-virtual {p0, p1}, Ladc;->getGroup(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laca;

    .line 146
    .local v1, "sign":Laca;
    invoke-virtual {v1}, Laca;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 147
    iget-object v2, v0, Ladc$b;->b:Landroid/widget/TextView;

    iget-object v3, p0, Ladc;->e:Landroid/app/Activity;

    sget v4, Laxo$i;->dt_mail_signature_enterprise:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    :goto_1
    invoke-virtual {v1}, Laca;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 153
    iget-object v2, v0, Ladc$b;->a:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 158
    :goto_2
    return-object p3

    .line 141
    .end local v0    # "groupViewHolder":Ladc$b;
    .end local v1    # "sign":Laca;
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladc$b;

    .restart local v0    # "groupViewHolder":Ladc$b;
    goto :goto_0

    .line 149
    .restart local v1    # "sign":Laca;
    :cond_1
    iget-object v2, v0, Ladc$b;->b:Landroid/widget/TextView;

    iget-object v3, p0, Ladc;->e:Landroid/app/Activity;

    sget v4, Laxo$i;->dt_mail_signature_personal_v1:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 155
    :cond_2
    iget-object v2, v0, Ladc$b;->a:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public final hasStableIds()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public final isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 111
    const/4 v0, 0x1

    return v0
.end method
