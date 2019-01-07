.class public final Lgnb$1;
.super Ljava/lang/Object;
.source "SpaceMenuOnlineEditInviteHandler.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgnb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
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
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcma;

.field final synthetic c:Lgnb;


# direct methods
.method public constructor <init>(Lgnb;Landroid/content/Context;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lgnb;

    .prologue
    .line 123
    iput-object p1, p0, Lgnb$1;->c:Lgnb;

    iput-object p2, p0, Lgnb$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lgnb$1;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 123
    move-object v2, p1

    check-cast v2, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1126
    if-nez v2, :cond_1

    .line 1127
    const-string/jumbo v0, "null result"

    sget v1, Lfzs$h;->dt_cspace_invalid_result_tip:I

    invoke-static {v1}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lgnb$1;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    :cond_0
    :goto_0
    return-void

    .line 1130
    :cond_1
    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceTypeBelong()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgqu;->a(Ljava/lang/String;)I

    move-result v3

    .line 1131
    iget-object v1, p0, Lgnb$1;->a:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getOrgId()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCid()Ljava/lang/String;

    move-result-object v6

    .line 1132
    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getMessageId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    .line 1131
    invoke-static/range {v1 .. v8}, Lgnb;->a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;IJLjava/lang/String;Ljava/lang/String;I)V

    .line 1133
    iget-object v0, p0, Lgnb$1;->b:Lcma;

    if-eqz v0, :cond_0

    .line 1134
    const/4 v0, 0x0

    iget-object v1, p0, Lgnb$1;->b:Lcma;

    invoke-static {v0, v1}, Lgpr;->a(Ljava/lang/Object;Lcma;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 144
    iget-object v0, p0, Lgnb$1;->b:Lcma;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lgnb$1;->b:Lcma;

    invoke-static {p1, p2, v0}, Lgpr;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 140
    return-void
.end method
