.class final Lenc$a;
.super Ljava/lang/Object;
.source "SearchAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lenc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;

.field d:Z

.field e:I

.field f:Lcma;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcma",
            "<",
            "Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcma;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcma",
            "<",
            "Lcom/alibaba/android/search/model/idl/objects/PushUserResultExObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcma;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1278
    .local p1, "callback":Lcma;, "Lcma<Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1219
    const/16 v1, 0xa

    iput v1, p0, Lenc$a;->e:I

    .line 1223
    new-instance v1, Lenc$a$1;

    invoke-direct {v1, p0}, Lenc$a$1;-><init>(Lenc$a;)V

    iput-object v1, p0, Lenc$a;->g:Lcma;

    .line 1279
    iput-object p1, p0, Lenc$a;->f:Lcma;

    .line 1281
    const-class v1, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v2, "dt_search"

    const-string/jumbo v3, "get_user_intimacy_data_task_max_batch"

    invoke-interface {v1, v2, v3}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v0

    .line 1284
    .local v0, "maxBatch":Lcom/alibaba/wukong/settings/CloudSetting;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1285
    invoke-interface {v0}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lenc$a;->e:I

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lenc$a;->e:I

    .line 1287
    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1298
    iget v2, p0, Lenc$a;->e:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lenc$a;->e:I

    .line 1299
    new-instance v0, Lenc$a$2;

    iget-object v2, p0, Lenc$a;->g:Lcma;

    invoke-direct {v0, p0, v2}, Lenc$a$2;-><init>(Lenc$a;Lcma;)V

    .line 1307
    .local v0, "handlerExt":Lcmg;, "Lcmg<Leoy;Lcom/alibaba/android/search/model/idl/objects/PushUserResultExObject;>;"
    const-class v2, Lcom/alibaba/android/search/api/idl/SearchIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/search/api/idl/SearchIService;

    .line 1308
    .local v1, "service":Lcom/alibaba/android/search/api/idl/SearchIService;
    if-nez v1, :cond_1

    .line 1309
    const-string/jumbo v2, "getUserIntimacyData"

    const/4 v3, 0x0

    const-string/jumbo v4, "invalid data"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    iget-object v2, p0, Lenc$a;->f:Lcma;

    if-eqz v2, :cond_0

    .line 1311
    iget-object v2, p0, Lenc$a;->f:Lcma;

    const-string/jumbo v3, "0"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v5, Lemt$g;->unknown_error:I

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    :cond_0
    :goto_0
    return-void

    .line 1315
    :cond_1
    iget-object v2, p0, Lenc$a;->a:Ljava/lang/String;

    iget-object v3, p0, Lenc$a;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/android/search/api/idl/SearchIService;->getUserIntimacyData(Ljava/lang/String;Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method
