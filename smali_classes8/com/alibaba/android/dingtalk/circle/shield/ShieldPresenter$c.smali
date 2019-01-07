.class public final Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$c;
.super Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$ShieldOperation;
.source "ShieldPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field final a:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V
    .locals 0
    .param p1, "postObject"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .prologue
    .line 341
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$ShieldOperation;-><init>()V

    .line 342
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$c;->a:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 343
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 347
    sget v0, Lbpu$e;->unshield_operation:I

    return v0
.end method

.method protected final a(Landroid/app/Activity;Landroid/view/View;Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$ShieldOperation$a;Landroid/widget/PopupWindow;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "listener"    # Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$ShieldOperation$a;
    .param p4, "popupWindow"    # Landroid/widget/PopupWindow;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 352
    sget v1, Lbpu$d;->unshield_btn:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 353
    .local v0, "unShieldBtn":Landroid/view/View;
    new-instance v1, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$c$1;

    invoke-direct {v1, p0, p4, p3}, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$c$1;-><init>(Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$c;Landroid/widget/PopupWindow;Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$ShieldOperation$a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    return-void
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 366
    const/16 v0, 0x96

    return v0
.end method

.method protected final c()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 371
    invoke-static {}, Lbqj;->a()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x430c0000    # 140.0f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method
