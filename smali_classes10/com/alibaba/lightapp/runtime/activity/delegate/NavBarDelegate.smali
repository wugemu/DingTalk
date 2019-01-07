.class public Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;
.super Lhdu;
.source "NavBarDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$MenuAction;,
        Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;
    }
.end annotation


# instance fields
.field private A:Landroid/widget/RelativeLayout;

.field private B:Landroid/widget/RelativeLayout;

.field private C:Landroid/widget/RelativeLayout;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/widget/ImageView;

.field private G:Landroid/widget/ImageView;

.field private H:Landroid/widget/TextView;

.field private I:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

.field private J:Landroid/view/View;

.field private K:Landroid/view/View;

.field private L:Landroid/widget/TextView;

.field private M:Landroid/widget/TextView;

.field private N:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private O:Lecw;

.field private P:Lecw;

.field private Q:Ljava/lang/String;

.field private R:Landroid/widget/ImageView;

.field private S:Landroid/widget/TextView;

.field private T:Landroid/widget/ImageView;

.field private U:Landroid/widget/TextView;

.field private V:Landroid/widget/ImageView;

.field private W:I

.field private X:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$MenuAction;

.field private Y:I

.field public b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field public e:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;

.field public f:Lhej;

.field public g:Lhec;

.field public h:Lhdz;

.field public i:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

.field private j:Z

.field private k:I

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lhrv;",
            ">;"
        }
    .end annotation
.end field

.field private q:Landroid/app/Activity;

.field private r:Landroid/view/View;

.field private s:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

.field private t:Landroid/view/View;

.field private u:Landroid/widget/ImageView;

.field private v:Landroid/view/ViewGroup;

.field private w:Landroid/widget/RelativeLayout;

.field private x:Landroid/widget/RelativeLayout;

.field private y:Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

.field private z:Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/high16 v4, 0x40c00000    # 6.0f

    const/4 v3, 0x0

    .line 213
    invoke-direct {p0, p1}, Lhdu;-><init>(Landroid/app/Activity;)V

    .line 131
    iput-boolean v3, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->j:Z

    .line 133
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->b:Ljava/lang/String;

    .line 134
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->k:I

    .line 136
    iput-boolean v5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->l:Z

    .line 137
    iput-boolean v3, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->m:Z

    .line 139
    iput-boolean v3, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->n:Z

    .line 144
    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->o:Ljava/util/List;

    .line 145
    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->p:Ljava/util/List;

    .line 206
    iput v3, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->Y:I

    .line 1313
    new-instance v0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;-><init>(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->i:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    .line 215
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    .line 216
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lhdn$e;->lightapp_actionbar_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->W:I

    .line 2233
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    sget v1, Lhdn$h;->content:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->v:Landroid/view/ViewGroup;

    .line 2234
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    sget v1, Lhdn$h;->toolbar:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->t:Landroid/view/View;

    .line 2235
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    sget v1, Lhdn$h;->container:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->r:Landroid/view/View;

    .line 2237
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->t:Landroid/view/View;

    sget v1, Lhdn$h;->vertical_line:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->V:Landroid/widget/ImageView;

    .line 2238
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->t:Landroid/view/View;

    sget v1, Lhdn$h;->more_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->w:Landroid/widget/RelativeLayout;

    .line 2239
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->t:Landroid/view/View;

    sget v1, Lhdn$h;->back_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->C:Landroid/widget/RelativeLayout;

    .line 2240
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->t:Landroid/view/View;

    sget v1, Lhdn$h;->close_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->B:Landroid/widget/RelativeLayout;

    .line 2241
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->t:Landroid/view/View;

    sget v1, Lhdn$h;->help_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->A:Landroid/widget/RelativeLayout;

    .line 2242
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->t:Landroid/view/View;

    sget v1, Lhdn$h;->menu_right_item_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->x:Landroid/widget/RelativeLayout;

    .line 2244
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->t:Landroid/view/View;

    sget v1, Lhdn$h;->help_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->u:Landroid/widget/ImageView;

    .line 2246
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->t:Landroid/view/View;

    sget v1, Lhdn$h;->back_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->D:Landroid/widget/TextView;

    .line 2248
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->t:Landroid/view/View;

    sget v1, Lhdn$h;->close_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->E:Landroid/widget/TextView;

    .line 2249
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->t:Landroid/view/View;

    sget v1, Lhdn$h;->title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->I:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    .line 2250
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->I:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    new-instance v1, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$1;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$1;-><init>(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;->setOnDoubleTapListener(Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView$b;)V

    .line 2259
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->t:Landroid/view/View;

    sget v1, Lhdn$h;->remind_beside_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->J:Landroid/view/View;

    .line 2261
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->t:Landroid/view/View;

    sget v1, Lhdn$h;->sub_title_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->K:Landroid/view/View;

    .line 2262
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->t:Landroid/view/View;

    sget v1, Lhdn$h;->sub_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->L:Landroid/widget/TextView;

    .line 2263
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->t:Landroid/view/View;

    sget v1, Lhdn$h;->sub_title_right_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->N:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 2265
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->t:Landroid/view/View;

    sget v1, Lhdn$h;->more_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->F:Landroid/widget/ImageView;

    .line 2266
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->t:Landroid/view/View;

    sget v1, Lhdn$h;->more_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->H:Landroid/widget/TextView;

    .line 2268
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->t:Landroid/view/View;

    sget v1, Lhdn$h;->item_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->G:Landroid/widget/ImageView;

    .line 2269
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->t:Landroid/view/View;

    sget v1, Lhdn$h;->item_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->M:Landroid/widget/TextView;

    .line 2271
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->w:Landroid/widget/RelativeLayout;

    sget v1, Lhdn$h;->item_button_id:I

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->setTag(ILjava/lang/Object;)V

    .line 2272
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->w:Landroid/widget/RelativeLayout;

    sget v1, Lhdn$h;->item_group:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->setTag(ILjava/lang/Object;)V

    .line 2273
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->w:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$9;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$9;-><init>(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2279
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->x:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$10;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$10;-><init>(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2287
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->C:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$11;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$11;-><init>(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2302
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->B:Landroid/widget/RelativeLayout;

    sget v1, Lhdn$h;->item_button_id:I

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->setTag(ILjava/lang/Object;)V

    .line 2303
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->B:Landroid/widget/RelativeLayout;

    sget v1, Lhdn$h;->item_group:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->setTag(ILjava/lang/Object;)V

    .line 2304
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->B:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$12;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$12;-><init>(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2310
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->A:Landroid/widget/RelativeLayout;

    sget v1, Lhdn$h;->item_button_id:I

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->setTag(ILjava/lang/Object;)V

    .line 2311
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->A:Landroid/widget/RelativeLayout;

    sget v1, Lhdn$h;->item_group:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->setTag(ILjava/lang/Object;)V

    .line 2312
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->A:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$13;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$13;-><init>(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2320
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->r:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2321
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->r:Landroid/view/View;

    new-instance v1, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$14;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$14;-><init>(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 2365
    :cond_0
    new-instance v0, Lecw;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    sget v2, Lhdn$k;->icon_act_open:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lhdn$e;->ui_common_level1_text_color:I

    invoke-static {v2}, Leda;->b(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lecw;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->O:Lecw;

    .line 2366
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->O:Lecw;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    invoke-static {v1, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    .line 3079
    iput v1, v0, Lecw;->b:I

    .line 2367
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->O:Lecw;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    invoke-static {v1, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    .line 4070
    iput v1, v0, Lecw;->a:I

    .line 2369
    new-instance v0, Lecw;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    sget v2, Lhdn$k;->icon_act_close:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lhdn$e;->ui_common_level1_text_color:I

    invoke-static {v2}, Leda;->b(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lecw;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->P:Lecw;

    .line 2370
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->P:Lecw;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    invoke-static {v1, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    .line 4079
    iput v1, v0, Lecw;->b:I

    .line 2371
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->P:Lecw;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    invoke-static {v1, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    .line 5070
    iput v1, v0, Lecw;->a:I

    .line 2373
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->t:Landroid/view/View;

    sget v1, Lhdn$h;->red_dot_iv2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->R:Landroid/widget/ImageView;

    .line 2374
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->t:Landroid/view/View;

    sget v1, Lhdn$h;->right_badge_tv2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->S:Landroid/widget/TextView;

    .line 2375
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->t:Landroid/view/View;

    sget v1, Lhdn$h;->red_dot_iv1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->T:Landroid/widget/ImageView;

    .line 2376
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->t:Landroid/view/View;

    sget v1, Lhdn$h;->right_badge_tv1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->U:Landroid/widget/TextView;

    .line 2379
    invoke-direct {p0, v5}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->b(Z)V

    .line 220
    :cond_1
    return-void
.end method

.method static synthetic A(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Lhej;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->f:Lhej;

    return-object v0
.end method

.method static synthetic B(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Lhdz;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->h:Lhdz;

    return-object v0
.end method

.method static synthetic C(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->C:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->Y:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$MenuAction;)Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$MenuAction;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$MenuAction;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->X:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$MenuAction;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->e:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->z:Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Lcom/alibaba/lightapp/runtime/webview/RimetWebView;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->s:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->o:Ljava/util/List;

    return-object p1
.end method

.method private a(I)V
    .locals 2
    .param p1, "orientation"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1143
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    new-instance v1, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$7;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$7;-><init>(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1152
    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 7
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "menuItem"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;
    .param p3, "badgeView"    # Landroid/widget/TextView;
    .param p4, "redDotView"    # Landroid/widget/ImageView;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x7

    const/4 v3, 0x6

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 902
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 935
    :cond_0
    :goto_0
    return-void

    .line 906
    :cond_1
    invoke-virtual {p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->getBadge()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 907
    invoke-virtual {p3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 908
    .local v0, "layout":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 909
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 911
    invoke-virtual {p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->getBadge()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 912
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    .line 913
    .local v1, "padding":I
    invoke-virtual {p3, v1, v4, v1, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 918
    .end local v1    # "padding":I
    :goto_1
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 920
    invoke-virtual {p4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 921
    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 922
    invoke-virtual {p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->getBadge()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 915
    :cond_2
    invoke-virtual {p3, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_1

    .line 923
    .end local v0    # "layout":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    invoke-virtual {p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->getBadgeJustRedDot()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 924
    invoke-virtual {p4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 925
    .restart local v0    # "layout":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 926
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 927
    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 929
    invoke-virtual {p4, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 930
    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 932
    .end local v0    # "layout":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    invoke-virtual {p4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 933
    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->c(Z)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;ZILjava/lang/String;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    const/high16 v6, 0x40c00000    # 6.0f

    const/4 v5, 0x0

    .line 68
    .line 13448
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->J:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 13450
    if-eqz p1, :cond_2

    .line 13451
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    .line 13452
    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 13453
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 13454
    new-instance v1, Lecw;

    sget v2, Lhdn$e;->ui_common_level1_text_color:I

    invoke-static {v2}, Leda;->b(I)I

    move-result v2

    invoke-direct {v1, p3, v2}, Lecw;-><init>(Ljava/lang/String;I)V

    .line 13455
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    invoke-static {v2, v6}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    .line 14079
    iput v2, v1, Lecw;->b:I

    .line 13456
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    invoke-static {v2, v6}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    .line 15070
    iput v2, v1, Lecw;->a:I

    .line 13458
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->I:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    invoke-virtual {v2, v5, v5, v1, v5}, Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 13496
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->J:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    return-void

    .line 13461
    :cond_1
    sparse-switch p2, :sswitch_data_0

    .line 13481
    sget v1, Lhdn$g;->attendance_detail_help:I

    .line 13484
    :goto_1
    if-lez v1, :cond_0

    .line 13485
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 13486
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->I:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    invoke-virtual {v2, v5, v5, v1, v5}, Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 13463
    :sswitch_0
    sget v1, Lhdn$g;->attendance_detail_help:I

    goto :goto_1

    .line 13466
    :sswitch_1
    sget v1, Lhdn$g;->ic_actbar_help_new:I

    goto :goto_1

    .line 13469
    :sswitch_2
    sget v1, Lhdn$g;->ic_actbar_help_hot:I

    goto :goto_1

    .line 13472
    :sswitch_3
    sget v1, Lhdn$g;->ic_actbar_guide:I

    goto :goto_1

    .line 13475
    :sswitch_4
    sget v1, Lhdn$g;->ic_actbar_help_new_blue:I

    goto :goto_1

    .line 13478
    :sswitch_5
    sget v1, Lhdn$g;->ic_actbar_help_hot_blue:I

    goto :goto_1

    .line 13490
    :cond_2
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->I:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    invoke-virtual {v1, v5, v5, v5, v5}, Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 13492
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    const/high16 v2, -0x3f800000    # -4.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    .line 13493
    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 13461
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x65 -> :sswitch_3
        0x66 -> :sswitch_4
        0x67 -> :sswitch_5
    .end sparse-switch
.end method

.method private a(Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 20
    .param p1, "singleMenuItem"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;
    .param p2, "popupTextView"    # Landroid/widget/TextView;
    .param p3, "popupImageView"    # Landroid/widget/ImageView;
    .param p4, "badgeView"    # Landroid/widget/TextView;
    .param p5, "redDotView"    # Landroid/widget/ImageView;

    .prologue
    .line 938
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->getUrl()Ljava/lang/String;

    move-result-object v7

    .line 939
    .local v7, "iconUrl":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->getDrawableId()I

    move-result v13

    .line 940
    .local v13, "drawableId":I
    const-string/jumbo v6, "IMAGE"

    invoke-static {v6}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 942
    .local v5, "magician":Lcom/alibaba/doraemon/image/ImageMagician;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 943
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-static {v6, v8}, Lcms;->c(Landroid/content/Context;F)I

    move-result v17

    .line 944
    .local v17, "size":I
    invoke-virtual/range {p3 .. p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/RelativeLayout$LayoutParams;

    .line 945
    .local v15, "params":Landroid/widget/RelativeLayout$LayoutParams;
    move/from16 v0, v17

    iput v0, v15, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 946
    move/from16 v0, v17

    iput v0, v15, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 947
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 949
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v6, p3

    invoke-interface/range {v5 .. v12}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 950
    const/16 v6, 0x8

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 951
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 952
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->a(Landroid/view/View;Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 979
    .end local v15    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v17    # "size":I
    :goto_0
    return-void

    .line 953
    :cond_0
    if-eqz v13, :cond_1

    .line 954
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    const/high16 v8, 0x42200000    # 40.0f

    invoke-static {v6, v8}, Lcms;->c(Landroid/content/Context;F)I

    move-result v17

    .line 955
    .restart local v17    # "size":I
    invoke-virtual/range {p3 .. p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/RelativeLayout$LayoutParams;

    .line 956
    .restart local v15    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    move/from16 v0, v17

    iput v0, v15, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 957
    move/from16 v0, v17

    iput v0, v15, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 958
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 960
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 961
    const/16 v6, 0x8

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 962
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 963
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->a(Landroid/view/View;Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 965
    .end local v15    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v17    # "size":I
    :cond_1
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x13

    if-ge v6, v8, :cond_2

    .line 966
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->getText()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v18

    .line 967
    .local v18, "textLen":I
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v14

    .line 968
    .local v14, "paint":Landroid/graphics/Paint;
    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    .line 969
    .local v16, "rect":Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->getText()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v14, v6, v8, v0, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 970
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    invoke-static {v6, v8}, Lcms;->c(Landroid/content/Context;F)I

    move-result v19

    .line 971
    .local v19, "width":I
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    .line 974
    .end local v14    # "paint":Landroid/graphics/Paint;
    .end local v16    # "rect":Landroid/graphics/Rect;
    .end local v18    # "textLen":I
    .end local v19    # "width":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->getText()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 975
    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 976
    const/16 v6, 0x8

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 977
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->a(Landroid/view/View;Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 966
    :cond_3
    const/16 v18, 0x0

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;Landroid/view/View;)Z
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 68
    .line 8682
    sget v0, Lhdn$h;->item_group:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 8683
    sget v0, Lhdn$h;->item_button_id:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    .line 8684
    sget v0, Lhdn$h;->item_model:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 8685
    if-eqz v0, :cond_0

    instance-of v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    if-eqz v3, :cond_1

    .line 8687
    :cond_0
    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    invoke-direct {p0, v1, v2, v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;)Z

    move-result v0

    :goto_0
    return v0

    .line 8689
    :cond_1
    const/4 v0, 0x1

    .line 68
    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;Ljava/lang/Object;Ljava/lang/Object;Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-static {p1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;)Z
    .locals 12
    .param p1, "itemGroup"    # Ljava/lang/Object;
    .param p2, "itembButtonId"    # Ljava/lang/Object;
    .param p3, "itemModel"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 694
    if-eqz p1, :cond_3

    instance-of v6, p1, Ljava/lang/Integer;

    if-eqz v6, :cond_3

    .line 696
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "itemGroup":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 697
    .local v3, "itemGroupId":I
    if-ne v3, v7, :cond_9

    .line 698
    if-eqz p2, :cond_3

    instance-of v6, p2, Ljava/lang/String;

    if-eqz v6, :cond_3

    move-object v4, p2

    .line 700
    check-cast v4, Ljava/lang/String;

    .line 701
    .local v4, "itemId":Ljava/lang/String;
    const/4 v6, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v6, :pswitch_data_1

    .line 730
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->e:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;

    if-eqz v5, :cond_2

    .line 731
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 733
    .local v1, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v5, "id"

    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6782
    :goto_1
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->X:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$MenuAction;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->X:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$MenuAction;

    sget-object v6, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$MenuAction;->SetAction:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$MenuAction;

    if-ne v5, v6, :cond_7

    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->k()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 6783
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->e:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;

    if-eqz v5, :cond_1

    .line 6784
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->e:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;

    const-string/jumbo v6, "navActions"

    invoke-interface {v5, v6, v1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;->dispatchEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 6787
    :cond_1
    :try_start_1
    invoke-static {}, Lhlt;->a()Lhlt;

    move-result-object v5

    const-string/jumbo v6, "navActions"

    .line 6789
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v8

    .line 6787
    invoke-virtual {v5, v6, v8}, Lhlt;->a(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 739
    .end local v1    # "data":Lorg/json/JSONObject;
    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->i:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    invoke-virtual {v5, v4}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;->onMenuItemClick(Ljava/lang/String;)V

    .line 772
    .end local v3    # "itemGroupId":I
    .end local v4    # "itemId":Ljava/lang/String;
    :cond_3
    :goto_3
    return v7

    .line 701
    .restart local v3    # "itemGroupId":I
    .restart local v4    # "itemId":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v8, "-5"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v6, v5

    goto :goto_0

    :pswitch_1
    const-string/jumbo v8, "-2"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v6, v7

    goto :goto_0

    :pswitch_2
    const-string/jumbo v8, "-4"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v6, 0x2

    goto :goto_0

    :pswitch_3
    const-string/jumbo v8, "-3"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v6, 0x3

    goto :goto_0

    .line 5818
    :pswitch_4
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->o:Ljava/util/List;

    if-eqz v6, :cond_3

    .line 5821
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->o:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    .line 5822
    new-array v9, v8, [Ljava/lang/String;

    .line 5823
    new-array v10, v8, [Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    move v6, v5

    .line 5825
    :goto_4
    if-ge v6, v8, :cond_4

    .line 5826
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->o:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    .line 5827
    invoke-virtual {v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->getText()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v6

    .line 5828
    aput-object v5, v10, v6

    .line 5825
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_4

    .line 5830
    :cond_4
    new-instance v5, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    invoke-direct {v5, v6}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$5;

    invoke-direct {v6, p0, v10}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$5;-><init>(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;[Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;)V

    invoke-virtual {v5, v9, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v5

    sget v6, Lhdn$k;->login_cancel:I

    .line 5841
    invoke-static {v6}, Lhdo;->a(I)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$4;

    invoke-direct {v8, p0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$4;-><init>(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)V

    invoke-virtual {v5, v6, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v5

    .line 5845
    invoke-virtual {v5}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_3

    .line 706
    :pswitch_5
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->e:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;

    if-eqz v5, :cond_5

    .line 707
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->e:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;

    const-string/jumbo v6, "navRightButton"

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v5, v6, v8}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;->dispatchEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 709
    :cond_5
    if-eqz p3, :cond_6

    invoke-virtual {p3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->isControl()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 710
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->i:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    invoke-virtual {v5}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;->onRightClick()V

    goto/16 :goto_3

    .line 712
    :cond_6
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->e:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;

    if-eqz v5, :cond_3

    .line 713
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->e:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;

    invoke-interface {v5}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;->onRightClick()V

    goto/16 :goto_3

    .line 718
    :pswitch_6
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->e:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;

    if-eqz v5, :cond_3

    .line 719
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->e:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;

    const-string/jumbo v6, "navRightButton"

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v5, v6, v8}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;->dispatchEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 720
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->e:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;

    invoke-interface {v5}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;->onRightClick()V

    goto/16 :goto_3

    .line 725
    :pswitch_7
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->e:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;

    if-eqz v5, :cond_3

    .line 726
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->e:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;

    invoke-interface {v5}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;->stickPage()V

    goto/16 :goto_3

    .line 734
    .restart local v1    # "data":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 735
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 6790
    .end local v2    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v5

    .line 6791
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 6795
    :cond_7
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->e:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;

    if-eqz v5, :cond_8

    .line 6796
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->e:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;

    const-string/jumbo v6, "navMenu"

    invoke-interface {v5, v6, v1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;->dispatchEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 6800
    :cond_8
    :try_start_2
    invoke-static {}, Lhlt;->a()Lhlt;

    move-result-object v5

    const-string/jumbo v6, "navMenu"

    .line 6802
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v8

    .line 6800
    invoke-virtual {v5, v6, v8}, Lhlt;->a(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 6803
    :catch_2
    move-exception v5

    .line 6804
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 743
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v4    # "itemId":Ljava/lang/String;
    :cond_9
    if-nez v3, :cond_3

    .line 744
    if-eqz p2, :cond_3

    instance-of v5, p2, Ljava/lang/Integer;

    if-eqz v5, :cond_3

    move-object v0, p2

    .line 746
    check-cast v0, Ljava/lang/Integer;

    .line 747
    .local v0, "button_id":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    packed-switch v5, :pswitch_data_2

    goto/16 :goto_3

    .line 761
    :pswitch_8
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->i:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    if-eqz v5, :cond_3

    .line 762
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->e:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;

    if-eqz v5, :cond_a

    .line 763
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->e:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;

    const-string/jumbo v6, "navHelpIcon"

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v5, v6, v8}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;->dispatchEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 765
    :cond_a
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->i:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    invoke-virtual {v5}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;->onHelpIconClick()V

    goto/16 :goto_3

    .line 749
    :pswitch_9
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->i:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->i:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    invoke-virtual {v5}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;->getNeedControlHome()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 750
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->e:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;

    if-eqz v5, :cond_b

    .line 751
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->e:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;

    const-string/jumbo v6, "navHome"

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v5, v6, v8}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;->dispatchEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 753
    :cond_b
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->i:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    invoke-virtual {v5}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;->onHomeClick()V

    goto/16 :goto_3

    .line 755
    :cond_c
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    if-eqz v5, :cond_3

    .line 756
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto/16 :goto_3

    .line 701
    .line 747
    nop

    :pswitch_data_0
    .packed-switch 0x5a5
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->k:I

    return p1
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->y:Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->p:Ljava/util/List;

    return-object p1
.end method

.method private b(Z)V
    .locals 2
    .param p1, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 500
    if-eqz p1, :cond_0

    .line 501
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->t:Landroid/view/View;

    new-instance v1, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$16;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$16;-><init>(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 507
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->I:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    new-instance v1, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$2;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$2;-><init>(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 517
    :goto_0
    return-void

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->t:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 515
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->I:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private static b(I)Z
    .locals 10
    .param p0, "colorInt"    # I

    .prologue
    const/4 v3, 0x1

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 1167
    const/4 v4, 0x3

    new-array v2, v4, [F

    .line 1168
    .local v2, "hsv":[F
    invoke-static {p0, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1169
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x2

    aget v5, v2, v5

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    aget v6, v2, v3

    float-to-double v6, v6

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 1170
    .local v0, "d":D
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v0, v4

    if-gez v4, :cond_0

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->j:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->j:Z

    return p1
.end method

.method public static final b(Ljava/lang/String;)Z
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 1798
    .line 1799
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "-2"

    .line 1800
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "-3"

    .line 1801
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "-4"

    .line 1802
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "-5"

    .line 1803
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    return-object v0
.end method

.method private c(Z)V
    .locals 7
    .param p1, "isDynamic"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const v6, 0x106000b

    .line 599
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    if-eqz v5, :cond_3

    .line 601
    if-eqz p1, :cond_4

    .line 602
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 603
    .local v0, "iconFontColor":I
    sget v1, Lhdn$g;->ic_actbar_light_white_setting:I

    .line 604
    .local v1, "moreRes":I
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 611
    .local v4, "titleColor":I
    :goto_0
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->D:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 612
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->D:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 614
    :cond_0
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->E:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 615
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->E:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 617
    :cond_1
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->F:Landroid/widget/ImageView;

    if-eqz v5, :cond_2

    .line 618
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    const/high16 v6, 0x42200000    # 40.0f

    invoke-static {v5, v6}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    .line 619
    .local v3, "size":I
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->F:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 620
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 621
    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 622
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->F:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 624
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->F:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 626
    .end local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3    # "size":I
    :cond_2
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->I:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    if-eqz v5, :cond_3

    .line 627
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->I:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    invoke-virtual {v5, v4}, Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;->setTextColor(I)V

    .line 628
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->H:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 631
    .end local v0    # "iconFontColor":I
    .end local v1    # "moreRes":I
    .end local v4    # "titleColor":I
    :cond_3
    return-void

    .line 606
    :cond_4
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lhdn$e;->ui_common_theme_icon_bg_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 607
    .restart local v0    # "iconFontColor":I
    sget v1, Lhdn$g;->menu_overflow:I

    .line 608
    .restart local v1    # "moreRes":I
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lhdn$e;->text_color_black:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .restart local v4    # "titleColor":I
    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->m:Z

    return p1
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 542
    const/4 v0, 0x0

    .line 543
    .local v0, "isSupportGradient":Z
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 544
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 545
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->isOpaque()Z

    move-result v3

    if-nez v3, :cond_0

    .line 546
    const-string/jumbo v3, "dd_nav_translucent"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 547
    .local v2, "value":Ljava/lang/String;
    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 550
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    return v0
.end method

.method static synthetic d(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->t:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;Z)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    .line 12520
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->J:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 12522
    if-eqz p1, :cond_0

    .line 12523
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->h()V

    .line 68
    :cond_0
    return-void

    .line 12520
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)V
    .locals 12
    .param p1, "color"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1181
    :try_start_0
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lhdn$e;->lightapp_actionbar_bg:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1182
    .local v0, "colorInt":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1183
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 1185
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->v:Landroid/view/ViewGroup;

    if-eqz v9, :cond_0

    .line 1186
    const v9, 0x3f59999a    # 0.85f

    invoke-static {p1, v9}, Lhdo;->a(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v7

    .line 1187
    .local v7, "stateBarColor":Ljava/lang/String;
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    .line 8257
    .local v8, "stateBarColorInt":I
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    instance-of v9, v9, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v9, :cond_0

    .line 8258
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    check-cast v9, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v9, v8}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->setImmersiveStatusBarBackgroundColor(I)V

    .line 1192
    .end local v7    # "stateBarColor":Ljava/lang/String;
    .end local v8    # "stateBarColorInt":I
    :cond_0
    iput v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->W:I

    .line 1194
    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->b(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1195
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->I:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lhdn$e;->text_color_black:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;->setTextColor(I)V

    .line 1196
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->M:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lhdn$e;->ui_common_theme_text_color:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1197
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->H:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lhdn$e;->ui_common_theme_text_color:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1199
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->D:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lhdn$e;->ui_common_theme_icon_bg_color:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1200
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->E:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lhdn$e;->ui_common_theme_icon_bg_color:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1202
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    const/high16 v10, 0x42200000    # 40.0f

    invoke-static {v9, v10}, Lcms;->c(Landroid/content/Context;F)I

    move-result v6

    .line 1203
    .local v6, "size":I
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->F:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1204
    .local v3, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1205
    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1206
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->F:Landroid/widget/ImageView;

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1208
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->F:Landroid/widget/ImageView;

    sget v10, Lhdn$g;->menu_overflow:I

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1209
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->C:Landroid/widget/RelativeLayout;

    sget v10, Lhdn$g;->ui_common_action_icon_bg:I

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 1210
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->B:Landroid/widget/RelativeLayout;

    sget v10, Lhdn$g;->ui_common_action_icon_bg:I

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 1211
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->A:Landroid/widget/RelativeLayout;

    sget v10, Lhdn$g;->ui_common_action_icon_bg:I

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 1212
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->w:Landroid/widget/RelativeLayout;

    sget v10, Lhdn$g;->ui_common_action_icon_bg:I

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 1213
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->x:Landroid/widget/RelativeLayout;

    sget v10, Lhdn$g;->ui_common_action_icon_bg:I

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 1250
    :goto_0
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->t:Landroid/view/View;

    invoke-virtual {v9, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1254
    .end local v0    # "colorInt":I
    .end local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v6    # "size":I
    :goto_1
    return-void

    .line 1217
    .restart local v0    # "colorInt":I
    :cond_1
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->I:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lhdn$e;->white:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;->setTextColor(I)V

    .line 1218
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->M:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lhdn$e;->white:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1219
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->H:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lhdn$e;->white:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1220
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->D:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lhdn$e;->ui_common_inverse_content_fg_color:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1221
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->E:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lhdn$e;->ui_common_inverse_content_fg_color:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1223
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    const/high16 v10, 0x42200000    # 40.0f

    invoke-static {v9, v10}, Lcms;->c(Landroid/content/Context;F)I

    move-result v6

    .line 1224
    .restart local v6    # "size":I
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->F:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1225
    .restart local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1226
    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1227
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->F:Landroid/widget/ImageView;

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1229
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->F:Landroid/widget/ImageView;

    sget v10, Lhdn$g;->ic_actbar_light_white_setting:I

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1230
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->V:Landroid/widget/ImageView;

    sget v10, Lhdn$g;->actionbar_line_white:I

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1232
    move v2, v0

    .line 1233
    .local v2, "normalBgColor":I
    const v9, 0x3f19999a    # 0.6f

    invoke-static {p1, v9}, Lhdo;->a(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v4

    .line 1234
    .local v4, "selectColor":Ljava/lang/String;
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    .line 1235
    .local v5, "selectedBgColor":I
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x10

    if-lt v9, v10, :cond_2

    .line 1236
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->C:Landroid/widget/RelativeLayout;

    invoke-static {v2, v5}, Lhdo;->a(II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1237
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->B:Landroid/widget/RelativeLayout;

    invoke-static {v2, v5}, Lhdo;->a(II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1238
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->A:Landroid/widget/RelativeLayout;

    invoke-static {v2, v5}, Lhdo;->a(II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1239
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->w:Landroid/widget/RelativeLayout;

    invoke-static {v2, v5}, Lhdo;->a(II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1240
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->x:Landroid/widget/RelativeLayout;

    invoke-static {v2, v5}, Lhdo;->a(II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1251
    .end local v0    # "colorInt":I
    .end local v2    # "normalBgColor":I
    .end local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4    # "selectColor":Ljava/lang/String;
    .end local v5    # "selectedBgColor":I
    .end local v6    # "size":I
    :catch_0
    move-exception v1

    .line 1252
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1242
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "colorInt":I
    .restart local v2    # "normalBgColor":I
    .restart local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v4    # "selectColor":Ljava/lang/String;
    .restart local v5    # "selectedBgColor":I
    .restart local v6    # "size":I
    :cond_2
    :try_start_1
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->C:Landroid/widget/RelativeLayout;

    invoke-static {v2, v5}, Lhdo;->a(II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1243
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->B:Landroid/widget/RelativeLayout;

    invoke-static {v2, v5}, Lhdo;->a(II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1244
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->A:Landroid/widget/RelativeLayout;

    invoke-static {v2, v5}, Lhdo;->a(II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1245
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->w:Landroid/widget/RelativeLayout;

    invoke-static {v2, v5}, Lhdo;->a(II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1246
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->x:Landroid/widget/RelativeLayout;

    invoke-static {v2, v5}, Lhdo;->a(II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method static synthetic e(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Lcom/alibaba/lightapp/runtime/webview/RimetWebView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->s:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->b(Z)V

    return-void
.end method

.method static synthetic f(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    .prologue
    .line 68
    iget v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->Y:I

    return v0
.end method

.method static synthetic g(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    .prologue
    .line 68
    .line 8810
    invoke-static {}, Lhrw;->a()Lhrw;

    move-result-object v0

    .line 9131
    iget-object v1, v0, Lhrw;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lhrw;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 8812
    :goto_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->e:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 8813
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->e:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;

    const-string/jumbo v1, "navTitleClick"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;->dispatchEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 68
    :cond_0
    return-void

    .line 9131
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic h(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->B:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private h()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 529
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->K:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 530
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->J:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 531
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/4 v3, 0x0

    iget v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 532
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->J:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 539
    :goto_0
    return-void

    .line 534
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->J:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 535
    .restart local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    .line 536
    .local v0, "offset":I
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 537
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->J:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method static synthetic i(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->E:Landroid/widget/TextView;

    return-object v0
.end method

.method private i()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->z:Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    if-nez v0, :cond_0

    .line 1078
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->x:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1087
    :goto_0
    return-void

    .line 1080
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->x:Landroid/widget/RelativeLayout;

    sget v1, Lhdn$h;->item_group:I

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->setTag(ILjava/lang/Object;)V

    .line 1081
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->x:Landroid/widget/RelativeLayout;

    sget v1, Lhdn$h;->item_button_id:I

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->z:Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->setTag(ILjava/lang/Object;)V

    .line 1082
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->x:Landroid/widget/RelativeLayout;

    sget v1, Lhdn$h;->item_model:I

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->z:Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->setTag(ILjava/lang/Object;)V

    .line 1084
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->z:Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->M:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->G:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->S:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->R:Landroid/widget/ImageView;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->a(Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 1085
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->x:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private j()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1304
    iget v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->W:I

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->W:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1306
    :cond_0
    sget v0, Lhdn$g;->menu_overflow:I

    .line 1308
    :goto_0
    return v0

    :cond_1
    sget v0, Lhdn$g;->ic_actbar_light_white_setting:I

    goto :goto_0
.end method

.method static synthetic j(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->p:Ljava/util/List;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->Q:Ljava/lang/String;

    return-object v0
.end method

.method private k()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1752
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->e:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;

    if-eqz v1, :cond_0

    .line 1753
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->e:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;

    invoke-interface {v1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 1754
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Lhec;->a(Ljava/lang/String;)Z

    move-result v1

    .line 1756
    .end local v0    # "url":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic l(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->N:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->i:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    .prologue
    const/16 v1, 0x17

    const/4 v2, 0x0

    .line 68
    .line 9884
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 9885
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->u:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 9886
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->u:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 9887
    iget v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->k:I

    if-lez v0, :cond_0

    .line 9888
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->u:Landroid/widget/ImageView;

    iget v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->k:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9890
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->m:Z

    if-eqz v0, :cond_2

    .line 9891
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->A:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    .line 9893
    :cond_2
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->A:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic o(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    .prologue
    .line 68
    .line 9984
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->i()V

    .line 9987
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 9988
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->y:Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 9989
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->w:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 10025
    :cond_0
    :goto_0
    return-void

    .line 9990
    :cond_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->y:Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    if-eqz v1, :cond_2

    .line 9991
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->w:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 9992
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->y:Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    .line 9993
    if-eqz v1, :cond_0

    .line 9994
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->w:Landroid/widget/RelativeLayout;

    sget v2, Lhdn$h;->item_group:I

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout;->setTag(ILjava/lang/Object;)V

    .line 9995
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->w:Landroid/widget/RelativeLayout;

    sget v2, Lhdn$h;->item_button_id:I

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout;->setTag(ILjava/lang/Object;)V

    .line 9996
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->w:Landroid/widget/RelativeLayout;

    sget v2, Lhdn$h;->item_model:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->setTag(ILjava/lang/Object;)V

    .line 9998
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->w:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 9999
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->H:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->F:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->U:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->T:Landroid/widget/ImageView;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->a(Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 10015
    :catch_0
    move-exception v0

    .line 10019
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 10020
    const-string/jumbo v2, "error_desc"

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10021
    const-string/jumbo v2, "category"

    const-string/jumbo v3, "IndexOutOfBoundsException"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10022
    const-string/jumbo v2, "item"

    const-string/jumbo v3, "addMenu"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10023
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->getInstance()Lgvi;

    move-result-object v2

    invoke-virtual {v2, v1}, Lgvi;->warn(Ljava/util/Map;)V

    .line 10024
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0

    .line 10001
    :cond_2
    if-lez v0, :cond_0

    .line 10002
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    .line 10003
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->F:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 10004
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 10005
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 10006
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->F:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10008
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->w:Landroid/widget/RelativeLayout;

    sget v1, Lhdn$h;->item_group:I

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->setTag(ILjava/lang/Object;)V

    .line 10009
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->w:Landroid/widget/RelativeLayout;

    sget v1, Lhdn$h;->item_button_id:I

    const-string/jumbo v2, "-5"

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->setTag(ILjava/lang/Object;)V

    .line 10010
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->F:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 10011
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->w:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 10012
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->F:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10013
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->H:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method static synthetic p(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    .prologue
    .line 68
    .line 10030
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->i()V

    .line 10033
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 10034
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->y:Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 10035
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->w:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 10072
    :cond_0
    :goto_0
    return-void

    .line 10036
    :cond_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->y:Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    if-eqz v1, :cond_2

    .line 10037
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->w:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 10038
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->y:Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    .line 10039
    if-eqz v1, :cond_0

    .line 10040
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->w:Landroid/widget/RelativeLayout;

    sget v2, Lhdn$h;->item_group:I

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout;->setTag(ILjava/lang/Object;)V

    .line 10041
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->w:Landroid/widget/RelativeLayout;

    sget v2, Lhdn$h;->item_button_id:I

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout;->setTag(ILjava/lang/Object;)V

    .line 10042
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->w:Landroid/widget/RelativeLayout;

    sget v2, Lhdn$h;->item_model:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->setTag(ILjava/lang/Object;)V

    .line 10044
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->w:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 10045
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->H:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->F:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->U:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->T:Landroid/widget/ImageView;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->a(Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 10062
    :catch_0
    move-exception v0

    .line 10066
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 10067
    const-string/jumbo v2, "error_desc"

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10068
    const-string/jumbo v2, "category"

    const-string/jumbo v3, "IndexOutOfBoundsException"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10069
    const-string/jumbo v2, "item"

    const-string/jumbo v3, "addActions"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10070
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->getInstance()Lgvi;

    move-result-object v2

    invoke-virtual {v2, v1}, Lgvi;->warn(Ljava/util/Map;)V

    .line 10071
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0

    .line 10047
    :cond_2
    if-lez v0, :cond_0

    .line 10048
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    .line 10049
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->F:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 10050
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 10051
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 10052
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->F:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10054
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->w:Landroid/widget/RelativeLayout;

    sget v1, Lhdn$h;->item_group:I

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->setTag(ILjava/lang/Object;)V

    .line 10055
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->w:Landroid/widget/RelativeLayout;

    sget v1, Lhdn$h;->item_button_id:I

    const-string/jumbo v2, "-5"

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->setTag(ILjava/lang/Object;)V

    .line 10056
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->F:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 10057
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->w:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 10058
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->F:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10059
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->H:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10060
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->H:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    sget v2, Lhdn$k;->more:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method static synthetic q(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)V
    .locals 12
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x1

    .line 68
    .line 10091
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->Q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10092
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->N:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 10093
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->N:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setRotation(F)V

    .line 10096
    :cond_0
    invoke-static {}, Lhrw;->a()Lhrw;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->p:Ljava/util/List;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->t:Landroid/view/View;

    new-instance v5, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$6;

    invoke-direct {v5, p0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$6;-><init>(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)V

    .line 11054
    if-eqz v2, :cond_1

    if-eqz v4, :cond_1

    if-nez v3, :cond_2

    .line 11055
    :cond_1
    :goto_0
    return-void

    .line 11058
    :cond_2
    iget-object v0, v1, Lhrw;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    if-eqz v0, :cond_3

    iget-object v0, v1, Lhrw;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 11062
    :cond_3
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v6, Lhdn$i;->drop_list_layout:I

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 11064
    sget v0, Lhdn$h;->drop_list:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ListViewHasMaxHeight;

    .line 11066
    sget v7, Lhdn$h;->view_extra:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lhrw$1;

    invoke-direct {v8, v1}, Lhrw$1;-><init>(Lhrw;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11075
    new-instance v7, Lhrw$a;

    invoke-direct {v7, v1, v2}, Lhrw$a;-><init>(Lhrw;Landroid/content/Context;)V

    .line 11076
    invoke-virtual {v7, v3}, Lhrw$a;->a(Ljava/util/List;)V

    .line 11078
    const/high16 v8, 0x42440000    # 49.0f

    invoke-static {v2, v8}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v8

    mul-int/lit8 v8, v8, 0x5

    const/high16 v9, 0x42480000    # 50.0f

    invoke-static {v2, v9}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v2

    add-int/2addr v2, v8

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListViewHasMaxHeight;->setListViewMaxHeight(I)V

    .line 11079
    invoke-virtual {v0, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListViewHasMaxHeight;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 11080
    new-instance v2, Lhrw$2;

    invoke-direct {v2, v1, v5, v3}, Lhrw$2;-><init>(Lhrw;Lhrw$b;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListViewHasMaxHeight;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 11103
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-direct {v0, v6, v11, v11, v10}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, v1, Lhrw;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    .line 11104
    iget-object v0, v1, Lhrw;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11105
    iget-object v0, v1, Lhrw;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-virtual {v0, v10}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->setTouchable(Z)V

    .line 11106
    iget-object v0, v1, Lhrw;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-virtual {v0, v10}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->setInputMethodMode(I)V

    .line 11107
    iget-object v0, v1, Lhrw;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->setSoftInputMode(I)V

    .line 11108
    iget-object v0, v1, Lhrw;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-virtual {v0, v10}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->setFocusable(Z)V

    .line 11109
    iget-object v0, v1, Lhrw;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 11110
    iget-object v0, v1, Lhrw;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    sget v2, Lhdn$l;->Widget_AppCompat_Light_ListPopupWindow:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->setAnimationStyle(I)V

    .line 11112
    iget-object v0, v1, Lhrw;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    new-instance v2, Lhrw$3;

    invoke-direct {v2, v1, v5}, Lhrw$3;-><init>(Lhrw;Lhrw$b;)V

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 11120
    iget-object v0, v1, Lhrw;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->update()V

    goto/16 :goto_0
.end method

.method static synthetic r(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->w:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic s(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->H:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic t(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->I:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    return-object v0
.end method

.method static synthetic u(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->k()Z

    move-result v0

    return v0
.end method

.method static synthetic v(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->l:Z

    return v0
.end method

.method static synthetic w(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    .prologue
    .line 68
    .line 11771
    sget v0, Lhdn$k;->dt_open_application_top:I

    invoke-static {v0}, Lhdo;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 11773
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->g:Lhec;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->g:Lhec;

    .line 12256
    iget-boolean v1, v1, Lhec;->g:Z

    .line 11773
    if-eqz v1, :cond_0

    .line 11774
    sget v0, Lhdn$k;->dt_back_to_session:I

    invoke-static {v0}, Lhdo;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 11776
    :cond_0
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    invoke-direct {v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;-><init>()V

    const-string/jumbo v2, "-3"

    .line 11777
    invoke-virtual {v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->setId(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    move-result-object v1

    .line 11778
    invoke-virtual {v1, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->setText(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    move-result-object v0

    .line 68
    return-object v0
.end method

.method static synthetic x(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->o:Ljava/util/List;

    return-object v0
.end method

.method static synthetic y(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->y:Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    return-object v0
.end method

.method static synthetic z(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->j()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 653
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 654
    .local v1, "intent":Landroid/content/Intent;
    :goto_0
    if-eqz v1, :cond_2

    .line 656
    const-string/jumbo v3, "show_options_menu"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->l:Z

    .line 658
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 659
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, ""

    .line 663
    .local v2, "title":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v3, "title"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 664
    const-string/jumbo v3, "title"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 666
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 667
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    .line 668
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lhdn$k;->app_name:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 671
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->i:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    invoke-virtual {v3, v2, v5, v5, v6}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;->setActionBarTitle(Ljava/lang/String;ZZZ)V

    .line 673
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v2    # "title":Ljava/lang/String;
    :cond_2
    return-void

    .line 653
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 668
    .restart local v0    # "extras":Landroid/os/Bundle;
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "title":Ljava/lang/String;
    :cond_4
    const-string/jumbo v2, ""

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v6, 0xa

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 850
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 7123
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7124
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 7125
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->isOpaque()Z

    move-result v3

    if-nez v3, :cond_0

    .line 7126
    const-string/jumbo v3, "dd_orientation"

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7127
    const-string/jumbo v3, "landscape"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 7128
    invoke-direct {p0, v2}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->a(I)V

    .line 7155
    :cond_0
    :goto_0
    const-string/jumbo v0, ""

    .line 7156
    const-string/jumbo v3, "dd_nav_bgcolor"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7157
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 7158
    invoke-virtual {v3}, Landroid/net/Uri;->isOpaque()Z

    move-result v4

    if-nez v4, :cond_1

    .line 7159
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v4, "#"

    aput-object v4, v0, v2

    const-string/jumbo v4, "dd_nav_bgcolor"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7163
    :cond_1
    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->d(Ljava/lang/String;)V

    .line 7264
    if-eqz p1, :cond_f

    const-string/jumbo v0, "dd_share=false"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v2

    .line 7269
    :goto_1
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 7270
    const-string/jumbo v4, "showmenu"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7271
    const-string/jumbo v4, "false"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_d

    move v0, v2

    .line 7279
    :cond_2
    :goto_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 7280
    iget-boolean v4, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->l:Z

    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    .line 7281
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;-><init>()V

    const-string/jumbo v4, "-4"

    .line 7282
    invoke-virtual {v0, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->setId(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    move-result-object v0

    const-string/jumbo v4, ""

    .line 7283
    invoke-virtual {v0, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->setText(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    move-result-object v0

    .line 7284
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->j()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->setDrawableId(I)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    move-result-object v0

    .line 7285
    invoke-virtual {v0, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->setControl(Z)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    move-result-object v0

    .line 7286
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7288
    :cond_3
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->i:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    sget-object v4, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->sOverflowMenuBackgroundDefaultColor:Ljava/lang/String;

    const-string/jumbo v5, "#000000"

    invoke-virtual {v0, v3, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;->setMenu(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 7292
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 7293
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 7294
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/Uri;->isOpaque()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->t:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 7295
    const-string/jumbo v3, "dd_full_screen"

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7296
    const-string/jumbo v3, "true"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    move v0, v1

    .line 7297
    :goto_3
    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->a(Z)V

    .line 855
    :cond_4
    invoke-static {p1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 7559
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->t:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->r:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 7560
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 7562
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_5

    .line 7563
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 7565
    :cond_5
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 7574
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->r:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7585
    :cond_6
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    if-eqz v0, :cond_7

    .line 7587
    iput v2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->Y:I

    .line 7592
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->t:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 7593
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->Y:I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 7581
    :cond_7
    invoke-direct {p0, v1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->c(Z)V

    .line 859
    :cond_8
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->h:Lhdz;

    if-eqz v0, :cond_9

    .line 860
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->h:Lhdz;

    .line 8153
    iput-object p1, v0, Lhdz;->j:Ljava/lang/String;

    .line 865
    :cond_9
    return-void

    .line 7129
    :cond_a
    const-string/jumbo v3, "auto"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 7130
    invoke-direct {p0, v6}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->a(I)V

    goto/16 :goto_0

    .line 7131
    :cond_b
    invoke-static {}, Lcpa;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    invoke-static {v0}, Lcpa;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 7133
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->a(I)V

    goto/16 :goto_0

    .line 7135
    :cond_c
    invoke-direct {p0, v1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->a(I)V

    goto/16 :goto_0

    .line 7273
    :cond_d
    :try_start_1
    const-string/jumbo v4, "true"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 7274
    goto/16 :goto_2

    .line 7276
    :catch_0
    move-exception v3

    .line 7277
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    :cond_e
    move v0, v2

    .line 7296
    goto/16 :goto_3

    :cond_f
    move v0, v1

    goto/16 :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "subTitle"    # Ljava/lang/String;
    .param p2, "icon"    # Ljava/lang/String;
    .param p3, "showIcon"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v6, 0xf

    const/4 v5, 0x0

    .line 401
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 402
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->K:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 405
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->I:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 406
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 407
    const/4 v2, -0x1

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 408
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->I:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    invoke-virtual {v2, v1}, Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 441
    :goto_0
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->J:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 442
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->h()V

    .line 444
    :cond_0
    return-void

    .line 411
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->K:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 412
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->L:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    if-eqz p3, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 415
    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->Q:Ljava/lang/String;

    .line 416
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->N:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v2, p2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    :goto_1
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->q:Landroid/app/Activity;

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    .line 423
    .local v0, "offsetY":I
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->I:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 424
    .restart local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 425
    invoke-virtual {v1, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 426
    const/4 v2, -0x2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 427
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->I:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    invoke-virtual {v2, v1}, Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 429
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->h:Lhdz;

    if-eqz v2, :cond_2

    .line 430
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->h:Lhdz;

    invoke-virtual {v2, v5}, Lhdz;->a(Z)V

    .line 433
    :cond_2
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->t:Landroid/view/View;

    new-instance v3, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$15;

    invoke-direct {v3, p0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$15;-><init>(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 418
    .end local v0    # "offsetY":I
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->Q:Ljava/lang/String;

    .line 419
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->N:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public final a(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 391
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->t:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 392
    if-eqz p1, :cond_1

    .line 393
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->t:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->t:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final e()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 635
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->B:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->B:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->B:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$3;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$3;-><init>(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 648
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 877
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->i:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->i:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;->onLeftClick()V

    .line 881
    :cond_0
    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1764
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->I:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->I:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1765
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->I:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1767
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
