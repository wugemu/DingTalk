.class final Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;
.super Ljava/lang/Object;
.source "TeleCallSelectMemberActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 20
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 198
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v15}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Ljava/util/List;

    move-result-object v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v15}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    .line 199
    invoke-static {v15}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Ljava/util/Map;

    move-result-object v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v15}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Ljava/util/Map;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Map;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v15}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Ljava/util/Map;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$a;

    .line 204
    .local v4, "function":Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$a;
    if-nez v4, :cond_2

    .line 205
    const-string/jumbo v15, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a()Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v17, "callType is null"

    invoke-static/range {v15 .. v17}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v5

    .line 210
    .local v5, "id":I
    sget v15, Leuj$i;->conf_start_net_call:I

    if-ne v5, v15, :cond_8

    .line 211
    const/16 v15, 0xcb

    iget v0, v4, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$a;->a:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_3

    const/16 v15, 0xd3

    iget v0, v4, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$a;->a:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 213
    :cond_3
    const/16 v15, 0xcb

    iget v0, v4, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$a;->a:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 214
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 215
    .local v10, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v15, "networkStatusMap"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->c(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v10, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v15

    const-string/jumbo v16, "phone_launch_voip_click"

    move-object/from16 v0, v16

    invoke-interface {v15, v0, v10}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 218
    const/4 v15, 0x0

    invoke-static {v15}, Lcms;->e(Landroid/content/Context;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 219
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    sget v16, Leuj$l;->dt_conference_make_call_no_net_warning:I

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 220
    .local v8, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v15, v8}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 224
    .end local v8    # "msg":Ljava/lang/String;
    :cond_4
    new-instance v10, Ljava/util/HashMap;

    .end local v10    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 225
    .restart local v10    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v15, "networkStatusMap"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->c(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v10, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v15

    const-string/jumbo v16, "phone_launch_voip_success_click"

    move-object/from16 v0, v16

    invoke-interface {v15, v0, v10}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 227
    const-string/jumbo v15, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a()Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v17, "Start VoIP call"

    invoke-static/range {v15 .. v17}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v15}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->d(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)V

    goto/16 :goto_0

    .line 230
    .end local v10    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    const/4 v15, 0x0

    invoke-static {v15}, Lcms;->e(Landroid/content/Context;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 231
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    sget v16, Leuj$l;->dt_conference_make_call_no_net_warning:I

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 232
    .restart local v8    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v15, v8}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 235
    .end local v8    # "msg":Ljava/lang/String;
    :cond_6
    const-string/jumbo v15, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a()Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v17, "Start VoIP conf"

    invoke-static/range {v15 .. v17}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 238
    .restart local v10    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v15, "networkStatusMap"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->c(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v10, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v15

    const-string/jumbo v16, "phone_launch_voip_conf_click"

    move-object/from16 v0, v16

    invoke-interface {v15, v0, v10}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v15}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->e(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)V

    goto/16 :goto_0

    .line 243
    .end local v10    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    const/16 v15, 0xcc

    iget v0, v4, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$a;->a:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 245
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    iget-object v0, v4, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$a;->b:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-static/range {v15 .. v18}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_0

    .line 247
    :cond_8
    sget v15, Leuj$i;->conf_start_conf_call:I

    if-ne v5, v15, :cond_10

    .line 248
    const/16 v15, 0xcd

    iget v0, v4, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$a;->a:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 249
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v15

    const-string/jumbo v16, "phone_launch_conference_click"

    invoke-interface/range {v15 .. v16}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 250
    const/4 v15, 0x0

    invoke-static {v15}, Lcms;->e(Landroid/content/Context;)Z

    move-result v15

    if-nez v15, :cond_9

    .line 251
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    sget v16, Leuj$l;->dt_conference_make_call_no_net_warning:I

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 252
    .restart local v8    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v15, v8}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 256
    .end local v8    # "msg":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v15}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->f(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)I

    move-result v16

    move/from16 v0, v16

    if-gt v15, v0, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v15}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)I

    move-result v16

    move/from16 v0, v16

    if-ge v15, v0, :cond_e

    .line 258
    :cond_a
    const-string/jumbo v12, ""

    .line 259
    .local v12, "userType":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "-"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->f(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 260
    .local v11, "userNumber":Ljava/lang/String;
    const/16 v15, 0x10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->f(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_c

    .line 261
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    sget v16, Leuj$l;->dt_conf_callselect_user_type_company:I

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 267
    :cond_b
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    sget v16, Leuj$l;->dt_conf_callselect_conf_number_notice_tip:I

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v12, v17, v18

    const/16 v18, 0x1

    aput-object v11, v17, v18

    invoke-virtual/range {v15 .. v17}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 269
    .local v14, "warnStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    const/16 v16, 0x0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v15, v14, v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_0

    .line 262
    .end local v14    # "warnStr":Ljava/lang/String;
    :cond_c
    const/4 v15, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->f(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_d

    .line 263
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    sget v16, Leuj$l;->dt_conf_callselect_user_type_personal:I

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 264
    :cond_d
    const/16 v15, 0x9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->f(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_b

    .line 265
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    sget v16, Leuj$l;->dt_conf_callselect_user_type_team:I

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 271
    .end local v11    # "userNumber":Ljava/lang/String;
    .end local v12    # "userType":Ljava/lang/String;
    :cond_e
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v15

    const-string/jumbo v16, "phone_launch_conference_success_click"

    invoke-interface/range {v15 .. v16}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v15}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->h(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)V

    .line 273
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/util/List;Z)V

    .line 275
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-virtual {v15}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->finish()V

    goto/16 :goto_0

    .line 277
    :cond_f
    const/16 v15, 0xce

    iget v0, v4, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$a;->a:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 279
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    iget-object v0, v4, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$a;->b:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-static/range {v15 .. v18}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_0

    .line 281
    :cond_10
    sget v15, Leuj$i;->conf_start_video_call:I

    if-ne v5, v15, :cond_17

    .line 282
    const/16 v15, 0xc8

    iget v0, v4, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$a;->a:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_11

    const/16 v15, 0xc9

    iget v0, v4, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$a;->a:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_16

    .line 284
    :cond_11
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v15

    const-string/jumbo v16, "phone_launch_video_click"

    invoke-interface/range {v15 .. v16}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 285
    const/4 v15, 0x0

    invoke-static {v15}, Lcms;->e(Landroid/content/Context;)Z

    move-result v15

    if-nez v15, :cond_12

    .line 286
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    sget v16, Leuj$l;->dt_conference_make_call_no_net_warning:I

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 287
    .restart local v8    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v15, v8}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 291
    .end local v8    # "msg":Ljava/lang/String;
    :cond_12
    const/16 v15, 0xc8

    iget v0, v4, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$a;->a:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_13

    .line 292
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Z)Z

    .line 296
    :goto_2
    invoke-static {}, Lewq;->a()Lewq;

    invoke-static {}, Lewq;->b()I

    move-result v7

    .line 297
    .local v7, "maxNum":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v15}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-le v15, v7, :cond_14

    .line 299
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    sget v16, Leuj$l;->and_conf_callselect_video_max_num_warn_tip:I

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-virtual/range {v15 .. v17}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 300
    .local v13, "warn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    const/16 v16, 0x0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v15, v13, v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_0

    .line 294
    .end local v7    # "maxNum":I
    .end local v13    # "warn":Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    const/16 v16, 0x1

    invoke-static/range {v15 .. v16}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Z)Z

    goto :goto_2

    .line 302
    .restart local v7    # "maxNum":I
    :cond_14
    const/4 v15, 0x0

    invoke-static {v15}, Lcms;->k(Landroid/content/Context;)Z

    move-result v15

    if-nez v15, :cond_15

    .line 303
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v15

    const-string/jumbo v16, "phone_launch_video_popup_click"

    invoke-interface/range {v15 .. v16}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 304
    const-string/jumbo v15, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a()Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v17, "Net is 3g"

    invoke-static/range {v15 .. v17}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Z)V

    goto/16 :goto_0

    .line 308
    :cond_15
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v15

    const-string/jumbo v16, "phone_launch_video_success_click"

    invoke-interface/range {v15 .. v16}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 309
    const-string/jumbo v15, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a()Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v17, "Start video call"

    invoke-static/range {v15 .. v17}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v15}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->i(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)V

    goto/16 :goto_0

    .line 313
    .end local v7    # "maxNum":I
    :cond_16
    const/16 v15, 0xca

    iget v0, v4, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$a;->a:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 315
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    iget-object v0, v4, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$a;->b:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-static/range {v15 .. v18}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_0

    .line 317
    :cond_17
    sget v15, Leuj$i;->conf_start_phone_call:I

    if-ne v5, v15, :cond_1a

    .line 318
    const/16 v15, 0xcf

    iget v0, v4, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$a;->a:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_19

    .line 319
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v15

    const-string/jumbo v16, "phone_launch_charge_click"

    invoke-interface/range {v15 .. v16}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 320
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v15}, Levl;->b(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_18

    .line 321
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v15

    const-string/jumbo v16, "phone_launch_phonecall_popup_click"

    invoke-interface/range {v15 .. v16}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 322
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->j(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 324
    :cond_18
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v15

    const-string/jumbo v16, "phone_launch_charge_success_click"

    invoke-interface/range {v15 .. v16}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 325
    const-string/jumbo v15, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a()Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v17, "Start system call"

    invoke-static/range {v15 .. v17}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v15}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->h(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)V

    .line 327
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v15}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->k(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Z

    move-result v3

    .line 328
    .local v3, "finishSuccess":Z
    if-eqz v3, :cond_0

    .line 329
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-virtual {v15}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->finish()V

    goto/16 :goto_0

    .line 332
    .end local v3    # "finishSuccess":Z
    :cond_19
    const/16 v15, 0xd0

    iget v0, v4, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$a;->a:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 334
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    iget-object v0, v4, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$a;->b:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-static/range {v15 .. v18}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_0

    .line 336
    :cond_1a
    sget v15, Leuj$i;->conf_start_biz_call:I

    if-ne v5, v15, :cond_0

    .line 337
    const/16 v15, 0xd1

    iget v0, v4, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$a;->a:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_1e

    .line 338
    const/4 v15, 0x0

    invoke-static {v15}, Lcms;->e(Landroid/content/Context;)Z

    move-result v15

    if-nez v15, :cond_1b

    .line 339
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    sget v16, Leuj$l;->dt_conference_make_call_no_net_warning:I

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 340
    .restart local v8    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v15, v8}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 343
    .end local v8    # "msg":Ljava/lang/String;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v15}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 344
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v15}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->l(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Ljava/util/List;

    move-result-object v15

    if-eqz v15, :cond_1d

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v15}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->l(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_1d

    .line 345
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v15}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->l(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_1c

    .line 346
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v15}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->l(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    new-array v6, v15, [Ljava/lang/String;

    .line 347
    .local v6, "itemArr":[Ljava/lang/String;
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-direct {v2, v15}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 348
    .local v2, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v15, Leuj$l;->dt_conference_choose_bizcall_num:I

    invoke-virtual {v2, v15}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 349
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v15}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->l(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Ljava/lang/CharSequence;

    new-instance v16, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1$1;-><init>(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v15

    .line 358
    invoke-virtual {v15}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto/16 :goto_0

    .line 360
    .end local v2    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    .end local v6    # "itemArr":[Ljava/lang/String;
    :cond_1c
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v15

    const-string/jumbo v16, "phone_launch_servicephone_click"

    invoke-interface/range {v15 .. v16}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 361
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v15}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->m(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    .line 362
    .local v9, "numInfo":Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v15, v9}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V

    .line 363
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-virtual {v15}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->finish()V

    goto/16 :goto_0

    .line 365
    .end local v9    # "numInfo":Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v15}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->n(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 366
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v15

    const/16 v16, 0x0

    new-instance v17, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1$2;-><init>(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;)V

    invoke-virtual/range {v15 .. v17}, Lewh;->a(ZLcma;)V

    goto/16 :goto_0

    .line 389
    :cond_1e
    const/16 v15, 0xd2

    iget v0, v4, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$a;->a:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 391
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    iget-object v0, v4, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$a;->b:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-static/range {v15 .. v18}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_0
.end method
