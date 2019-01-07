.class final Lgft$6;
.super Ljava/lang/Object;
.source "FilePreviewPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgft;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgft;


# direct methods
.method constructor <init>(Lgft;)V
    .locals 0
    .param p1, "this$0"    # Lgft;

    .prologue
    .line 411
    iput-object p1, p0, Lgft$6;->a:Lgft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 411
    check-cast p1, Ljava/lang/Boolean;

    .line 2022
    invoke-static {p1, v8}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 1414
    if-nez v0, :cond_0

    .line 1415
    iget-object v0, p0, Lgft$6;->a:Lgft;

    .line 2046
    iget-object v0, v0, Lgft;->d:Lgfs$b;

    .line 1415
    invoke-interface {v0, v8}, Lgfs$b;->b(Z)V

    .line 3327
    :goto_0
    return-void

    .line 1419
    :cond_0
    new-instance v1, Lgft$6$1;

    invoke-direct {v1, p0}, Lgft$6$1;-><init>(Lgft$6;)V

    .line 1435
    iget-object v0, p0, Lgft$6;->a:Lgft;

    .line 3046
    iget-object v0, v0, Lgft;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1435
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v2

    .line 3301
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3302
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 3306
    :cond_1
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v0

    invoke-virtual {v0, v2}, Lfzv;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3307
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v0

    invoke-virtual {v0, v2}, Lfzv;->i(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 3313
    :cond_2
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 3318
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    .line 3319
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 3315
    :catch_0
    move-exception v0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 3324
    :cond_3
    const-class v0, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;

    .line 3325
    if-nez v0, :cond_4

    .line 3326
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 3329
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3330
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3331
    invoke-static {v3, v8}, Lgoo;->a(Ljava/util/List;Z)Lgid;

    move-result-object v2

    .line 3332
    new-instance v3, Lgpr$6;

    invoke-direct {v3, v1, v4, v5}, Lgpr$6;-><init>(Lcma;J)V

    invoke-interface {v0, v2, v3}, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;->listSpace(Lgid;Liyv;)V

    goto/16 :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 446
    iget-object v0, p0, Lgft$6;->a:Lgft;

    .line 1046
    iget-object v0, v0, Lgft;->d:Lgfs$b;

    .line 446
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lgfs$b;->b(Z)V

    .line 447
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 442
    return-void
.end method
