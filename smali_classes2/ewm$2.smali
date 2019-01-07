.class public final Lewm$2;
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
    .line 186
    iput-object p1, p0, Lewm$2;->a:Lewm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcjo$b;)V
    .locals 25
    .param p1, "message"    # Lcjo$b;

    .prologue
    .line 189
    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    iget v0, v0, Lcjo$b;->b:I

    move/from16 v20, v0

    const/16 v21, 0x7d2

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Lcjo$b;->b:I

    move/from16 v20, v0

    const/16 v21, 0x7d8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcjo$b;->a:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/StatusChangedModel;

    move/from16 v20, v0

    if-nez v20, :cond_2

    .line 304
    :cond_1
    :goto_0
    return-void

    .line 195
    :cond_2
    move-object/from16 v0, p1

    iget-object v11, v0, Lcjo$b;->a:Ljava/lang/Object;

    check-cast v11, Lcom/alibaba/android/teleconf/sdk/idl/model/StatusChangedModel;

    .line 196
    .local v11, "confPushModel":Lcom/alibaba/android/teleconf/sdk/idl/model/StatusChangedModel;
    new-instance v18, Leyl;

    invoke-direct/range {v18 .. v18}, Leyl;-><init>()V

    .line 197
    .local v18, "object":Leyl;
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Leyl;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/StatusChangedModel;)Leyl;

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lewm$2;->a:Lewm;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Leyl;->a:Ljava/lang/Long;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Lewm;->a(Lewm;J)Z

    move-result v20

    if-eqz v20, :cond_4

    move-object/from16 v0, v18

    iget-object v0, v0, Leyl;->c:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 200
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_4

    move-object/from16 v0, v18

    iget-object v0, v0, Leyl;->h:Ljava/lang/Integer;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    move-object/from16 v0, v18

    iget-object v0, v0, Leyl;->h:Ljava/lang/Integer;

    move-object/from16 v20, v0

    .line 201
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 202
    :cond_3
    invoke-static {}, Levn;->p()Levn;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Levn;->c()Z

    move-result v20

    if-nez v20, :cond_5

    .line 203
    :cond_4
    const-string/jumbo v20, "tele_conf"

    invoke-static {}, Lewm;->a()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    const-string/jumbo v23, "Receive CONF_PUSH_STATUS_CHANGED Push, ERROR, not my conference, id "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    iget-object v0, v0, Leyl;->a:Ljava/lang/Long;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 207
    :cond_5
    move-object/from16 v0, v18

    iget-object v6, v0, Leyl;->c:Ljava/lang/String;

    .line 208
    .local v6, "action":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v7

    .line 209
    .local v7, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v20, "CONF_PUSH_STATUS_CHANGED push,"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 210
    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "confId "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    iget-object v0, v0, Leyl;->a:Ljava/lang/Long;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 211
    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "uid "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    iget-object v0, v0, Leyl;->b:Ljava/lang/Long;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 212
    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "action "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 213
    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "cause "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    iget-object v0, v0, Leyl;->d:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 214
    const-string/jumbo v20, "tele_conf"

    invoke-static {}, Lewm;->a()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string/jumbo v20, "ANSWER"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lewm$2;->a:Lewm;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lewm;->a(Lewm;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v20

    move-object/from16 v0, v18

    iget-object v0, v0, Leyl;->b:Ljava/lang/Long;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    const/16 v23, 0x1

    invoke-virtual/range {v20 .. v23}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(Ljava/lang/Long;IZ)V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lewm$2;->a:Lewm;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lewm;->b(Lewm;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    move-result-object v20

    if-eqz v20, :cond_1

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lewm$2;->a:Lewm;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lewm;->b(Lewm;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, v18

    iget-object v0, v0, Leyl;->b:Ljava/lang/Long;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    invoke-interface/range {v20 .. v23}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;->a(ZJ)V

    goto/16 :goto_0

    .line 221
    :cond_6
    const-string/jumbo v20, "leave-conf"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lewm$2;->a:Lewm;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lewm;->a(Lewm;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v20

    move-object/from16 v0, v18

    iget-object v0, v0, Leyl;->b:Ljava/lang/Long;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x1

    invoke-virtual/range {v20 .. v23}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(Ljava/lang/Long;IZ)V

    goto/16 :goto_0

    .line 223
    :cond_7
    const-string/jumbo v20, "noise"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 225
    const-string/jumbo v20, "mute"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lewm$2;->a:Lewm;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lewm;->a(Lewm;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v20

    move-object/from16 v0, v18

    iget-object v0, v0, Leyl;->b:Ljava/lang/Long;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->d(J)Z

    move-result v20

    if-eqz v20, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lewm$2;->a:Lewm;

    move-object/from16 v20, v0

    .line 227
    invoke-static/range {v20 .. v20}, Lewm;->a(Lewm;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v20

    move-object/from16 v0, v18

    iget-object v0, v0, Leyl;->b:Ljava/lang/Long;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->b(J)Z

    move-result v20

    if-nez v20, :cond_1

    .line 230
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lewm$2;->a:Lewm;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lewm;->a(Lewm;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v20

    move-object/from16 v0, v18

    iget-object v0, v0, Leyl;->b:Ljava/lang/Long;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    const/16 v21, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move/from16 v3, v21

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(JZZ)V

    .line 232
    move-object/from16 v0, v18

    iget-object v0, v0, Leyl;->b:Ljava/lang/Long;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v0, v18

    iget-object v0, v0, Leyl;->b:Ljava/lang/Long;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lccr;->c()J

    move-result-wide v22

    cmp-long v20, v20, v22

    if-nez v20, :cond_1

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lewm$2;->a:Lewm;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lewm;->b(Lewm;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    move-result-object v20

    if-eqz v20, :cond_1

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lewm$2;->a:Lewm;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lewm;->b(Lewm;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    move-result-object v20

    sget-object v21, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_MUTE_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    move-object/from16 v0, v18

    iget-object v0, v0, Leyl;->b:Ljava/lang/Long;

    move-object/from16 v22, v0

    invoke-interface/range {v20 .. v22}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;->a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 237
    :cond_9
    const-string/jumbo v20, "unmute"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lewm$2;->a:Lewm;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lewm;->a(Lewm;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v20

    move-object/from16 v0, v18

    iget-object v0, v0, Leyl;->b:Ljava/lang/Long;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->d(J)Z

    move-result v20

    if-eqz v20, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lewm$2;->a:Lewm;

    move-object/from16 v20, v0

    .line 239
    invoke-static/range {v20 .. v20}, Lewm;->a(Lewm;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v20

    move-object/from16 v0, v18

    iget-object v0, v0, Leyl;->b:Ljava/lang/Long;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->b(J)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 242
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lewm$2;->a:Lewm;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lewm;->a(Lewm;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v20

    move-object/from16 v0, v18

    iget-object v0, v0, Leyl;->b:Ljava/lang/Long;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    const/16 v21, 0x0

    const/16 v24, 0x1

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move/from16 v3, v21

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(JZZ)V

    .line 244
    move-object/from16 v0, v18

    iget-object v0, v0, Leyl;->b:Ljava/lang/Long;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v0, v18

    iget-object v0, v0, Leyl;->b:Ljava/lang/Long;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lccr;->c()J

    move-result-wide v22

    cmp-long v20, v20, v22

    if-nez v20, :cond_1

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lewm$2;->a:Lewm;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lewm;->b(Lewm;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    move-result-object v20

    if-eqz v20, :cond_1

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lewm$2;->a:Lewm;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lewm;->b(Lewm;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    move-result-object v20

    sget-object v21, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_UNMUTE_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    move-object/from16 v0, v18

    iget-object v0, v0, Leyl;->b:Ljava/lang/Long;

    move-object/from16 v22, v0

    invoke-interface/range {v20 .. v22}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;->a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 249
    :cond_b
    const-string/jumbo v20, "HANGUP"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_c

    const-string/jumbo v20, "REDIAL_HANGUP"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_f

    .line 250
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lewm$2;->a:Lewm;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lewm;->a(Lewm;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v20

    move-object/from16 v0, v18

    iget-object v0, v0, Leyl;->b:Ljava/lang/Long;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->c(J)Ljava/lang/String;

    move-result-object v15

    .line 251
    .local v15, "nick":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lewm$2;->a:Lewm;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lewm;->a(Lewm;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v20

    move-object/from16 v0, v18

    iget-object v0, v0, Leyl;->b:Ljava/lang/Long;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(Ljava/lang/Long;)I

    move-result v19

    .line 252
    .local v19, "status":I
    if-eqz v15, :cond_1

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_1

    if-eqz v19, :cond_1

    .line 253
    move-object/from16 v0, v18

    iget-object v10, v0, Leyl;->d:Ljava/lang/String;

    .line 254
    .local v10, "cause":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 255
    const/16 v20, 0x67

    move/from16 v0, v20

    invoke-static {v10, v0}, Lezd;->a(Ljava/lang/String;I)I

    move-result v13

    .line 256
    .local v13, "extraStatus":I
    const-string/jumbo v20, "HANGUP"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 257
    move-object/from16 v0, v18

    iget-object v0, v0, Leyl;->b:Ljava/lang/Long;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lccr;->c()J

    move-result-wide v22

    cmp-long v20, v20, v22

    if-nez v20, :cond_d

    .line 259
    invoke-static {}, Levi;->p()Levi;

    move-result-object v20

    const/16 v21, 0x1

    .line 1051
    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-boolean v0, v1, Levi;->s:Z

    .line 260
    invoke-static {}, Levi;->p()Levi;

    move-result-object v20

    const/16 v21, 0x0

    .line 2043
    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-boolean v0, v1, Levi;->r:Z

    .line 263
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lewm$2;->a:Lewm;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lewm;->a(Lewm;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v20

    move-object/from16 v0, v18

    iget-object v0, v0, Leyl;->b:Ljava/lang/Long;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v13, v2}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->b(Ljava/lang/Long;IZ)V

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lewm$2;->a:Lewm;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lewm;->a(Lewm;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v20

    move-object/from16 v0, v18

    iget-object v0, v0, Leyl;->b:Ljava/lang/Long;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x1

    invoke-virtual/range {v20 .. v23}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(Ljava/lang/Long;IZ)V

    .line 266
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lewm$2;->a:Lewm;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lewm;->b(Lewm;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    move-result-object v20

    if-eqz v20, :cond_1

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lewm$2;->a:Lewm;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lewm;->b(Lewm;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v18

    iget-object v0, v0, Leyl;->b:Ljava/lang/Long;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    invoke-interface/range {v20 .. v23}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;->a(ZJ)V

    goto/16 :goto_0

    .line 271
    .end local v10    # "cause":Ljava/lang/String;
    .end local v13    # "extraStatus":I
    .end local v15    # "nick":Ljava/lang/String;
    .end local v19    # "status":I
    :cond_f
    const-string/jumbo v20, "start-talking"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_11

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lewm$2;->a:Lewm;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lewm;->a(Lewm;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v20

    move-object/from16 v0, v18

    iget-object v0, v0, Leyl;->b:Ljava/lang/Long;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(Ljava/lang/Long;)I

    move-result v19

    .line 273
    .restart local v19    # "status":I
    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_10

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lewm$2;->a:Lewm;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lewm;->a(Lewm;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v20

    move-object/from16 v0, v18

    iget-object v0, v0, Leyl;->b:Ljava/lang/Long;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v23}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(Ljava/lang/Long;IZ)V

    .line 276
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lewm$2;->a:Lewm;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lewm;->a(Lewm;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v20

    move-object/from16 v0, v18

    iget-object v0, v0, Leyl;->b:Ljava/lang/Long;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    const/16 v21, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move/from16 v3, v21

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->b(JZZ)V

    goto/16 :goto_0

    .line 277
    .end local v19    # "status":I
    :cond_11
    const-string/jumbo v20, "stop-talking"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lewm$2;->a:Lewm;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lewm;->a(Lewm;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v20

    move-object/from16 v0, v18

    iget-object v0, v0, Leyl;->b:Ljava/lang/Long;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    const/16 v21, 0x0

    const/16 v24, 0x1

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move/from16 v3, v21

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->b(JZZ)V

    goto/16 :goto_0

    .line 279
    :cond_12
    const-string/jumbo v20, "callee-is-calling"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_13

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lewm$2;->a:Lewm;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lewm;->a(Lewm;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v20

    move-object/from16 v0, v18

    iget-object v0, v0, Leyl;->b:Ljava/lang/Long;

    move-object/from16 v21, v0

    const/16 v22, 0x6b

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v23}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->b(Ljava/lang/Long;IZ)V

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lewm$2;->a:Lewm;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lewm;->a(Lewm;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v20

    move-object/from16 v0, v18

    iget-object v0, v0, Leyl;->b:Ljava/lang/Long;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x1

    invoke-virtual/range {v20 .. v23}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(Ljava/lang/Long;IZ)V

    goto/16 :goto_0

    .line 282
    :cond_13
    const-string/jumbo v20, "mute-all"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_14

    const-string/jumbo v20, "unmute-all"

    .line 283
    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 286
    :cond_14
    const-string/jumbo v20, "mute-all"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_15

    .line 287
    const/4 v14, 0x1

    .line 288
    .local v14, "muted":Z
    sget-object v12, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_MUTE_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    .line 294
    .local v12, "confResAction":Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;
    :goto_1
    invoke-static {}, Levn;->p()Levn;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Levn;->h()J

    move-result-wide v8

    .line 295
    .local v8, "callerUid":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lewm$2;->a:Lewm;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lewm;->a(Lewm;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v14, v8, v9, v1}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(ZJZ)V

    .line 297
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lccr;->c()J

    move-result-wide v16

    .line 298
    .local v16, "myUid":J
    cmp-long v20, v16, v8

    if-eqz v20, :cond_1

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lewm$2;->a:Lewm;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lewm;->b(Lewm;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    move-result-object v20

    if-eqz v20, :cond_1

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lewm$2;->a:Lewm;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lewm;->b(Lewm;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    move-result-object v20

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v0, v12, v1}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;->a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 290
    .end local v8    # "callerUid":J
    .end local v12    # "confResAction":Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;
    .end local v14    # "muted":Z
    .end local v16    # "myUid":J
    :cond_15
    const/4 v14, 0x0

    .line 291
    .restart local v14    # "muted":Z
    sget-object v12, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_UNMUTE_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    .restart local v12    # "confResAction":Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;
    goto :goto_1
.end method
