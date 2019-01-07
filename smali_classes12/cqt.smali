.class public final Lcqt;
.super Ljava/lang/Object;
.source "CommentInputPanelWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcqt$c;,
        Lcqt$a;,
        Lcqt$b;
    }
.end annotation


# instance fields
.field public a:I

.field b:Landroid/content/Context;

.field public c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

.field d:Lcqt$b;

.field public e:Lcqt$a;

.field public f:Lcqt$c;

.field public g:Ljava/lang/String;

.field h:Z

.field i:Ljava/lang/String;

.field j:I

.field k:I

.field public l:Landroid/view/View;

.field m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:I

.field private t:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;Landroid/view/View;Lcqt$b;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputPanelView"    # Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;
    .param p3, "activityView"    # Landroid/view/View;
    .param p4, "listener"    # Lcqt$b;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcqt;->m:Ljava/util/Map;

    .line 209
    new-instance v0, Lcqt$7;

    invoke-direct {v0, p0}, Lcqt$7;-><init>(Lcqt;)V

    iput-object v0, p0, Lcqt;->n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 72
    iput-object p1, p0, Lcqt;->b:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcqt;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 74
    iput-object p4, p0, Lcqt;->d:Lcqt$b;

    .line 75
    iput-object p3, p0, Lcqt;->l:Landroid/view/View;

    .line 77
    iget-object v0, p0, Lcqt;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "InputPanel is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    iget-object v0, p0, Lcqt;->b:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 81
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1315
    :cond_1
    iput-boolean v2, p0, Lcqt;->p:Z

    .line 1316
    iput-boolean v3, p0, Lcqt;->o:Z

    .line 1317
    iput-boolean v2, p0, Lcqt;->q:Z

    .line 1318
    iput-boolean v2, p0, Lcqt;->r:Z

    .line 1319
    iget-object v0, p0, Lcqt;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    iget-boolean v1, p0, Lcqt;->o:Z

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setFace(Z)V

    .line 1320
    iget-object v0, p0, Lcqt;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    iget-boolean v1, p0, Lcqt;->q:Z

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setVoiceRecord(Z)V

    .line 1321
    iget-object v0, p0, Lcqt;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    iget-boolean v1, p0, Lcqt;->p:Z

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setAddApp(Z)V

    .line 1322
    iget-object v0, p0, Lcqt;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    iget-boolean v1, p0, Lcqt;->r:Z

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setQuickPraiseVisible(Z)V

    .line 1323
    iget-object v0, p0, Lcqt;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setEmotionBottomBarVisible(Z)V

    .line 1324
    iget-object v0, p0, Lcqt;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setSafeIconVisible(Z)V

    .line 1325
    iget-object v0, p0, Lcqt;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendButton()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1326
    iget-object v0, p0, Lcqt;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setForceShowSend(Z)V

    .line 2098
    iget-object v0, p0, Lcqt;->b:Landroid/content/Context;

    const-string/jumbo v1, "pref_keyboard_height"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcqt;->a(I)V

    .line 2100
    iget-boolean v0, p0, Lcqt;->o:Z

    if-eqz v0, :cond_2

    .line 2101
    invoke-virtual {p0}, Lcqt;->c()V

    .line 2104
    :cond_2
    iget-object v0, p0, Lcqt;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    new-instance v1, Lcqt$1;

    invoke-direct {v1, p0}, Lcqt$1;-><init>(Lcqt;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setTextChangeListener(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$a;)V

    .line 2145
    iget-object v0, p0, Lcqt;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getFaceButton()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcqt$2;

    invoke-direct {v1, p0}, Lcqt$2;-><init>(Lcqt;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2159
    iget-object v0, p0, Lcqt;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    new-instance v1, Lcqt$3;

    invoke-direct {v1, p0}, Lcqt$3;-><init>(Lcqt;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setEmotionClickListener(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;)V

    .line 2180
    iget-object v0, p0, Lcqt;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    new-instance v1, Lcqt$4;

    invoke-direct {v1, p0}, Lcqt$4;-><init>(Lcqt;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setRecentInnerEmotionSynDelegate(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$f;)V

    .line 2188
    iget-object v0, p0, Lcqt;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    new-instance v1, Lcqt$5;

    invoke-direct {v1, p0}, Lcqt$5;-><init>(Lcqt;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setSendButtonOnClicker(Landroid/view/View$OnClickListener;)V

    .line 2200
    iget-object v0, p0, Lcqt;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v0

    new-instance v1, Lcqt$6;

    invoke-direct {v1, p0}, Lcqt$6;-><init>(Lcqt;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 87
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 275
    iget v0, p0, Lcqt;->a:I

    if-eq v0, v1, :cond_0

    .line 276
    iput v1, p0, Lcqt;->a:I

    .line 277
    iget-object v0, p0, Lcqt;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->b()V

    .line 278
    iget-object v0, p0, Lcqt;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setMessageEditCursorVisible(Z)V

    .line 279
    iget-object v0, p0, Lcqt;->b:Landroid/content/Context;

    iget-object v1, p0, Lcqt;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcms;->b(Landroid/content/Context;Landroid/view/View;)V

    .line 281
    :cond_0
    return-void
.end method

.method a(I)V
    .locals 4
    .param p1, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 293
    iget v1, p0, Lcqt;->s:I

    if-nez v1, :cond_0

    .line 294
    iget-object v1, p0, Lcqt;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcig$d;->keyboard_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcqt;->s:I

    .line 296
    :cond_0
    iget v1, p0, Lcqt;->s:I

    if-ge p1, v1, :cond_1

    .line 297
    iget p1, p0, Lcqt;->s:I

    .line 299
    :cond_1
    iget v1, p0, Lcqt;->t:I

    if-eq v1, p1, :cond_2

    .line 300
    iput p1, p0, Lcqt;->t:I

    .line 301
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcqt;->t:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 303
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcqt;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setLayoutParamsOfFooterView(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 304
    iget-object v1, p0, Lcqt;->b:Landroid/content/Context;

    const-string/jumbo v2, "pref_keyboard_height"

    iget v3, p0, Lcqt;->t:I

    invoke-static {v1, v2, v3}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcqt;->t:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 307
    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    return-void
.end method

.method public final a(ZJLjava/lang/String;)V
    .locals 6
    .param p1, "autoAddAt"    # Z
    .param p2, "uid"    # J
    .param p4, "nick"    # Ljava/lang/String;

    .prologue
    .line 352
    iget-object v2, p0, Lcqt;->m:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const-string/jumbo v0, "@"

    .line 355
    .local v0, "atString":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 356
    const-string/jumbo v0, ""

    .line 359
    :cond_0
    new-instance v1, Landroid/text/SpannableString;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object p4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "\u0007"

    aput-object v4, v2, v3

    .line 360
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 361
    .local v1, "spannableString":Landroid/text/SpannableString;
    const-string/jumbo v2, " "

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v4

    const/16 v5, 0x11

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 364
    iget-object v2, p0, Lcqt;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->append(Ljava/lang/CharSequence;)V

    .line 365
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 284
    iget v0, p0, Lcqt;->a:I

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcqt;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->g()V

    .line 286
    iput v1, p0, Lcqt;->a:I

    .line 287
    iget-object v0, p0, Lcqt;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setMessageEditCursorVisible(Z)V

    .line 288
    iget-object v0, p0, Lcqt;->b:Landroid/content/Context;

    iget-object v1, p0, Lcqt;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 290
    :cond_0
    return-void
.end method

.method c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 330
    iget-boolean v0, p0, Lcqt;->o:Z

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcqt;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {}, Lcsx;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a(Ljava/util/List;)V

    .line 333
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 385
    iget-object v0, p0, Lcqt;->l:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcqt;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcqt;->n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcqt;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcqt;->n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 387
    iget-object v0, p0, Lcqt;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcqt;->n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 389
    :cond_0
    return-void
.end method
