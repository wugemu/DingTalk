.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;
.super Ljava/lang/Object;
.source "WifiFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$b;,
        Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$a;,
        Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$c;
    }
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$b;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$c;

.field c:Landroid/app/Dialog;

.field final synthetic d:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;)V
    .locals 2

    .prologue
    .line 522
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;->d:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 517
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;->a:Ljava/util/List;

    .line 523
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$c;

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$c;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$c;

    .line 524
    return-void
.end method


# virtual methods
.method a()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v9, 0x0

    .line 527
    iget-object v8, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;->d:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    invoke-virtual {v8}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->d()Ljava/lang/String;

    move-result-object v4

    .line 528
    .local v4, "list":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 530
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 531
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v3, v8, :cond_1

    .line 532
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 533
    .local v5, "object":Lorg/json/JSONObject;
    const-string/jumbo v8, "ssid"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 534
    .local v7, "ssid":Ljava/lang/String;
    const-string/jumbo v8, "safe"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 536
    .local v6, "safe":I
    new-instance v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$b;

    const/4 v8, 0x0

    invoke-direct {v1, p0, v8}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$b;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;B)V

    .line 537
    .local v1, "data":Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$b;
    if-nez v6, :cond_0

    const/4 v8, 0x1

    :goto_1
    iput-boolean v8, v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$b;->b:Z

    .line 538
    iput-object v7, v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$b;->a:Ljava/lang/String;

    .line 539
    iget-object v8, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;->a:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v8, v9

    .line 537
    goto :goto_1

    .line 541
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "data":Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$b;
    .end local v3    # "i":I
    .end local v5    # "object":Lorg/json/JSONObject;
    .end local v6    # "safe":I
    .end local v7    # "ssid":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 542
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 545
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;->c:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 591
    :cond_0
    return-void
.end method
