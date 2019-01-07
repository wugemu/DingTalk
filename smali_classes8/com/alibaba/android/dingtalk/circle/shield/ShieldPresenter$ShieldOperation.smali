.class public abstract Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$ShieldOperation;
.super Ljava/lang/Object;
.source "ShieldPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ShieldOperation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$ShieldOperation$a;,
        Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$ShieldOperation$ShieldType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    return-void
.end method

.method public static a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;Z)I
    .locals 4
    .param p0, "postObject"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    .param p1, "isFromDetail"    # Z
    .annotation build Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$ShieldOperation$ShieldType;
    .end annotation

    .prologue
    const/4 v0, 0x2

    .line 194
    if-nez p0, :cond_1

    .line 208
    :cond_0
    :goto_0
    return v0

    .line 198
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->isShielded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 199
    if-nez p1, :cond_0

    .line 203
    const/4 v0, 0x1

    goto :goto_0

    .line 204
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->getScopeFirstId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->k(J)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->isPostByMySelf()Z

    move-result v1

    if-nez v1, :cond_0

    .line 205
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract a()I
.end method

.method public final a(Landroid/app/Activity;Landroid/view/View;Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$ShieldOperation$a;)V
    .locals 11
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "pull"    # Landroid/view/View;
    .param p3, "listener"    # Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$ShieldOperation$a;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x2

    const/4 v8, 0x1

    .line 222
    if-eqz p2, :cond_0

    invoke-static {p1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$ShieldOperation;->a()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 227
    .local v4, "view":Landroid/view/View;
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v4, v9, v9, v8}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 228
    .local v2, "popupWindow":Landroid/widget/PopupWindow;
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 229
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$ShieldOperation;->b()I

    move-result v5

    int-to-float v5, v5

    invoke-static {p1, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 230
    invoke-virtual {v2, v8}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 231
    invoke-virtual {v2, v8}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 233
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x16

    if-lt v5, v6, :cond_2

    .line 234
    invoke-virtual {v2, v8}, Landroid/widget/PopupWindow;->setAttachedInDecor(Z)V

    .line 237
    :cond_2
    invoke-virtual {p0, p1, v4, p3, v2}, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$ShieldOperation;->a(Landroid/app/Activity;Landroid/view/View;Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$ShieldOperation$a;Landroid/widget/PopupWindow;)V

    .line 239
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v5, v6, :cond_4

    .line 240
    const/4 v5, 0x2

    new-array v0, v5, [I

    .line 241
    .local v0, "location":[I
    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 242
    aget v5, v0, v8

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int v1, v5, v6

    .line 243
    .local v1, "offsetY":I
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x19

    if-ne v5, v6, :cond_3

    .line 245
    invoke-static {p1}, Lcms;->b(Landroid/content/Context;)I

    move-result v3

    .line 246
    .local v3, "screenHeight":I
    sub-int v5, v3, v1

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 248
    .end local v3    # "screenHeight":I
    :cond_3
    aget v5, v0, v10

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$ShieldOperation;->c()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v2, p2, v10, v5, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 250
    .end local v0    # "location":[I
    .end local v1    # "offsetY":I
    :cond_4
    invoke-virtual {v2, p2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected abstract a(Landroid/app/Activity;Landroid/view/View;Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$ShieldOperation$a;Landroid/widget/PopupWindow;)V
.end method

.method protected b()I
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method protected c()I
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x0

    return v0
.end method
