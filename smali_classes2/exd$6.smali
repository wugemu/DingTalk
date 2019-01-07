.class final Lexd$6;
.super Ljava/lang/Object;
.source "CallApmtConfRecordPresenter.java"

# interfaces
.implements Leyo$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexd;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leyo$c",
        "<",
        "Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateResultModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lexd;


# direct methods
.method constructor <init>(Lexd;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lexd;

    .prologue
    .line 452
    iput-object p1, p0, Lexd$6;->b:Lexd;

    iput-object p2, p0, Lexd$6;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 452
    check-cast p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateResultModel;

    .line 1475
    if-nez p1, :cond_1

    .line 1480
    :cond_0
    :goto_0
    return-void

    .line 1478
    :cond_1
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lexd;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Create conf reservation success: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateResultModel;->code:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    const/16 v0, 0xc8

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateResultModel;->code:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 1480
    invoke-static {}, Lewl;->a()Lewl;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateResultModel;->confNumInfo:Lcom/alibaba/android/teleconf/sdk/idl/model/CallNumInfo;

    invoke-virtual {v0, v1, v2}, Lewl;->a(ZLcom/alibaba/android/teleconf/sdk/idl/model/CallNumInfo;)V

    goto :goto_0

    .line 1482
    :cond_2
    iget-object v0, p0, Lexd$6;->b:Lexd;

    iget-object v0, v0, Lexd;->a:Lexa$b;

    if-eqz v0, :cond_0

    .line 1483
    iget-object v0, p0, Lexd$6;->b:Lexd;

    iget-object v0, v0, Lexd;->a:Lexa$b;

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateResultModel;->code:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateResultModel;->cause:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lexa$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 455
    const-string/jumbo v1, "tele_conf"

    invoke-static {}, Lexd;->c()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Create conf reservation failed: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " , reason "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const-wide/16 v2, 0xc8

    .line 459
    .local v2, "errCode":J
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 464
    :goto_0
    const-wide/32 v4, 0x61ad0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 465
    iget-object v1, p0, Lexd$6;->b:Lexd;

    iget-object v4, p0, Lexd$6;->a:Ljava/util/List;

    invoke-static {v1, v4, p2}, Lexd;->a(Lexd;Ljava/util/List;Ljava/lang/String;)V

    .line 471
    :cond_0
    :goto_1
    return-void

    .line 460
    :catch_0
    move-exception v0

    .line 461
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 467
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    iget-object v1, p0, Lexd$6;->b:Lexd;

    iget-object v1, v1, Lexd;->a:Lexa$b;

    if-eqz v1, :cond_0

    .line 468
    iget-object v1, p0, Lexd$6;->b:Lexd;

    iget-object v1, v1, Lexd;->a:Lexa$b;

    invoke-interface {v1, p1, p2}, Lexa$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
