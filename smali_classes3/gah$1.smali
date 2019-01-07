.class final Lgah$1;
.super Ljava/lang/Object;
.source "CsSpaceLoader.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgah;->a(Lgah$a;Lcma;)V
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
        "Lgic;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgah$a;

.field final synthetic b:Lcma;


# direct methods
.method constructor <init>(Lgah$a;Lcma;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lgah$1;->a:Lgah$a;

    iput-object p2, p0, Lgah$1;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 132
    check-cast p1, Lgic;

    .line 5135
    if-nez p1, :cond_0

    .line 5136
    const-string/jumbo v0, "RESULT_NULL"

    sget v1, Lfzs$h;->dt_cspace_fail_tip:I

    invoke-static {v1}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lgah$1;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 9187
    :goto_0
    return-void

    .line 5139
    :cond_0
    invoke-static {p1}, Lgoc;->a(Lgic;)Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    move-result-object v1

    .line 5141
    iget-object v0, p0, Lgah$1;->a:Lgah$a;

    .line 6088
    iput-object v1, v0, Lgah$a;->e:Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    .line 7021
    invoke-static {}, Lgak$a;->a()Lgak;

    move-result-object v0

    .line 5142
    iget-object v2, p0, Lgah$1;->a:Lgah$a;

    .line 7052
    iget-object v2, v2, Lgah$a;->a:Ljava/lang/String;

    .line 5142
    iget-object v3, p0, Lgah$1;->a:Lgah$a;

    invoke-virtual {v3}, Lgah$a;->a()Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lgak;->a(Ljava/lang/String;Lcom/alibaba/dingtalk/cspace/model/CsSpace;)V

    .line 5144
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->isAclEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "1"

    .line 5145
    :goto_1
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lgqd;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 5146
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->isAclEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5147
    invoke-static {}, Lgqd;->a()Lgqd;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->getId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "0"

    invoke-static {v0, v2}, Lgqd;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5148
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->getAclAuthFlag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lgqd;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5151
    :cond_1
    iget-object v0, p0, Lgah$1;->a:Lgah$a;

    iget-object v1, p0, Lgah$1;->b:Lcma;

    .line 9061
    iget-boolean v2, v0, Lgah$a;->b:Z

    .line 8167
    if-nez v2, :cond_3

    .line 8168
    invoke-static {v0, v1}, Lgah;->c(Lgah$a;Lcma;)V

    goto :goto_0

    .line 5144
    :cond_2
    const-string/jumbo v0, "0"

    goto :goto_1

    .line 8172
    :cond_3
    invoke-virtual {v0}, Lgah$a;->a()Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    move-result-object v2

    .line 8173
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->getType()I

    move-result v3

    invoke-static {v3}, Lgqu;->d(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->isAclEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 8174
    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 8175
    :cond_4
    invoke-static {v0, v1}, Lgah;->b(Lgah$a;Lcma;)V

    goto/16 :goto_0

    .line 8179
    :cond_5
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v3

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->getConversationId()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lgah$2;

    invoke-direct {v4, v0, v1}, Lgah$2;-><init>(Lgah$a;Lcma;)V

    .line 9179
    iget-object v0, v3, Lgon;->a:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;

    if-nez v0, :cond_6

    .line 9180
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceRPC"

    const-string/jumbo v2, "infoCoFolder: mCSpaceService is null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9181
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lgon$85;

    invoke-direct {v1, v3, v4}, Lgon$85;-><init>(Lgon;Lcma;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 9189
    :cond_6
    iget-object v0, v3, Lgon;->d:Lcom/alibaba/dingtalk/cspace/idl/service/DpCoFolderService;

    new-instance v1, Lgon$86;

    invoke-direct {v1, v3, v4, v2}, Lgon$86;-><init>(Lgon;Lcma;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Lcom/alibaba/dingtalk/cspace/idl/service/DpCoFolderService;->info(Ljava/lang/String;Liyv;)V

    goto/16 :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 160
    iget-object v0, p0, Lgah$1;->b:Lcma;

    invoke-static {p1, p2, v0}, Lgah;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 161
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 156
    return-void
.end method
