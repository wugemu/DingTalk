.class final Lewr$4$1;
.super Ljava/lang/Object;
.source "TeleConfVoipHelper.java"

# interfaces
.implements Lied$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewr$4;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lewr$4;


# direct methods
.method constructor <init>(Lewr$4;)V
    .locals 0
    .param p1, "this$0"    # Lewr$4;

    .prologue
    .line 281
    iput-object p1, p0, Lewr$4$1;->a:Lewr$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/String;)V
    .locals 16
    .param p1, "beAudio"    # Z
    .param p2, "usrId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 284
    if-eqz p1, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    const-wide/16 v10, 0x0

    .line 289
    .local v10, "uid":J
    :try_start_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    .line 293
    :goto_1
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-gtz v12, :cond_2

    .line 294
    const-string/jumbo v12, "tele_conf"

    invoke-static {}, Lewr;->h()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "Incoming call invalid user"

    invoke-static {v12, v13, v14}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 290
    :catch_0
    move-exception v7

    .line 291
    .local v7, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v7}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1

    .line 297
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    const-string/jumbo v12, "tele_conf"

    invoke-static {}, Lewr;->h()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "Incoming call from "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-class v12, Lier;

    invoke-static {v12}, Liec;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Liee;

    .line 300
    .local v2, "audioService":Liee;
    if-eqz v2, :cond_0

    .line 303
    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Liee;->a(Ljava/lang/String;)Lcom/alibaba/wukong/openav/external/IAVSession;

    move-result-object v3

    .line 305
    .local v3, "avSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    const/4 v12, 0x0

    invoke-static {v12}, Lcms;->f(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 306
    const-string/jumbo v12, "tele_conf"

    invoke-static {}, Lewr;->h()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "Reject VoIP call because of phone call"

    invoke-static {v12, v13, v14}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    if-eqz v3, :cond_3

    .line 309
    sget-object v12, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalLocalInPSTN:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v12}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v12

    invoke-interface {v3, v12}, Lcom/alibaba/wukong/openav/external/IAVSession;->a(I)V

    .line 311
    :cond_3
    invoke-interface {v2}, Liee;->c()I

    goto :goto_0

    .line 316
    :cond_4
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v12

    const-string/jumbo v13, "f_conf_live_call_busy_enable"

    invoke-virtual {v12, v13}, Lchx;->a(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 317
    invoke-static {}, Lewp;->c()Z

    move-result v12

    if-eqz v12, :cond_7

    const/4 v8, 0x1

    .line 319
    .local v8, "isLiveRunning":Z
    :goto_2
    invoke-static {}, Leve;->a()Leve;

    move-result-object v12

    invoke-virtual {v12}, Leve;->c()Z

    move-result v12

    if-nez v12, :cond_5

    .line 320
    invoke-static {}, Levm;->a()Levm;

    move-result-object v12

    invoke-virtual {v12}, Levm;->c()Z

    move-result v12

    if-nez v12, :cond_5

    .line 321
    invoke-static {}, Levn;->p()Levn;

    move-result-object v12

    invoke-virtual {v12}, Levn;->c()Z

    move-result v12

    if-nez v12, :cond_5

    if-eqz v8, :cond_b

    .line 323
    :cond_5
    const-string/jumbo v12, "tele_conf"

    invoke-static {}, Lewr;->h()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "Reject VoIP call because of free call."

    invoke-static {v12, v13, v14}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-static {}, Levi;->p()Levi;

    move-result-object v12

    invoke-virtual {v12}, Levi;->c()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 327
    sget-object v12, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalLocalInConference:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v12}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v6

    .line 335
    .local v6, "code":I
    :goto_3
    if-eqz v3, :cond_6

    .line 336
    invoke-interface {v3, v6}, Lcom/alibaba/wukong/openav/external/IAVSession;->a(I)V

    .line 338
    :cond_6
    invoke-interface {v2}, Liee;->c()I

    goto/16 :goto_0

    .line 317
    .end local v6    # "code":I
    .end local v8    # "isLiveRunning":Z
    :cond_7
    const/4 v8, 0x0

    goto :goto_2

    .line 328
    .restart local v8    # "isLiveRunning":Z
    :cond_8
    invoke-static {}, Levm;->a()Levm;

    move-result-object v12

    invoke-virtual {v12}, Levm;->c()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 329
    sget-object v12, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalLocalInVideoConf:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v12}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v6

    .restart local v6    # "code":I
    goto :goto_3

    .line 330
    .end local v6    # "code":I
    :cond_9
    if-eqz v8, :cond_a

    .line 331
    sget-object v12, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalLocalInLive:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v12}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v6

    .restart local v6    # "code":I
    goto :goto_3

    .line 333
    .end local v6    # "code":I
    :cond_a
    sget-object v12, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalLocalInVoIP:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v12}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v6

    .restart local v6    # "code":I
    goto :goto_3

    .line 341
    .end local v6    # "code":I
    :cond_b
    if-nez v3, :cond_c

    .line 342
    const-string/jumbo v12, "tele_conf"

    invoke-static {}, Lewr;->h()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "Invalid session"

    invoke-static {v12, v13, v14}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 346
    :cond_c
    const/4 v12, 0x0

    const/16 v13, 0x2711

    invoke-static {v12, v13}, Lewp;->b(Landroid/content/Context;I)V

    .line 347
    const/4 v12, 0x0

    invoke-static {v12}, Lewp;->e(Landroid/content/Context;)V

    .line 349
    invoke-interface {v3}, Lcom/alibaba/wukong/openav/external/IAVSession;->p()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;

    move-result-object v4

    .line 350
    .local v4, "bizType":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;
    if-eqz v4, :cond_0

    .line 354
    invoke-interface {v3}, Lcom/alibaba/wukong/openav/external/IAVSession;->e()Ljava/lang/String;

    move-result-object v5

    .line 355
    .local v5, "callId":Ljava/lang/String;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 356
    .local v9, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v12, "callId"

    invoke-interface {v9, v12, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    const-string/jumbo v12, "bizType"

    invoke-virtual {v4}, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v9, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v12

    const/4 v13, 0x0

    const-string/jumbo v14, "phone_voip_invite_recv_sig"

    invoke-interface {v12, v13, v14, v9}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 360
    sget-object v12, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;->BIZ_CALL:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;

    if-ne v4, v12, :cond_d

    .line 361
    invoke-static {v2, v10, v11}, Lewr;->a(Liee;J)V

    goto/16 :goto_0

    .line 362
    :cond_d
    sget-object v12, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;->BIZ_CONF:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;

    if-ne v4, v12, :cond_0

    .line 363
    invoke-interface {v3}, Lcom/alibaba/wukong/openav/external/IAVSession;->o()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v10, v11, v12}, Lewr;->a(Liee;JLjava/lang/String;)V

    goto/16 :goto_0
.end method
