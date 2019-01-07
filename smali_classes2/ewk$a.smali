.class final Lewk$a;
.super Ljava/lang/Object;
.source "TeleConfOperCenter.java"

# interfaces
.implements Leyo$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lewk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leyo$c",
        "<",
        "Lcom/alibaba/android/teleconf/sdk/idl/model/ConfCreateModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lewk;


# direct methods
.method private constructor <init>(Lewk;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lewk$a;->a:Lewk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lewk;B)V
    .locals 0
    .param p1, "x0"    # Lewk;

    .prologue
    .line 268
    invoke-direct {p0, p1}, Lewk$a;-><init>(Lewk;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 268
    check-cast p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfCreateModel;

    .line 1271
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfCreateModel;->code:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfCreateModel;->code:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1

    .line 1272
    :cond_0
    :goto_0
    return-void

    .line 1274
    :cond_1
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/objects/ConfCreateObject;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/sdk/objects/ConfCreateObject;-><init>()V

    .line 1275
    invoke-virtual {v0, p1}, Lcom/alibaba/android/teleconf/sdk/objects/ConfCreateObject;->fromIDLModel(Lcom/alibaba/android/teleconf/sdk/idl/model/ConfCreateModel;)Lcom/alibaba/android/teleconf/sdk/objects/ConfCreateObject;

    .line 1277
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 1278
    const-string/jumbo v2, "Create conf success, "

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1279
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "confId "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConfCreateObject;->conferenceId:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1280
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "code "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConfCreateObject;->code:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1281
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "cause "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConfCreateObject;->cause:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1282
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1283
    const-string/jumbo v2, "tele_conf"

    const-string/jumbo v3, "conference_call"

    invoke-static {v2, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    iget-object v1, p0, Lewk$a;->a:Lewk;

    invoke-static {v1}, Lewk;->a(Lewk;)Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1290
    iget-object v1, p0, Lewk$a;->a:Lewk;

    invoke-static {v1}, Lewk;->a(Lewk;)Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v5}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a(II)V

    .line 1292
    :cond_2
    invoke-static {}, Levi;->p()Levi;

    move-result-object v1

    iget-object v2, p0, Lewk$a;->a:Lewk;

    invoke-static {v2}, Lewk;->b(Lewk;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->d()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Levi;->c(Ljava/util/List;)V

    .line 1293
    invoke-static {}, Lewe;->a()Lewe;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConfCreateObject;->conferenceId:Ljava/lang/Long;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "conf"

    invoke-virtual {v1, v2, v3, v0, v4}, Lewe;->a(JLjava/lang/String;Ljava/lang/String;)V

    .line 1295
    invoke-static {}, Lewl;->a()Lewl;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfCreateModel;->confNumInfo:Lcom/alibaba/android/teleconf/sdk/idl/model/CallNumInfo;

    invoke-virtual {v0, v5, v1}, Lewl;->a(ZLcom/alibaba/android/teleconf/sdk/idl/model/CallNumInfo;)V

    .line 1298
    invoke-static {}, Lewl;->a()Lewl;

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfCreateModel;->conferenceId:Ljava/lang/Long;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lewl;->f(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 303
    invoke-static {}, Levi;->p()Levi;

    move-result-object v1

    sget v2, Levh;->c:I

    invoke-virtual {v1, v2}, Levi;->a(I)V

    .line 304
    const-string/jumbo v1, "tele_conf"

    const-string/jumbo v2, "conference_call"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "create conf failed code:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " reason:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 307
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "meeting_fail_click"

    invoke-interface {v1, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 309
    iget-object v1, p0, Lewk$a;->a:Lewk;

    invoke-static {v1}, Lewk;->a(Lewk;)Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 310
    iget-object v1, p0, Lewk$a;->a:Lewk;

    invoke-static {v1}, Lewk;->a(Lewk;)Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1, p2}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 312
    :cond_0
    return-void
.end method
