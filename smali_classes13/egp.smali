.class public Legp;
.super Legn;
.source "FocusRunningDeviceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Legp$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Legn",
        "<",
        "Lcom/alibaba/android/projection/data/FocusDeviceObject;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Legp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Legp;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Legn;-><init>(Landroid/app/Activity;)V

    .line 27
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 32
    if-nez p2, :cond_1

    .line 33
    iget-object v3, p0, Legp;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 1092
    .local v2, "inflater":Landroid/view/LayoutInflater;
    sget v3, Legm$d;->layout_focus_running_device_item:I

    .line 34
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 36
    new-instance v1, Legp$a;

    invoke-direct {v1, p0, v7}, Legp$a;-><init>(Legp;B)V

    .line 37
    .local v1, "holder":Legp$a;
    sget v3, Legm$c;->device_name:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Legp$a;->a:Landroid/widget/TextView;

    .line 38
    sget v3, Legm$c;->device_label:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Legp$a;->b:Landroid/widget/TextView;

    .line 39
    sget v3, Legm$c;->device_status:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Legp$a;->c:Landroid/view/View;

    .line 40
    sget v3, Legm$c;->device_choose:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v3, v1, Legp$a;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 41
    sget v3, Legm$c;->device_loading:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, v1, Legp$a;->e:Landroid/widget/ProgressBar;

    .line 42
    sget v3, Legm$c;->device_running:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Legp$a;->f:Landroid/widget/TextView;

    .line 44
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 49
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v3, p0, Legp;->a:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/projection/data/FocusDeviceObject;

    .line 50
    .local v0, "deviceModel":Lcom/alibaba/android/projection/data/FocusDeviceObject;
    if-eqz v0, :cond_0

    .line 2058
    if-eqz v0, :cond_0

    if-nez v1, :cond_2

    .line 54
    :cond_0
    :goto_1
    return-object p2

    .line 46
    .end local v0    # "deviceModel":Lcom/alibaba/android/projection/data/FocusDeviceObject;
    .end local v1    # "holder":Legp$a;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Legp$a;

    .restart local v1    # "holder":Legp$a;
    goto :goto_0

    .line 2061
    .restart local v0    # "deviceModel":Lcom/alibaba/android/projection/data/FocusDeviceObject;
    :cond_2
    iget-object v3, v0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceNick:Ljava/lang/String;

    .line 2062
    iget-object v4, v0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceCastCode:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2063
    iget-object v4, v1, Legp$a;->a:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceCastCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2064
    iget-object v4, v1, Legp$a;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2065
    iget-object v4, v1, Legp$a;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2071
    :goto_2
    iget-object v3, v0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->showType:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    sget-object v4, Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;->UNKNOWN:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    if-eq v3, v4, :cond_6

    .line 2072
    iget-object v3, v1, Legp$a;->c:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2073
    iget-object v3, v0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->showType:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    sget-object v4, Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;->EDITABLE:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    if-ne v3, v4, :cond_4

    .line 2074
    iget-object v3, v1, Legp$a;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v3, v7}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 2075
    iget-object v3, v1, Legp$a;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2076
    iget-object v3, v1, Legp$a;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 2067
    :cond_3
    iget-object v4, v1, Legp$a;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2068
    iget-object v3, v1, Legp$a;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 2077
    :cond_4
    iget-object v3, v0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->showType:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    sget-object v4, Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;->LOADING:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    if-ne v3, v4, :cond_5

    .line 2078
    iget-object v3, v1, Legp$a;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v3, v6}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 2079
    iget-object v3, v1, Legp$a;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2080
    iget-object v3, v1, Legp$a;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 2081
    :cond_5
    iget-object v3, v0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->showType:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    sget-object v4, Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;->RUNNING:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    if-ne v3, v4, :cond_0

    .line 2082
    iget-object v3, v1, Legp$a;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v3, v6}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 2083
    iget-object v3, v1, Legp$a;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2084
    iget-object v3, v1, Legp$a;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 2087
    :cond_6
    iget-object v3, v1, Legp$a;->c:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method
