.class final Lexk$5;
.super Ljava/lang/Object;
.source "VideoApmtRecordPresenter.java"

# interfaces
.implements Leyo$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexk;->a(Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leyo$d",
        "<",
        "Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceDeleteResultModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

.field final synthetic b:Lexk;


# direct methods
.method constructor <init>(Lexk;Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;)V
    .locals 0
    .param p1, "this$0"    # Lexk;

    .prologue
    .line 358
    iput-object p1, p0, Lexk$5;->b:Lexk;

    iput-object p2, p0, Lexk$5;->a:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 358
    check-cast p1, Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceDeleteResultModel;

    .line 1361
    const/4 v0, 0x0

    .line 1362
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceDeleteResultModel;->code:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceDeleteResultModel;->code:Ljava/lang/Integer;

    .line 1364
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 1365
    const/4 v0, 0x1

    .line 1367
    :cond_0
    if-eqz v0, :cond_2

    .line 1368
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lexk;->c()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Delete record really"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    iget-object v0, p0, Lexk$5;->a:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->b:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    sget-object v1, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->CancelItemInfo:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    if-ne v0, v1, :cond_4

    .line 1370
    iget-object v0, p0, Lexk$5;->b:Lexk;

    iget-object v1, p0, Lexk$5;->a:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

    invoke-virtual {v0, v1}, Lexk;->b(Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;)Z

    .line 1374
    :cond_1
    :goto_0
    iget-object v0, p0, Lexk$5;->b:Lexk;

    invoke-virtual {v0}, Lexk;->b()V

    .line 1376
    :cond_2
    iget-object v0, p0, Lexk$5;->b:Lexk;

    iget-object v0, v0, Lexk;->a:Lexa$b;

    if-eqz v0, :cond_3

    .line 1377
    iget-object v0, p0, Lexk$5;->b:Lexk;

    iget-object v0, v0, Lexk;->a:Lexa$b;

    invoke-interface {v0}, Lexa$b;->H_()V

    .line 358
    :cond_3
    return-void

    .line 1371
    :cond_4
    iget-object v0, p0, Lexk$5;->a:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->b:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    sget-object v1, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->EndedItemInfo:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    if-ne v0, v1, :cond_1

    .line 1372
    iget-object v0, p0, Lexk$5;->b:Lexk;

    iget-object v1, p0, Lexk$5;->a:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

    invoke-virtual {v0, v1}, Lexk;->c(Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;)Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 383
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lexk;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Delete record fail:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ","

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    .line 384
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 383
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lexk$5;->b:Lexk;

    iget-object v0, v0, Lexk;->a:Lexa$b;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lexk$5;->b:Lexk;

    iget-object v0, v0, Lexk;->a:Lexa$b;

    invoke-interface {v0}, Lexa$b;->H_()V

    .line 387
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    iget-object v0, p0, Lexk$5;->b:Lexk;

    iget-object v0, v0, Lexk;->a:Lexa$b;

    invoke-interface {v0, p1, p2}, Lexa$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    :cond_0
    return-void
.end method
