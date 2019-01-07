.class final Lgaq$1;
.super Ljava/lang/Object;
.source "FavoriteForwardManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgaq;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

.field final synthetic b:Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lgaq;


# direct methods
.method constructor <init>(Lgaq;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lgaq;

    .prologue
    .line 45
    iput-object p1, p0, Lgaq$1;->d:Lgaq;

    iput-object p2, p0, Lgaq$1;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iput-object p3, p0, Lgaq$1;->b:Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    iput-object p4, p0, Lgaq$1;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataReceived(Ljava/lang/Object;)V
    .locals 10
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 48
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v4, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    if-eqz p1, :cond_1

    instance-of v1, p1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v1, :cond_1

    .line 50
    check-cast p1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    :goto_0
    const/4 v5, 0x0

    .line 57
    .local v5, "dingTextContent":Ljava/lang/String;
    iget-object v1, p0, Lgaq$1;->b:Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getDingExt()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavDingExtend;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p0, Lgaq$1;->b:Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getDingExt()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavDingExtend;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavDingExtend;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 60
    :cond_0
    iget-object v1, p0, Lgaq$1;->c:Landroid/content/Context;

    iget-object v2, p0, Lgaq$1;->b:Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getOrgId()J

    move-result-wide v2

    const/4 v6, 0x0

    const-string/jumbo v7, "space_mytab_collection_trans"

    iget-object v8, p0, Lgaq$1;->b:Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    .line 61
    invoke-virtual {v8}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getCid()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lgaq$1;->b:Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    invoke-virtual {v9}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getMsgId()Ljava/lang/String;

    move-result-object v9

    .line 60
    invoke-static/range {v1 .. v9}, Lfzu;->a(Landroid/content/Context;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void

    .line 52
    .end local v5    # "dingTextContent":Ljava/lang/String;
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lgaq$1;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-static {v1}, Lgoc;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    .line 54
    .local v0, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 67
    return-void
.end method
