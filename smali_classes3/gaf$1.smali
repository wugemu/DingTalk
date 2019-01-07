.class final Lgaf$1;
.super Ljava/lang/Object;
.source "CsDentryLoader.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgaf;->a(Lgaf$a;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/alimei/cspace/model/DentryModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgaf$a;

.field final synthetic b:Lcma;


# direct methods
.method constructor <init>(Lgaf$a;Lcma;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lgaf$1;->a:Lgaf$a;

    iput-object p2, p0, Lgaf$1;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 185
    check-cast p1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1188
    if-nez p1, :cond_0

    .line 1189
    const-string/jumbo v0, "RESULT_NULL"

    sget v1, Lfzs$h;->dt_cspace_fail_tip:I

    invoke-static {v1}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lgaf$1;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 6226
    :goto_0
    return-void

    .line 1193
    :cond_0
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->create()Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    move-result-object v0

    .line 1194
    invoke-virtual {v0, p1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->setDentryModel(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 1196
    iget-object v1, p0, Lgaf$1;->a:Lgaf$a;

    .line 2142
    iput-object v0, v1, Lgaf$a;->h:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    .line 1198
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v0

    .line 1199
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v1

    .line 1200
    iget-object v2, p0, Lgaf$1;->a:Lgaf$a;

    .line 3063
    iget-object v2, v2, Lgaf$a;->a:Ljava/lang/String;

    .line 1200
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lgaf$1;->a:Lgaf$a;

    .line 3072
    iget-object v2, v2, Lgaf$a;->b:Ljava/lang/String;

    .line 1200
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1201
    :cond_1
    const-string/jumbo v2, "CSpace"

    const-string/jumbo v3, "CsDentryLoader"

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "CsDentryLoader.loadDentry: found dentryLink, and sync to request data: (spaceId, fileId) "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "("

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lgaf$1;->a:Lgaf$a;

    .line 4063
    iget-object v6, v6, Lgaf$a;->a:Ljava/lang/String;

    .line 1203
    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string/jumbo v6, ", "

    aput-object v6, v4, v5

    const/4 v5, 0x4

    iget-object v6, p0, Lgaf$1;->a:Lgaf$a;

    .line 4072
    iget-object v6, v6, Lgaf$a;->b:Ljava/lang/String;

    .line 1203
    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string/jumbo v6, ") -> ("

    aput-object v6, v4, v5

    const/4 v5, 0x6

    aput-object v0, v4, v5

    const/4 v5, 0x7

    const-string/jumbo v6, ", "

    aput-object v6, v4, v5

    const/16 v5, 0x8

    aput-object v1, v4, v5

    const/16 v5, 0x9

    const-string/jumbo v6, ")"

    aput-object v6, v4, v5

    .line 1201
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    iget-object v2, p0, Lgaf$1;->a:Lgaf$a;

    .line 5067
    iput-object v0, v2, Lgaf$a;->a:Ljava/lang/String;

    .line 1205
    iget-object v0, p0, Lgaf$1;->a:Lgaf$a;

    .line 5076
    iput-object v1, v0, Lgaf$a;->b:Ljava/lang/String;

    .line 1208
    :cond_2
    iget-object v0, p0, Lgaf$1;->a:Lgaf$a;

    iget-object v1, p0, Lgaf$1;->b:Lcma;

    .line 7090
    iget-boolean v2, v0, Lgaf$a;->c:Z

    .line 6224
    if-nez v2, :cond_3

    .line 6225
    invoke-static {v0, v1}, Lgaf;->b(Lgaf$a;Lcma;)V

    goto/16 :goto_0

    .line 6229
    :cond_3
    invoke-virtual {v0}, Lgaf$a;->a()Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    move-result-object v2

    .line 6230
    new-instance v3, Lgaf$2;

    invoke-direct {v3, v0, v2, v1}, Lgaf$2;-><init>(Lgaf$a;Lcom/alibaba/dingtalk/cspace/model/CsDentry;Lcma;)V

    .line 6259
    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 6260
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v2

    .line 8063
    iget-object v0, v0, Lgaf$a;->a:Ljava/lang/String;

    .line 6260
    invoke-virtual {v2, v0, v1, v3}, Lgon;->a(Ljava/lang/String;Ljava/util/List;Lcma;)V

    goto/16 :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 217
    iget-object v0, p0, Lgaf$1;->b:Lcma;

    .line 1032
    invoke-static {p1, p2, v0}, Lgaf;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 218
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 213
    return-void
.end method
