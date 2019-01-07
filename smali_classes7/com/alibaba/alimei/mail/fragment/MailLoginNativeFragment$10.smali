.class final Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$10;
.super Ljava/lang/Object;
.source "MailLoginNativeFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    .prologue
    .line 1226
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$10;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$10;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1230
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 1231
    .local v7, "r":Landroid/graphics/Rect;
    iget-object v12, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$10;->a:Landroid/view/View;

    invoke-virtual {v12, v7}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1233
    iget-object v12, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$10;->a:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 1236
    .local v8, "screenHeight":I
    iget-object v12, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$10;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-virtual {v12}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    const-string/jumbo v13, "window"

    invoke-virtual {v12, v13}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/WindowManager;

    .line 1237
    .local v11, "wm":Landroid/view/WindowManager;
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1238
    .local v5, "outMetrics":Landroid/util/DisplayMetrics;
    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    invoke-virtual {v12, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1239
    iget v10, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1241
    .local v10, "totalHeight":I
    const/4 v9, 0x0

    .line 1242
    .local v9, "stableInsetBottom":I
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x17

    if-lt v12, v13, :cond_0

    .line 1243
    iget-object v12, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$10;->a:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 1244
    iget-object v12, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$10;->a:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v9

    .line 1247
    :cond_0
    iget v12, v7, Landroid/graphics/Rect;->bottom:I

    sub-int v12, v8, v12

    sub-int v1, v12, v9

    .line 1248
    .local v1, "heightDiff":I
    iget-object v12, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$10;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-virtual {v12}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    const/16 v13, 0xfa

    invoke-static {v12, v13}, Lss;->a(Landroid/content/Context;I)I

    move-result v2

    .line 1250
    .local v2, "keyboardDefault":I
    iget-object v12, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$10;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-virtual {v12}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    const-string/jumbo v13, "quick_reply_keyboard_height"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v3

    .line 1251
    .local v3, "keyboardValue":I
    iget-object v12, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$10;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-virtual {v12}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string/jumbo v13, "quick_reply_keyboard_height"

    invoke-static {v12, v13}, Lcpk;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 1253
    .local v0, "containKeyboardValue":Z
    const/16 v12, 0x64

    if-le v1, v12, :cond_1

    .line 1254
    move v3, v1

    .line 1255
    iget-object v12, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$10;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-virtual {v12}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    const-string/jumbo v13, "quick_reply_keyboard_height"

    invoke-static {v12, v13, v1}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1258
    :cond_1
    const/4 v12, 0x2

    new-array v6, v12, [I

    .line 1259
    .local v6, "position":[I
    iget-object v12, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$10;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-static {v12}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->c(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    move-result-object v12

    invoke-virtual {v12, v6}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getLocationOnScreen([I)V

    .line 1261
    const/4 v12, 0x1

    aget v12, v6, v12

    sub-int v12, v10, v12

    iget-object v13, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$10;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-static {v13}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->c(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getHeight()I

    move-result v13

    sub-int/2addr v12, v13

    sub-int v4, v12, v3

    .line 1263
    .local v4, "leftSpace":I
    iget-object v12, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$10;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-static {v12}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->c(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getEditText()Landroid/widget/AutoCompleteTextView;

    move-result-object v12

    invoke-virtual {v12, v4}, Landroid/widget/AutoCompleteTextView;->setDropDownHeight(I)V

    .line 1265
    if-eqz v0, :cond_2

    .line 1266
    iget-object v12, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$10;->a:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v12

    invoke-virtual {v12, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1268
    :cond_2
    return-void
.end method
