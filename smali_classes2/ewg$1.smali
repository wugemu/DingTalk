.class public final Lewg$1;
.super Ljava/lang/Object;
.source "TeleConfCallHelper.java"

# interfaces
.implements Leyo$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lewg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
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
.field final synthetic a:Lewg;


# direct methods
.method public constructor <init>(Lewg;)V
    .locals 0
    .param p1, "this$0"    # Lewg;

    .prologue
    .line 51
    iput-object p1, p0, Lewg$1;->a:Lewg;

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
    .line 51
    check-cast p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;

    .line 1054
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;->code:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;->code:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_2

    .line 1055
    :cond_0
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lewg;->d()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Pull conf fail"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    :cond_1
    :goto_0
    return-void

    .line 1059
    :cond_2
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;-><init>()V

    .line 1060
    invoke-virtual {v0, p1}, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->fromIDLModel(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;)Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    .line 1061
    invoke-static {}, Levi;->p()Levi;

    move-result-object v1

    invoke-virtual {v1, v0}, Levi;->a(Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;)V

    .line 1063
    invoke-static {}, Levi;->p()Levi;

    move-result-object v0

    invoke-virtual {v0}, Levi;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1065
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ActivityTypeEnum;->TYPE_CONF_2_8_0:Lcom/alibaba/android/teleconf/sdk/idl/model/ActivityTypeEnum;

    invoke-virtual {v0, v1}, Lewh;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/ActivityTypeEnum;)V

    .line 1066
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lewg$1$1;

    invoke-direct {v1, p0}, Lewg$1$1;-><init>(Lewg$1;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 79
    return-void
.end method
