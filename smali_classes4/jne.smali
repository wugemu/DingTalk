.class public Ljne;
.super Ljava/lang/Object;
.source "DingMaHandlerV2.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 77
    const-class v0, Ljne;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljne;->a:Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 147
    sput-object v0, Ljne;->b:Ljava/util/Set;

    const-string/jumbo v1, "/page/orgCustomizeManage"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 148
    sget-object v0, Ljne;->b:Ljava/util/Set;

    const-string/jumbo v1, "/page/myProfile"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 149
    sget-object v0, Ljne;->b:Ljava/util/Set;

    const-string/jumbo v1, "/page/link"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 150
    sget-object v0, Ljne;->b:Ljava/util/Set;

    const-string/jumbo v1, "/page/edit_employee"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 151
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/regex/Matcher;
    .locals 2
    .param p0, "rex"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 513
    invoke-static {p0, p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 514
    .local v0, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    return-object v1
.end method

.method private static a(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 598
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    const-string/jumbo v1, "https://www.dingtalk.com/"

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/alipay/mobile/mascanengine/MaScanResult;ZLcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;Z)V
    .locals 30
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "result"    # Lcom/alipay/mobile/mascanengine/MaScanResult;
    .param p2, "selfHandle"    # Z
    .param p3, "listener"    # Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;
    .param p4, "fromScan"    # Z

    .prologue
    .line 158
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobile/mascanengine/MaScanResult;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobile/mascanengine/MaScanResult;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 167
    .local v7, "content":Ljava/lang/String;
    sget-object v25, Ljne;->a:Ljava/lang/String;

    const-string/jumbo v26, "qr_code_result: %s"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_2

    const-string/jumbo v24, "null"

    :goto_1
    aput-object v24, v27, v28

    invoke-static/range {v25 .. v27}, Ljmp;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    const-string/jumbo v24, "^(http|https)://qr.dingtalk.com/(action)/(fastconfig|login|jump|logout|app|request|joingroup|oa_login)\\?(.*)"

    .line 1509
    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v0, v7, v1}, Ljne;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 169
    .local v6, "busiMatcher":Ljava/util/regex/Matcher;
    if-eqz p2, :cond_34

    .line 171
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->c(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 172
    invoke-static/range {p3 .. p3}, Ljne;->b(Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;)V

    goto :goto_0

    .line 167
    .end local v6    # "busiMatcher":Ljava/util/regex/Matcher;
    :cond_2
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    const/16 v29, 0x2

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-static {v0, v1}, Lcom/laiwang/protocol/media/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v24

    goto :goto_1

    .line 173
    .restart local v6    # "busiMatcher":Ljava/util/regex/Matcher;
    :cond_3
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v24

    if-eqz v24, :cond_14

    .line 177
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v13

    .line 179
    .local v13, "groupCount":I
    const/4 v10, 0x0

    .line 180
    .local v10, "group1":Ljava/lang/String;
    const/16 v24, 0x2

    move/from16 v0, v24

    if-lt v13, v0, :cond_4

    .line 181
    const/16 v24, 0x2

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 184
    :cond_4
    const/4 v11, 0x0

    .line 185
    .local v11, "group2":Ljava/lang/String;
    const/16 v24, 0x3

    move/from16 v0, v24

    if-lt v13, v0, :cond_5

    .line 186
    const/16 v24, 0x3

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    .line 189
    :cond_5
    const/4 v12, 0x0

    .line 190
    .local v12, "group3":Ljava/lang/String;
    const/16 v24, 0x4

    move/from16 v0, v24

    if-lt v13, v0, :cond_6

    .line 191
    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    .line 194
    :cond_6
    const-string/jumbo v24, "action"

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_9

    const-string/jumbo v24, "login"

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_9

    if-eqz v12, :cond_9

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v24

    const/16 v25, 0x5

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_9

    .line 196
    if-nez p4, :cond_7

    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v24

    const-string/jumbo v25, "f_qr_login_only_from_scan"

    .line 2083
    const/16 v26, 0x1

    invoke-virtual/range {v24 .. v26}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v24

    .line 196
    if-nez v24, :cond_8

    .line 198
    :cond_7
    const/16 v24, 0x5

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    .line 199
    .local v20, "qrcode":Ljava/lang/String;
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 200
    .local v14, "i":Landroid/os/Bundle;
    const-string/jumbo v24, "QR_CODE_RESULT_TYPE"

    const/16 v25, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 201
    const-string/jumbo v24, "qrcode"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string/jumbo v24, "type"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 203
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v14}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->j(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 208
    .end local v14    # "i":Landroid/os/Bundle;
    .end local v20    # "qrcode":Ljava/lang/String;
    :goto_2
    invoke-static/range {p3 .. p3}, Ljne;->b(Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;)V

    goto/16 :goto_0

    .line 205
    :cond_8
    invoke-static/range {p0 .. p0}, Ljne;->a(Landroid/app/Activity;)V

    goto :goto_2

    .line 210
    :cond_9
    const-string/jumbo v24, "action"

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_a

    const-string/jumbo v24, "fastconfig"

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_a

    if-eqz v12, :cond_a

    .line 211
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->d(Ljava/lang/String;)Z

    .line 212
    invoke-static/range {p3 .. p3}, Ljne;->b(Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;)V

    goto/16 :goto_0

    .line 214
    :cond_a
    const-string/jumbo v24, "action"

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_f

    const-string/jumbo v24, "oa_login"

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_f

    if-eqz v12, :cond_f

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v24

    const/16 v25, 0x5

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_f

    .line 216
    if-nez p4, :cond_b

    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v24

    const-string/jumbo v25, "f_qr_login_only_from_scan"

    invoke-virtual/range {v24 .. v25}, Lchx;->a(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_e

    .line 220
    :cond_b
    :try_start_0
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    .line 221
    .local v22, "uri":Landroid/net/Uri;
    const-string/jumbo v24, "code"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcpx;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 222
    .restart local v20    # "qrcode":Ljava/lang/String;
    const-string/jumbo v24, "title"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcpx;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 223
    .local v21, "title":Ljava/lang/String;
    const-string/jumbo v24, "desc"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcpx;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 224
    .local v8, "desc":Ljava/lang/String;
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 226
    .restart local v14    # "i":Landroid/os/Bundle;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_c

    .line 227
    const-string/jumbo v24, "title"

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_c
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_d

    .line 230
    const-string/jumbo v24, "desc"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_d
    const-string/jumbo v24, "QR_CODE_RESULT_TYPE"

    const/16 v25, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 234
    const-string/jumbo v24, "qrcode"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string/jumbo v24, "type"

    const/16 v25, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 236
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v14}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->j(Landroid/app/Activity;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .end local v8    # "desc":Ljava/lang/String;
    .end local v14    # "i":Landroid/os/Bundle;
    .end local v20    # "qrcode":Ljava/lang/String;
    .end local v21    # "title":Ljava/lang/String;
    .end local v22    # "uri":Landroid/net/Uri;
    :goto_3
    invoke-static/range {p3 .. p3}, Ljne;->b(Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;)V

    goto/16 :goto_0

    .line 237
    :catch_0
    move-exception v9

    .line 238
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 239
    sget-object v24, Ljne;->a:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    invoke-static/range {v24 .. v26}, Ljmp;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 242
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_e
    invoke-static/range {p0 .. p0}, Ljne;->a(Landroid/app/Activity;)V

    goto :goto_3

    .line 247
    :cond_f
    const-string/jumbo v24, "action"

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_10

    const-string/jumbo v24, "request"

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_10

    if-eqz v12, :cond_10

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v24

    const/16 v25, 0x5

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_10

    .line 249
    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    .line 252
    .local v23, "url":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v24

    new-instance v25, Ljne$1;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Ljne$1;-><init>(Landroid/app/Activity;Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Ljava/lang/String;Liyv;)V

    goto/16 :goto_0

    .line 283
    .end local v23    # "url":Ljava/lang/String;
    :cond_10
    const-string/jumbo v24, "action"

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_11

    const-string/jumbo v24, "joingroup"

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_11

    if-eqz v12, :cond_11

    const-string/jumbo v24, "code="

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_11

    .line 286
    const-string/jumbo v24, "code="

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    add-int/lit8 v15, v24, 0x5

    .line 287
    .local v15, "index":I
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v0, v24

    if-le v0, v15, :cond_0

    .line 288
    invoke-virtual {v12, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    .line 289
    .restart local v20    # "qrcode":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->c(Landroid/app/Activity;Ljava/lang/String;)V

    .line 290
    if-eqz p0, :cond_0

    .line 291
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 296
    .end local v15    # "index":I
    .end local v20    # "qrcode":Ljava/lang/String;
    :cond_11
    if-nez p4, :cond_12

    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v24

    const-string/jumbo v25, "f_qr_login_only_from_scan"

    invoke-virtual/range {v24 .. v25}, Lchx;->a(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_12

    const-string/jumbo v24, "https://oapi.dingtalk.com/connect/qrcommit"

    .line 297
    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_13

    .line 299
    :cond_12
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v7, v2}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :goto_4
    invoke-static/range {p3 .. p3}, Ljne;->b(Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;)V

    goto/16 :goto_0

    .line 301
    :cond_13
    invoke-static/range {p0 .. p0}, Ljne;->a(Landroid/app/Activity;)V

    goto :goto_4

    .line 306
    .end local v10    # "group1":Ljava/lang/String;
    .end local v11    # "group2":Ljava/lang/String;
    .end local v12    # "group3":Ljava/lang/String;
    .end local v13    # "groupCount":I
    :cond_14
    const-string/jumbo v24, "^(http|https|dingtalk)://(qr.dingtalk.com|dingtalkclient)/(page|action)/"

    .line 2509
    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v0, v7, v1}, Ljne;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/regex/Matcher;

    move-result-object v24

    .line 306
    invoke-virtual/range {v24 .. v24}, Ljava/util/regex/Matcher;->find()Z

    move-result v24

    if-eqz v24, :cond_1f

    .line 307
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    .line 308
    .restart local v22    # "uri":Landroid/net/Uri;
    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    .line 309
    .local v19, "path":Ljava/lang/String;
    const-string/jumbo v24, "/page/createorg_v1"

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_16

    .line 310
    const-string/jumbo v24, "NAVIGATOR"

    invoke-static/range {v24 .. v24}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/alibaba/doraemon/navigator/Navigator;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v0, v7}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    .line 374
    :cond_15
    :goto_5
    invoke-static/range {p3 .. p3}, Ljne;->b(Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;)V

    goto/16 :goto_0

    .line 311
    :cond_16
    const-string/jumbo v24, "/page/devicebind"

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_17

    const-string/jumbo v24, "/page/smartdevice"

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_18

    .line 312
    :cond_17
    invoke-static {}, Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;

    move-result-object v24

    const-string/jumbo v25, "scan"

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;->parseDeviceBindUrl(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_5

    .line 313
    :cond_18
    const-string/jumbo v24, "/page/dingcheckin"

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_19

    const-string/jumbo v24, "code"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_19

    .line 314
    const-string/jumbo v24, "code="

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    add-int/lit8 v15, v24, 0x5

    .line 315
    .restart local v15    # "index":I
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v0, v24

    if-le v0, v15, :cond_15

    .line 316
    invoke-virtual {v7, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    .line 317
    .restart local v20    # "qrcode":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->b(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_5

    .line 319
    .end local v15    # "index":I
    .end local v20    # "qrcode":Ljava/lang/String;
    :cond_19
    sget-object v24, Ljne;->b:Ljava/util/Set;

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1a

    .line 323
    const-string/jumbo v24, "NAVIGATOR"

    invoke-static/range {v24 .. v24}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/alibaba/doraemon/navigator/Navigator;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v0, v7}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 324
    :cond_1a
    const-string/jumbo v24, "/action/open_micro_app"

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_1b

    const-string/jumbo v24, "/action/open_mini_app"

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_1b

    const-string/jumbo v24, "/action/dev_mini_app"

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1c

    .line 325
    :cond_1b
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 326
    .local v5, "bundle":Landroid/os/Bundle;
    const-string/jumbo v24, "url"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v5}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_5

    .line 328
    .end local v5    # "bundle":Landroid/os/Bundle;
    :cond_1c
    const-string/jumbo v24, "/action/jumprobot"

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1d

    .line 331
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v7, v1}, Ljne;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 333
    :catch_1
    move-exception v9

    .line 334
    .restart local v9    # "e":Ljava/lang/Exception;
    sget-object v24, Ljne;->a:Ljava/lang/String;

    const-string/jumbo v25, "jumprobot failed, error=%s"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-static/range {v24 .. v26}, Ljmp;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 337
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_1d
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string/jumbo v26, "https://qr.dingtalk.com"

    aput-object v26, v24, v25

    const/16 v25, 0x1

    aput-object v19, v24, v25

    invoke-static/range {v24 .. v24}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 339
    .restart local v23    # "url":Ljava/lang/String;
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v24

    const-string/jumbo v25, "f_scan_jump_url"

    invoke-virtual/range {v24 .. v25}, Lchx;->a(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1e

    .line 340
    move-object/from16 v23, v7

    .line 342
    :cond_1e
    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v16

    .line 343
    .local v16, "keySets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v24, "NAVIGATOR"

    invoke-static/range {v24 .. v24}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/alibaba/doraemon/navigator/Navigator;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v24

    new-instance v25, Ljne$5;

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljne$5;-><init>(Ljava/util/Set;Landroid/net/Uri;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto/16 :goto_5

    .line 375
    .end local v16    # "keySets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v19    # "path":Ljava/lang/String;
    .end local v22    # "uri":Landroid/net/Uri;
    .end local v23    # "url":Ljava/lang/String;
    :cond_1f
    const-string/jumbo v24, "^(tel):(//)?.+"

    const/16 v25, 0x2

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v0, v7, v1}, Ljne;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/regex/Matcher;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/regex/Matcher;->find()Z

    move-result v24

    if-eqz v24, :cond_21

    .line 376
    const-string/jumbo v24, "^(tel):(//)?"

    const/16 v25, 0x2

    invoke-static/range {v24 .. v25}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v17

    .line 377
    .local v17, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->find()Z

    move-result v24

    if-eqz v24, :cond_20

    .line 378
    const-string/jumbo v24, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 380
    :cond_20
    move-object/from16 v18, v7

    .line 381
    .local v18, "number":Ljava/lang/String;
    new-instance v4, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 382
    .local v4, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v24, Lelh$h;->dt_scan_qr_confirm_message:I

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobile/mascanengine/MaScanResult;->text:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 383
    invoke-virtual/range {v24 .. v25}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v24

    sget v25, Lelh$h;->cancel:I

    new-instance v26, Ljne$7;

    invoke-direct/range {v26 .. v26}, Ljne$7;-><init>()V

    .line 384
    invoke-virtual/range {v24 .. v26}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v24

    sget v25, Lelh$h;->dt_scan_btn_call:I

    new-instance v26, Ljne$6;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Ljne$6;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 389
    invoke-virtual/range {v24 .. v26}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 399
    new-instance v24, Ljne$8;

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljne$8;-><init>(Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;)V

    .line 3173
    move-object/from16 v0, v24

    iput-object v0, v4, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a:Landroid/content/DialogInterface$OnDismissListener;

    .line 408
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0

    .line 409
    .end local v4    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    .end local v17    # "matcher":Ljava/util/regex/Matcher;
    .end local v18    # "number":Ljava/lang/String;
    :cond_21
    const-string/jumbo v24, "^(alipays):(//)?.+"

    const/16 v25, 0x2

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v0, v7, v1}, Ljne;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/regex/Matcher;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/regex/Matcher;->find()Z

    move-result v24

    if-eqz v24, :cond_22

    .line 410
    invoke-static/range {p0 .. p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v0, v7}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    .line 411
    invoke-static/range {p3 .. p3}, Ljne;->b(Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;)V

    goto/16 :goto_0

    .line 412
    :cond_22
    const-string/jumbo v24, "^(http|https)://qr.alipay.com/.*"

    const/16 v25, 0x2

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v0, v7, v1}, Ljne;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/regex/Matcher;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/regex/Matcher;->find()Z

    move-result v24

    if-eqz v24, :cond_23

    .line 413
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string/jumbo v26, "alipays://platformapi/startApp?appId=10000007&actionType=route&sourceAppId=dingding&qrcode="

    aput-object v26, v24, v25

    const/16 v25, 0x1

    aput-object v7, v24, v25

    invoke-static/range {v24 .. v24}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 414
    .restart local v23    # "url":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    .line 415
    invoke-static/range {p3 .. p3}, Ljne;->b(Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;)V

    goto/16 :goto_0

    .line 416
    .end local v23    # "url":Ljava/lang/String;
    :cond_23
    const-string/jumbo v24, "^(http|https)://(pre-)?alivideolive.taobao.com/(h5|pc)/"

    .line 3509
    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v0, v7, v1}, Ljne;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/regex/Matcher;

    move-result-object v24

    .line 416
    invoke-virtual/range {v24 .. v24}, Ljava/util/regex/Matcher;->find()Z

    move-result v24

    if-eqz v24, :cond_24

    .line 417
    invoke-static/range {p0 .. p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v0, v7}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    .line 418
    invoke-static/range {p3 .. p3}, Ljne;->b(Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;)V

    goto/16 :goto_0

    .line 419
    :cond_24
    const-string/jumbo v24, "^(http|https)://(pre-)?qr.xuexi.com/page/join_org_qrcode.html"

    .line 4509
    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v0, v7, v1}, Ljne;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/regex/Matcher;

    move-result-object v24

    .line 419
    invoke-virtual/range {v24 .. v24}, Ljava/util/regex/Matcher;->find()Z

    move-result v24

    if-eqz v24, :cond_25

    .line 420
    invoke-static/range {p0 .. p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v0, v7}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    .line 421
    invoke-static/range {p3 .. p3}, Ljne;->b(Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;)V

    goto/16 :goto_0

    .line 422
    :cond_25
    const-string/jumbo v24, "^(http|https):\\/\\/[\\w\\-_]+(\\.[\\w\\-_]+)+([\\w\\-\\.,@?^=%&amp;:/~\\+#]*[\\w\\-\\@?^=%&amp;/~\\+#])?$"

    const/16 v25, 0x2

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v0, v7, v1}, Ljne;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/regex/Matcher;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/regex/Matcher;->find()Z

    move-result v24

    if-nez v24, :cond_26

    const-string/jumbo v24, "(https?)://[-A-Za-z0-9+&@#/%?=~_|!:,.;]+[-A-Za-z0-9+&@#/%=~_|]"

    const/16 v25, 0x2

    .line 423
    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v0, v7, v1}, Ljne;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/regex/Matcher;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/regex/Matcher;->find()Z

    move-result v24

    if-eqz v24, :cond_31

    .line 424
    :cond_26
    if-nez p4, :cond_27

    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v24

    const-string/jumbo v25, "f_qr_login_only_from_scan"

    invoke-virtual/range {v24 .. v25}, Lchx;->a(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_27

    const-string/jumbo v24, "https://wsdebug.dingtalk.com/client.html"

    .line 425
    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_30

    .line 4602
    :cond_27
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_2a

    .line 4605
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v24

    .line 4606
    if-eqz v24, :cond_2a

    .line 4609
    invoke-virtual/range {v24 .. v24}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v24

    .line 4610
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_2a

    const-string/jumbo v25, "zproject"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_2a

    const/16 v24, 0x1

    .line 426
    :goto_6
    if-eqz v24, :cond_2b

    .line 4614
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_29

    .line 4618
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v24

    const-string/jumbo v25, "dt_user"

    const-string/jumbo v26, "host_prefix"

    invoke-virtual/range {v24 .. v26}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 4619
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_35

    .line 4620
    const-string/jumbo v24, "https://qr.dingtalk.com"

    move-object/from16 v25, v24

    .line 4622
    :goto_7
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v26

    .line 4623
    if-eqz v26, :cond_29

    .line 4626
    invoke-virtual/range {v26 .. v26}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v24

    .line 4627
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_29

    .line 5016
    sget-object v27, Lemr$a;->a:Lemr;

    .line 5030
    move-object/from16 v0, v27

    iget-object v0, v0, Lemr;->a:Ljava/util/Map;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 4632
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_28

    .line 4633
    const-string/jumbo v24, ""

    .line 4635
    :cond_28
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 4636
    invoke-static/range {p0 .. p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v25

    new-instance v27, Ljne$4;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljne$4;-><init>(Landroid/net/Uri;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 439
    :cond_29
    :goto_8
    invoke-static/range {p3 .. p3}, Ljne;->b(Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;)V

    goto/16 :goto_0

    .line 4610
    :cond_2a
    const/16 v24, 0x0

    goto/16 :goto_6

    .line 5657
    :cond_2b
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v24

    const-string/jumbo v25, "im"

    const-string/jumbo v26, "dingpay_scan2invoice"

    const/16 v27, 0x0

    invoke-virtual/range {v24 .. v27}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v24

    .line 428
    if-eqz v24, :cond_2e

    invoke-static {v7}, Ljne;->a(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_2e

    .line 5685
    if-eqz p0, :cond_29

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_29

    .line 5688
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v24

    const-string/jumbo v25, "im"

    const-string/jumbo v26, "dingpay_scan_invoice_backschema"

    const-string/jumbo v27, ""

    invoke-virtual/range {v24 .. v27}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 5689
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_2c

    .line 5690
    const-string/jumbo v24, "dingtalk://dingtalkclient/action/open_mini_app?miniAppId=2018050302630360&mainTask=true&keepAlive=false&ddMode=push"

    .line 5693
    :cond_2c
    :try_start_2
    const-string/jumbo v25, "utf-8"

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v25

    .line 5694
    :try_start_3
    const-string/jumbo v26, "utf-8"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v24

    .line 5698
    :goto_9
    const-string/jumbo v26, "alipays://platformapi/startapp?appId=20000067&url=%s&sourceId=dingtalk&backScheme=%s"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput-object v25, v27, v28

    const/16 v25, 0x1

    aput-object v24, v27, v25

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    .line 5699
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_29

    .line 5700
    invoke-static/range {v24 .. v24}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    .line 5701
    new-instance v26, Landroid/content/Intent;

    const-string/jumbo v27, "android.intent.action.VIEW"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5702
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v25

    .line 5704
    if-nez v25, :cond_2d

    .line 5706
    const-string/jumbo v24, "https://ds.alipay.com"

    .line 5708
    :cond_2d
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 5695
    :catch_2
    move-exception v25

    move-object/from16 v26, v25

    move-object/from16 v25, v7

    .line 5696
    :goto_a
    invoke-virtual/range {v26 .. v26}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_9

    .line 433
    :cond_2e
    const-string/jumbo v24, "^(https|http)"

    .line 6491
    const/16 v25, 0x2

    invoke-static/range {v24 .. v25}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v24

    .line 6492
    invoke-virtual/range {v24 .. v24}, Ljava/util/regex/Matcher;->find()Z

    move-result v25

    if-eqz v25, :cond_2f

    .line 6493
    invoke-virtual/range {v24 .. v24}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v25

    .line 6494
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 434
    :cond_2f
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v7, v2}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 437
    :cond_30
    invoke-static/range {p0 .. p0}, Ljne;->a(Landroid/app/Activity;)V

    goto/16 :goto_8

    .line 440
    :cond_31
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobile/mascanengine/MaScanResult;->type:Lcom/alipay/mobile/mascanengine/MaScanType;

    move-object/from16 v24, v0

    sget-object v25, Lcom/alipay/mobile/mascanengine/MaScanType;->PRODUCT:Lcom/alipay/mobile/mascanengine/MaScanType;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_32

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobile/mascanengine/MaScanResult;->type:Lcom/alipay/mobile/mascanengine/MaScanType;

    move-object/from16 v24, v0

    sget-object v25, Lcom/alipay/mobile/mascanengine/MaScanType;->EXPRESS:Lcom/alipay/mobile/mascanengine/MaScanType;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_32

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobile/mascanengine/MaScanResult;->type:Lcom/alipay/mobile/mascanengine/MaScanType;

    move-object/from16 v24, v0

    sget-object v25, Lcom/alipay/mobile/mascanengine/MaScanType;->MEDICINE:Lcom/alipay/mobile/mascanengine/MaScanType;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_32

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobile/mascanengine/MaScanResult;->type:Lcom/alipay/mobile/mascanengine/MaScanType;

    move-object/from16 v24, v0

    sget-object v25, Lcom/alipay/mobile/mascanengine/MaScanType;->QR:Lcom/alipay/mobile/mascanengine/MaScanType;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_33

    .line 441
    :cond_32
    new-instance v4, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 442
    .restart local v4    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v24, Lelh$h;->dt_scan_qr_confirm_message:I

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobile/mascanengine/MaScanResult;->text:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 443
    invoke-virtual/range {v24 .. v25}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v24

    sget v25, Lelh$h;->cancel:I

    new-instance v26, Ljne$10;

    invoke-direct/range {v26 .. v26}, Ljne$10;-><init>()V

    .line 444
    invoke-virtual/range {v24 .. v26}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v24

    sget v25, Lelh$h;->dt_scan_qr_result_copy:I

    new-instance v26, Ljne$9;

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljne$9;-><init>(Lcom/alipay/mobile/mascanengine/MaScanResult;)V

    .line 449
    invoke-virtual/range {v24 .. v26}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 457
    new-instance v24, Ljne$11;

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljne$11;-><init>(Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;)V

    .line 7173
    move-object/from16 v0, v24

    iput-object v0, v4, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a:Landroid/content/DialogInterface$OnDismissListener;

    .line 463
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0

    .line 465
    .end local v4    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    :cond_33
    sget-object v24, Ljne;->a:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    const-string/jumbo v26, "Invalid code type "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobile/mascanengine/MaScanResult;->type:Lcom/alipay/mobile/mascanengine/MaScanType;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    invoke-static/range {v24 .. v26}, Ljmp;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 467
    new-instance v4, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 468
    .restart local v4    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v24, Lelh$h;->invalid_qrcode:I

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v24

    sget v25, Lelh$h;->sure:I

    new-instance v26, Ljne$12;

    invoke-direct/range {v26 .. v26}, Ljne$12;-><init>()V

    .line 469
    invoke-virtual/range {v24 .. v26}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 474
    new-instance v24, Ljne$2;

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljne$2;-><init>(Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;)V

    .line 8173
    move-object/from16 v0, v24

    iput-object v0, v4, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a:Landroid/content/DialogInterface$OnDismissListener;

    .line 480
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0

    .line 8500
    .end local v4    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    :cond_34
    new-instance v24, Landroid/content/Intent;

    const-string/jumbo v25, "com.workapp.action.qrcode"

    invoke-direct/range {v24 .. v25}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8502
    new-instance v25, Landroid/os/Bundle;

    invoke-direct/range {v25 .. v25}, Landroid/os/Bundle;-><init>()V

    .line 8503
    const-string/jumbo v26, "qrcode_key"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8504
    invoke-virtual/range {v24 .. v25}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 8505
    invoke-static/range {p0 .. p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 485
    invoke-static/range {p3 .. p3}, Ljne;->b(Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;)V

    goto/16 :goto_0

    .line 5695
    :catch_3
    move-exception v26

    goto/16 :goto_a

    :cond_35
    move-object/from16 v25, v24

    goto/16 :goto_7
.end method

.method private static a(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;)V
    .locals 11
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;

    .prologue
    const/4 v10, 0x0

    .line 525
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 582
    :goto_0
    return-void

    .line 528
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 529
    .local v6, "uri":Landroid/net/Uri;
    const/4 v5, 0x0

    .line 530
    .local v5, "msgContent":Ljava/lang/String;
    const/4 v1, 0x0

    .line 532
    .local v1, "chatbotUserId":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v4

    .line 533
    .local v4, "keySets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 534
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 535
    .local v3, "key":Ljava/lang/String;
    const-string/jumbo v8, "dingtalkid"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 536
    invoke-virtual {v6, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 537
    :cond_2
    const-string/jumbo v8, "content"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 538
    invoke-virtual {v6, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 542
    .end local v3    # "key":Ljava/lang/String;
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 543
    sget-object v7, Ljne;->a:Ljava/lang/String;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "handleJumpRobot failed chatbotUserId is empty"

    aput-object v9, v8, v10

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Ljmp;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 549
    :cond_4
    const-string/jumbo v7, " "

    const-string/jumbo v8, "+"

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 550
    move-object v2, v5

    .line 551
    .local v2, "finalMsgContent":Ljava/lang/String;
    new-instance v0, Ljne$3;

    invoke-direct {v0, p0, v2, p2}, Ljne$3;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;)V

    .line 578
    .local v0, "callback":Lcma;
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 579
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v7

    const-class v8, Lcma;

    invoke-interface {v7, v0, v8, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "callback":Lcma;
    check-cast v0, Lcma;

    .line 581
    .restart local v0    # "callback":Lcma;
    :cond_5
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v7

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->d(Ljava/lang/String;Lcma;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;

    .prologue
    .line 75
    invoke-static {p0}, Ljne;->b(Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;)V

    return-void
.end method

.method static synthetic a()Z
    .locals 1

    .prologue
    .line 75
    sget-boolean v0, Ljne;->c:Z

    return v0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 9
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 661
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 681
    :cond_0
    :goto_0
    return v4

    .line 664
    :cond_1
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v5

    const-string/jumbo v6, "im"

    const-string/jumbo v7, "dingpay_scan_invoice_domains"

    const-string/jumbo v8, ""

    invoke-virtual {v5, v6, v7, v8}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 665
    .local v3, "invoicePathes":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 666
    const-string/jumbo v3, "invoice.yumchina.com,pickup-uat.jaxcx.com,jskp.jss.com.cn"

    .line 668
    :cond_2
    const-string/jumbo v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 669
    .local v2, "invoiceDomains":[Ljava/lang/String;
    array-length v5, v2

    if-lez v5, :cond_0

    .line 670
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, v2

    if-ge v1, v5, :cond_0

    .line 671
    aget-object v0, v2, v1

    .line 672
    .local v0, "domain":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 675
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 676
    const/4 v4, 0x1

    goto :goto_0

    .line 670
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method static synthetic a(Z)Z
    .locals 1
    .param p0, "x0"    # Z

    .prologue
    .line 75
    const/4 v0, 0x1

    sput-boolean v0, Ljne;->c:Z

    return v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Ljne;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;)V
    .locals 0
    .param p0, "handler"    # Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;

    .prologue
    .line 518
    if-eqz p0, :cond_0

    .line 519
    invoke-interface {p0}, Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;->a()V

    .line 521
    :cond_0
    return-void
.end method
