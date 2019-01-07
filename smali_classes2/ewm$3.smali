.class public final Lewm$3;
.super Ljava/lang/Object;
.source "TeleConfPushManager.java"

# interfaces
.implements Lcjo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lewm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lewm;


# direct methods
.method public constructor <init>(Lewm;)V
    .locals 0
    .param p1, "this$0"    # Lewm;

    .prologue
    .line 309
    iput-object p1, p0, Lewm$3;->a:Lewm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcjo$b;)V
    .locals 6
    .param p1, "message"    # Lcjo$b;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 312
    if-eqz p1, :cond_1

    iget v3, p1, Lcjo$b;->b:I

    const/16 v4, 0x7d3

    if-eq v3, v4, :cond_0

    iget v3, p1, Lcjo$b;->b:I

    const/16 v4, 0x7d9

    if-ne v3, v4, :cond_1

    :cond_0
    iget-object v3, p1, Lcjo$b;->a:Ljava/lang/Object;

    instance-of v3, v3, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfErrorPushModle;

    if-nez v3, :cond_2

    .line 332
    :cond_1
    :goto_0
    return-void

    .line 318
    :cond_2
    iget-object v3, p1, Lcjo$b;->a:Ljava/lang/Object;

    check-cast v3, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfErrorPushModle;

    move-object v1, v3

    check-cast v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfErrorPushModle;

    .line 319
    .local v1, "errorPushModle":Lcom/alibaba/android/teleconf/sdk/idl/model/ConfErrorPushModle;
    new-instance v2, Lcom/alibaba/android/teleconf/sdk/objects/ConfErrorPushObject;

    invoke-direct {v2}, Lcom/alibaba/android/teleconf/sdk/objects/ConfErrorPushObject;-><init>()V

    .line 320
    .local v2, "object":Lcom/alibaba/android/teleconf/sdk/objects/ConfErrorPushObject;
    invoke-virtual {v2, v1}, Lcom/alibaba/android/teleconf/sdk/objects/ConfErrorPushObject;->fromIDLModel(Lcom/alibaba/android/teleconf/sdk/idl/model/ConfErrorPushModle;)Lcom/alibaba/android/teleconf/sdk/objects/ConfErrorPushObject;

    .line 322
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 323
    .local v0, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v3, "CONF_PUSH_ERROR_OCCURED push ,"

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 324
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "confId "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v2, Lcom/alibaba/android/teleconf/sdk/objects/ConfErrorPushObject;->conferenceId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 325
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "action "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/alibaba/android/teleconf/sdk/objects/ConfErrorPushObject;->action:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 326
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "cause "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/alibaba/android/teleconf/sdk/objects/ConfErrorPushObject;->cause:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 327
    const-string/jumbo v3, "tele_conf"

    invoke-static {}, Lewm;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v3, p0, Lewm$3;->a:Lewm;

    invoke-static {v3}, Lewm;->b(Lewm;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 330
    iget-object v3, p0, Lewm$3;->a:Lewm;

    invoke-static {v3}, Lewm;->b(Lewm;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    goto/16 :goto_0
.end method
