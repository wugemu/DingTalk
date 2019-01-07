.class public abstract Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
.source "ListViewWithArrowDialog.java"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:I

.field protected c:Lcom/alibaba/doraemon/image/ImageMagician;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Ljava/lang/String;

.field public j:Landroid/widget/AdapterView$OnItemClickListener;

.field public k:Landroid/view/View$OnClickListener;

.field private l:I

.field private m:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;-><init>(Landroid/content/Context;)V

    .line 36
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;->c:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 40
    const/16 v0, 0x11

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;->b:I

    .line 42
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;->l:I

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;->m:I

    .line 44
    const/16 v0, 0x31

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;->d:I

    .line 46
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;->e:I

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;->f:I

    .line 48
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;->g:I

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;->h:I

    .line 60
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;->a:Landroid/app/Activity;

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;->j:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method


# virtual methods
.method public abstract a()Landroid/widget/BaseAdapter;
.end method

.method public final a(III)V
    .locals 1
    .param p1, "arrowAlign"    # I
    .param p2, "left"    # I
    .param p3, "right"    # I

    .prologue
    .line 205
    const/4 v0, 0x5

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;->b:I

    .line 206
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;->l:I

    .line 207
    iput p3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;->m:I

    .line 208
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v10, -0x2

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/16 v8, 0x8

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;->requestWindowFeature(I)Z

    .line 66
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->onCreate(Landroid/os/Bundle;)V

    .line 1077
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;->getDialogActivity()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_5

    .line 1078
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcig$h;->layout_arrow_list_dialog:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1079
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;->setContentView(Landroid/view/View;)V

    .line 1086
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1087
    if-eqz v0, :cond_3

    .line 1088
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1089
    if-eqz v1, :cond_2

    .line 1090
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 1091
    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;->g:I

    if-nez v4, :cond_0

    .line 1092
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;->a:Landroid/app/Activity;

    const/high16 v5, 0x42000000    # 32.0f

    invoke-static {v4, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;->g:I

    .line 1094
    :cond_0
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;->g:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1095
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;->h:I

    if-eqz v2, :cond_1

    .line 1096
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;->h:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1098
    :cond_1
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;->e:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1099
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;->f:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1100
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1102
    :cond_2
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcig$c;->uidic_global_color_transparent:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1103
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;->d:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 1105
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;->setCanceledOnTouchOutside(Z)V

    .line 1110
    sget v0, Lcig$f;->iv_banner:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1112
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1113
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1161
    :goto_1
    sget v0, Lcig$f;->tv_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1163
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 1164
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1172
    :goto_2
    sget v0, Lcig$f;->iv_up_arrow:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1174
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1175
    if-nez v0, :cond_4

    .line 1176
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1179
    :cond_4
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;->b:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1180
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;->l:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;->m:I

    .line 1182
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 1180
    invoke-virtual {v0, v2, v9, v3, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1184
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1188
    sget v0, Lcig$f;->list_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 1189
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;->a()Landroid/widget/BaseAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1190
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 74
    return-void

    .line 1081
    :cond_5
    sget v0, Lcig$h;->layout_arrow_list_dialog:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;->setContentView(I)V

    goto/16 :goto_0

    .line 1120
    :cond_6
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;->i:Ljava/lang/String;

    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdObj(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1121
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;->i:Ljava/lang/String;

    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 1126
    :goto_3
    if-nez v2, :cond_7

    .line 1127
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 1122
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 1123
    :goto_4
    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    move-object v1, v3

    goto :goto_3

    .line 1131
    :cond_7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1132
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1136
    :cond_8
    invoke-virtual {v2}, Lcom/laiwang/protocol/media/MediaId;->getWidth()I

    move-result v4

    int-to-float v4, v4

    .line 1137
    invoke-virtual {v2}, Lcom/laiwang/protocol/media/MediaId;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 1138
    cmpl-float v5, v4, v6

    if-nez v5, :cond_9

    .line 1139
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1143
    :cond_9
    div-float/2addr v2, v4

    .line 1144
    const/high16 v4, 0x40000000    # 2.0f

    cmpl-float v4, v2, v4

    if-gtz v4, :cond_a

    cmpg-float v4, v2, v6

    if-gez v4, :cond_b

    .line 1145
    :cond_a
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1149
    :cond_b
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 1150
    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;->g:I

    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;->a:Landroid/app/Activity;

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v6, v7}, Lcms;->c(Landroid/content/Context;F)I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1151
    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v5, v5

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1153
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1154
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;->k:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_c

    .line 1155
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1157
    :cond_c
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;->c:Lcom/alibaba/doraemon/image/ImageMagician;

    invoke-interface {v2, v0, v1, v3}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto/16 :goto_1

    .line 1166
    :cond_d
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1122
    :catch_1
    move-exception v1

    goto :goto_4
.end method
