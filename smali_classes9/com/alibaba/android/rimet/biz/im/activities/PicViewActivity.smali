.class public Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;
.super Lcom/alibaba/android/rimet/BaseActivity;
.source "PicViewActivity.java"

# interfaces
.implements Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$b;,
        Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$c;,
        Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$a;
    }
.end annotation


# instance fields
.field private A:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$c;

.field private B:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/alibaba/laiwang/photokit/browser/PhotoObject;",
            ">;"
        }
    .end annotation
.end field

.field private a:Z

.field private b:Z

.field private c:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

.field private d:Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;

.field private e:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;",
            ">;"
        }
    .end annotation
.end field

.field private g:J

.field private h:Z

.field private i:Z

.field private j:[Z

.field private k:Z

.field private l:Z

.field private m:[Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Ljava/lang/String;

.field private t:I

.field private u:I

.field private v:Landroid/content/BroadcastReceiver;

.field private w:J

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0}, Lcom/alibaba/android/rimet/BaseActivity;-><init>()V

    .line 115
    iput-boolean v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->a:Z

    .line 116
    iput-boolean v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->b:Z

    .line 126
    iput-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->j:[Z

    .line 127
    iput-boolean v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->k:Z

    .line 129
    iput-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->m:[Ljava/lang/String;

    .line 139
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->t:I

    .line 262
    new-instance v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$3;-><init>(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->A:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$c;

    .line 1114
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->B:Landroid/util/SparseArray;

    .line 1250
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;)Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->c:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 98
    .line 7091
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7092
    const-string/jumbo v0, "="

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 7093
    if-eqz v0, :cond_0

    array-length v1, v0

    if-ne v1, v5, :cond_0

    .line 7094
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v3

    const-string/jumbo v2, "&"

    aput-object v2, v1, v4

    aget-object v2, v0, v3

    aput-object v2, v1, v5

    const/4 v2, 0x3

    const-string/jumbo v3, "="

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7097
    .end local p1    # "x1":Ljava/lang/String;
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7098
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v0

    const-string/jumbo v1, "&from=tfs"

    invoke-virtual {v0, p1, p3, v1}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 7100
    :cond_1
    new-instance v0, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 7101
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 7102
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 7103
    const-string/jumbo v1, "_pic"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 7104
    const-string/jumbo v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 7105
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 7106
    const-string/jumbo v2, "_"

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 7107
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 7111
    :goto_1
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "&from=tfs"

    invoke-virtual {v1, p1, v0, v2}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7109
    :cond_2
    const-string/jumbo v1, ".jpg"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_1
.end method

.method public static a(Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)Ljava/lang/String;
    .locals 1
    .param p0, "photoObject"    # Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .prologue
    .line 1061
    if-nez p0, :cond_0

    .line 1062
    const/4 v0, 0x0

    .line 1077
    :goto_0
    return-object v0

    .line 1065
    :cond_0
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1066
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    goto :goto_0

    .line 1069
    :cond_1
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->originUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1070
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->originUrl:Ljava/lang/String;

    goto :goto_0

    .line 1073
    :cond_2
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->bigUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1074
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->bigUrl:Ljava/lang/String;

    goto :goto_0

    .line 1077
    :cond_3
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->smallUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "builder"    # Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "msgId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1007
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->w:J

    .line 1008
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a(Z)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    move-result-object v1

    const/16 v2, 0x10

    .line 1009
    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->c(I)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->w:J

    .line 1010
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->g(J)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 1011
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1012
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->dismissLoadingDialog()V

    .line 1013
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v1

    .line 3922
    iget-object v2, p1, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    .line 1013
    invoke-virtual {v1, p0, v2}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/DingCreateInfo;)V

    .line 1058
    :goto_0
    return-void

    .line 1017
    :cond_1
    invoke-virtual {p1, p2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->h(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    move-result-object v1

    .line 4109
    const-wide/16 v2, 0x0

    invoke-static {p3, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1018
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->c(J)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 1020
    const-string/jumbo v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1021
    .local v0, "uids":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1023
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v2

    new-instance v1, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$9;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$9;-><init>(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;)V

    const-class v3, Lcma;

    invoke-static {v1, v3, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    invoke-virtual {v2, p2, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->b(Ljava/lang/String;Lcma;)V

    goto :goto_0

    .line 1054
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->dismissLoadingDialog()V

    .line 1056
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v1

    .line 4922
    iget-object v2, p1, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    .line 1056
    invoke-virtual {v1, p0, v2}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/DingCreateInfo;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;
    .param p1, "x1"    # Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->a(Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V
    .locals 20
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;
    .param p1, "x1"    # Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .prologue
    .line 98
    .line 6316
    if-eqz p1, :cond_8

    .line 6321
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->x:Z

    .line 6322
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->y:Z

    .line 6323
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->z:Z

    .line 6324
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    if-eqz v5, :cond_27

    .line 6325
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v6, "save_to_phone_enter_hide"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    .line 6326
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v6, "save_space_enter_hide"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v3, v5

    .line 6327
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v6, "forward_enter_hide"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v2, v5

    move v8, v2

    move v9, v3

    move v10, v4

    .line 6330
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->c:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    invoke-virtual {v2}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->e()I

    move-result v6

    .line 6331
    new-instance v4, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;-><init>(Landroid/content/Context;)V

    .line 6332
    const/4 v14, 0x0

    .line 6334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->c:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    invoke-virtual {v2}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->f()Ljava/lang/Object;

    move-result-object v3

    .line 6335
    if-eqz v3, :cond_9

    instance-of v2, v3, Lcom/alibaba/wukong/im/Message;

    if-eqz v2, :cond_9

    move-object v2, v3

    check-cast v2, Lcom/alibaba/wukong/im/Message;

    invoke-static {v2}, Ldrp;->e(Lcom/alibaba/wukong/im/Message;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 6336
    check-cast v3, Lcom/alibaba/wukong/im/Message;

    .line 6338
    invoke-static {v3}, Ldrp;->d(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v5

    .line 6340
    if-eqz v5, :cond_4

    .line 6341
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6342
    new-instance v2, Lcng;

    const v3, 0x7f0912de

    const v7, 0x7f0912de

    invoke-direct {v2, v3, v7}, Lcng;-><init>(II)V

    const/4 v3, 0x0

    invoke-virtual {v4, v2, v3}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Lcng;Z)V

    .line 6345
    :cond_0
    if-nez v10, :cond_1

    .line 6346
    new-instance v2, Lcng;

    const v3, 0x7f09205a

    const v7, 0x7f09205a

    invoke-direct {v2, v3, v7}, Lcng;-><init>(II)V

    const/4 v3, 0x0

    invoke-virtual {v4, v2, v3}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Lcng;Z)V

    .line 6347
    new-instance v2, Lcng;

    const v3, 0x7f091893

    const v7, 0x7f091893

    invoke-direct {v2, v3, v7}, Lcng;-><init>(II)V

    const/4 v3, 0x0

    invoke-virtual {v4, v2, v3}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Lcng;Z)V

    .line 6349
    :cond_1
    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->a(Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;ILjava/lang/String;)V

    .line 6352
    invoke-static {v5}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v8, :cond_2

    .line 6353
    new-instance v2, Lcng;

    const v3, 0x7f09212c

    const v7, 0x7f09212c

    invoke-direct {v2, v3, v7}, Lcng;-><init>(II)V

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v2, v3, v7}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Lcng;ZI)V

    .line 6356
    :cond_2
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v2

    .line 6357
    if-eqz v5, :cond_3

    iget-object v3, v5, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->d(Ljava/lang/String;)I

    move-result v3

    const/4 v7, 0x6

    if-ne v3, v7, :cond_3

    .line 6358
    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v9, :cond_3

    .line 6359
    new-instance v2, Lcng;

    const v3, 0x7f09214d

    const v7, 0x7f09214d

    invoke-direct {v2, v3, v7}, Lcng;-><init>(II)V

    const/4 v3, 0x0

    invoke-virtual {v4, v2, v3}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Lcng;Z)V

    .line 6362
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->i:Z

    if-eqz v2, :cond_4

    if-eqz v5, :cond_4

    .line 6365
    const-string/jumbo v2, "EVENTBUTLER"

    .line 6366
    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v7, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$4;

    const/4 v12, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object v10, v5

    move v11, v6

    move-object v13, v4

    invoke-direct/range {v7 .. v13}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$4;-><init>(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;ILjava/lang/String;Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;)V

    const-class v3, Lcma;

    move-object/from16 v0, p0

    invoke-interface {v2, v7, v3, v0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcma;

    .line 6392
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v3

    iget-object v7, v5, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v7, v2}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/app/Activity;Ljava/lang/String;Lcma;)V

    :cond_4
    move-object v9, v5

    move-object v12, v14

    .line 6538
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->q:Z

    if-eqz v2, :cond_5

    .line 6539
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    if-eqz v2, :cond_5

    .line 6540
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v3, "conversation_id"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6541
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->id:J

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-lez v2, :cond_5

    .line 6543
    new-instance v2, Lcng;

    const v3, 0x7f09128f

    const v5, 0x7f09128f

    invoke-direct {v2, v3, v5}, Lcng;-><init>(II)V

    const/4 v3, 0x0

    invoke-virtual {v4, v2, v3}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Lcng;Z)V

    .line 6548
    :cond_5
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v2

    const/4 v3, 0x0

    const-string/jumbo v5, "png"

    const/4 v7, 0x1

    invoke-virtual {v2, v3, v5, v7}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 6549
    new-instance v2, Lcng;

    const v3, 0x7f090cdd

    const v5, 0x7f090cdd

    invoke-direct {v2, v3, v5}, Lcng;-><init>(II)V

    const/4 v3, 0x0

    invoke-virtual {v4, v2, v3}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Lcng;Z)V

    .line 6551
    :cond_6
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    const-string/jumbo v3, "im_img_extract"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 6552
    if-eqz v2, :cond_7

    .line 6553
    new-instance v2, Lcng;

    const v3, 0x7f091cef

    const v5, 0x7f091cef

    invoke-direct {v2, v3, v5}, Lcng;-><init>(II)V

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v3, v5}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Lcng;ZI)V

    :cond_7
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move v10, v6

    move-object v11, v4

    .line 6557
    invoke-direct/range {v7 .. v12}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->a(Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;ILcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;Ljava/lang/String;)V

    .line 98
    :cond_8
    return-void

    .line 6398
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->f:Ljava/util/ArrayList;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v6, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-object v5, v2

    .line 6401
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->l:Z

    if-eqz v2, :cond_c

    .line 6402
    new-instance v2, Lcng;

    const v3, 0x7f091fa0

    const v7, 0x7f091fa0

    invoke-direct {v2, v3, v7}, Lcng;-><init>(II)V

    const/4 v3, 0x0

    invoke-virtual {v4, v2, v3}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Lcng;Z)V

    .line 6403
    if-nez v10, :cond_a

    .line 6404
    new-instance v2, Lcng;

    const v3, 0x7f09205a

    const v7, 0x7f09205a

    invoke-direct {v2, v3, v7}, Lcng;-><init>(II)V

    const/4 v3, 0x0

    invoke-virtual {v4, v2, v3}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Lcng;Z)V

    .line 6405
    new-instance v2, Lcng;

    const v3, 0x7f091893

    const v7, 0x7f091893

    invoke-direct {v2, v3, v7}, Lcng;-><init>(II)V

    const/4 v3, 0x0

    invoke-virtual {v4, v2, v3}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Lcng;Z)V

    .line 6408
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->c()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 6409
    new-instance v2, Lcng;

    const v3, 0x7f0912de

    const v7, 0x7f0912de

    invoke-direct {v2, v3, v7}, Lcng;-><init>(II)V

    const/4 v3, 0x0

    invoke-virtual {v4, v2, v3}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Lcng;Z)V

    move-object v9, v5

    move-object v12, v14

    goto/16 :goto_1

    .line 6398
    :cond_b
    const/4 v5, 0x0

    goto :goto_2

    .line 6412
    :cond_c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->k:Z

    .line 6414
    const/4 v2, 0x0

    .line 6415
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->id:J

    const-wide/16 v16, 0x0

    cmp-long v3, v12, v16

    if-lez v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->f:Ljava/util/ArrayList;

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->k:Z

    if-nez v3, :cond_e

    if-nez v8, :cond_e

    .line 6416
    new-instance v3, Lcng;

    const v7, 0x7f090375

    const v11, 0x7f090375

    invoke-direct {v3, v7, v11}, Lcng;-><init>(II)V

    const/4 v7, 0x0

    invoke-virtual {v4, v3, v7}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Lcng;Z)V

    .line 6419
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->c()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 6420
    new-instance v3, Lcng;

    const v7, 0x7f0912de

    const v11, 0x7f0912de

    invoke-direct {v3, v7, v11}, Lcng;-><init>(II)V

    const/4 v7, 0x0

    invoke-virtual {v4, v3, v7}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Lcng;Z)V

    .line 6423
    :cond_f
    const/4 v3, 0x0

    .line 6424
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    if-eqz v7, :cond_25

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v11, "favorite_enter_hide"

    invoke-virtual {v7, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25

    .line 6425
    const/4 v3, 0x1

    move v12, v3

    .line 6428
    :goto_3
    if-eqz v5, :cond_10

    iget v3, v5, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->isEncrypt:I

    const/4 v7, 0x1

    if-eq v3, v7, :cond_24

    invoke-static {v5}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Z

    move-result v3

    if-nez v3, :cond_24

    :cond_10
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->id:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v3, v16, v18

    if-gtz v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->f:Ljava/util/ArrayList;

    if-eqz v3, :cond_24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_24

    :cond_11
    if-nez v12, :cond_24

    .line 6429
    new-instance v2, Lcng;

    const v3, 0x7f0921c1

    const v7, 0x7f0921c1

    invoke-direct {v2, v3, v7}, Lcng;-><init>(II)V

    const/4 v3, 0x0

    invoke-virtual {v4, v2, v3}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Lcng;Z)V

    .line 6430
    const/4 v2, 0x1

    move v11, v2

    .line 6433
    :goto_4
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->originUrlHeader:Ljava/util/HashMap;

    if-eqz v2, :cond_23

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->originUrlHeader:Ljava/util/HashMap;

    const-string/jumbo v3, "Cookie"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 6434
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->originUrlHeader:Ljava/util/HashMap;

    const-string/jumbo v3, "Cookie"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v7, v2

    .line 6437
    :goto_5
    if-nez v10, :cond_12

    .line 6438
    new-instance v2, Lcng;

    const v3, 0x7f09205a

    const v10, 0x7f09205a

    invoke-direct {v2, v3, v10}, Lcng;-><init>(II)V

    const/4 v3, 0x0

    invoke-virtual {v4, v2, v3}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Lcng;Z)V

    .line 6439
    new-instance v2, Lcng;

    const v3, 0x7f091893

    const v10, 0x7f091893

    invoke-direct {v2, v3, v10}, Lcng;-><init>(II)V

    const/4 v3, 0x0

    invoke-virtual {v4, v2, v3}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Lcng;Z)V

    :cond_12
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 6441
    invoke-direct/range {v2 .. v7}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->a(Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;ILjava/lang/String;)V

    .line 6443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->f:Ljava/util/ArrayList;

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v6, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_19

    .line 6444
    :cond_13
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v2

    .line 6445
    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->d()Z

    move-result v2

    if-eqz v2, :cond_14

    if-nez v9, :cond_14

    .line 6446
    new-instance v2, Lcng;

    const v3, 0x7f09214d

    const v9, 0x7f09214d

    invoke-direct {v2, v3, v9}, Lcng;-><init>(II)V

    const/4 v3, 0x0

    invoke-virtual {v4, v2, v3}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Lcng;Z)V

    .line 6448
    :cond_14
    const/4 v2, 0x0

    .line 6449
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->j:[Z

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->j:[Z

    array-length v3, v3

    if-le v3, v6, :cond_15

    if-ltz v6, :cond_15

    .line 6450
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->j:[Z

    aget-boolean v2, v2, v6

    .line 6452
    :cond_15
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->k:Z

    .line 6453
    if-eqz v2, :cond_16

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->originUrl:Ljava/lang/String;

    invoke-static {v2}, Lhcs;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16

    if-nez v8, :cond_16

    .line 6454
    new-instance v2, Lcng;

    const v3, 0x7f09212c

    const v8, 0x7f09212c

    invoke-direct {v2, v3, v8}, Lcng;-><init>(II)V

    const/4 v3, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v2, v3, v8}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Lcng;ZI)V

    .line 6456
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->k:Z

    if-eqz v2, :cond_17

    .line 6457
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->m:[Ljava/lang/String;

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->m:[Ljava/lang/String;

    array-length v2, v2

    if-le v2, v6, :cond_18

    if-ltz v6, :cond_18

    .line 6458
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->m:[Ljava/lang/String;

    aget-object v2, v2, v6

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->n:Ljava/lang/String;

    move-object v9, v5

    move-object v12, v7

    goto/16 :goto_1

    .line 6461
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->c:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    invoke-virtual {v2, v6}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 6462
    if-nez v11, :cond_18

    if-nez v12, :cond_18

    invoke-static {v2}, Lhcs;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 6463
    new-instance v2, Lcng;

    const v3, 0x7f0921c1

    const v8, 0x7f0921c1

    invoke-direct {v2, v3, v8}, Lcng;-><init>(II)V

    const/4 v3, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v2, v3, v8}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Lcng;ZI)V

    :cond_18
    move-object v9, v5

    move-object v12, v7

    .line 6466
    goto/16 :goto_1

    .line 6468
    :cond_19
    invoke-static {v5}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Z

    move-result v2

    if-nez v2, :cond_1a

    if-nez v8, :cond_1a

    .line 6469
    new-instance v2, Lcng;

    const v3, 0x7f09212c

    const v8, 0x7f09212c

    invoke-direct {v2, v3, v8}, Lcng;-><init>(II)V

    const/4 v3, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v2, v3, v8}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Lcng;ZI)V

    .line 6472
    :cond_1a
    if-eqz v5, :cond_1b

    iget v2, v5, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->isEncrypt:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1b

    invoke-static {v5}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 6474
    new-instance v2, Lcng;

    const v3, 0x7f090585

    const v8, 0x7f090585

    invoke-direct {v2, v3, v8}, Lcng;-><init>(II)V

    const/4 v3, 0x0

    const/4 v8, 0x1

    invoke-virtual {v4, v2, v3, v8}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Lcng;ZI)V

    .line 6479
    :cond_1b
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v8

    .line 6480
    if-eqz v5, :cond_1c

    iget-object v2, v5, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    invoke-virtual {v8, v2}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->d(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1c

    invoke-virtual {v8}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->d()Z

    move-result v2

    if-eqz v2, :cond_1c

    if-nez v9, :cond_1c

    .line 6481
    new-instance v2, Lcng;

    const v3, 0x7f09214d

    const v9, 0x7f09214d

    invoke-direct {v2, v3, v9}, Lcng;-><init>(II)V

    const/4 v3, 0x0

    invoke-virtual {v4, v2, v3}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Lcng;Z)V

    .line 6484
    :cond_1c
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v2

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->uid:J

    cmp-long v2, v2, v10

    if-nez v2, :cond_20

    const/4 v2, 0x1

    .line 6485
    :goto_6
    const/4 v3, 0x0

    .line 6486
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    if-eqz v9, :cond_1e

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v10, "space_transfer_src"

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e

    const-string/jumbo v9, "ding"

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v11, "space_transfer_src"

    .line 6487
    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1d

    const-string/jumbo v9, "app"

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v11, "space_transfer_src"

    .line 6488
    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1d

    const-string/jumbo v9, "picturepre"

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v11, "space_transfer_src"

    .line 6489
    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 6490
    :cond_1d
    const/4 v3, 0x1

    .line 6493
    :cond_1e
    if-eqz v5, :cond_21

    iget v9, v5, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->isEncrypt:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_21

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->h:Z

    if-nez v9, :cond_1f

    if-eqz v2, :cond_21

    iget-object v2, v5, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    .line 6494
    invoke-virtual {v8, v2}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->d(Ljava/lang/String;)I

    move-result v2

    const/4 v8, 0x6

    if-eq v2, v8, :cond_21

    :cond_1f
    if-nez v3, :cond_21

    .line 6496
    new-instance v2, Lcng;

    const v3, 0x7f09212f

    const v8, 0x7f09212f

    invoke-direct {v2, v3, v8}, Lcng;-><init>(II)V

    const/4 v3, 0x0

    invoke-virtual {v4, v2, v3}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Lcng;Z)V

    .line 6497
    new-instance v2, Lcng;

    const v3, 0x7f09212d

    const v8, 0x7f09212d

    invoke-direct {v2, v3, v8}, Lcng;-><init>(II)V

    const/4 v3, 0x0

    invoke-virtual {v4, v2, v3}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Lcng;Z)V

    .line 6498
    new-instance v2, Lcng;

    const v3, 0x7f09212b

    const v8, 0x7f09212b

    invoke-direct {v2, v3, v8}, Lcng;-><init>(II)V

    const/4 v3, 0x0

    invoke-virtual {v4, v2, v3}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Lcng;Z)V

    move-object v9, v5

    move-object v12, v7

    goto/16 :goto_1

    .line 6484
    :cond_20
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 6500
    :cond_21
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->i:Z

    if-eqz v2, :cond_22

    if-eqz v5, :cond_22

    .line 6503
    const-string/jumbo v2, "EVENTBUTLER"

    .line 6504
    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v8, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$5;

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object v11, v5

    move v12, v6

    move-object v13, v7

    move-object v14, v4

    invoke-direct/range {v8 .. v14}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$5;-><init>(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;ILjava/lang/String;Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;)V

    const-class v3, Lcma;

    move-object/from16 v0, p0

    invoke-interface {v2, v8, v3, v0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcma;

    .line 6530
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v3

    iget-object v8, v5, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v8, v2}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/app/Activity;Ljava/lang/String;Lcma;)V

    :cond_22
    move-object v9, v5

    move-object v12, v7

    goto/16 :goto_1

    :cond_23
    move-object v7, v14

    goto/16 :goto_5

    :cond_24
    move v11, v2

    goto/16 :goto_4

    :cond_25
    move v12, v3

    goto/16 :goto_3

    :cond_26
    move-object v9, v5

    move-object v12, v14

    goto/16 :goto_1

    :cond_27
    move v8, v2

    move v9, v3

    move v10, v4

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;
    .param p1, "x1"    # Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .param p2, "x2"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .prologue
    .line 98
    .line 7902
    if-eqz p2, :cond_1

    .line 7943
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->c:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->f()Ljava/lang/Object;

    move-result-object v0

    .line 7945
    const-string/jumbo v2, ""

    .line 7946
    const-string/jumbo v1, ""

    .line 7947
    instance-of v3, v0, Lcom/alibaba/wukong/im/Message;

    if-eqz v3, :cond_4

    .line 7948
    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 7949
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 7950
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 7951
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 7958
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->showLoadingDialog()V

    .line 7959
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$8;

    invoke-direct {v3, p0, v1, v0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$8;-><init>(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcma;

    invoke-static {v3, v0, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v2, p2, v0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcma;)V

    .line 7907
    :cond_0
    :goto_1
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_image_view_send_task"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 98
    return-void

    .line 7904
    :cond_1
    if-eqz p1, :cond_0

    .line 8911
    new-instance v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    invoke-direct {v1}, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;-><init>()V

    .line 8912
    sget-object v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->IMAGE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->getValue()I

    move-result v0

    iput v0, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->type:I

    .line 8913
    iget-object v0, p1, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->filename:Ljava/lang/String;

    iput-object v0, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->fileName:Ljava/lang/String;

    .line 8914
    iget-wide v2, p1, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->picSize:J

    iput-wide v2, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->size:J

    .line 8915
    iget-object v0, p1, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->urlParams:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 8916
    iget-object v0, p1, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->urlParams:Ljava/util/HashMap;

    const-string/jumbo v2, "mediaId"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->mediaId:Ljava/lang/String;

    .line 8917
    iget-object v0, p1, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->urlParams:Ljava/util/HashMap;

    const-string/jumbo v2, "authCode"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->authCode:Ljava/lang/String;

    .line 8918
    iget-object v0, p1, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->urlParams:Ljava/util/HashMap;

    const-string/jumbo v2, "authMediaId"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->authMediaId:Ljava/lang/String;

    .line 8921
    :cond_2
    new-instance v3, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    invoke-direct {v3}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;-><init>()V

    .line 8922
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a(I)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    move-result-object v0

    .line 8923
    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->b(Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->APP:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .line 8924
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->d(I)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 8926
    const-string/jumbo v2, ""

    .line 8927
    const-string/jumbo v1, ""

    .line 8928
    iget-object v0, p1, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->urlParams:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    .line 8929
    iget-object v0, p1, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->urlParams:Ljava/util/HashMap;

    const-string/jumbo v4, "auth_bizEntity"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 8931
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 8932
    const-string/jumbo v0, "cid"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8933
    const-string/jumbo v0, "msgId"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v2

    .line 8938
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->showLoadingDialog()V

    .line 8939
    invoke-direct {p0, v3, v1, v0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->a(Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 8934
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v2

    move-object v2, v6

    .line 8935
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    :cond_3
    move-object v0, v1

    move-object v1, v2

    goto :goto_2

    :cond_4
    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;ILcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;
    .param p1, "x1"    # Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .param p2, "x2"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-direct/range {p0 .. p5}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->a(Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;ILcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;ILjava/lang/String;Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;
    .param p1, "x1"    # Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .param p2, "x2"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    .prologue
    const v5, 0x7f09212f

    const v4, 0x7f09212d

    const v3, 0x7f09212b

    const/4 v1, 0x0

    .line 98
    .line 6565
    invoke-virtual {p5}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    .line 6566
    :goto_0
    new-instance v2, Lcng;

    invoke-direct {v2, v5, v5}, Lcng;-><init>(II)V

    invoke-virtual {p5, v2, v1}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Lcng;Z)V

    .line 6567
    new-instance v2, Lcng;

    invoke-direct {v2, v4, v4}, Lcng;-><init>(II)V

    invoke-virtual {p5, v2, v1}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Lcng;Z)V

    .line 6568
    new-instance v2, Lcng;

    invoke-direct {v2, v3, v3}, Lcng;-><init>(II)V

    invoke-virtual {p5, v2, v1}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Lcng;Z)V

    .line 6569
    if-eqz v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p5

    move-object v5, p4

    .line 6570
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->a(Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;ILcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 6565
    goto :goto_0

    .line 6572
    :cond_1
    invoke-virtual {p5}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->notifyDataSetChanged()V

    goto :goto_1
.end method

.method private a(Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;ILcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;Ljava/lang/String;)V
    .locals 9
    .param p1, "photo"    # Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .param p2, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p3, "index"    # I
    .param p4, "menuAdapter"    # Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;
    .param p5, "token"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 577
    invoke-virtual {p4}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 578
    new-instance v8, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v8, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 579
    .local v8, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    move-object v5, p2

    .line 580
    .local v5, "finalSpaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    move-object v6, p5

    .line 582
    .local v6, "finalToken":Ljava/lang/String;
    new-instance v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move v4, p3

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;-><init>(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;ILcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    invoke-virtual {v8, p4, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 873
    invoke-virtual {v8}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 875
    .end local v5    # "finalSpaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .end local v6    # "finalToken":Ljava/lang/String;
    .end local v8    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    :cond_0
    return-void
.end method

.method private a(Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;ILjava/lang/String;)V
    .locals 14
    .param p1, "photo"    # Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .param p2, "menuAdapter"    # Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;
    .param p3, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p4, "index"    # I
    .param p5, "token"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1166
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->c:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1168
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->c:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->c:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    invoke-virtual {v1}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->b(I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1169
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    if-nez v8, :cond_1

    .line 1206
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 1174
    .restart local v8    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 1175
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 1176
    .local v9, "bw":I
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 1177
    .local v7, "bh":I
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {p0, v9, v7, v0}, Lcom/alibaba/laiwang/photokit/utils/ImageUtils;->a(Landroid/content/Context;IIF)I

    move-result v12

    .line 1178
    .local v12, "sample":I
    const/4 v0, 0x1

    if-le v12, v0, :cond_3

    .line 1179
    div-int v0, v9, v12

    div-int v1, v7, v12

    const/4 v2, 0x0

    invoke-static {v8, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1185
    .end local v7    # "bh":I
    .end local v9    # "bw":I
    .end local v12    # "sample":I
    :cond_2
    :goto_1
    if-eqz v8, :cond_0

    .line 1186
    move-object v10, v8

    .line 1187
    .local v10, "qrBitmap":Landroid/graphics/Bitmap;
    const-string/jumbo v0, "THREAD"

    .line 1188
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 1189
    .local v11, "queueThread":Lcom/alibaba/doraemon/threadpool/Thread;
    sget-object v0, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v11, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 1190
    new-instance v13, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$a;

    new-instance v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$10;

    move-object v1, p0

    move-object/from16 v2, p2

    move-object v3, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$10;-><init>(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;ILjava/lang/String;)V

    invoke-direct {v13, v0, p0, v10}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$a;-><init>(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$b;Landroid/app/Activity;Landroid/graphics/Bitmap;)V

    invoke-interface {v11, v13}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1181
    .end local v10    # "qrBitmap":Landroid/graphics/Bitmap;
    .end local v11    # "queueThread":Lcom/alibaba/doraemon/threadpool/Thread;
    .restart local v7    # "bh":I
    .restart local v9    # "bw":I
    .restart local v12    # "sample":I
    :cond_3
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_1
.end method

.method private static a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Z
    .locals 2
    .param p0, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .prologue
    const/4 v0, 0x0

    .line 1081
    if-nez p0, :cond_1

    .line 1087
    :cond_0
    :goto_0
    return v0

    .line 1084
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1085
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 201
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 202
    .local v2, "intent":Landroid/content/Intent;
    if-nez v2, :cond_1

    .line 203
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->finish()V

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    const-string/jumbo v4, "is_encrypt_fragment"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->p:Z

    .line 208
    const-string/jumbo v4, "is_cache_list"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->o:Z

    .line 209
    const-string/jumbo v4, "org_id"

    const-wide/16 v8, 0x0

    invoke-virtual {v2, v4, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->g:J

    .line 210
    iget-boolean v4, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->o:Z

    if-nez v4, :cond_4

    .line 211
    const-string/jumbo v4, "dentry_list"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->f:Ljava/util/ArrayList;

    .line 217
    :goto_1
    const-string/jumbo v4, "is_space_admin"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->h:Z

    .line 218
    const-string/jumbo v4, "check_space_admin"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->i:Z

    .line 219
    const-string/jumbo v4, "mail_attach_urls"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getBooleanArrayExtra(Ljava/lang/String;)[Z

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->j:[Z

    .line 220
    const-string/jumbo v4, "mail_attach_names"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->m:[Ljava/lang/String;

    .line 221
    const-string/jumbo v4, "burnChat"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->b:Z

    .line 222
    const-string/jumbo v4, "file_name"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->n:Ljava/lang/String;

    .line 223
    const-string/jumbo v4, "intent_key_find_in_chat"

    invoke-static {v2, v4, v6}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->q:Z

    .line 224
    const-string/jumbo v4, "intent_key_finish_when_click_view_button"

    invoke-static {v2, v4, v6}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->r:Z

    .line 225
    const-string/jumbo v4, "from"

    invoke-static {v2, v4}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->s:Ljava/lang/String;

    .line 3255
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 3256
    iget-boolean v7, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->b:Z

    if-eqz v7, :cond_2

    .line 3258
    const-string/jumbo v7, "is_disable_save"

    invoke-virtual {v4, v7, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3260
    :cond_2
    iget-boolean v7, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->p:Z

    if-eqz v7, :cond_6

    .line 3261
    iget-object v7, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->e:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    if-nez v7, :cond_5

    .line 3262
    invoke-static {v4}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->a(Landroid/os/Bundle;)Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->e:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    .line 3267
    :goto_2
    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->e:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    iput-object v4, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->c:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    .line 3277
    :goto_3
    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->c:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    if-eqz v4, :cond_3

    .line 3278
    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->c:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    invoke-virtual {v4, p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->a(Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$e;)V

    .line 229
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->getSupportFragmentManager()Lcn;

    move-result-object v1

    .line 230
    .local v1, "fm":Lcn;
    const-string/jumbo v4, "showRemove"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->l:Z

    .line 231
    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->c:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    iget-object v7, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->A:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$c;

    invoke-virtual {v4, v7}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->a(Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$c;)V

    .line 232
    iget-object v7, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->c:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    const-string/jumbo v4, "hide_list_button"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_8

    move v4, v5

    :goto_4
    invoke-virtual {v7, v4}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->a(Z)V

    .line 233
    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->c:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    const-string/jumbo v5, "showOrigin"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->b(Z)V

    .line 234
    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->c:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    invoke-virtual {v4}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->isAdded()Z

    move-result v4

    if-nez v4, :cond_0

    .line 235
    invoke-virtual {v1}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    const v5, 0x7f110297

    iget-object v6, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->c:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->b()I

    goto/16 :goto_0

    .line 213
    .end local v1    # "fm":Lcn;
    :cond_4
    const-string/jumbo v4, "cache_key"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "cacheKey":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v3

    .line 215
    .local v3, "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    invoke-virtual {v3, v0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->f:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 3264
    .end local v0    # "cacheKey":Ljava/lang/String;
    .end local v3    # "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    :cond_5
    iget-object v7, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->e:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    invoke-virtual {v7, v4}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->b(Landroid/os/Bundle;)V

    goto :goto_2

    .line 3269
    :cond_6
    iget-object v7, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->d:Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;

    if-nez v7, :cond_7

    .line 3270
    invoke-static {v4}, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->a(Landroid/os/Bundle;)Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->d:Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;

    .line 3275
    :goto_5
    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->d:Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;

    iput-object v4, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->c:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    goto :goto_3

    .line 3272
    :cond_7
    iget-object v7, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->d:Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;

    invoke-virtual {v7, v4}, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->b(Landroid/os/Bundle;)V

    goto :goto_5

    .restart local v1    # "fm":Lcn;
    :cond_8
    move v4, v6

    .line 232
    goto :goto_4
.end method

.method static synthetic b(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;
    .param p1, "x1"    # Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .prologue
    .line 98
    .line 7117
    if-eqz p1, :cond_0

    .line 7118
    const/4 v0, 0x0

    .line 7120
    :try_start_0
    iget-wide v0, p1, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->id:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v0, v0

    .line 7123
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->B:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 98
    :cond_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->r:Z

    return v0
.end method

.method private c()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 561
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->s:Ljava/lang/String;

    const-string/jumbo v1, "from_im_chat"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->q:Z

    return v0
.end method

.method private d()Lorg/json/JSONArray;
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1128
    iget-object v6, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->B:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 1129
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 1131
    .local v5, "result":Lorg/json/JSONArray;
    :try_start_0
    iget-object v6, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->B:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1132
    .local v2, "l":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1133
    iget-object v6, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->B:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .line 1134
    .local v3, "photo":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1135
    .local v4, "removeObject":Lorg/json/JSONObject;
    const-string/jumbo v6, "index"

    iget-wide v8, v3, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->id:J

    int-to-long v10, v1

    sub-long/2addr v8, v10

    invoke-virtual {v4, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1136
    const-string/jumbo v6, "url"

    iget-object v7, v3, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1137
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1139
    .end local v1    # "i":I
    .end local v2    # "l":I
    .end local v3    # "photo":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .end local v4    # "removeObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 1140
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1144
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v5    # "result":Lorg/json/JSONArray;
    :cond_0
    :goto_1
    return-object v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method static synthetic d(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->p:Z

    return v0
.end method

.method private e()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v2, 0x2000

    .line 1286
    iget-boolean v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->b:Z

    if-eqz v1, :cond_1

    .line 1287
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x2000

    if-nez v1, :cond_0

    .line 1288
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1297
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    or-int/lit8 v2, v2, 0x4

    or-int/lit16 v2, v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1303
    :goto_1
    return-void

    .line 1291
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_0

    .line 1292
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 1299
    :catch_0
    move-exception v0

    .line 1300
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "im"

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "updateWindowFlag failed, error="

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 1301
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1300
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic e(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->b:Z

    return v0
.end method

.method static synthetic f(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->k:Z

    return v0
.end method

.method static synthetic g(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->g:J

    return-wide v0
.end method

.method static synthetic h(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;)Lcma;
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    .prologue
    .line 98
    .line 7878
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->showLoadingDialog()V

    .line 7879
    new-instance v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$7;

    invoke-direct {v0, p0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$7;-><init>(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;)V

    .line 7897
    const-class v1, Lcma;

    invoke-static {v0, v1, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 98
    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->w:J

    return-wide v0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1318
    iget v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->t:I

    iget v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->u:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFixedOrientation()Z
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x1

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 165
    invoke-super {p0}, Lcom/alibaba/android/rimet/BaseActivity;->onAttachedToWindow()V

    .line 167
    invoke-static {p0}, Lcoj;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 169
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    xor-int/lit8 v1, v1, 0x4

    xor-int/lit16 v1, v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 172
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1307
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1308
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->c:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1312
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/rimet/BaseActivity;->onBackPressed()V

    .line 1314
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 241
    if-eqz p1, :cond_0

    .line 242
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->u:I

    .line 244
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 245
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 246
    .local v0, "lastHeight":I
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 247
    .local v1, "lastWidth":I
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$1;-><init>(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;II)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 259
    .end local v0    # "lastHeight":I
    .end local v1    # "lastWidth":I
    :cond_1
    invoke-super {p0, p1}, Lcom/alibaba/android/rimet/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 260
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 150
    invoke-super {p0, p1}, Lcom/alibaba/android/rimet/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 151
    const v0, 0x7f0400d6

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->setContentView(I)V

    .line 2175
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "orientation"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->t:I

    .line 2176
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2177
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->u:I

    .line 2179
    :cond_0
    iget v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->t:I

    if-ne v0, v3, :cond_1

    .line 2180
    iget v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->u:I

    iput v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->t:I

    .line 2183
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "save_to_phone_enter_hide"

    invoke-static {v0, v1, v2}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->x:Z

    .line 2184
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "save_space_enter_hide"

    invoke-static {v0, v1, v2}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->y:Z

    .line 2185
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "forward_enter_hide"

    invoke-static {v0, v1, v2}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->z:Z

    .line 153
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->b()V

    .line 154
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->e()V

    .line 2323
    new-instance v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$2;-><init>(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->v:Landroid/content/BroadcastReceiver;

    .line 2336
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2337
    const-string/jumbo v1, "action_ding_create_result"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2338
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->v:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 156
    return-void
.end method

.method public onDestroy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1150
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->d()Lorg/json/JSONArray;

    move-result-object v1

    .line 1151
    .local v1, "removedImage":Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    .line 1152
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1153
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.alibaba.laiwang.photokit.browser.remove"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1154
    const-string/jumbo v2, "com.alibaba.laiwang.photokit.browser.remove.urls"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1155
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    invoke-virtual {v2, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 5342
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->v:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 1159
    invoke-super {p0}, Lcom/alibaba/android/rimet/BaseActivity;->onDestroy()V

    .line 1160
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 190
    invoke-super {p0, p1}, Lcom/alibaba/android/rimet/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 191
    if-nez p1, :cond_0

    .line 198
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->setIntent(Landroid/content/Intent;)V

    .line 196
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->b()V

    .line 197
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->e()V

    goto :goto_0
.end method
