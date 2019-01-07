.class public final Leci;
.super Landroid/widget/PopupWindow;
.source "QuickMessageReplyView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leci$a;,
        Leci$b;
    }
.end annotation


# instance fields
.field public a:Leci$b;

.field public b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroid/os/Handler;

.field private d:Ldsb;

.field private e:Lcwt;

.field private f:Landroid/view/View;

.field private g:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ldsb;)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "retailUserInfoModel"    # Ldsb;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v9, 0x1

    .line 91
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 1097
    iput-object p2, p0, Leci;->d:Ldsb;

    .line 1098
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Leci;->b:Ljava/lang/ref/WeakReference;

    .line 1099
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Leci;->c:Landroid/os/Handler;

    .line 1101
    sget v0, Lctk$g;->im_quick_reply_message_panel_view:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1102
    sget v0, Lctk$f;->quick_reply_message_list:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 1103
    sget v1, Lctk$f;->quick_reply_edit_text_view:I

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1104
    sget v2, Lctk$f;->quick_reply_cancel_text_view:I

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1105
    sget v3, Lctk$f;->quick_reply_empty_layout:I

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Leci;->f:Landroid/view/View;

    .line 1106
    sget v3, Lctk$f;->quick_reply_empty_icon:I

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1108
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lctk$i;->icon_quickreply_fill:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1109
    new-instance v6, Lcjz;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lctk$c;->chat_app_model_color_pressed:I

    .line 1110
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {v6, v5, v7}, Lcjz;-><init>(Ljava/lang/String;I)V

    .line 1111
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1113
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v5, 0x42d60000    # 107.0f

    invoke-static {v3, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    iput v3, p0, Leci;->g:I

    .line 1115
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Leci;->setWidth(I)V

    .line 1116
    iget v3, p0, Leci;->g:I

    invoke-virtual {p0, v3}, Leci;->setHeight(I)V

    .line 1117
    invoke-virtual {p0, v4}, Leci;->setContentView(Landroid/view/View;)V

    .line 1119
    sget v3, Lctk$j;->QuickReplyPanelStyle:I

    invoke-virtual {p0, v3}, Leci;->setAnimationStyle(I)V

    .line 1121
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setOverScrollMode(I)V

    .line 1122
    new-instance v3, Leci$a;

    invoke-direct {v3}, Leci$a;-><init>()V

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 1123
    invoke-virtual {p0, v9}, Leci;->setFocusable(Z)V

    .line 1124
    invoke-virtual {p0, v9}, Leci;->setOutsideTouchable(Z)V

    .line 1126
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {p0, v3}, Leci;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1128
    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v3, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 1129
    invoke-virtual {v3, v9}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 1130
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 1131
    new-instance v3, Lcwt;

    invoke-direct {v3}, Lcwt;-><init>()V

    iput-object v3, p0, Leci;->e:Lcwt;

    .line 1132
    iget-object v3, p0, Leci;->e:Lcwt;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 1134
    new-instance v0, Leci$1;

    invoke-direct {v0, p0}, Leci$1;-><init>(Leci;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1141
    new-instance v0, Leci$2;

    invoke-direct {v0, p0}, Leci$2;-><init>(Leci;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1166
    iget-object v0, p0, Leci;->e:Lcwt;

    new-instance v1, Leci$3;

    invoke-direct {v1, p0}, Leci$3;-><init>(Leci;)V

    .line 2055
    iput-object v1, v0, Lcwt;->b:Lcwt$b;

    .line 1180
    new-instance v0, Leci$4;

    invoke-direct {v0, p0}, Leci$4;-><init>(Leci;)V

    invoke-virtual {p0, v0}, Leci;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 93
    return-void
.end method

.method static synthetic a(Leci;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Leci;

    .prologue
    .line 50
    iget-object v0, p0, Leci;->b:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private static a(Landroid/app/Activity;F)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "alpha"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 386
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 387
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 388
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 389
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 390
    return-void
.end method

.method static synthetic a(Leci;I)V
    .locals 5
    .param p0, "x0"    # Leci;
    .param p1, "x1"    # I

    .prologue
    .line 50
    .line 3352
    iget-object v0, p0, Leci;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 3355
    iget-object v0, p0, Leci;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 3356
    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3360
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcms;->b(Landroid/content/Context;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 3361
    if-lez p1, :cond_2

    .line 3362
    iget-object v2, p0, Leci;->f:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3363
    iget v2, p0, Leci;->g:I

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x42480000    # 50.0f

    invoke-static {v3, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    mul-int/2addr v3, p1

    add-int/2addr v2, v3

    .line 3364
    if-le v2, v1, :cond_1

    .line 3373
    :goto_0
    invoke-virtual {p0, v1}, Leci;->setHeight(I)V

    .line 3374
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 3375
    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, v1}, Leci;->update(Landroid/view/View;II)V

    .line 50
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 3369
    goto :goto_0

    .line 3370
    :cond_2
    iget v1, p0, Leci;->g:I

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x43520000    # 210.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    add-int/2addr v1, v2

    .line 3371
    iget-object v2, p0, Leci;->f:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Leci;Landroid/app/Activity;F)V
    .locals 1
    .param p0, "x0"    # Leci;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # F

    .prologue
    .line 50
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Leci;->a(Landroid/app/Activity;F)V

    return-void
.end method

.method static synthetic a(Leci;Ljava/lang/String;)V
    .locals 5
    .param p0, "x0"    # Leci;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    .line 2394
    :try_start_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2395
    if-eqz v0, :cond_1

    .line 2396
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2397
    const-string/jumbo v0, "data"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 2398
    if-eqz v0, :cond_0

    .line 2399
    invoke-direct {p0, v0}, Leci;->a(Lorg/json/JSONArray;)V

    .line 2413
    :cond_0
    :goto_0
    return-void

    .line 2402
    :cond_1
    iget-object v0, p0, Leci;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2403
    iget-object v0, p0, Leci;->c:Landroid/os/Handler;

    new-instance v1, Leci$9;

    invoke-direct {v1, p0}, Leci$9;-><init>(Leci;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2412
    :catch_0
    move-exception v0

    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "QuickMessageReplyView"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "parseLocalDataError"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Leci;Lorg/json/JSONArray;)V
    .locals 0
    .param p0, "x0"    # Leci;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Leci;->a(Lorg/json/JSONArray;)V

    return-void
.end method

.method private a(Lorg/json/JSONArray;)V
    .locals 7
    .param p1, "data"    # Lorg/json/JSONArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 321
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 322
    .local v2, "length":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v4, "messages":Ljava/util/List;, "Ljava/util/List<Ldry;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 324
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 325
    .local v1, "item":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 329
    new-instance v3, Ldry;

    invoke-direct {v3, v1}, Ldry;-><init>(Lorg/json/JSONObject;)V

    .line 330
    .local v3, "message":Ldry;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    .end local v3    # "message":Ldry;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 333
    .end local v1    # "item":Lorg/json/JSONObject;
    :cond_1
    iget-object v5, p0, Leci;->c:Landroid/os/Handler;

    if-eqz v5, :cond_2

    .line 334
    iget-object v5, p0, Leci;->c:Landroid/os/Handler;

    new-instance v6, Leci$8;

    invoke-direct {v6, p0, v4}, Leci$8;-><init>(Leci;Ljava/util/List;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 345
    :cond_2
    return-void
.end method

.method static synthetic b(Leci;)Leci$b;
    .locals 1
    .param p0, "x0"    # Leci;

    .prologue
    .line 50
    iget-object v0, p0, Leci;->a:Leci$b;

    return-object v0
.end method

.method static synthetic c(Leci;)V
    .locals 5
    .param p0, "x0"    # Leci;

    .prologue
    .line 50
    .line 3218
    iget-object v0, p0, Leci;->d:Ldsb;

    if-eqz v0, :cond_0

    .line 3221
    new-instance v1, Ldrz;

    invoke-direct {v1}, Ldrz;-><init>()V

    .line 3222
    const-string/jumbo v0, "mtop.taobao.retail.get.quickPhrase"

    iput-object v0, v1, Ldrz;->a:Ljava/lang/String;

    .line 3223
    const-string/jumbo v0, "1.0"

    iput-object v0, v1, Ldrz;->b:Ljava/lang/String;

    .line 3224
    iget-object v0, p0, Leci;->d:Ldsb;

    iget-object v0, v0, Ldsb;->b:Ljava/lang/String;

    iput-object v0, v1, Ldrz;->c:Ljava/lang/String;

    .line 3225
    iget-object v0, p0, Leci;->d:Ldsb;

    iget-object v0, v0, Ldsb;->e:Ljava/lang/String;

    iput-object v0, v1, Ldrz;->d:Ljava/lang/String;

    .line 3227
    iget-object v0, p0, Leci;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 3230
    iget-object v0, p0, Leci;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 3231
    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3235
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v2

    new-instance v3, Leci$5;

    invoke-direct {v3, p0}, Leci$5;-><init>(Leci;)V

    const-class v4, Lcom/alibaba/wukong/Callback;

    invoke-interface {v2, v3, v4, v0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 3270
    new-instance v2, Leci$6;

    invoke-direct {v2, p0, v0}, Leci$6;-><init>(Leci;Lcom/alibaba/wukong/Callback;)V

    .line 3277
    const-class v0, Lcom/alibaba/android/dingtalkim/models/idl/service/TunnelIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/idl/service/TunnelIService;

    .line 3278
    if-eqz v0, :cond_0

    .line 3279
    invoke-virtual {v1}, Ldrz;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/models/idl/service/TunnelIService;->mtop(Ljava/lang/String;Liyv;)V

    .line 50
    :cond_0
    return-void
.end method

.method static synthetic d(Leci;)Lcwt;
    .locals 1
    .param p0, "x0"    # Leci;

    .prologue
    .line 50
    iget-object v0, p0, Leci;->e:Lcwt;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 203
    iget-object v1, p0, Leci;->b:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v1, p0, Leci;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 207
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    const v1, 0x3f19999a    # 0.6f

    invoke-static {v0, v1}, Leci;->a(Landroid/app/Activity;F)V

    .line 211
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Leci;->showAsDropDown(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 2
    .param p1, "firstInit"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 289
    const-string/jumbo v0, "QuickReplyLoadCache"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Leci$7;

    invoke-direct {v1, p0, p1}, Leci$7;-><init>(Leci;Z)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 318
    return-void
.end method
