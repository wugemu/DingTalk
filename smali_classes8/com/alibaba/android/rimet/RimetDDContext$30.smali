.class final Lcom/alibaba/android/rimet/RimetDDContext$30;
.super Ljava/lang/Object;
.source "RimetDDContext.java"

# interfaces
.implements Lifn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/RimetDDContext;->initConference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/RimetDDContext;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/RimetDDContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/RimetDDContext;

    .prologue
    .line 2835
    iput-object p1, p0, Lcom/alibaba/android/rimet/RimetDDContext$30;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/settings/CloudSetting;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2838
    .local p1, "cloudSettings":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/settings/CloudSetting;>;"
    invoke-static {}, Lcom/alibaba/android/rimet/RimetDDContext;->access$000()Ljava/lang/String;

    .line 2839
    if-nez p1, :cond_1

    .line 2859
    :cond_0
    return-void

    .line 2842
    :cond_1
    const-string/jumbo v4, "general"

    const-string/jumbo v5, "ConfigEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "CloudSetting is onChanged\uff0c size:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2843
    invoke-static {}, Leii;->a()Leii;

    move-result-object v4

    invoke-virtual {v4, p1}, Leii;->a(Ljava/util/List;)V

    .line 2844
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/settings/CloudSetting;

    .line 2845
    .local v0, "cloudSetting":Lcom/alibaba/wukong/settings/CloudSetting;
    if-eqz v0, :cond_2

    .line 2848
    invoke-interface {v0}, Lcom/alibaba/wukong/settings/CloudSetting;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 2849
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v0}, Lcom/alibaba/wukong/settings/CloudSetting;->getModuleName()Ljava/lang/String;

    move-result-object v2

    .line 2850
    .local v2, "module":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2854
    invoke-interface {v0}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 2857
    .local v3, "value":Ljava/lang/String;
    invoke-static {v2, v1, v3}, Lely;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
