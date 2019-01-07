.class public final Lgaf;
.super Ljava/lang/Object;
.source "CsDentryLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgaf$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static a(Lgaf$a;Lcma;)V
    .locals 4
    .param p0, "request"    # Lgaf$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgaf$a;",
            "Lcma",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/CsDentry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p1, "listener":Lcma;, "Lcma<Lcom/alibaba/dingtalk/cspace/model/CsDentry;>;"
    if-nez p1, :cond_0

    .line 221
    :goto_0
    return-void

    .line 175
    :cond_0
    if-eqz p0, :cond_1

    .line 1063
    iget-object v1, p0, Lgaf$a;->a:Ljava/lang/String;

    .line 175
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 176
    :cond_1
    const-string/jumbo v1, "INVALID_PARAM"

    sget v2, Lfzs$h;->dt_cspace_invalid_param_tip:I

    invoke-static {v2}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lgaf;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0

    .line 180
    :cond_2
    invoke-virtual {p0}, Lgaf$a;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 181
    invoke-static {p0, p1}, Lgaf;->b(Lgaf$a;Lcma;)V

    goto :goto_0

    .line 185
    :cond_3
    new-instance v0, Lgaf$1;

    invoke-direct {v0, p0, p1}, Lgaf$1;-><init>(Lgaf$a;Lcma;)V

    .line 220
    .local v0, "resultListener":Lcma;, "Lcma<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v1

    .line 2063
    iget-object v2, p0, Lgaf$a;->a:Ljava/lang/String;

    .line 2072
    iget-object v3, p0, Lgaf$a;->b:Ljava/lang/String;

    .line 220
    invoke-virtual {v1, v2, v3, v0}, Lgon;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 2
    .param p0, "errorCode"    # Ljava/lang/String;
    .param p1, "errorMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/CsDentry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 328
    .local p2, "listener":Lcma;, "Lcma<Lcom/alibaba/dingtalk/cspace/model/CsDentry;>;"
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lgaf$5;

    invoke-direct {v1, p2, p0, p1}, Lgaf$5;-><init>(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 337
    return-void
.end method

.method static b(Lgaf$a;Lcma;)V
    .locals 3
    .param p0, "request"    # Lgaf$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgaf$a;",
            "Lcma",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/CsDentry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 264
    .line 2099
    .local p1, "listener":Lcma;, "Lcma<Lcom/alibaba/dingtalk/cspace/model/CsDentry;>;"
    iget-boolean v2, p0, Lgaf$a;->d:Z

    .line 264
    if-nez v2, :cond_0

    .line 265
    invoke-static {p0, p1}, Lgaf;->c(Lgaf$a;Lcma;)V

    .line 298
    :goto_0
    return-void

    .line 269
    :cond_0
    invoke-virtual {p0}, Lgaf$a;->a()Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    move-result-object v0

    .line 3043
    .local v0, "csDentry":Lcom/alibaba/dingtalk/cspace/model/CsDentry;
    new-instance v1, Lgah$a;

    invoke-direct {v1}, Lgah$a;-><init>()V

    .line 3063
    iget-object v2, p0, Lgaf$a;->a:Ljava/lang/String;

    .line 4056
    iput-object v2, v1, Lgah$a;->a:Ljava/lang/String;

    .line 4108
    iget-boolean v2, p0, Lgaf$a;->e:Z

    .line 5065
    iput-boolean v2, v1, Lgah$a;->b:Z

    .line 5117
    iget-boolean v2, p0, Lgaf$a;->f:Z

    .line 6074
    iput-boolean v2, v1, Lgah$a;->c:Z

    .line 6126
    iget-boolean v2, p0, Lgaf$a;->g:Z

    .line 7083
    iput-boolean v2, v1, Lgah$a;->d:Z

    .line 275
    .local v1, "spaceRequest":Lgah$a;
    new-instance v2, Lgaf$3;

    invoke-direct {v2, v0, p0, p1}, Lgaf$3;-><init>(Lcom/alibaba/dingtalk/cspace/model/CsDentry;Lgaf$a;Lcma;)V

    invoke-static {v1, v2}, Lgah;->a(Lgah$a;Lcma;)V

    goto :goto_0
.end method

.method static c(Lgaf$a;Lcma;)V
    .locals 3
    .param p0, "request"    # Lgaf$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgaf$a;",
            "Lcma",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/CsDentry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 301
    .line 7099
    .local p1, "listener":Lcma;, "Lcma<Lcom/alibaba/dingtalk/cspace/model/CsDentry;>;"
    iget-boolean v2, p0, Lgaf$a;->d:Z

    .line 301
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lgaf$a;->b()Z

    move-result v2

    if-nez v2, :cond_1

    .line 302
    :cond_0
    invoke-static {p0, p1}, Lgaf;->d(Lgaf$a;Lcma;)V

    .line 311
    :goto_0
    return-void

    .line 306
    :cond_1
    invoke-virtual {p0}, Lgaf$a;->a()Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    move-result-object v0

    .line 307
    .local v0, "csDentry":Lcom/alibaba/dingtalk/cspace/model/CsDentry;
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getSpace()Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    move-result-object v2

    invoke-static {v2}, Lgoc;->a(Lcom/alibaba/dingtalk/cspace/model/CsSpace;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v1

    .line 308
    .local v1, "dentry":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->setDentryModel(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 310
    invoke-static {p0, p1}, Lgaf;->d(Lgaf$a;Lcma;)V

    goto :goto_0
.end method

.method private static d(Lgaf$a;Lcma;)V
    .locals 2
    .param p0, "request"    # Lgaf$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgaf$a;",
            "Lcma",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/CsDentry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 314
    .local p1, "listener":Lcma;, "Lcma<Lcom/alibaba/dingtalk/cspace/model/CsDentry;>;"
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lgaf$4;

    invoke-direct {v1, p1, p0}, Lgaf$4;-><init>(Lcma;Lgaf$a;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 324
    return-void
.end method
