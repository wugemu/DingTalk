.class public final Lcuv;
.super Ljava/lang/Object;
.source "EmotionPackageViewHolder.java"


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/view/View;

.field d:Landroid/app/Activity;

.field e:Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;

.field public f:J

.field private g:Landroid/widget/AbsListView;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/ProgressBar;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/TextView;

.field private p:Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter$MODE;


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;Landroid/app/Activity;Landroid/view/View;Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter$MODE;)V
    .locals 2
    .param p1, "parent"    # Landroid/widget/AbsListView;
    .param p2, "context"    # Landroid/app/Activity;
    .param p3, "rootView"    # Landroid/view/View;
    .param p4, "adapter"    # Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;
    .param p5, "mode"    # Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter$MODE;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcuv;->g:Landroid/widget/AbsListView;

    .line 52
    iput-object p2, p0, Lcuv;->d:Landroid/app/Activity;

    .line 53
    iput-object p3, p0, Lcuv;->h:Landroid/view/View;

    .line 54
    iput-object p4, p0, Lcuv;->e:Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;

    .line 55
    iput-object p5, p0, Lcuv;->p:Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter$MODE;

    .line 56
    iput-object p3, p0, Lcuv;->h:Landroid/view/View;

    .line 57
    iget-object v0, p0, Lcuv;->h:Landroid/view/View;

    sget v1, Lctk$f;->iv_emotion_thumbnail:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcuv;->i:Landroid/widget/ImageView;

    .line 58
    iget-object v0, p0, Lcuv;->h:Landroid/view/View;

    sget v1, Lctk$f;->tv_emotion_package_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcuv;->j:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lcuv;->h:Landroid/view/View;

    sget v1, Lctk$f;->tv_emotion_package_desc:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcuv;->k:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Lcuv;->h:Landroid/view/View;

    sget v1, Lctk$f;->btn_download_emotion:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcuv;->a:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lcuv;->h:Landroid/view/View;

    sget v1, Lctk$f;->pb_download_emotion:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcuv;->l:Landroid/widget/ProgressBar;

    .line 62
    iget-object v0, p0, Lcuv;->h:Landroid/view/View;

    sget v1, Lctk$f;->iv_download_done:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcuv;->m:Landroid/widget/ImageView;

    .line 63
    iget-object v0, p0, Lcuv;->h:Landroid/view/View;

    sget v1, Lctk$f;->btn_remove_emotion:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcuv;->b:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcuv;->h:Landroid/view/View;

    sget v1, Lctk$f;->iv_sort:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcuv;->n:Landroid/widget/ImageView;

    .line 65
    iget-object v0, p0, Lcuv;->h:Landroid/view/View;

    sget v1, Lctk$f;->tv_already_off_loading:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcuv;->o:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lcuv;->h:Landroid/view/View;

    sget v1, Lctk$f;->bottom_line:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcuv;->c:Landroid/view/View;

    .line 67
    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;)V
    .locals 4
    .param p1, "emotionPackageObject"    # Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 87
    .line 1094
    iget-object v0, p0, Lcuv;->j:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1098
    iget-object v0, p0, Lcuv;->k:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->shortDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1102
    iget-object v0, p0, Lcuv;->i:Landroid/widget/ImageView;

    sget v1, Lctk$e;->emotion_placeholder:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1103
    iget-object v0, p0, Lcuv;->i:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->packageId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcuv;->i:Landroid/widget/ImageView;

    .line 1104
    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 1103
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1107
    :cond_0
    iget-object v0, p0, Lcuv;->i:Landroid/widget/ImageView;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->packageId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1108
    iget-object v0, p0, Lcuv;->g:Landroid/widget/AbsListView;

    iget-object v1, p0, Lcuv;->i:Landroid/widget/ImageView;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->packageId:J

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkim/imtools/EmotionShowUtils;->a(Landroid/widget/AbsListView;Landroid/widget/ImageView;J)V

    .line 90
    :cond_1
    invoke-virtual {p0, p1}, Lcuv;->b(Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;)V

    .line 91
    return-void
.end method

.method public final b(Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;)V
    .locals 7
    .param p1, "emotionPackageObject"    # Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v6, 0x64

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 113
    if-nez p1, :cond_0

    .line 114
    iget-object v1, p0, Lcuv;->e:Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;

    invoke-virtual {v1, p1}, Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;->a(Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;)V

    .line 192
    :goto_0
    return-void

    .line 117
    :cond_0
    iget v1, p1, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->state:I

    sget-object v2, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject$EMOTION_OFFLINE_STATUS;->OFFLINE:Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject$EMOTION_OFFLINE_STATUS;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject$EMOTION_OFFLINE_STATUS;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 118
    iget-object v1, p0, Lcuv;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    iget-object v1, p0, Lcuv;->n:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    iget-object v1, p0, Lcuv;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    iget-object v1, p0, Lcuv;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 122
    iget-object v1, p0, Lcuv;->m:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    iget-object v1, p0, Lcuv;->o:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 126
    :cond_1
    iget-object v1, p0, Lcuv;->o:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    sget-object v1, Lcuv$5;->b:[I

    iget-object v2, p0, Lcuv;->p:Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter$MODE;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter$MODE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 129
    :pswitch_0
    iget-object v1, p0, Lcuv;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    iget-object v1, p0, Lcuv;->n:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    iget-object v1, p0, Lcuv;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    iget-object v1, p0, Lcuv;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 133
    iget-object v1, p0, Lcuv;->m:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    invoke-static {}, Ldpt;->a()Ldpt;

    move-result-object v1

    iget-wide v2, p1, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->packageId:J

    invoke-virtual {v1, v2, v3}, Ldpt;->a(J)Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;

    move-result-object v0

    .line 136
    .local v0, "downloaderData":Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;
    sget-object v1, Lcuv$5;->a:[I

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;->h:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 138
    :pswitch_1
    iget-object v1, p0, Lcuv;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    iget-object v1, p0, Lcuv;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 140
    iget-object v1, p0, Lcuv;->m:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 143
    :pswitch_2
    iget-object v1, p0, Lcuv;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    iget-object v1, p0, Lcuv;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 145
    iget-object v1, p0, Lcuv;->m:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 146
    iget-object v1, p0, Lcuv;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v6}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 147
    iput v5, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;->c:I

    .line 148
    iget-object v1, p0, Lcuv;->l:Landroid/widget/ProgressBar;

    iget v2, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;->c:I

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_0

    .line 152
    :pswitch_3
    iget-object v1, p0, Lcuv;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    iget-object v1, p0, Lcuv;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 154
    iget-object v1, p0, Lcuv;->m:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 157
    :pswitch_4
    iget-object v1, p0, Lcuv;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    iget-object v1, p0, Lcuv;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 159
    iget-object v1, p0, Lcuv;->m:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 160
    iget-object v1, p0, Lcuv;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v6}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 161
    iget v1, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;->c:I

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;->c:I

    .line 162
    iget v1, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;->c:I

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;->c:I

    .line 163
    iget-object v1, p0, Lcuv;->l:Landroid/widget/ProgressBar;

    iget v2, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;->c:I

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_0

    .line 168
    :pswitch_5
    iget-object v1, p0, Lcuv;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    iget-object v1, p0, Lcuv;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 170
    iget-object v1, p0, Lcuv;->m:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 178
    .end local v0    # "downloaderData":Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;
    :pswitch_6
    iget-object v1, p0, Lcuv;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    iget-object v1, p0, Lcuv;->n:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 180
    iget-object v1, p0, Lcuv;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    iget-object v1, p0, Lcuv;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 182
    iget-object v1, p0, Lcuv;->m:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 185
    :pswitch_7
    iget-object v1, p0, Lcuv;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    iget-object v1, p0, Lcuv;->n:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 187
    iget-object v1, p0, Lcuv;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    iget-object v1, p0, Lcuv;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 189
    iget-object v1, p0, Lcuv;->m:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 127
    .line 136
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method
