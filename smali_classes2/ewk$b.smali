.class public final Lewk$b;
.super Ljava/lang/Object;
.source "TeleConfOperCenter.java"

# interfaces
.implements Leyo$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lewk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leyo$d",
        "<",
        "Lcom/alibaba/android/teleconf/sdk/idl/model/ConfOperationModel;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field final synthetic b:Lewk;


# direct methods
.method private constructor <init>(Lewk;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lewk$b;->b:Lewk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lewk;B)V
    .locals 0
    .param p1, "x0"    # Lewk;

    .prologue
    .line 315
    invoke-direct {p0, p1}, Lewk$b;-><init>(Lewk;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 315
    check-cast p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfOperationModel;

    .line 1324
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfOperationModel;->code:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfOperationModel;->code:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1

    .line 1325
    :cond_0
    :goto_0
    return-void

    .line 1327
    :cond_1
    const-string/jumbo v0, "tele_conf"

    const-string/jumbo v1, "conference_call"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Oper "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lewk$b;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " success code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfOperationModel;->code:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,cause "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfOperationModel;->cause:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    iget-object v0, p0, Lewk$b;->b:Lewk;

    invoke-static {v0}, Lewk;->a(Lewk;)Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1330
    iget-object v0, p0, Lewk$b;->b:Lewk;

    invoke-static {v0}, Lewk;->a(Lewk;)Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;

    move-result-object v0

    const/4 v1, 0x2

    iget v2, p0, Lewk$b;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a(II)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 336
    const-string/jumbo v0, "tele_conf"

    const-string/jumbo v1, "conference_call"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Oper"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lewk$b;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "fail code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,reason "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lewk$b;->b:Lewk;

    invoke-static {v0}, Lewk;->a(Lewk;)Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lewk$b;->b:Lewk;

    invoke-static {v0}, Lewk;->a(Lewk;)Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;

    move-result-object v0

    const/4 v1, 0x2

    iget v2, p0, Lewk$b;->a:I

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 342
    :cond_0
    return-void
.end method
