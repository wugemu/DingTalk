.class public final Lcom/alibaba/android/search/utils/log/SearchLogConsts;
.super Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts;
.source "SearchLogConsts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;,
        Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchSource;,
        Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;,
        Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;,
        Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts;-><init>()V

    .line 244
    return-void
.end method

.method public static a(ILjava/lang/String;I)I
    .locals 1
    .param p0, "entryCode"    # I
    .param p1, "typeCode"    # Ljava/lang/String;
    .param p2, "positionType"    # I

    .prologue
    .line 265
    sget-object v0, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->HP:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v0

    if-ne p0, v0, :cond_2c

    .line 266
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->RECOMMEND:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->RECOMMEND_CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 267
    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->RECOMMEND_GROUP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 268
    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->CLICKED_CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 269
    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->CLICKED_GROUP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 270
    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 271
    :cond_0
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->CELL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 272
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_RECOMMEND_CELL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v0

    .line 394
    :goto_0
    return v0

    .line 273
    :cond_1
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->PROFILE_BTN:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_2

    .line 274
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_RECOMMEND_MSG_BTN:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v0

    goto :goto_0

    .line 275
    :cond_2
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->CALL_BTN:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_2c

    .line 276
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_RECOMMEND_CALL_BTN:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v0

    goto :goto_0

    .line 278
    :cond_3
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->ALIAS:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 279
    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->COMMON_CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 280
    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->FRIEND:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 281
    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->LOCAL_CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 282
    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->ORG_CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 283
    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->LOCAL_EMPLOYEE_CACHE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 284
    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 285
    :cond_4
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->CELL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_5

    .line 286
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_CONTACT_CELL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v0

    goto/16 :goto_0

    .line 287
    :cond_5
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->PROFILE_BTN:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_6

    .line 288
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_CONTACT_MSG_BTN:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v0

    goto/16 :goto_0

    .line 289
    :cond_6
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->CALL_BTN:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_7

    .line 290
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_CONTACT_CALL_BTN:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v0

    goto/16 :goto_0

    .line 291
    :cond_7
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->MORE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_8

    .line 292
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_CONTACT_MORE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v0

    goto/16 :goto_0

    .line 293
    :cond_8
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->TAB:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_2c

    .line 294
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_CONTACT_TAB:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v0

    goto/16 :goto_0

    .line 296
    :cond_9
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->EXTERNAL_CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 297
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->CELL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_a

    .line 298
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_EXTERNAL_CONTACT_CELL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v0

    goto/16 :goto_0

    .line 299
    :cond_a
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->PROFILE_BTN:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_b

    .line 300
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_EXTERNAL_CONTACT_MSG_BTN:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v0

    goto/16 :goto_0

    .line 301
    :cond_b
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->CALL_BTN:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_c

    .line 302
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_EXTERNAL_CONTACT_CALL_BTN:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v0

    goto/16 :goto_0

    .line 303
    :cond_c
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->MORE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_d

    .line 304
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_EXTERNAL_CONTACT_MORE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v0

    goto/16 :goto_0

    .line 305
    :cond_d
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->TAB:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_2c

    .line 306
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_EXTERNAL_CONTACT_TAB:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v0

    goto/16 :goto_0

    .line 308
    :cond_e
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MY_GROUP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MY_GROUP_LOCAL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 309
    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MY_GROUP_SERVER:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 310
    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 311
    :cond_f
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->CELL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_10

    .line 312
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_MY_GROUP_CELL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v0

    goto/16 :goto_0

    .line 313
    :cond_10
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->MORE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_11

    .line 314
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_MY_GROUP_MORE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v0

    goto/16 :goto_0

    .line 315
    :cond_11
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->TAB:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_2c

    .line 316
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_MY_GROUP_TAB:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v0

    goto/16 :goto_0

    .line 318
    :cond_12
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->PUBLIC_GROUP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 319
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->CELL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_13

    .line 320
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_PUBLIC_GROUP_CELL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v0

    goto/16 :goto_0

    .line 321
    :cond_13
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->MORE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_14

    .line 322
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_PUBLIC_GROUP_MORE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v0

    goto/16 :goto_0

    .line 323
    :cond_14
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->TAB:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_2c

    .line 324
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_PUBLIC_GROUP_TAB:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v0

    goto/16 :goto_0

    .line 326
    :cond_15
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MSG:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MSG_MERGED_LOCAL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 327
    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MSG_MERGED_SERVER:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 328
    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MSG_UNMERGED_LOCAL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 329
    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MSG_UNMERGED_SERVER:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 330
    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 331
    :cond_16
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->CELL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_17

    .line 332
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_MSG_CELL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v0

    goto/16 :goto_0

    .line 333
    :cond_17
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->MORE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_18

    .line 334
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_MSG_MORE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v0

    goto/16 :goto_0

    .line 335
    :cond_18
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->TAB:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_2c

    .line 336
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_MSG_TAB:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v0

    goto/16 :goto_0

    .line 338
    :cond_19
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->DING:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 339
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->CELL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_1a

    .line 340
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_DING_CELL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v0

    goto/16 :goto_0

    .line 341
    :cond_1a
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->MORE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_1b

    .line 342
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_DING_MORE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v0

    goto/16 :goto_0

    .line 343
    :cond_1b
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->TAB:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_2c

    .line 344
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_DING_TAB:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v0

    goto/16 :goto_0

    .line 346
    :cond_1c
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->FUNCTION:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MICRO_TEMPLATE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 347
    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 348
    :cond_1d
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->CELL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_1e

    .line 349
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_FUNCTION_CELL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v0

    goto/16 :goto_0

    .line 350
    :cond_1e
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->MORE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_1f

    .line 351
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_FUNCTION_MORE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v0

    goto/16 :goto_0

    .line 352
    :cond_1f
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->TAB:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_2c

    .line 353
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_FUNCTION_TAB:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v0

    goto/16 :goto_0

    .line 355
    :cond_20
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MAIL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 356
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->CELL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_21

    .line 357
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_MAIL_CELL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v0

    goto/16 :goto_0

    .line 358
    :cond_21
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->MORE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_22

    .line 359
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_MAIL_MORE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v0

    goto/16 :goto_0

    .line 360
    :cond_22
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->TAB:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_2c

    .line 361
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_MAIL_TAB:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v0

    goto/16 :goto_0

    .line 363
    :cond_23
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->SPACE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 364
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->CELL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_24

    .line 365
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_SPACE_CELL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v0

    goto/16 :goto_0

    .line 366
    :cond_24
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->MORE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_25

    .line 367
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_SPACE_MORE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v0

    goto/16 :goto_0

    .line 368
    :cond_25
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->TAB:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_2c

    .line 369
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_SPACE_TAB:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v0

    goto/16 :goto_0

    .line 371
    :cond_26
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->LIGHT_APP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 372
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->CELL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_27

    .line 373
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_LIGHT_APP_CELL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v0

    goto/16 :goto_0

    .line 374
    :cond_27
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->MORE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_28

    .line 375
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_LIGHT_APP_MORE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v0

    goto/16 :goto_0

    .line 376
    :cond_28
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->TAB:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_2c

    .line 377
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_LIGHT_APP_TAB:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v0

    goto/16 :goto_0

    .line 379
    :cond_29
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->ORG_HOMEPAGE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 380
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->CELL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_2c

    .line 381
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_ORG_HOMEPAGE_CELL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v0

    goto/16 :goto_0

    .line 383
    :cond_2a
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->SUGGESTION_GUIDE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 384
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->CELL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_2c

    .line 385
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_SUGGESTION_GUIDE_CELL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v0

    goto/16 :goto_0

    .line 389
    :cond_2b
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->TAB:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_2c

    .line 390
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_ALL_TAB:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v0

    goto/16 :goto_0

    .line 394
    :cond_2c
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method public static a(Lcom/alibaba/android/search/SearchGroupType;)Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;
    .locals 3
    .param p0, "searchGroupType"    # Lcom/alibaba/android/search/SearchGroupType;

    .prologue
    .line 400
    sget-object v1, Lcom/alibaba/android/search/utils/log/SearchLogConsts$1;->a:[I

    invoke-virtual {p0}, Lcom/alibaba/android/search/SearchGroupType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 444
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->NONE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 448
    .local v0, "searchTypeCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;
    :goto_0
    return-object v0

    .line 402
    .end local v0    # "searchTypeCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;
    :pswitch_0
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 403
    .restart local v0    # "searchTypeCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;
    goto :goto_0

    .line 405
    .end local v0    # "searchTypeCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;
    :pswitch_1
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MY_GROUP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 406
    .restart local v0    # "searchTypeCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;
    goto :goto_0

    .line 408
    .end local v0    # "searchTypeCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;
    :pswitch_2
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->FUNCTION:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 409
    .restart local v0    # "searchTypeCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;
    goto :goto_0

    .line 411
    .end local v0    # "searchTypeCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;
    :pswitch_3
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MSG:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 412
    .restart local v0    # "searchTypeCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;
    goto :goto_0

    .line 414
    .end local v0    # "searchTypeCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;
    :pswitch_4
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->DING:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 415
    .restart local v0    # "searchTypeCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;
    goto :goto_0

    .line 417
    .end local v0    # "searchTypeCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;
    :pswitch_5
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->EXTERNAL_CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 418
    .restart local v0    # "searchTypeCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;
    goto :goto_0

    .line 420
    .end local v0    # "searchTypeCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;
    :pswitch_6
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->PUBLIC_GROUP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 421
    .restart local v0    # "searchTypeCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;
    goto :goto_0

    .line 423
    .end local v0    # "searchTypeCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;
    :pswitch_7
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MAIL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 424
    .restart local v0    # "searchTypeCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;
    goto :goto_0

    .line 426
    .end local v0    # "searchTypeCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;
    :pswitch_8
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->SPACE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 427
    .restart local v0    # "searchTypeCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;
    goto :goto_0

    .line 429
    .end local v0    # "searchTypeCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;
    :pswitch_9
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->LIGHT_APP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 430
    .restart local v0    # "searchTypeCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;
    goto :goto_0

    .line 432
    .end local v0    # "searchTypeCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;
    :pswitch_a
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->ORG_HOMEPAGE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 433
    .restart local v0    # "searchTypeCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;
    goto :goto_0

    .line 435
    .end local v0    # "searchTypeCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;
    :pswitch_b
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->NEW_RETAIL_MEMBER:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 436
    .restart local v0    # "searchTypeCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;
    goto :goto_0

    .line 438
    .end local v0    # "searchTypeCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;
    :pswitch_c
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->DEPT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 439
    .restart local v0    # "searchTypeCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;
    goto :goto_0

    .line 441
    .end local v0    # "searchTypeCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;
    :pswitch_d
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->FAVORITE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 442
    .restart local v0    # "searchTypeCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;
    goto :goto_0

    .line 400
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public static b(Lcom/alibaba/android/search/SearchGroupType;)I
    .locals 3
    .param p0, "searchGroupType"    # Lcom/alibaba/android/search/SearchGroupType;

    .prologue
    .line 454
    sget-object v1, Lcom/alibaba/android/search/utils/log/SearchLogConsts$1;->a:[I

    invoke-virtual {p0}, Lcom/alibaba/android/search/SearchGroupType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 501
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->NONE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    .line 505
    .local v0, "searchTabCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;
    :goto_0
    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->getValue()I

    move-result v1

    return v1

    .line 456
    .end local v0    # "searchTabCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;
    :pswitch_0
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->ALL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    .line 457
    .restart local v0    # "searchTabCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;
    goto :goto_0

    .line 459
    .end local v0    # "searchTabCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;
    :pswitch_1
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    .line 460
    .restart local v0    # "searchTabCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;
    goto :goto_0

    .line 462
    .end local v0    # "searchTabCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;
    :pswitch_2
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->MY_GROUP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    .line 463
    .restart local v0    # "searchTabCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;
    goto :goto_0

    .line 465
    .end local v0    # "searchTabCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;
    :pswitch_3
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->MSG:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    .line 466
    .restart local v0    # "searchTabCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;
    goto :goto_0

    .line 468
    .end local v0    # "searchTabCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;
    :pswitch_4
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->DING:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    .line 469
    .restart local v0    # "searchTabCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;
    goto :goto_0

    .line 471
    .end local v0    # "searchTabCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;
    :pswitch_5
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->FUNCTION:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    .line 472
    .restart local v0    # "searchTabCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;
    goto :goto_0

    .line 474
    .end local v0    # "searchTabCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;
    :pswitch_6
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->EXTERNAL_CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    .line 475
    .restart local v0    # "searchTabCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;
    goto :goto_0

    .line 477
    .end local v0    # "searchTabCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;
    :pswitch_7
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->PUBLIC_GROUP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    .line 478
    .restart local v0    # "searchTabCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;
    goto :goto_0

    .line 480
    .end local v0    # "searchTabCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;
    :pswitch_8
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->MAIL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    .line 481
    .restart local v0    # "searchTabCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;
    goto :goto_0

    .line 483
    .end local v0    # "searchTabCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;
    :pswitch_9
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->SPACE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    .line 484
    .restart local v0    # "searchTabCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;
    goto :goto_0

    .line 486
    .end local v0    # "searchTabCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;
    :pswitch_a
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->LIGHT_APP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    .line 487
    .restart local v0    # "searchTabCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;
    goto :goto_0

    .line 489
    .end local v0    # "searchTabCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;
    :pswitch_b
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->ORG_HOMEPAGE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    .line 490
    .restart local v0    # "searchTabCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;
    goto :goto_0

    .line 492
    .end local v0    # "searchTabCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;
    :pswitch_c
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->NEW_RETAIL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    .line 493
    .restart local v0    # "searchTabCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;
    goto :goto_0

    .line 495
    .end local v0    # "searchTabCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;
    :pswitch_d
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->DEPT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    .line 496
    .restart local v0    # "searchTabCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;
    goto :goto_0

    .line 498
    .end local v0    # "searchTabCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;
    :pswitch_e
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->FAVORITE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    .line 499
    .restart local v0    # "searchTabCode":Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;
    goto :goto_0

    .line 454
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
    .end packed-switch
.end method
