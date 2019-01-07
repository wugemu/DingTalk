.class final Lcom/alibaba/android/teleconf/service/ListenPhoneService$3$1;
.super Ljava/lang/Object;
.source "ListenPhoneService.java"

# interfaces
.implements Leyo$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/service/ListenPhoneService$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leyo$e",
        "<",
        "Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/service/ListenPhoneService$3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/service/ListenPhoneService$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/teleconf/service/ListenPhoneService$3;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/alibaba/android/teleconf/service/ListenPhoneService$3$1;->a:Lcom/alibaba/android/teleconf/service/ListenPhoneService$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 320
    check-cast p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;

    .line 1323
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;->code:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;->code:Ljava/lang/Integer;

    .line 1324
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
    const/4 v0, 0x0

    invoke-static {v0}, Lcms;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1328
    invoke-static {}, Levi;->p()Levi;

    move-result-object v0

    invoke-virtual {v0}, Levi;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1330
    invoke-static {}, Levi;->p()Levi;

    move-result-object v0

    .line 1331
    new-instance v1, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    invoke-direct {v1}, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;-><init>()V

    .line 1332
    invoke-virtual {v1, p1}, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->fromIDLModel(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;)Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Levi;->a(Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;)V

    .line 1333
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "pullConference info is "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v1, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->callerId:Ljava/lang/Long;

    .line 1335
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, ", "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, v1, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->callerNick:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, ", "

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->conferenceId:Ljava/lang/Long;

    .line 1337
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    .line 1334
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1333
    invoke-static {v0, v2, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    invoke-static {}, Lewl;->a()Lewl;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/service/ListenPhoneService$3$1;->a:Lcom/alibaba/android/teleconf/service/ListenPhoneService$3;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/service/ListenPhoneService$3;->a:Lcom/alibaba/android/teleconf/service/ListenPhoneService;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->b(Lcom/alibaba/android/teleconf/service/ListenPhoneService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lewl;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 345
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "pullConference fail  "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", reason "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-class v0, Lcom/alibaba/android/teleconf/widget/ConfPhoneCallingFloatView;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/BaseFloatView;->a(Ljava/lang/Class;)V

    .line 347
    return-void
.end method
