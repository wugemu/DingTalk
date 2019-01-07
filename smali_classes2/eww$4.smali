.class public final Leww$4;
.super Ljava/lang/Object;
.source "TelePhoneContactManager.java"

# interfaces
.implements Lifn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leww;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Leww;


# direct methods
.method public constructor <init>(Leww;)V
    .locals 0
    .param p1, "this$0"    # Leww;

    .prologue
    .line 372
    iput-object p1, p0, Leww$4;->a:Leww;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 6
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

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 375
    .local p1, "settingList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/settings/CloudSetting;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/settings/CloudSetting;

    .line 379
    .local v2, "setting":Lcom/alibaba/wukong/settings/CloudSetting;
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 382
    const-string/jumbo v4, "dt_cloud_contact"

    invoke-interface {v2}, Lcom/alibaba/wukong/settings/CloudSetting;->getModuleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "user_contact_info"

    .line 383
    invoke-interface {v2}, Lcom/alibaba/wukong/settings/CloudSetting;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 384
    iget-object v3, p0, Leww$4;->a:Leww;

    invoke-interface {v2}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Leww;->a(Leww;Ljava/lang/String;)J

    move-result-wide v0

    .line 385
    .local v0, "lastVersion":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-ltz v3, :cond_0

    .line 386
    iget-object v3, p0, Leww$4;->a:Leww;

    invoke-static {v3, v0, v1}, Leww;->b(Leww;J)V

    goto :goto_0
.end method
