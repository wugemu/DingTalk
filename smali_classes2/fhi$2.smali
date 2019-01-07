.class final Lfhi$2;
.super Ljava/lang/Object;
.source "EnterpriseSquareEntranceManager.java"

# interfaces
.implements Lifn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfhi;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfhi;


# direct methods
.method constructor <init>(Lfhi;)V
    .locals 0
    .param p1, "this$0"    # Lfhi;

    .prologue
    .line 69
    iput-object p1, p0, Lfhi$2;->a:Lfhi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/settings/CloudSetting;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 72
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/settings/CloudSetting;>;"
    if-nez p1, :cond_1

    .line 86
    :cond_0
    return-void

    .line 75
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/settings/CloudSetting;

    .line 76
    .local v0, "cloudSetting":Lcom/alibaba/wukong/settings/CloudSetting;
    if-eqz v0, :cond_2

    .line 79
    const-string/jumbo v2, "user_promotion"

    invoke-interface {v0}, Lcom/alibaba/wukong/settings/CloudSetting;->getModuleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "enterprise_square_entrance_info"

    .line 80
    invoke-interface {v0}, Lcom/alibaba/wukong/settings/CloudSetting;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 81
    iget-object v2, p0, Lfhi$2;->a:Lfhi;

    .line 1027
    iget-object v2, v2, Lfhi;->a:Lcom/alibaba/wukong/Callback;

    .line 81
    if-eqz v2, :cond_2

    .line 82
    iget-object v2, p0, Lfhi$2;->a:Lfhi;

    .line 2027
    iget-object v2, v2, Lfhi;->a:Lcom/alibaba/wukong/Callback;

    .line 82
    iget-object v3, p0, Lfhi$2;->a:Lfhi;

    .line 3027
    invoke-static {v0}, Lfhi;->a(Lcom/alibaba/wukong/settings/CloudSetting;)Lfhi$a;

    move-result-object v3

    .line 82
    invoke-interface {v2, v3}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0
.end method
