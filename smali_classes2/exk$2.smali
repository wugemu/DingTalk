.class final Lexk$2;
.super Ljava/lang/Object;
.source "VideoApmtRecordPresenter.java"

# interfaces
.implements Leyo$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexk;->c(Z)V
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
        "Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceListResultModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lexk;


# direct methods
.method constructor <init>(Lexk;)V
    .locals 0
    .param p1, "this$0"    # Lexk;

    .prologue
    .line 147
    iput-object p1, p0, Lexk$2;->a:Lexk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 147
    check-cast p1, Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceListResultModel;

    .line 1150
    iget-object v0, p0, Lexk$2;->a:Lexk;

    iput-boolean v2, v0, Lexk;->m:Z

    .line 1151
    iget-object v0, p0, Lexk$2;->a:Lexk;

    invoke-virtual {v0}, Lexk;->a()V

    .line 1152
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceListResultModel;->code:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceListResultModel;->code:Ljava/lang/Integer;

    .line 1153
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceListResultModel;->notStartedConfList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceListResultModel;->notStartedConfList:Ljava/util/List;

    .line 1155
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1156
    :cond_1
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lexk;->c()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "No appointment video records"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    :cond_2
    iget-object v0, p0, Lexk$2;->a:Lexk;

    invoke-virtual {v0}, Lexk;->b()V

    .line 147
    return-void

    .line 1160
    :cond_3
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceListResultModel;->notStartedConfList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1161
    const/16 v1, 0xa

    if-ge v0, v1, :cond_5

    .line 1162
    iget-object v1, p0, Lexk$2;->a:Lexk;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lexk;->i:Z

    .line 1166
    :goto_0
    const-string/jumbo v1, "tele_conf"

    invoke-static {}, Lexk;->c()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Appointment video records "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceListResultModel;->notStartedConfList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;

    .line 1168
    if-eqz v0, :cond_4

    .line 1171
    sget-object v2, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->OrderItemInfo:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    invoke-static {v2, v0}, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->a(Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;)Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

    move-result-object v0

    .line 1172
    if-eqz v0, :cond_4

    .line 1173
    iget-object v2, p0, Lexk$2;->a:Lexk;

    iget-object v2, v2, Lexk;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1164
    :cond_5
    iget-object v1, p0, Lexk$2;->a:Lexk;

    iput-boolean v2, v1, Lexk;->i:Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 181
    iget-object v0, p0, Lexk$2;->a:Lexk;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lexk;->m:Z

    .line 182
    iget-object v0, p0, Lexk$2;->a:Lexk;

    invoke-virtual {v0}, Lexk;->a()V

    .line 183
    iget-object v0, p0, Lexk$2;->a:Lexk;

    invoke-virtual {v0}, Lexk;->b()V

    .line 184
    return-void
.end method
