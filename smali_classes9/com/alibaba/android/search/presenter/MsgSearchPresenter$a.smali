.class final Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a;
.super Ljava/lang/Object;
.source "MsgSearchPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/presenter/MsgSearchPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/presenter/MsgSearchPresenter;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 233
    .local p2, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    .local p3, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a;->d:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-object p2, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a;->e:Ljava/util/List;

    .line 235
    iput-object p3, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a;->a:Ljava/util/List;

    .line 236
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a;->e:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 240
    .line 1244
    iget-object v3, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a;->e:Ljava/util/List;

    .line 1245
    invoke-static {v3}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1246
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a;->d:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a;->a:Ljava/util/List;

    invoke-static {v0, v3, v1}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->b(Lcom/alibaba/android/search/presenter/MsgSearchPresenter;Ljava/util/List;Ljava/util/List;)V

    .line 1254
    :goto_0
    return-void

    .line 1262
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcpd;->a(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 2018
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3018
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1266
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/model/BaseModel;

    .line 1267
    instance-of v1, v0, Lcom/alibaba/android/search/model/MsgModel;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 1271
    check-cast v1, Lcom/alibaba/android/search/model/MsgModel;

    .line 1272
    invoke-virtual {v1}, Lcom/alibaba/android/search/model/MsgModel;->getCid()Ljava/lang/String;

    move-result-object v7

    .line 1273
    invoke-virtual {v1}, Lcom/alibaba/android/search/model/MsgModel;->getMsgId()J

    move-result-wide v8

    .line 1274
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-lez v1, :cond_1

    .line 1279
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v1

    invoke-virtual {v1, v7, v8, v9}, Libs;->a(Ljava/lang/String;J)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v1

    .line 1281
    if-nez v1, :cond_2

    .line 1282
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1283
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1285
    :cond_2
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1289
    :cond_3
    iput-object v5, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a;->b:Ljava/util/List;

    .line 1290
    iput-object v4, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a;->c:Ljava/util/List;

    .line 1292
    invoke-static {v2}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_4

    move-object v1, v2

    .line 1252
    :goto_2
    invoke-static {v1}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1253
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a;->d:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a;->a:Ljava/util/List;

    invoke-static {v0, v3, v1}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->b(Lcom/alibaba/android/search/presenter/MsgSearchPresenter;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 1296
    :cond_4
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_2

    .line 3301
    :cond_5
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v2

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a$1;

    invoke-direct {v3, p0, v1}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a$1;-><init>(Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a;Ljava/util/List;)V

    const-class v4, Lcma;

    iget-object v5, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a;->d:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    iget-object v5, v5, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-interface {v0, v3, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v2, v1, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->b(Ljava/util/List;Lcma;)V

    goto/16 :goto_0
.end method
