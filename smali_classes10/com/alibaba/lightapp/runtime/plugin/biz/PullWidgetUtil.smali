.class public Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;
.super Ljava/lang/Object;
.source "PullWidgetUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil$OnItemSelectedListener;
    }
.end annotation


# static fields
.field private static final PREF_KEY_INDEX:Ljava/lang/String; = "PullWidgetUtil_Index"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mChoseIndex:I

.field private mContext:Landroid/content/Context;

.field private mOnItemSelectedListener:Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil$OnItemSelectedListener;

.field private mShowCancel:Z

.field private mShowConfirm:Z

.field private mValueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mValues:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "selectedKey"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;->mValueMap:Ljava/util/Map;

    .line 33
    iput p3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;->mChoseIndex:I

    .line 34
    iget v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;->mChoseIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;->mChoseIndex:I

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;->mValueMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 35
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;->mChoseIndex:I

    .line 37
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;->initValues()V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;

    .prologue
    .line 18
    iget v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;->mChoseIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;->mChoseIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;->mShowConfirm:Z

    return v0
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;->mValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;->mValueMap:Ljava/util/Map;

    return-object v0
.end method

.method private initValues()V
    .locals 6

    .prologue
    .line 41
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;->mValueMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;->mValues:[Ljava/lang/String;

    .line 42
    const/4 v1, 0x0

    .line 43
    .local v1, "index":I
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;->mValueMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 44
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;->mValues:[Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v5, v1

    move v1, v2

    .line 45
    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    .line 53
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public setOnItemSelectedListener(Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil$OnItemSelectedListener;)V
    .locals 0
    .param p1, "onItemSelectedListener"    # Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil$OnItemSelectedListener;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;->mOnItemSelectedListener:Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil$OnItemSelectedListener;

    .line 120
    return-void
.end method

.method public setShowCancel(Z)V
    .locals 0
    .param p1, "showCancel"    # Z

    .prologue
    .line 115
    return-void
.end method

.method public setShowComfirm(Z)V
    .locals 0
    .param p1, "showConfirm"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;->mShowConfirm:Z

    .line 111
    return-void
.end method

.method public showPullWidget(Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil$OnItemSelectedListener;)V
    .locals 4
    .param p1, "onItemSelectedListener"    # Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil$OnItemSelectedListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 56
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 57
    :cond_0
    const-string/jumbo v1, "lightapp"

    sget-object v2, Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "showPullWidget cancel, context is not activity"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :goto_0
    return-void

    .line 60
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 61
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;->mValues:[Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;->mChoseIndex:I

    new-instance v3, Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil$1;

    invoke-direct {v3, p0, p1, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil$OnItemSelectedListener;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 82
    iget-boolean v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;->mShowConfirm:Z

    if-eqz v1, :cond_2

    .line 83
    sget v1, Lhdn$k;->sure:I

    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil$2;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil$2;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil$OnItemSelectedListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 96
    :cond_2
    iget-boolean v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;->mShowCancel:Z

    if-eqz v1, :cond_3

    .line 97
    sget v1, Lhdn$k;->login_cancel:I

    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil$3;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil$3;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil$OnItemSelectedListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 106
    :cond_3
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method
