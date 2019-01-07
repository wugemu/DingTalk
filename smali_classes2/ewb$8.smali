.class final Lewb$8;
.super Ljava/lang/Object;
.source "Navigation.java"

# interfaces
.implements Leyo$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewb;->a(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leyo$d",
        "<",
        "Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceListResultModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 968
    iput-object p1, p0, Lewb$8;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 968
    check-cast p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceListResultModel;

    .line 1971
    invoke-static {}, Lewq;->a()Lewq;

    move-result-object v0

    .line 2079
    iput-boolean v1, v0, Lewq;->b:Z

    .line 1972
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceListResultModel;->code:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceListResultModel;->code:Ljava/lang/Integer;

    .line 1973
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceListResultModel;->videoConfs:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceListResultModel;->videoConfs:Ljava/util/List;

    .line 1975
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1978
    :cond_1
    if-eqz p1, :cond_7

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceListResultModel;->code:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 1979
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceListResultModel;->code:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1981
    :goto_0
    const-string/jumbo v2, "tele_conf"

    invoke-static {}, Lewb;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "Pull run-video conf fail "

    aput-object v5, v4, v1

    .line 1982
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1981
    invoke-static {v2, v3, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1983
    sget v0, Leuj$l;->conf_txt_terminated:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 2005
    :goto_1
    return-void

    .line 1986
    :cond_2
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lewb;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Pull video conf."

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1987
    invoke-static {}, Levm;->a()Levm;

    move-result-object v0

    invoke-virtual {v0}, Levm;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1988
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lewb;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Video conf running."

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1992
    :cond_3
    const/4 v1, 0x0

    .line 1993
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceListResultModel;->videoConfs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;

    .line 1994
    if-eqz v0, :cond_4

    iget-object v3, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;->conferenceId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1997
    iget-object v3, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;->conferenceId:Ljava/lang/String;

    iget-object v4, p0, Lewb$8;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2002
    :goto_2
    if-nez v0, :cond_5

    .line 2003
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lewb;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Video info invalid"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2004
    sget v0, Leuj$l;->conf_txt_terminated:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_1

    .line 2008
    :cond_5
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2009
    const-string/jumbo v2, "conf_video_to_user_type"

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2010
    const-string/jumbo v2, "message"

    const-string/jumbo v3, "conf_caller:conf_calling"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2011
    invoke-static {v0}, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->fromIDL(Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;)Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;

    move-result-object v0

    invoke-static {v0, v1}, Lewb;->a(Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;Landroid/os/Bundle;)V

    goto/16 :goto_1

    :cond_6
    move-object v0, v1

    goto :goto_2

    :cond_7
    move v0, v1

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 1016
    const-string/jumbo v1, "tele_conf"

    invoke-static {}, Lewb;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "Pull run-video conf fail "

    aput-object v4, v3, v6

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, ","

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    .line 1017
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1016
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    invoke-static {}, Lewq;->a()Lewq;

    move-result-object v1

    .line 1079
    iput-boolean v6, v1, Lewq;->b:Z

    .line 1020
    const/16 v0, 0x198

    .line 1021
    .local v0, "errCode":I
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1150
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v0

    .line 1024
    :cond_0
    const/16 v1, 0x198

    if-ne v0, v1, :cond_1

    .line 1025
    sget v1, Leuj$l;->dt_conference_no_network_exp:I

    invoke-static {v1}, Lcms;->a(I)V

    .line 1032
    :goto_0
    return-void

    .line 1027
    :cond_1
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
