.class public Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppInfoFragment;
.super Landroid/app/Fragment;
.source "H5DevAppInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppInfoFragment$AppInfoListAdapter;
    }
.end annotation


# static fields
.field private static final EXTRA_APPINFO:Ljava/lang/String; = "appInfo"

.field private static final TAG:Ljava/lang/String; = "H5DevAppInfoFragment"


# instance fields
.field private mAppInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppInfoFragment;
    .locals 3
    .param p0, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .prologue
    .line 43
    new-instance v1, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppInfoFragment;

    invoke-direct {v1}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppInfoFragment;-><init>()V

    .line 44
    .local v1, "fragment":Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppInfoFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 45
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "appInfo"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 46
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppInfoFragment;->setArguments(Landroid/os/Bundle;)V

    .line 47
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "appInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppInfoFragment;->mAppInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .line 54
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 14
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 61
    const-class v10, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    invoke-virtual {v10}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    .line 62
    .local v5, "publicFields":[Ljava/lang/reflect/Field;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v2, "kvPairs":Ljava/util/List;, "Ljava/util/List<Lft<Ljava/lang/String;Ljava/lang/String;>;>;"
    array-length v11, v5

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v11, :cond_0

    aget-object v0, v5, v10

    .line 65
    .local v0, "field":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "key":Ljava/lang/String;
    const-class v12, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v13, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppInfoFragment;->mAppInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    invoke-static {v12, v1, v13}, Lcom/alipay/mobile/nebula/util/H5ReflectUtil;->getField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 67
    .local v9, "value":Ljava/lang/String;
    new-instance v12, Lft;

    invoke-direct {v12, v1, v9}, Lft;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v1    # "key":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 68
    :catch_0
    move-exception v6

    .line 69
    .local v6, "t":Ljava/lang/Throwable;
    const-string/jumbo v12, "H5DevAppInfoFragment"

    const-string/jumbo v13, "get field error"

    invoke-static {v12, v13, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 72
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "t":Ljava/lang/Throwable;
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_1

    .line 73
    new-instance v3, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v3, v10}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 74
    .local v3, "listView":Landroid/widget/ListView;
    new-instance v10, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppInfoFragment$AppInfoListAdapter;

    .line 75
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    sget v12, Lcom/alipay/mobile/nebula/R$layout;->h5_dev_appinfo_item:I

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v2, v13}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppInfoFragment$AppInfoListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppInfoFragment$1;)V

    .line 74
    invoke-virtual {v3, v10}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    move-object v7, v3

    .line 83
    .end local v3    # "listView":Landroid/widget/ListView;
    .local v7, "targetView":Landroid/view/View;
    :goto_2
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-direct {v10, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    const/4 v10, -0x1

    invoke-virtual {v7, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 86
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v4, v10}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 87
    .local v4, "myContainer":Landroid/widget/FrameLayout;
    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 88
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-direct {v10, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v10}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    return-object v4

    .line 78
    .end local v4    # "myContainer":Landroid/widget/FrameLayout;
    .end local v7    # "targetView":Landroid/view/View;
    :cond_1
    new-instance v8, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 79
    .local v8, "tv":Landroid/widget/TextView;
    const-string/jumbo v10, "\u65e0\u6b64\u5b89\u88c5\u5305\u4fe1\u606f"

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    const/16 v10, 0x11

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 81
    move-object v7, v8

    .restart local v7    # "targetView":Landroid/view/View;
    goto :goto_2
.end method
