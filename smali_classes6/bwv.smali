.class public final Lbwv;
.super Ljava/lang/Object;
.source "FullPlayerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lbwt$b;
.implements Lbxw;
.implements Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout$OnKeyboardListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbwv$a;
    }
.end annotation


# instance fields
.field private A:Landroid/view/ViewGroup;

.field private B:Landroid/view/View;

.field private C:Landroid/widget/RelativeLayout;

.field private D:Llgf;

.field private E:Z

.field public a:Landroid/view/View;

.field public b:Landroid/view/View;

.field public c:Landroid/view/View;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field public h:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field public i:Landroid/widget/EditText;

.field public j:Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;

.field public k:Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicDialog;

.field public l:Lcom/taobao/taolive/sdk/component/ChatFrame;

.field public m:Lcom/taobao/taolive/sdk/ui/component/FavorFrame;

.field public n:Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;

.field public o:Lbwt$a;

.field public p:Landroid/app/Activity;

.field public q:Lbwv$a;

.field public r:Landroid/os/Handler;

.field private s:Landroid/view/View;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/ImageView;

.field private y:Z

.field private z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lbwv$a;Landroid/view/View;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Lbwv$a;
    .param p3, "contentView"    # Landroid/view/View;

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbwv;->z:Ljava/util/List;

    .line 140
    new-instance v0, Lbwv$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lbwv$1;-><init>(Lbwv;Landroid/os/Looper;)V

    iput-object v0, p0, Lbwv;->r:Landroid/os/Handler;

    .line 189
    iput-object p1, p0, Lbwv;->p:Landroid/app/Activity;

    .line 190
    iput-object p2, p0, Lbwv;->q:Lbwv$a;

    .line 191
    iput-object p3, p0, Lbwv;->a:Landroid/view/View;

    .line 192
    new-instance v0, Lbwu;

    invoke-direct {v0, p0}, Lbwu;-><init>(Lbwt$b;)V

    .line 1197
    iget-object v0, p0, Lbwv;->a:Landroid/view/View;

    sget v1, Lbtp$e;->layout_full:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;

    iput-object v0, p0, Lbwv;->j:Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;

    .line 1198
    iget-object v0, p0, Lbwv;->j:Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;

    sget v1, Lbtp$e;->layout_operate:I

    invoke-virtual {v0, v1}, Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbwv;->b:Landroid/view/View;

    .line 1199
    iget-object v0, p0, Lbwv;->j:Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;

    sget v1, Lbtp$e;->layout_input:I

    invoke-virtual {v0, v1}, Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbwv;->s:Landroid/view/View;

    .line 1200
    iget-object v0, p0, Lbwv;->j:Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;

    sget v1, Lbtp$e;->view_layer:I

    invoke-virtual {v0, v1}, Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbwv;->c:Landroid/view/View;

    .line 1202
    iget-object v0, p0, Lbwv;->j:Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;

    sget v1, Lbtp$e;->tv_link_icon:I

    invoke-virtual {v0, v1}, Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbwv;->g:Landroid/widget/TextView;

    .line 1203
    iget-object v0, p0, Lbwv;->j:Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;

    sget v1, Lbtp$e;->tv_title:I

    invoke-virtual {v0, v1}, Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbwv;->f:Landroid/widget/TextView;

    .line 1204
    iget-object v0, p0, Lbwv;->j:Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;

    sget v1, Lbtp$e;->tv_nick:I

    invoke-virtual {v0, v1}, Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbwv;->d:Landroid/widget/TextView;

    .line 1205
    iget-object v0, p0, Lbwv;->j:Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;

    sget v1, Lbtp$e;->iv_avatar:I

    invoke-virtual {v0, v1}, Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lbwv;->h:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1206
    iget-object v0, p0, Lbwv;->j:Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;

    sget v1, Lbtp$e;->tv_status:I

    invoke-virtual {v0, v1}, Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbwv;->e:Landroid/widget/TextView;

    .line 1207
    iget-object v0, p0, Lbwv;->j:Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;

    sget v1, Lbtp$e;->iv_status:I

    invoke-virtual {v0, v1}, Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbwv;->x:Landroid/widget/ImageView;

    .line 1208
    iget-object v0, p0, Lbwv;->j:Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;

    sget v1, Lbtp$e;->tv_watch:I

    invoke-virtual {v0, v1}, Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbwv;->w:Landroid/widget/TextView;

    .line 1209
    iget-object v0, p0, Lbwv;->j:Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;

    sget v1, Lbtp$e;->tv_more:I

    invoke-virtual {v0, v1}, Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lbwv;->t:Landroid/widget/TextView;

    .line 1210
    iget-object v0, p0, Lbwv;->j:Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;

    sget v1, Lbtp$e;->tv_comment:I

    invoke-virtual {v0, v1}, Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lbwv;->u:Landroid/widget/TextView;

    .line 1211
    iget-object v0, p0, Lbwv;->j:Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;

    sget v1, Lbtp$e;->tv_clarity:I

    invoke-virtual {v0, v1}, Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbwv;->v:Landroid/widget/TextView;

    .line 1212
    iget-object v0, p0, Lbwv;->j:Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;

    sget v1, Lbtp$e;->edit:I

    invoke-virtual {v0, v1}, Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lbwv;->i:Landroid/widget/EditText;

    .line 1214
    iget-object v0, p0, Lbwv;->a:Landroid/view/View;

    sget v1, Lbtp$e;->layout_linkmic_call:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbwv;->B:Landroid/view/View;

    .line 1235
    iget-object v0, p0, Lbwv;->a:Landroid/view/View;

    sget v1, Lbtp$e;->stub_favor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 1236
    new-instance v1, Lcom/taobao/taolive/sdk/ui/component/FavorFrame;

    iget-object v2, p0, Lbwv;->p:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/taobao/taolive/sdk/ui/component/FavorFrame;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lbwv;->m:Lcom/taobao/taolive/sdk/ui/component/FavorFrame;

    .line 1237
    iget-object v1, p0, Lbwv;->m:Lcom/taobao/taolive/sdk/ui/component/FavorFrame;

    invoke-virtual {v1, v0}, Lcom/taobao/taolive/sdk/ui/component/FavorFrame;->onCreateView(Landroid/view/ViewStub;)V

    .line 1239
    iget-object v0, p0, Lbwv;->a:Landroid/view/View;

    sget v1, Lbtp$e;->stub_favor_count:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 1240
    new-instance v1, Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;

    iget-object v2, p0, Lbwv;->p:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lbwv;->n:Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;

    .line 1241
    iget-object v1, p0, Lbwv;->n:Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;

    invoke-virtual {v1, v0}, Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;->onCreateView(Landroid/view/ViewStub;)V

    .line 1242
    iget-object v0, p0, Lbwv;->n:Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;

    invoke-virtual {v0}, Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;->getIvPraise()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1243
    iget-object v0, p0, Lbwv;->n:Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;

    invoke-virtual {v0}, Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;->getIvPraise()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1244
    iget-object v0, p0, Lbwv;->n:Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;

    invoke-virtual {v0}, Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;->getIvPraise()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lbwv$3;

    invoke-direct {v1, p0}, Lbwv$3;-><init>(Lbwv;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1217
    iget-object v0, p0, Lbwv;->o:Lbwt$a;

    invoke-interface {v0}, Lbwt$a;->e()V

    .line 1219
    iget-object v0, p0, Lbwv;->B:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1220
    iget-object v0, p0, Lbwv;->j:Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;

    invoke-virtual {v0, p0}, Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;->setOnKeyboardListener(Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout$OnKeyboardListener;)V

    .line 1221
    iget-object v0, p0, Lbwv;->t:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1222
    iget-object v0, p0, Lbwv;->v:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1223
    iget-object v0, p0, Lbwv;->u:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1224
    iget-object v0, p0, Lbwv;->j:Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;

    invoke-virtual {v0, p0}, Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1225
    iget-object v0, p0, Lbwv;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1226
    iget-object v0, p0, Lbwv;->a:Landroid/view/View;

    sget v1, Lbtp$e;->tv_red_packet:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1227
    iget-object v0, p0, Lbwv;->a:Landroid/view/View;

    sget v1, Lbtp$e;->tv_send:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1228
    iget-object v0, p0, Lbwv;->a:Landroid/view/View;

    sget v1, Lbtp$e;->tv_edit:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1229
    iget-object v0, p0, Lbwv;->a:Landroid/view/View;

    sget v1, Lbtp$e;->tv_back:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1230
    iget-object v0, p0, Lbwv;->a:Landroid/view/View;

    sget v1, Lbtp$e;->tv_report:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1231
    iget-object v0, p0, Lbwv;->a:Landroid/view/View;

    sget v1, Lbtp$e;->tv_linkmic_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    return-void
.end method

.method static synthetic a(Lbwv;)Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicDialog;
    .locals 1
    .param p0, "x0"    # Lbwv;

    .prologue
    .line 90
    iget-object v0, p0, Lbwv;->k:Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicDialog;

    return-object v0
.end method

.method static synthetic a(Lbwv;Landroid/view/View;)V
    .locals 6
    .param p0, "x0"    # Lbwv;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 90
    .line 17581
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 17582
    sget v1, Lbtp$e;->layout_full:I

    if-eq v0, v1, :cond_0

    sget v1, Lbtp$e;->layout_operate:I

    if-ne v0, v1, :cond_4

    .line 18262
    :cond_0
    iget-boolean v0, p0, Lbwv;->E:Z

    if-eqz v0, :cond_2

    .line 18264
    iget-object v0, p0, Lbwv;->p:Landroid/app/Activity;

    iget-object v1, p0, Lbwv;->i:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 17603
    :cond_1
    :goto_0
    return-void

    .line 18267
    :cond_2
    iget-object v0, p0, Lbwv;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 18268
    iget-object v0, p0, Lbwv;->b:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18269
    invoke-virtual {p0, v4}, Lbwv;->b(Z)V

    goto :goto_0

    .line 18271
    :cond_3
    iget-object v0, p0, Lbwv;->b:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 18272
    invoke-virtual {p0, v5}, Lbwv;->b(Z)V

    goto :goto_0

    .line 17584
    :cond_4
    sget v1, Lbtp$e;->tv_comment:I

    if-ne v0, v1, :cond_6

    .line 18739
    iget-object v0, p0, Lbwv;->l:Lcom/taobao/taolive/sdk/component/ChatFrame;

    if-eqz v0, :cond_1

    .line 18740
    iget-object v0, p0, Lbwv;->l:Lcom/taobao/taolive/sdk/component/ChatFrame;

    invoke-virtual {v0}, Lcom/taobao/taolive/sdk/component/ChatFrame;->switchVisibility()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 18741
    iget-object v0, p0, Lbwv;->u:Landroid/widget/TextView;

    sget v1, Lbtp$g;->icon_barrage_on:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 18743
    :cond_5
    iget-object v0, p0, Lbwv;->u:Landroid/widget/TextView;

    sget v1, Lbtp$g;->icon_barrage_off:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 17586
    :cond_6
    sget v1, Lbtp$e;->tv_report:I

    if-ne v0, v1, :cond_7

    .line 18749
    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v0

    .line 19035
    iget-object v0, v0, Lbwr;->b:Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    .line 18750
    if-eqz v0, :cond_1

    .line 18754
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 18755
    const-string/jumbo v2, "https://h5.dingtalk.com/livereport/index.html#/index"

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    const-string/jumbo v3, "?uuid="

    .line 18756
    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;->uuid:Ljava/lang/String;

    .line 18757
    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    const-string/jumbo v3, "&uid="

    .line 18758
    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;->anchor:J

    .line 18759
    invoke-virtual {v2, v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 18760
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18761
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 18762
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18763
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    iget-object v2, p0, Lbwv;->p:Landroid/app/Activity;

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->d(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 17588
    :cond_7
    sget v1, Lbtp$e;->tv_edit:I

    if-ne v0, v1, :cond_8

    .line 19767
    iget-object v0, p0, Lbwv;->l:Lcom/taobao/taolive/sdk/component/ChatFrame;

    if-eqz v0, :cond_1

    .line 19772
    iget-object v0, p0, Lbwv;->s:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 19773
    iget-object v0, p0, Lbwv;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 19774
    iget-object v0, p0, Lbwv;->p:Landroid/app/Activity;

    iget-object v1, p0, Lbwv;->i:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcms;->a(Landroid/content/Context;Landroid/view/View;)V

    goto/16 :goto_0

    .line 17590
    :cond_8
    sget v1, Lbtp$e;->tv_more:I

    if-ne v0, v1, :cond_9

    .line 19778
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lbwv;->p:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lbtp$g;->dt_lv_stop_live:I

    .line 19779
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lbtp$g;->sure:I

    new-instance v2, Lbwv$9;

    invoke-direct {v2, p0}, Lbwv$9;-><init>(Lbwv;)V

    .line 19780
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lbtp$g;->cancel:I

    .line 19786
    invoke-virtual {v0, v1, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 19787
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0

    .line 17592
    :cond_9
    sget v1, Lbtp$e;->tv_back:I

    if-ne v0, v1, :cond_a

    .line 17593
    invoke-direct {p0}, Lbwv;->q()V

    goto/16 :goto_0

    .line 17594
    :cond_a
    sget v1, Lbtp$e;->tv_send:I

    if-ne v0, v1, :cond_c

    .line 19796
    iget-object v0, p0, Lbwv;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 19797
    iget-object v0, p0, Lbwv;->o:Lbwt$a;

    iget-object v1, p0, Lbwv;->i:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lbwt$a;->a(Ljava/lang/String;)V

    .line 19798
    iget-object v0, p0, Lbwv;->i:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 19800
    :cond_b
    iget-object v0, p0, Lbwv;->p:Landroid/app/Activity;

    iget-object v1, p0, Lbwv;->i:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    goto/16 :goto_0

    .line 17596
    :cond_c
    sget v1, Lbtp$e;->iv_praise:I

    if-ne v0, v1, :cond_d

    .line 19804
    iget-object v0, p0, Lbwv;->r:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 17598
    :cond_d
    sget v1, Lbtp$e;->tv_clarity:I

    if-ne v0, v1, :cond_e

    .line 17599
    invoke-direct {p0}, Lbwv;->r()V

    goto/16 :goto_0

    .line 17600
    :cond_e
    sget v1, Lbtp$e;->tv_red_packet:I

    if-ne v0, v1, :cond_f

    .line 19848
    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v0

    .line 20043
    iget-object v2, v0, Lbwr;->c:Ljava/lang/String;

    .line 19849
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 19853
    const-string/jumbo v0, "live_play_red_packet_click"

    invoke-static {v0}, Lcps;->a(Ljava/lang/String;)V

    .line 19854
    new-instance v0, Lbwv$2;

    invoke-direct {v0, p0}, Lbwv$2;-><init>(Lbwv;)V

    .line 19885
    iget-object v1, p0, Lbwv;->p:Landroid/app/Activity;

    if-eqz v1, :cond_11

    .line 19886
    const-class v1, Lcom/alibaba/wukong/Callback;

    iget-object v3, p0, Lbwv;->p:Landroid/app/Activity;

    invoke-static {v0, v1, v3}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    move-object v1, v0

    .line 19888
    :goto_1
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 17602
    :cond_f
    sget v1, Lbtp$e;->layout_linkmic_call:I

    if-ne v0, v1, :cond_10

    .line 20439
    iget-object v0, p0, Lbwv;->p:Landroid/app/Activity;

    .line 17603
    const/16 v1, 0xa

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.CAMERA"

    aput-object v3, v2, v4

    const-string/jumbo v3, "android.permission.RECORD_AUDIO"

    aput-object v3, v2, v5

    new-instance v3, Lbwv$7;

    invoke-direct {v3, p0}, Lbwv$7;-><init>(Lbwv;)V

    invoke-static {v0, v1, v2, v3}, Lbyy;->a(Landroid/app/Activity;I[Ljava/lang/String;Lbzc;)V

    goto/16 :goto_0

    .line 17612
    :cond_10
    sget v1, Lbtp$e;->tv_linkmic_close:I

    if-ne v0, v1, :cond_1

    .line 17613
    invoke-direct {p0, v4}, Lbwv;->d(Z)V

    goto/16 :goto_0

    :cond_11
    move-object v1, v0

    goto :goto_1
.end method

.method static synthetic a(Lbwv;Lcom/taobao/taolive/sdk/model/common/UrlInfo;)V
    .locals 0
    .param p0, "x0"    # Lbwv;
    .param p1, "x1"    # Lcom/taobao/taolive/sdk/model/common/UrlInfo;

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lbwv;->a(Lcom/taobao/taolive/sdk/model/common/UrlInfo;)V

    return-void
.end method

.method static synthetic b(Lbwv;)Lbwt$a;
    .locals 1
    .param p0, "x0"    # Lbwv;

    .prologue
    .line 90
    iget-object v0, p0, Lbwv;->o:Lbwt$a;

    return-object v0
.end method

.method static synthetic b(Lbwv;Landroid/view/View;)V
    .locals 2
    .param p0, "x0"    # Lbwv;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 90
    .line 20632
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 20633
    sget v1, Lbtp$e;->iv_praise:I

    if-ne v0, v1, :cond_0

    .line 20808
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 20809
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 20810
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 20811
    iget-object v1, p0, Lbwv;->r:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 90
    :cond_0
    return-void
.end method

.method static synthetic c(Lbwv;)Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;
    .locals 1
    .param p0, "x0"    # Lbwv;

    .prologue
    .line 90
    iget-object v0, p0, Lbwv;->n:Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;

    return-object v0
.end method

.method static synthetic d(Lbwv;)Lcom/taobao/taolive/sdk/ui/component/FavorFrame;
    .locals 1
    .param p0, "x0"    # Lbwv;

    .prologue
    .line 90
    iget-object v0, p0, Lbwv;->m:Lcom/taobao/taolive/sdk/ui/component/FavorFrame;

    return-object v0
.end method

.method private d(Z)V
    .locals 3
    .param p1, "toHalf"    # Z

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 639
    .line 5439
    iget-object v0, p0, Lbwv;->p:Landroid/app/Activity;

    .line 639
    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 657
    :goto_0
    return-void

    .line 642
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    .line 6439
    iget-object v1, p0, Lbwv;->p:Landroid/app/Activity;

    .line 642
    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lbtp$g;->dt_live_sure_to_end_linkmic:I

    .line 643
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lbtp$g;->sure:I

    new-instance v2, Lbwv$8;

    invoke-direct {v2, p0, p1}, Lbwv$8;-><init>(Lbwv;Z)V

    .line 644
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lbtp$g;->cancel:I

    const/4 v2, 0x0

    .line 655
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 656
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method

.method static synthetic e(Lbwv;)V
    .locals 6
    .param p0, "x0"    # Lbwv;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 90
    .line 17028
    iget-object v0, p0, Lbwv;->m:Lcom/taobao/taolive/sdk/ui/component/FavorFrame;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbwv;->n:Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbwv;->n:Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;

    invoke-virtual {v0}, Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;->getIvPraise()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 17029
    :cond_0
    :goto_0
    return-void

    .line 17031
    :cond_1
    iget-object v0, p0, Lbwv;->m:Lcom/taobao/taolive/sdk/ui/component/FavorFrame;

    invoke-virtual {v0}, Lcom/taobao/taolive/sdk/ui/component/FavorFrame;->isMeDoFavor()Z

    move-result v0

    if-nez v0, :cond_0

    .line 17035
    iget-object v0, p0, Lbwv;->n:Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;

    invoke-virtual {v0}, Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;->getIvPraise()Landroid/view/View;

    move-result-object v0

    .line 17036
    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v2, v4, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 17037
    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v3, v4, [F

    fill-array-data v3, :array_1

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 17038
    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 17039
    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 17040
    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 17041
    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 17042
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 17043
    new-array v3, v4, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v0, v3, v1

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 17044
    const-wide/16 v0, 0xc8

    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 17045
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 17046
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 17049
    iget-object v0, p0, Lbwv;->r:Landroid/os/Handler;

    const/4 v1, 0x4

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 17036
    .line 17037
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
    .end array-data
.end method

.method static synthetic f(Lbwv;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lbwv;

    .prologue
    .line 90
    iget-object v0, p0, Lbwv;->r:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g(Lbwv;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lbwv;

    .prologue
    .line 90
    iget-object v0, p0, Lbwv;->p:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic h(Lbwv;)V
    .locals 3
    .param p0, "x0"    # Lbwv;

    .prologue
    .line 90
    .line 21618
    invoke-direct {p0}, Lbwv;->s()V

    .line 21619
    iget-object v0, p0, Lbwv;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21620
    new-instance v0, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicPreviewDialog;

    .line 22439
    iget-object v1, p0, Lbwv;->p:Landroid/app/Activity;

    .line 21620
    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicPreviewDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbwv;->k:Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicDialog;

    .line 21621
    iget-object v0, p0, Lbwv;->k:Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicDialog;

    .line 23026
    iput-object p0, v0, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicDialog;->a:Lbxw;

    .line 21622
    iget-object v0, p0, Lbwv;->k:Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicDialog;->show()V

    :goto_0
    return-void

    .line 21624
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallListDialog;

    .line 23439
    iget-object v1, p0, Lbwv;->p:Landroid/app/Activity;

    .line 21624
    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallListDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lbwv;->k:Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicDialog;

    .line 21625
    iget-object v0, p0, Lbwv;->k:Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicDialog;

    .line 24026
    iput-object p0, v0, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicDialog;->a:Lbxw;

    .line 21626
    iget-object v0, p0, Lbwv;->k:Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicDialog;

    check-cast v0, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallListDialog;

    iget-object v1, p0, Lbwv;->z:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallListDialog;->a(Ljava/util/List;)V

    .line 21627
    iget-object v0, p0, Lbwv;->k:Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicDialog;->show()V

    goto :goto_0
.end method

.method static synthetic i(Lbwv;)V
    .locals 0
    .param p0, "x0"    # Lbwv;

    .prologue
    .line 90
    invoke-direct {p0}, Lbwv;->q()V

    return-void
.end method

.method static synthetic j(Lbwv;)Lbwv$a;
    .locals 1
    .param p0, "x0"    # Lbwv;

    .prologue
    .line 90
    iget-object v0, p0, Lbwv;->q:Lbwv$a;

    return-object v0
.end method

.method private q()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 791
    iget-object v1, p0, Lbwv;->q:Lbwv$a;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 792
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lbwv;->a(Landroid/view/ViewParent;Z)V

    .line 793
    return-void

    .line 791
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_0
    iget-object v1, p0, Lbwv;->q:Lbwv$a;

    invoke-interface {v1}, Lbwv$a;->d()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0
.end method

.method private r()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 815
    iget-object v4, p0, Lbwv;->q:Lbwv$a;

    if-nez v4, :cond_1

    .line 843
    :cond_0
    :goto_0
    return-void

    .line 818
    :cond_1
    iget-object v4, p0, Lbwv;->q:Lbwv$a;

    invoke-interface {v4}, Lbwv$a;->c()Ljava/util/ArrayList;

    move-result-object v2

    .line 819
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/taolive/sdk/model/common/UrlInfo;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 822
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v3, v4, [Ljava/lang/String;

    .line 823
    .local v3, "names":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 824
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/taolive/sdk/model/common/UrlInfo;

    .line 825
    .local v1, "item":Lcom/taobao/taolive/sdk/model/common/UrlInfo;
    if-eqz v1, :cond_2

    .line 826
    iget-object v4, v1, Lcom/taobao/taolive/sdk/model/common/UrlInfo;->clarity:Ljava/lang/String;

    aput-object v4, v3, v0

    .line 823
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 829
    .end local v1    # "item":Lcom/taobao/taolive/sdk/model/common/UrlInfo;
    :cond_3
    new-instance v4, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v5, p0, Lbwv;->p:Landroid/app/Activity;

    invoke-direct {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v5, Lbwv$10;

    invoke-direct {v5, p0, v2}, Lbwv$10;-><init>(Lbwv;Ljava/util/ArrayList;)V

    .line 830
    invoke-virtual {v4, v3, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    .line 842
    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method

.method private s()V
    .locals 1

    .prologue
    .line 1021
    iget-object v0, p0, Lbwv;->k:Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicDialog;

    if-eqz v0, :cond_0

    .line 1022
    iget-object v0, p0, Lbwv;->k:Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicDialog;->dismiss()V

    .line 1024
    :cond_0
    return-void
.end method


# virtual methods
.method public final H_()V
    .locals 0

    .prologue
    .line 539
    return-void
.end method

.method public final a()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lbwv;->p:Landroid/app/Activity;

    return-object v0
.end method

.method public final a(I)V
    .locals 2
    .param p1, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 458
    iget-object v0, p0, Lbwv;->w:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    return-void
.end method

.method public final a(J)V
    .locals 1
    .param p1, "count"    # J

    .prologue
    .line 452
    iget-object v0, p0, Lbwv;->m:Lcom/taobao/taolive/sdk/ui/component/FavorFrame;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/taolive/sdk/ui/component/FavorFrame;->addFavor(J)V

    .line 453
    iget-object v0, p0, Lbwv;->n:Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;->updateFavorCount(J)V

    .line 454
    return-void
.end method

.method public final a(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 661
    if-nez p1, :cond_0

    .line 687
    :goto_0
    return-void

    .line 664
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 666
    :pswitch_0
    invoke-direct {p0}, Lbwv;->s()V

    .line 667
    new-instance v0, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicPreviewDialog;

    .line 7439
    iget-object v1, p0, Lbwv;->p:Landroid/app/Activity;

    .line 667
    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicPreviewDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbwv;->k:Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicDialog;

    .line 668
    iget-object v0, p0, Lbwv;->k:Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicDialog;

    .line 8026
    iput-object p0, v0, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicDialog;->a:Lbxw;

    .line 669
    iget-object v0, p0, Lbwv;->k:Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicDialog;->show()V

    goto :goto_0

    .line 672
    :pswitch_1
    iget-object v0, p0, Lbwv;->o:Lbwt$a;

    invoke-interface {v0}, Lbwt$a;->d()V

    goto :goto_0

    .line 675
    :pswitch_2
    iget-object v0, p0, Lbwv;->o:Lbwt$a;

    invoke-interface {v0}, Lbwt$a;->c()V

    goto :goto_0

    .line 678
    :pswitch_3
    iget-object v0, p0, Lbwv;->r:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 679
    iget-object v0, p0, Lbwv;->o:Lbwt$a;

    invoke-interface {v0}, Lbwt$a;->d()V

    .line 680
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v0

    .line 8497
    iget-object v0, v0, Lbws;->i:Ljava/lang/String;

    .line 9015
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v1

    invoke-virtual {v1}, Lbws;->b()Ljjx;

    move-result-object v1

    .line 9016
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v5, v2}, Ljjx;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 9017
    iget-object v1, p0, Lbwv;->z:Ljava/util/List;

    .line 9109
    invoke-static {v0, v8, v9}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 9017
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 683
    :pswitch_4
    iget-object v0, p0, Lbwv;->r:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 684
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v0

    .line 9497
    iget-object v1, v0, Lbws;->i:Ljava/lang/String;

    .line 9971
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v0

    invoke-virtual {v0}, Lbws;->g()Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    move-result-object v2

    .line 9972
    invoke-virtual {v2}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9973
    invoke-virtual {v2, v5}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Z)V

    .line 9976
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalk/live/rpc/model/LinkMicExtensionObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/rpc/model/LinkMicExtensionObject;-><init>()V

    .line 9977
    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v3

    .line 10043
    iget-object v3, v3, Lbwr;->c:Ljava/lang/String;

    .line 9977
    iput-object v3, v0, Lcom/alibaba/android/dingtalk/live/rpc/model/LinkMicExtensionObject;->cid:Ljava/lang/String;

    .line 9978
    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v3

    invoke-virtual {v3}, Lbwr;->b()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/android/dingtalk/live/rpc/model/LinkMicExtensionObject;->liveUuid:Ljava/lang/String;

    .line 9979
    const/16 v3, 0xf0

    iput v3, v0, Lcom/alibaba/android/dingtalk/live/rpc/model/LinkMicExtensionObject;->width:I

    .line 9980
    const/16 v3, 0x140

    iput v3, v0, Lcom/alibaba/android/dingtalk/live/rpc/model/LinkMicExtensionObject;->height:I

    .line 9981
    iput-boolean v5, v0, Lcom/alibaba/android/dingtalk/live/rpc/model/LinkMicExtensionObject;->isLandscape:Z

    .line 9983
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getGson()Lcom/google/gson/Gson;

    move-result-object v3

    invoke-static {v3, v0}, Lcor;->a(Lcom/google/gson/Gson;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 9984
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v3

    invoke-virtual {v3}, Lbws;->b()Ljjx;

    move-result-object v3

    .line 9985
    invoke-virtual {v3, v1, v6, v0}, Ljjx;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 9987
    iget-object v0, p0, Lbwv;->C:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_2

    .line 10439
    iget-object v0, p0, Lbwv;->p:Landroid/app/Activity;

    .line 9988
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v4, Lbtp$f;->layout_linkmic_remote:I

    .line 9989
    invoke-virtual {v0, v4, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lbwv;->C:Landroid/widget/RelativeLayout;

    .line 9990
    iget-object v0, p0, Lbwv;->C:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->addView(Landroid/view/View;)V

    .line 9992
    :cond_2
    iget-object v0, p0, Lbwv;->C:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Ljjx;->c(Landroid/widget/RelativeLayout;)V

    .line 9994
    iget-object v0, p0, Lbwv;->A:Landroid/view/ViewGroup;

    if-nez v0, :cond_3

    .line 9995
    iget-object v0, p0, Lbwv;->a:Landroid/view/View;

    sget v2, Lbtp$e;->layout_linkmic:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lbwv;->A:Landroid/view/ViewGroup;

    .line 9997
    :cond_3
    iget-object v0, p0, Lbwv;->A:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 9999
    iget-object v0, p0, Lbwv;->A:Landroid/view/ViewGroup;

    sget v2, Lbtp$e;->link_mic_local:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 10000
    invoke-virtual {v3, v0}, Ljjx;->b(Landroid/widget/RelativeLayout;)V

    .line 10001
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    .line 10002
    if-eqz v0, :cond_4

    .line 10003
    invoke-virtual {v0, v6}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 10006
    :cond_4
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v0

    const/4 v2, 0x2

    .line 10505
    iput v2, v0, Lbws;->e:I

    .line 10007
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v0

    .line 11493
    iput-object v1, v0, Lbws;->i:Ljava/lang/String;

    .line 10009
    invoke-virtual {p0, v5}, Lbwv;->b(Z)V

    .line 10010
    iput-boolean v6, p0, Lbwv;->y:Z

    .line 10011
    iget-object v0, p0, Lbwv;->z:Ljava/util/List;

    .line 12109
    invoke-static {v1, v8, v9}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 10011
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 664
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final a(Landroid/view/ViewParent;Z)V
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewParent;
    .param p2, "checkLinkMic"    # Z

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 283
    iget-boolean v0, p0, Lbwv;->y:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 284
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lbwv;->d(Z)V

    .line 288
    :goto_0
    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lbwv;->o:Lbwt$a;

    iget-object v1, p0, Lbwv;->p:Landroid/app/Activity;

    iget-object v2, p0, Lbwv;->a:Landroid/view/View;

    invoke-interface {v0, v1, v2, p1}, Lbwt$a;->a(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewParent;)V

    goto :goto_0
.end method

.method public a(Lcom/taobao/taolive/sdk/model/common/UrlInfo;)V
    .locals 2
    .param p1, "urlInfo"    # Lcom/taobao/taolive/sdk/model/common/UrlInfo;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 892
    if-nez p1, :cond_0

    .line 896
    :goto_0
    return-void

    .line 895
    :cond_0
    iget-object v0, p0, Lbwv;->v:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/taobao/taolive/sdk/model/common/UrlInfo;->clarity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 463
    .local p1, "barrages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;>;"
    iget-object v0, p0, Lbwv;->l:Lcom/taobao/taolive/sdk/component/ChatFrame;

    if-eqz v0, :cond_0

    .line 464
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 465
    iget-object v0, p0, Lbwv;->l:Lcom/taobao/taolive/sdk/component/ChatFrame;

    invoke-virtual {v0, p1}, Lcom/taobao/taolive/sdk/component/ChatFrame;->onGetMessages(Ljava/util/List;)V

    .line 468
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/List;Z)V
    .locals 3
    .param p2, "clearOld"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 708
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p2, :cond_0

    .line 709
    iget-object v1, p0, Lbwv;->z:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 711
    :cond_0
    if-eqz p1, :cond_2

    .line 712
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 713
    .local v0, "uid":Ljava/lang/Long;
    if-eqz v0, :cond_1

    iget-object v2, p0, Lbwv;->z:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 714
    iget-object v2, p0, Lbwv;->z:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 719
    .end local v0    # "uid":Ljava/lang/Long;
    :cond_2
    iget-object v1, p0, Lbwv;->k:Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicDialog;

    instance-of v1, v1, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallListDialog;

    if-eqz v1, :cond_3

    .line 720
    iget-object v1, p0, Lbwv;->k:Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicDialog;

    check-cast v1, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallListDialog;

    invoke-virtual {v1, p1}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallListDialog;->a(Ljava/util/List;)V

    .line 722
    :cond_3
    return-void
.end method

.method public final a(Z)V
    .locals 2
    .param p1, "show"    # Z

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 473
    iget-object v1, p0, Lbwv;->t:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 474
    return-void

    .line 473
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 544
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 534
    return-void
.end method

.method public b(Z)V
    .locals 5
    .param p1, "show"    # Z

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 312
    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v0

    invoke-virtual {v0}, Lbwr;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 314
    iget-object v0, p0, Lbwv;->B:Landroid/view/View;

    .line 319
    :cond_0
    :goto_0
    const/16 v1, 0x8

    move v4, v1

    move-object v1, v0

    move v0, v4

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 321
    return-void

    .line 315
    :cond_1
    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v0

    .line 2080
    iget-object v1, v0, Lbwr;->b:Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    if-nez v1, :cond_2

    .line 2081
    const-wide/16 v0, 0x0

    .line 315
    :goto_2
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 317
    iget-object v0, p0, Lbwv;->B:Landroid/view/View;

    goto :goto_0

    .line 2083
    :cond_2
    iget-object v0, v0, Lbwr;->b:Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;->anchor:J

    goto :goto_2

    .line 319
    :cond_3
    iget-object v0, p0, Lbwv;->B:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    move v4, v1

    move-object v1, v0

    move v0, v4

    goto :goto_1
.end method

.method public final c(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 343
    if-eqz p1, :cond_0

    .line 344
    invoke-virtual {p0}, Lbwv;->m()V

    .line 348
    :goto_0
    return-void

    .line 346
    :cond_0
    invoke-virtual {p0}, Lbwv;->n()V

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lbwv;->p:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 444
    iget-object v0, p0, Lbwv;->j:Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;->setVisibility(I)V

    .line 445
    iget-object v0, p0, Lbwv;->q:Lbwv$a;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lbwv;->q:Lbwv$a;

    invoke-interface {v0}, Lbwv$a;->b()V

    .line 448
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 478
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lbwv;->p:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lbtp$g;->dt_lv_stop_live_retry:I

    .line 479
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lbtp$g;->sure:I

    new-instance v2, Lbwv$4;

    invoke-direct {v2, p0}, Lbwv$4;-><init>(Lbwv;)V

    .line 480
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lbtp$g;->cancel:I

    const/4 v2, 0x0

    .line 487
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 488
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 489
    return-void
.end method

.method public final g()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 691
    invoke-direct {p0}, Lbwv;->s()V

    .line 692
    new-instance v0, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicWaitingDialog;

    iget-object v1, p0, Lbwv;->p:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicWaitingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbwv;->k:Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicDialog;

    .line 693
    iget-object v0, p0, Lbwv;->k:Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicDialog;->show()V

    .line 696
    iget-object v0, p0, Lbwv;->r:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 697
    return-void
.end method

.method public final h()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 701
    invoke-direct {p0}, Lbwv;->s()V

    .line 702
    iget-object v0, p0, Lbwv;->z:Ljava/util/List;

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 703
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v0

    const/4 v1, 0x0

    .line 12493
    iput-object v1, v0, Lbws;->i:Ljava/lang/String;

    .line 704
    return-void
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 726
    invoke-virtual {p0}, Lbwv;->p()V

    .line 727
    return-void
.end method

.method public final j()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 731
    invoke-direct {p0}, Lbwv;->s()V

    .line 732
    new-instance v0, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallingDialog;

    .line 13439
    iget-object v1, p0, Lbwv;->p:Landroid/app/Activity;

    .line 732
    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbwv;->k:Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicDialog;

    .line 733
    iget-object v0, p0, Lbwv;->k:Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicDialog;

    .line 14026
    iput-object p0, v0, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicDialog;->a:Lbxw;

    .line 734
    iget-object v0, p0, Lbwv;->k:Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicDialog;->show()V

    .line 735
    iget-object v0, p0, Lbwv;->r:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 736
    return-void
.end method

.method public final k()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 277
    iget-object v0, p0, Lbwv;->j:Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;

    invoke-virtual {v0, v1}, Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lbwv;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 279
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lbwv;->b(Z)V

    .line 280
    return-void
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lbwv;->j:Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;

    invoke-virtual {v0}, Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 372
    iget-object v1, p0, Lbwv;->p:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 385
    :goto_0
    return-void

    .line 376
    :cond_0
    :try_start_0
    iget-object v1, p0, Lbwv;->D:Llgf;

    if-nez v1, :cond_1

    .line 377
    new-instance v1, Llgf;

    iget-object v2, p0, Lbwv;->p:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lbtp$d;->live_status:I

    invoke-direct {v1, v2, v3}, Llgf;-><init>(Landroid/content/res/Resources;I)V

    iput-object v1, p0, Lbwv;->D:Llgf;

    .line 379
    :cond_1
    iget-object v1, p0, Lbwv;->x:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 380
    iget-object v1, p0, Lbwv;->x:Landroid/widget/ImageView;

    iget-object v2, p0, Lbwv;->D:Llgf;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 381
    iget-object v1, p0, Lbwv;->D:Llgf;

    invoke-virtual {v1}, Llgf;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "initGifDrawable failed="

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3013
    const-string/jumbo v2, "live"

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public n()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 388
    iget-object v0, p0, Lbwv;->D:Llgf;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lbwv;->x:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 390
    iget-object v0, p0, Lbwv;->x:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 391
    iget-object v0, p0, Lbwv;->D:Llgf;

    invoke-virtual {v0}, Llgf;->stop()V

    .line 392
    iget-object v0, p0, Lbwv;->D:Llgf;

    invoke-virtual {v0}, Llgf;->a()V

    .line 393
    iput-object v2, p0, Lbwv;->D:Llgf;

    .line 395
    :cond_0
    return-void
.end method

.method public o()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 937
    iget-object v1, p0, Lbwv;->C:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 938
    iget-object v1, p0, Lbwv;->C:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 939
    .local v0, "parent":Landroid/view/ViewGroup;
    iget-object v1, p0, Lbwv;->C:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 940
    iput-object v4, p0, Lbwv;->C:Landroid/widget/RelativeLayout;

    .line 942
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_0
    iget-object v1, p0, Lbwv;->A:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 943
    iget-object v1, p0, Lbwv;->A:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 945
    :cond_1
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v1

    .line 14505
    iput v3, v1, Lbws;->e:I

    .line 946
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v1

    .line 15493
    iput-object v4, v1, Lbws;->i:Ljava/lang/String;

    .line 947
    iput-boolean v3, p0, Lbwv;->y:Z

    .line 948
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 553
    .line 3439
    iget-object v0, p0, Lbwv;->p:Landroid/app/Activity;

    .line 553
    new-instance v1, Lbwv$5;

    invoke-direct {v1, p0, p1}, Lbwv$5;-><init>(Lbwv;Landroid/view/View;)V

    invoke-static {v0, v1}, Lbyi;->a(Landroid/app/Activity;Lcjn$a;)V

    .line 563
    return-void
.end method

.method public final onKeyboardHide()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 510
    invoke-virtual {p0}, Lbwv;->l()Z

    move-result v1

    if-nez v1, :cond_1

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 513
    :cond_1
    iput-boolean v2, p0, Lbwv;->E:Z

    .line 514
    iget-object v1, p0, Lbwv;->s:Landroid/view/View;

    .line 515
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 516
    .local v0, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v0, :cond_2

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eqz v1, :cond_2

    .line 517
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 518
    iget-object v1, p0, Lbwv;->s:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 520
    :cond_2
    iget-object v1, p0, Lbwv;->s:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 521
    iget-object v1, p0, Lbwv;->l:Lcom/taobao/taolive/sdk/component/ChatFrame;

    if-eqz v1, :cond_0

    .line 522
    iget-object v1, p0, Lbwv;->l:Lcom/taobao/taolive/sdk/component/ChatFrame;

    invoke-virtual {v1}, Lcom/taobao/taolive/sdk/component/ChatFrame;->scrollToEnd()V

    goto :goto_0
.end method

.method public final onKeyboardShow(I)V
    .locals 2
    .param p1, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 493
    invoke-virtual {p0}, Lbwv;->l()Z

    move-result v1

    if-nez v1, :cond_1

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lbwv;->E:Z

    .line 497
    iget-object v1, p0, Lbwv;->s:Landroid/view/View;

    .line 498
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 499
    .local v0, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v0, :cond_2

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v1, p1, :cond_2

    .line 500
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 501
    iget-object v1, p0, Lbwv;->s:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 503
    :cond_2
    iget-object v1, p0, Lbwv;->l:Lcom/taobao/taolive/sdk/component/ChatFrame;

    if-eqz v1, :cond_0

    .line 504
    iget-object v1, p0, Lbwv;->l:Lcom/taobao/taolive/sdk/component/ChatFrame;

    invoke-virtual {v1}, Lcom/taobao/taolive/sdk/component/ChatFrame;->scrollToEnd()V

    goto :goto_0
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 567
    .line 4439
    iget-object v0, p0, Lbwv;->p:Landroid/app/Activity;

    .line 567
    new-instance v1, Lbwv$6;

    invoke-direct {v1, p0, p1}, Lbwv$6;-><init>(Lbwv;Landroid/view/View;)V

    invoke-static {v0, v1}, Lbyi;->a(Landroid/app/Activity;Lcjn$a;)V

    .line 577
    const/4 v0, 0x0

    return v0
.end method

.method public final p()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 951
    invoke-virtual {p0}, Lbwv;->o()V

    .line 953
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v3

    invoke-virtual {v3}, Lbws;->b()Ljjx;

    move-result-object v1

    .line 954
    .local v1, "pushInstance":Ljjx;
    invoke-virtual {v1}, Ljjx;->d()V

    .line 955
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljjx;->c(Landroid/widget/RelativeLayout;)V

    .line 957
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v3

    invoke-virtual {v3}, Lbws;->g()Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    move-result-object v2

    .line 958
    .local v2, "videoView":Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;
    invoke-virtual {v2}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->d()Z

    move-result v3

    if-nez v3, :cond_0

    .line 959
    invoke-virtual {v2}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a()V

    .line 962
    :cond_0
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v3

    .line 15497
    iget-object v0, v3, Lbws;->i:Ljava/lang/String;

    .line 963
    .local v0, "peerId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 964
    iget-object v3, p0, Lbwv;->z:Ljava/util/List;

    .line 16109
    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 964
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 967
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lbwv;->b(Z)V

    .line 968
    return-void
.end method

.method public final bridge synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 90
    check-cast p1, Lbwt$a;

    .line 16528
    iput-object p1, p0, Lbwv;->o:Lbwt$a;

    .line 90
    return-void
.end method
