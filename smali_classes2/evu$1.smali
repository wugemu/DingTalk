.class final Levu$1;
.super Ljava/lang/Object;
.source "TeleConfNotificationListeners.java"

# interfaces
.implements Lcjo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Levu;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Levu;


# direct methods
.method constructor <init>(Levu;)V
    .locals 0
    .param p1, "this$0"    # Levu;

    .prologue
    .line 168
    iput-object p1, p0, Levu$1;->a:Levu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcjo$b;)V
    .locals 17
    .param p1, "message"    # Lcjo$b;

    .prologue
    .line 171
    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    iget v2, v0, Lcjo$b;->b:I

    const/16 v3, 0x7d0

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p1

    iget v2, v0, Lcjo$b;->b:I

    const/16 v3, 0x7d5

    if-ne v2, v3, :cond_1

    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcjo$b;->a:Ljava/lang/Object;

    instance-of v2, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfChangedModel;

    if-nez v2, :cond_3

    .line 175
    :cond_1
    const-string/jumbo v2, "tele_conf"

    invoke-static {}, Levu;->i()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Note invalid msg"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :cond_2
    :goto_0
    return-void

    .line 179
    :cond_3
    move-object/from16 v0, p1

    iget-object v10, v0, Lcjo$b;->a:Ljava/lang/Object;

    check-cast v10, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfChangedModel;

    .line 180
    .local v10, "confChangedModel":Lcom/alibaba/android/teleconf/sdk/idl/model/ConfChangedModel;
    new-instance v16, Leyj;

    invoke-direct/range {v16 .. v16}, Leyj;-><init>()V

    .line 181
    .local v16, "object":Leyj;
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Leyj;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/ConfChangedModel;)Leyj;

    .line 182
    move-object/from16 v0, v16

    iget-object v2, v0, Leyj;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, v16

    iget-object v2, v0, Leyj;->k:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    move-object/from16 v0, v16

    iget-object v2, v0, Leyj;->k:Ljava/lang/Integer;

    .line 183
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 184
    :cond_4
    const-string/jumbo v2, "tele_conf"

    invoke-static {}, Levu;->i()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "Note conf invalid action/type "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, v16

    iget-object v6, v0, Leyj;->k:Ljava/lang/Integer;

    .line 185
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 184
    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :cond_5
    const/16 v2, 0x7d5

    move-object/from16 v0, p1

    iget v3, v0, Lcjo$b;->b:I

    if-ne v2, v3, :cond_7

    .line 191
    const/4 v14, 0x1

    .line 196
    .local v14, "confType":I
    :goto_1
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v9

    .line 197
    .local v9, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v2, "CONF_PUSH_CONF_CHANGED Push,"

    invoke-virtual {v9, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "confType "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "confId "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-object v3, v0, Leyj;->a:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "action "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-object v3, v0, Leyj;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "cause "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-object v3, v0, Leyj;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "caller "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-object v3, v0, Leyj;->b:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "duration "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-object v3, v0, Leyj;->h:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "time "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-object v3, v0, Leyj;->g:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 205
    const-string/jumbo v2, "tele_conf"

    invoke-static {}, Levu;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string/jumbo v2, "begin-conference"

    move-object/from16 v0, v16

    iget-object v3, v0, Leyj;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 208
    move-object/from16 v0, v16

    iget-object v2, v0, Leyj;->b:Ljava/lang/Long;

    if-eqz v2, :cond_6

    move-object/from16 v0, v16

    iget-object v2, v0, Leyj;->b:Ljava/lang/Long;

    .line 209
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    .line 210
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Levu$1;->a:Levu;

    .line 211
    invoke-static {v3}, Levu;->a(Levu;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v16

    iget-object v4, v0, Leyj;->b:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string/jumbo v6, "common_contact_tele"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual/range {v2 .. v8}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/content/Context;JLjava/lang/String;J)V

    .line 213
    :cond_6
    invoke-static {}, Levi;->p()Levi;

    move-result-object v2

    invoke-virtual {v2}, Levi;->c()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 214
    const-string/jumbo v2, "tele_conf"

    invoke-static {}, Levu;->i()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Conference is Ongoing now, return"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 193
    .end local v9    # "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v14    # "confType":I
    :cond_7
    const/4 v14, 0x0

    .restart local v14    # "confType":I
    goto/16 :goto_1

    .line 217
    .restart local v9    # "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_8
    invoke-static {}, Levi;->p()Levi;

    move-result-object v2

    const/4 v3, 0x0

    .line 1075
    iput-boolean v3, v2, Levi;->v:Z

    .line 219
    move-object/from16 v0, p0

    iget-object v2, v0, Levu$1;->a:Levu;

    invoke-static {v2}, Levu;->a(Levu;)Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x2710

    invoke-static {v2, v3}, Lewp;->b(Landroid/content/Context;I)V

    .line 221
    move-object/from16 v11, v16

    .line 222
    .local v11, "confChangedObject":Leyj;
    move v15, v14

    .line 223
    .local v15, "finalConfType":I
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    move-object/from16 v0, v16

    iget-object v3, v0, Leyj;->b:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    new-instance v3, Levu$1$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v11, v15}, Levu$1$1;-><init>(Levu$1;Leyj;I)V

    invoke-virtual {v2, v4, v5, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto/16 :goto_0

    .line 302
    .end local v11    # "confChangedObject":Leyj;
    .end local v15    # "finalConfType":I
    :cond_9
    const-string/jumbo v2, "end-conference"

    move-object/from16 v0, v16

    iget-object v3, v0, Leyj;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 303
    invoke-static {}, Levi;->p()Levi;

    move-result-object v2

    invoke-virtual {v2}, Levi;->c()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 304
    invoke-static {}, Levi;->p()Levi;

    move-result-object v2

    invoke-virtual {v2}, Levi;->e()J

    move-result-wide v12

    .line 305
    .local v12, "confId":J
    move-object/from16 v0, v16

    iget-object v2, v0, Leyj;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v12, v2

    if-nez v2, :cond_2

    .line 308
    sget v2, Leuj$l;->conf_txt_already_terminated:I

    invoke-static {v2}, Lcms;->a(I)V

    .line 310
    .end local v12    # "confId":J
    :cond_a
    const-string/jumbo v2, "tele_conf"

    invoke-static {}, Levu;->i()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ACTION_END_CONFERENCE reset"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    move-object/from16 v0, p0

    iget-object v2, v0, Levu$1;->a:Levu;

    invoke-static {v2}, Levu;->b(Levu;)V

    .line 312
    invoke-static {}, Levi;->p()Levi;

    move-result-object v2

    sget v3, Levh;->c:I

    invoke-virtual {v2, v3}, Levi;->a(I)V

    .line 313
    invoke-static {}, Lews;->a()Lews;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->FLOATING_CONF:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    invoke-virtual {v2, v3}, Lews;->b(Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;)V

    .line 314
    invoke-static {}, Levi;->p()Levi;

    move-result-object v2

    .line 1155
    invoke-virtual {v2}, Levi;->r()V

    .line 316
    const/4 v2, 0x0

    const/16 v3, 0x2710

    invoke-static {v2, v3}, Lewp;->c(Landroid/content/Context;I)V

    goto/16 :goto_0
.end method
