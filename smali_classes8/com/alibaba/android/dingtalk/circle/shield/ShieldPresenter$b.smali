.class public final Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$b;
.super Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$ShieldOperation;
.source "ShieldPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/widget/PopupWindow;

.field private b:Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$ShieldOperation$a;

.field private c:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

.field private d:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V
    .locals 0
    .param p1, "postObject"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$ShieldOperation;-><init>()V

    .line 297
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$b;->c:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 298
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 293
    sget v0, Lbpu$e;->shield_operation:I

    return v0
.end method

.method protected final a(Landroid/app/Activity;Landroid/view/View;Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$ShieldOperation$a;Landroid/widget/PopupWindow;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "listener"    # Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$ShieldOperation$a;
    .param p4, "popupWindow"    # Landroid/widget/PopupWindow;

    .prologue
    .line 302
    iput-object p4, p0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$b;->a:Landroid/widget/PopupWindow;

    .line 303
    iput-object p3, p0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$b;->b:Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$ShieldOperation$a;

    .line 304
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$b;->d:Landroid/app/Activity;

    .line 305
    sget v0, Lbpu$d;->shield_btn:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    sget v0, Lbpu$d;->check_shield_list:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    return-void
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 329
    const/16 v0, 0xc8

    return v0
.end method

.method protected final c()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 334
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$b;->d:Landroid/app/Activity;

    const/high16 v1, 0x433e0000    # 190.0f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 312
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$b;->a:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 313
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$b;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 316
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 317
    .local v0, "id":I
    sget v1, Lbpu$d;->shield_btn:I

    if-ne v0, v1, :cond_2

    .line 318
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$b;->b:Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$ShieldOperation$a;

    if-eqz v1, :cond_1

    .line 319
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$b;->b:Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$ShieldOperation$a;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$b;->c:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    invoke-interface {v1, v2}, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$ShieldOperation$a;->a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V

    .line 325
    :cond_1
    :goto_0
    return-void

    .line 321
    :cond_2
    sget v1, Lbpu$d;->check_shield_list:I

    if-ne v0, v1, :cond_1

    .line 322
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$b;->d:Landroid/app/Activity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/activity/ShieldListActivity;->a(Landroid/app/Activity;)V

    goto :goto_0
.end method
