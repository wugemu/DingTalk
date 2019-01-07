.class final Lekd$1;
.super Lcmg;
.source "CsConfigAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lekd;->a(Ljava/util/List;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Ljava/util/List",
        "<",
        "Lejw;",
        ">;",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/rimet/biz/object/CsConfigObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lekd;


# direct methods
.method constructor <init>(Lekd;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lekd;

    .prologue
    .line 59
    .local p2, "x0":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/rimet/biz/object/CsConfigObject;>;>;"
    iput-object p1, p0, Lekd$1;->a:Lekd;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 59
    check-cast p1, Ljava/util/List;

    .line 1063
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1064
    if-eqz p1, :cond_3

    .line 1065
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lejw;

    .line 1066
    if-eqz v0, :cond_0

    .line 1067
    new-instance v3, Lcom/alibaba/android/rimet/biz/object/CsConfigObject;

    invoke-direct {v3}, Lcom/alibaba/android/rimet/biz/object/CsConfigObject;-><init>()V

    .line 1069
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    const-string/jumbo v5, "oa_filter_ccp"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lhcy;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1071
    const-string/jumbo v4, "oa_user"

    iget-object v5, v0, Lejw;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1072
    iget-object v4, p0, Lekd$1;->a:Lekd;

    iget-object v5, v0, Lejw;->c:Ljava/lang/String;

    invoke-static {v4, v5}, Lekd;->a(Lekd;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alibaba/android/rimet/biz/object/CsConfigObject;->data:Ljava/lang/String;

    .line 1079
    :goto_1
    iget-object v4, v0, Lejw;->a:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/alibaba/android/rimet/biz/object/CsConfigObject;->version:J

    .line 1080
    iget-object v0, v0, Lejw;->b:Ljava/lang/String;

    iput-object v0, v3, Lcom/alibaba/android/rimet/biz/object/CsConfigObject;->topic:Ljava/lang/String;

    .line 1081
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1074
    :cond_1
    iget-object v4, v0, Lejw;->c:Ljava/lang/String;

    iput-object v4, v3, Lcom/alibaba/android/rimet/biz/object/CsConfigObject;->data:Ljava/lang/String;

    goto :goto_1

    .line 1077
    :cond_2
    iget-object v4, v0, Lejw;->c:Ljava/lang/String;

    iput-object v4, v3, Lcom/alibaba/android/rimet/biz/object/CsConfigObject;->data:Ljava/lang/String;

    goto :goto_1

    .line 59
    :cond_3
    return-object v1
.end method
