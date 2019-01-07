.class public Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "NameCardInfosActivity.java"

# interfaces
.implements Lfsy$a;


# instance fields
.field private a:Lfte;

.field private b:Landroid/support/v7/widget/RecyclerView;

.field private c:Lcom/alibaba/android/user/namecard/base/BaseAdapter;

.field private final d:I

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfsi;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/content/BroadcastReceiver;

.field private g:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

.field private h:Lfsp;

.field private i:Lfsr;

.field private j:Lfsr;

.field private k:Lfsr;

.field private l:Lfsr;

.field private m:Lfsr;

.field private n:Lfst;

.field private o:Lfss;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 68
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->d:I

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->e:Ljava/util/List;

    .line 76
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->g:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;

    .prologue
    const/4 v2, 0x1

    .line 62
    .line 23337
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 23338
    const-string/jumbo v1, "album_single"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 23339
    const-string/jumbo v1, "album_need_crop"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 23340
    const-string/jumbo v1, "album_need_preview"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 23341
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->b(Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 62
    .line 23443
    invoke-static {p1}, Lcoo;->a(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 23445
    if-eqz v0, :cond_0

    .line 23449
    const-string/jumbo v1, "POSITION"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 23450
    const-string/jumbo v2, "MAIL"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 23451
    const-string/jumbo v3, "ADDRESS"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 23452
    const-string/jumbo v4, "MPHONE"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 23453
    const-string/jumbo v5, "NAME"

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 23454
    const-string/jumbo v6, "COMPANY"

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23455
    new-instance v6, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    invoke-direct {v6}, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;-><init>()V

    .line 23456
    new-instance v7, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    invoke-direct {v7}, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;-><init>()V

    iput-object v7, v6, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    .line 23457
    iget-object v7, v6, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iput-object v2, v7, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->email:Ljava/lang/String;

    .line 23458
    iget-object v2, v6, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->address:Ljava/lang/String;

    .line 23459
    iput-object v5, v6, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->name:Ljava/lang/String;

    .line 23460
    iget-object v2, v6, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iput-object v1, v2, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->title:Ljava/lang/String;

    .line 23461
    iget-object v1, v6, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iput-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->orgName:Ljava/lang/String;

    .line 23462
    iput-object v4, v6, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->tel:Ljava/lang/String;

    .line 23463
    invoke-virtual {p0, v6}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V

    .line 62
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;)Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->g:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    return-object v0
.end method

.method private b(Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V
    .locals 18
    .param p1, "model"    # Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    .prologue
    .line 170
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v14}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v5

    .line 171
    .local v5, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 172
    .local v9, "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v14

    if-ge v2, v14, :cond_1

    .line 173
    invoke-virtual {v5, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 174
    .local v12, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v14, v12}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v13

    check-cast v13, Lfsd;

    .line 175
    .local v13, "viewHolder":Lfsd;
    instance-of v14, v13, Lfsf;

    if-eqz v14, :cond_0

    move-object v3, v13

    .line 176
    check-cast v3, Lfsf;

    .line 177
    .local v3, "inputable":Lfsf;, "Lfsf<Lfse<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v3}, Lfsf;->a()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lfse;

    .line 178
    .local v8, "result":Lfse;, "Lfse<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v8, :cond_0

    .line 179
    iget-object v4, v8, Lfse;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 180
    .local v4, "key":Ljava/lang/String;
    iget-object v11, v8, Lfse;->b:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    .line 181
    .local v11, "value":Ljava/lang/String;
    invoke-interface {v9, v4, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .end local v3    # "inputable":Lfsf;, "Lfsf<Lfse<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v8    # "result":Lfse;, "Lfse<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "value":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 186
    .end local v12    # "view":Landroid/view/View;
    .end local v13    # "viewHolder":Lfsd;
    :cond_1
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    if-nez v14, :cond_2

    .line 187
    new-instance v14, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    invoke-direct {v14}, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;-><init>()V

    move-object/from16 v0, p1

    iput-object v14, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    .line 189
    :cond_2
    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_3
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_d

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 190
    .restart local v4    # "key":Ljava/lang/String;
    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 191
    .restart local v11    # "value":Ljava/lang/String;
    const-string/jumbo v15, "mediaId"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 192
    move-object/from16 v0, p1

    iput-object v11, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->avatarMediaId:Ljava/lang/String;

    goto :goto_1

    .line 193
    :cond_4
    const-string/jumbo v15, "name"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 194
    move-object/from16 v0, p1

    iput-object v11, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->name:Ljava/lang/String;

    goto :goto_1

    .line 195
    :cond_5
    const-string/jumbo v15, "tel"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 196
    move-object/from16 v0, p1

    iput-object v11, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->tel:Ljava/lang/String;

    goto :goto_1

    .line 197
    :cond_6
    const-string/jumbo v15, "job"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 198
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iput-object v11, v15, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->title:Ljava/lang/String;

    goto :goto_1

    .line 199
    :cond_7
    const-string/jumbo v15, "addr"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 200
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iput-object v11, v15, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->address:Ljava/lang/String;

    goto :goto_1

    .line 201
    :cond_8
    const-string/jumbo v15, "email"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 202
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iput-object v11, v15, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->email:Ljava/lang/String;

    goto :goto_1

    .line 203
    :cond_9
    const-string/jumbo v15, "org"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 204
    move-object v7, v11

    .line 206
    .local v7, "orgName":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_b

    const-string/jumbo v15, "|"

    invoke-virtual {v11, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 207
    const-string/jumbo v15, "\\|"

    invoke-virtual {v11, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 208
    .local v10, "strs":[Ljava/lang/String;
    array-length v15, v10

    if-lez v15, :cond_a

    .line 209
    const/4 v15, 0x0

    aget-object v7, v10, v15

    .line 211
    :cond_a
    array-length v15, v10

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_b

    .line 212
    const/4 v15, 0x1

    aget-object v6, v10, v15

    .line 213
    .local v6, "orgId":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_b

    .line 214
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    .line 14109
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-static {v6, v0, v1}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v16

    .line 214
    move-wide/from16 v0, v16

    iput-wide v0, v15, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->orgId:J

    .line 218
    .end local v6    # "orgId":Ljava/lang/String;
    .end local v10    # "strs":[Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iput-object v7, v15, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->orgName:Ljava/lang/String;

    goto/16 :goto_1

    .line 219
    .end local v7    # "orgName":Ljava/lang/String;
    :cond_c
    const-string/jumbo v15, "introduce"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 220
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iput-object v11, v15, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->introduce:Ljava/lang/String;

    goto/16 :goto_1

    .line 223
    .end local v4    # "key":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    :cond_d
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;)Lfte;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->a:Lfte;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 136
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 137
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->setResult(ILandroid/content/Intent;)V

    .line 138
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->finish()V

    .line 139
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V
    .locals 6
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 293
    if-nez p1, :cond_0

    .line 331
    :goto_0
    return-void

    .line 296
    :cond_0
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->g:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    .line 297
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->h:Lfsp;

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->avatarMediaId:Ljava/lang/String;

    .line 15026
    iput-object v3, v1, Lfsp;->b:Ljava/lang/String;

    .line 298
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->h:Lfsp;

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->name:Ljava/lang/String;

    .line 15031
    iput-object v3, v1, Lfsp;->c:Ljava/lang/String;

    .line 299
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->i:Lfsr;

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->name:Ljava/lang/String;

    .line 16022
    iput-object v3, v1, Lfsr;->a:Ljava/lang/String;

    .line 300
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->j:Lfsr;

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->tel:Ljava/lang/String;

    .line 17022
    iput-object v3, v1, Lfsr;->a:Ljava/lang/String;

    .line 302
    iget-object v3, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->k:Lfsr;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    if-nez v1, :cond_2

    move-object v1, v2

    .line 18022
    :goto_1
    iput-object v1, v3, Lfsr;->a:Ljava/lang/String;

    .line 303
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardExtensionObject:Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;

    if-eqz v1, :cond_1

    .line 305
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iget-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardExtensionObject:Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;

    .line 307
    .local v0, "model":Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;
    iget-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;->orgAuthed:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->k:Lfsr;

    iget-object v1, v1, Lfsr;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;->titleAuthed:Z

    if-eqz v1, :cond_3

    .line 308
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->k:Lfsr;

    const/4 v3, 0x1

    .line 18042
    iput-boolean v3, v1, Lfsr;->e:Z

    .line 310
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->k:Lfsr;

    new-instance v3, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$3;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$3;-><init>(Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;)V

    .line 18047
    iput-object v3, v1, Lfsr;->f:Landroid/view/View$OnClickListener;

    .line 322
    .end local v0    # "model":Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;
    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->l:Lfsr;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    if-nez v1, :cond_4

    move-object v1, v2

    .line 20022
    :goto_3
    iput-object v1, v3, Lfsr;->a:Ljava/lang/String;

    .line 323
    iget-object v3, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->m:Lfsr;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    if-nez v1, :cond_5

    move-object v1, v2

    .line 21022
    :goto_4
    iput-object v1, v3, Lfsr;->a:Ljava/lang/String;

    .line 324
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->orgName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 325
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->n:Lfst;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->orgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->orgId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 21026
    iput-object v3, v1, Lfst;->a:Ljava/lang/String;

    .line 329
    :goto_5
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->o:Lfss;

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    if-nez v3, :cond_7

    .line 23018
    :goto_6
    iput-object v2, v1, Lfss;->a:Ljava/lang/String;

    .line 330
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->c:Lcom/alibaba/android/user/namecard/base/BaseAdapter;

    invoke-virtual {v1}, Lcom/alibaba/android/user/namecard/base/BaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 302
    :cond_2
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->title:Ljava/lang/String;

    goto/16 :goto_1

    .line 318
    .restart local v0    # "model":Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->k:Lfsr;

    const/4 v3, 0x0

    .line 19042
    iput-boolean v3, v1, Lfsr;->e:Z

    .line 319
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->k:Lfsr;

    .line 19047
    iput-object v2, v1, Lfsr;->f:Landroid/view/View$OnClickListener;

    goto :goto_2

    .line 322
    .end local v0    # "model":Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;
    :cond_4
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->email:Ljava/lang/String;

    goto :goto_3

    .line 323
    :cond_5
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->address:Ljava/lang/String;

    goto :goto_4

    .line 327
    :cond_6
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->n:Lfst;

    .line 22026
    iput-object v2, v1, Lfst;->a:Ljava/lang/String;

    goto :goto_5

    .line 329
    :cond_7
    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->introduce:Ljava/lang/String;

    goto :goto_6
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 90
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    sget v0, Lezg$j;->activity_name_card_infos:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->setContentView(I)V

    .line 1226
    sget v0, Lezg$h;->name_card_create_rv_main:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->b:Landroid/support/v7/widget/RecyclerView;

    .line 1227
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 1228
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 1229
    new-instance v1, Lcom/alibaba/android/user/namecard/base/BaseAdapter;

    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/android/user/namecard/base/BaseAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->c:Lcom/alibaba/android/user/namecard/base/BaseAdapter;

    .line 1230
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 1231
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->c:Lcom/alibaba/android/user/namecard/base/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 1242
    new-instance v0, Lfsp;

    invoke-direct {v0}, Lfsp;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->h:Lfsp;

    .line 1243
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->h:Lfsp;

    new-instance v1, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$1;-><init>(Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;)V

    .line 2021
    iput-object v1, v0, Lfsp;->a:Lftb$b;

    .line 1249
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->h:Lfsp;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1251
    new-instance v0, Lfsr;

    invoke-direct {v0}, Lfsr;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->i:Lfsr;

    .line 1252
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->i:Lfsr;

    const-string/jumbo v1, "name"

    .line 2037
    iput-object v1, v0, Lfsr;->d:Ljava/lang/String;

    .line 1252
    sget v1, Lezg$l;->user_profile_name:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3027
    iput-object v1, v0, Lfsr;->b:Ljava/lang/String;

    .line 1252
    sget v1, Lezg$l;->manual_add_people_dlg_name_hint:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3032
    iput-object v1, v0, Lfsr;->c:Ljava/lang/String;

    .line 1253
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->i:Lfsr;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1255
    new-instance v0, Lfsr;

    invoke-direct {v0}, Lfsr;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->j:Lfsr;

    .line 1256
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->j:Lfsr;

    const-string/jumbo v1, "tel"

    .line 3037
    iput-object v1, v0, Lfsr;->d:Ljava/lang/String;

    .line 1256
    sget v1, Lezg$l;->dt_common_mobile_phone:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4027
    iput-object v1, v0, Lfsr;->b:Ljava/lang/String;

    .line 1256
    sget v1, Lezg$l;->manual_add_people_dlg_phone_hint:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4032
    iput-object v1, v0, Lfsr;->c:Ljava/lang/String;

    .line 1257
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->j:Lfsr;

    .line 4042
    iput-boolean v3, v0, Lfsr;->e:Z

    .line 1258
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->j:Lfsr;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1260
    new-instance v0, Lfst;

    invoke-direct {v0}, Lfst;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->n:Lfst;

    .line 1261
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->n:Lfst;

    const-string/jumbo v1, "org"

    .line 5021
    iput-object v1, v0, Lfst;->d:Ljava/lang/String;

    .line 1261
    sget v1, Lezg$l;->dt_external_contact_fields_company:I

    .line 1262
    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5031
    iput-object v1, v0, Lfst;->b:Ljava/lang/String;

    .line 1262
    sget v1, Lezg$l;->dt_card_input_org_name_hint:I

    .line 1263
    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5036
    iput-object v1, v0, Lfst;->c:Ljava/lang/String;

    .line 1263
    new-instance v1, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$2;-><init>(Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;)V

    .line 5042
    iput-object v1, v0, Lfst;->e:Lftb$b;

    .line 1270
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->n:Lfst;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1272
    new-instance v0, Lfsr;

    invoke-direct {v0}, Lfsr;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->k:Lfsr;

    .line 1273
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->k:Lfsr;

    const-string/jumbo v1, "job"

    .line 6037
    iput-object v1, v0, Lfsr;->d:Ljava/lang/String;

    .line 1273
    sget v1, Lezg$l;->edit_staff_position:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 7027
    iput-object v1, v0, Lfsr;->b:Ljava/lang/String;

    .line 1273
    sget v1, Lezg$l;->dt_name_input_title_hint:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 7032
    iput-object v1, v0, Lfsr;->c:Ljava/lang/String;

    .line 1274
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->k:Lfsr;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1276
    new-instance v0, Lfsr;

    invoke-direct {v0}, Lfsr;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->l:Lfsr;

    .line 1277
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->l:Lfsr;

    const-string/jumbo v1, "email"

    .line 7037
    iput-object v1, v0, Lfsr;->d:Ljava/lang/String;

    .line 1277
    sget v1, Lezg$l;->user_profile_email:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 8027
    iput-object v1, v0, Lfsr;->b:Ljava/lang/String;

    .line 1277
    sget v1, Lezg$l;->dt_external_input_mail:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 8032
    iput-object v1, v0, Lfsr;->c:Ljava/lang/String;

    .line 1278
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->l:Lfsr;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1280
    new-instance v0, Lfsr;

    invoke-direct {v0}, Lfsr;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->m:Lfsr;

    .line 1281
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->m:Lfsr;

    const-string/jumbo v1, "addr"

    .line 8037
    iput-object v1, v0, Lfsr;->d:Ljava/lang/String;

    .line 1281
    sget v1, Lezg$l;->dt_user_staff_address:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 9027
    iput-object v1, v0, Lfsr;->b:Ljava/lang/String;

    .line 1281
    sget v1, Lezg$l;->dt_card_input_org_address_hint:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 9032
    iput-object v1, v0, Lfsr;->c:Ljava/lang/String;

    .line 1282
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->m:Lfsr;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1284
    new-instance v0, Lfss;

    invoke-direct {v0}, Lfss;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->o:Lfss;

    .line 1285
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->o:Lfss;

    const-string/jumbo v1, "introduce"

    .line 10033
    iput-object v1, v0, Lfss;->d:Ljava/lang/String;

    .line 1285
    sget v1, Lezg$l;->dt_card_introduction:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 11023
    iput-object v1, v0, Lfss;->b:Ljava/lang/String;

    .line 1285
    sget v1, Lezg$l;->dt_card_input_self_introduction_hint:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 11028
    iput-object v1, v0, Lfss;->c:Ljava/lang/String;

    .line 1286
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->o:Lfss;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1288
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->c:Lcom/alibaba/android/user/namecard/base/BaseAdapter;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/namecard/base/BaseAdapter;->a(Ljava/util/List;)V

    .line 94
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lezg$l;->dt_card_info:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 97
    :cond_0
    new-instance v0, Lfte;

    invoke-direct {v0, p0}, Lfte;-><init>(Lfsy$a;)V

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->a:Lfte;

    .line 99
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->a:Lfte;

    .line 11047
    sget-object v1, Lfuj$b;->a:Lfuj;

    .line 11040
    new-instance v2, Lfte$1;

    invoke-direct {v2, v0}, Lfte$1;-><init>(Lfte;)V

    invoke-virtual {v1, v3, v2}, Lfuj;->a(ZLfuj$a;)V

    .line 11348
    new-instance v0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4;-><init>(Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->f:Landroid/content/BroadcastReceiver;

    .line 11425
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 11428
    const-string/jumbo v1, "com.workapp.choose.pictire.from.crop"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 11429
    const-string/jumbo v1, "selector_region"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 11430
    const-string/jumbo v1, "com.workapp.did.set.dingtalk.id"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 11431
    const-string/jumbo v1, "intent_key_certify_submitted"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 11432
    const-string/jumbo v1, "com.alibaba.dingtalk.runtimebase.WORK_MOBILE_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 11433
    const-string/jumbo v1, "dingCardSettingUpdated"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 11434
    const-string/jumbo v1, "action_name_card_select_company"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 11437
    const-string/jumbo v1, "com.workapp.recognize.card.from.camera"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 11439
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 102
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 106
    sget v1, Lezg$l;->save:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 107
    .local v0, "menuItemSent":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 108
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 110
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 468
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 469
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->f:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 470
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 472
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 115
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 121
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 12125
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->g:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->b(Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V

    .line 12126
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->g:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    .line 12143
    if-nez v0, :cond_0

    .line 12144
    sget v0, Lezg$l;->dt_card_card_is_empty:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 12127
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12128
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->a:Lfte;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->g:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    .line 14047
    sget-object v2, Lfuj$b;->a:Lfuj;

    .line 13050
    const/4 v3, 0x1

    new-instance v4, Lfte$2;

    invoke-direct {v4, v0}, Lfte$2;-><init>(Lfte;)V

    invoke-virtual {v2, v3, v1, v4}, Lfuj;->a(ZLcom/alibaba/android/dingtalk/userbase/model/CardUserObject;Lfuj$a;)V

    goto :goto_0

    .line 12149
    :cond_0
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12150
    sget v0, Lezg$l;->manual_add_people_dlg_name_hint:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 12151
    :cond_1
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->tel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12152
    sget v0, Lezg$l;->manual_add_people_dlg_phone_hint:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 12164
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_1

    .line 12130
    :cond_3
    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
