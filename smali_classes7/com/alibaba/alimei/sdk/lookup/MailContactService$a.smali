.class public final Lcom/alibaba/alimei/sdk/lookup/MailContactService$a;
.super Ljava/lang/Object;
.source "MailContactService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/sdk/lookup/MailContactService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLjava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountId"    # J
    .param p4, "accountName"    # Ljava/lang/String;

    .prologue
    .line 81
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/alibaba/alimei/sdk/lookup/MailContactService$a;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 82
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/lookup/MailContactService$a;->a:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p2, "accountMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p2, p0, Lcom/alibaba/alimei/sdk/lookup/MailContactService$a;->a:Ljava/util/HashMap;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 89
    .local v0, "ctx":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 90
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/lookup/MailContactService$a;->b:Landroid/content/Context;

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    iput-object v0, p0, Lcom/alibaba/alimei/sdk/lookup/MailContactService$a;->b:Landroid/content/Context;

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/util/HashMap;B)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/alibaba/alimei/sdk/lookup/MailContactService$a;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    return-void
.end method

.method private a(Ljava/lang/String;JLjava/util/HashSet;)Ljava/util/List;
    .locals 22
    .param p1, "mailList"    # Ljava/lang/String;
    .param p2, "accountId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/db/lookup/entry/RecipientLookup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    .local p4, "mailKeys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 179
    :cond_0
    const/4 v8, 0x0

    .line 269
    :cond_1
    return-object v8

    .line 182
    :cond_2
    invoke-static/range {p1 .. p1}, Lair;->i(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 183
    .local v3, "addressList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v8, "lookupList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/lookup/entry/RecipientLookup;>;"
    if-eqz v3, :cond_1

    .line 185
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailAdditionalDatasource()Lcom/alibaba/alimei/sdk/datasource/MailAdditionalDatasource;

    move-result-object v4

    .line 186
    .local v4, "contactDatasource":Lcom/alibaba/alimei/sdk/datasource/MailAdditionalDatasource;
    if-eqz v4, :cond_1

    .line 189
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_3
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 190
    .local v9, "model":Lcom/alibaba/alimei/sdk/model/AddressModel;
    new-instance v7, Lcom/alibaba/alimei/sdk/db/lookup/entry/RecipientLookup;

    invoke-direct {v7}, Lcom/alibaba/alimei/sdk/db/lookup/entry/RecipientLookup;-><init>()V

    .line 191
    .local v7, "lookup":Lcom/alibaba/alimei/sdk/db/lookup/entry/RecipientLookup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/lookup/MailContactService$a;->a:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 192
    .local v2, "account":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 195
    iput-object v2, v7, Lcom/alibaba/alimei/sdk/db/lookup/entry/RecipientLookup;->account:Ljava/lang/String;

    .line 196
    iget-object v0, v9, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v0, v7, Lcom/alibaba/alimei/sdk/db/lookup/entry/RecipientLookup;->email:Ljava/lang/String;

    .line 197
    iget-object v0, v9, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v0, v7, Lcom/alibaba/alimei/sdk/db/lookup/entry/RecipientLookup;->name:Ljava/lang/String;

    .line 198
    iget-object v0, v7, Lcom/alibaba/alimei/sdk/db/lookup/entry/RecipientLookup;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 199
    iget-object v0, v7, Lcom/alibaba/alimei/sdk/db/lookup/entry/RecipientLookup;->email:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 201
    iget-object v0, v7, Lcom/alibaba/alimei/sdk/db/lookup/entry/RecipientLookup;->email:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string/jumbo v21, "@"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 202
    .local v5, "firstPos":I
    if-lez v5, :cond_6

    .line 203
    iget-object v0, v7, Lcom/alibaba/alimei/sdk/db/lookup/entry/RecipientLookup;->email:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v7, Lcom/alibaba/alimei/sdk/db/lookup/entry/RecipientLookup;->name:Ljava/lang/String;

    .line 212
    .end local v5    # "firstPos":I
    :cond_4
    :goto_1
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v7, Lcom/alibaba/alimei/sdk/db/lookup/entry/RecipientLookup;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ":"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v9, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v7, Lcom/alibaba/alimei/sdk/db/lookup/entry/RecipientLookup;->key:Ljava/lang/String;

    .line 213
    iget-object v0, v7, Lcom/alibaba/alimei/sdk/db/lookup/entry/RecipientLookup;->key:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 216
    iget-object v0, v7, Lcom/alibaba/alimei/sdk/db/lookup/entry/RecipientLookup;->key:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v4, v2, v0}, Lcom/alibaba/alimei/sdk/datasource/MailAdditionalDatasource;->lookupContains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 219
    iget-object v0, v7, Lcom/alibaba/alimei/sdk/db/lookup/entry/RecipientLookup;->key:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 222
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alibaba/alimei/sdk/lookup/MailContactService;->a()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " add key = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v7, Lcom/alibaba/alimei/sdk/db/lookup/entry/RecipientLookup;->key:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lzb;->e(Ljava/lang/String;)I

    .line 224
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    .local v15, "sb":Ljava/lang/StringBuilder;
    iget-object v0, v7, Lcom/alibaba/alimei/sdk/db/lookup/entry/RecipientLookup;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lain;->a(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 228
    iget-object v0, v7, Lcom/alibaba/alimei/sdk/db/lookup/entry/RecipientLookup;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string/jumbo v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 229
    .local v11, "names":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    array-length v0, v11

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v6, v0, :cond_9

    .line 230
    aget-object v10, v11, v6

    .line 233
    .local v10, "nameTmp":Ljava/lang/String;
    invoke-static {v10}, Laiw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    const-string/jumbo v20, " "

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-static {}, Lagr;->a()Lagr;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lagr;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    .line 238
    .local v17, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lagr$a;>;"
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .local v14, "pinyinHeader":Ljava/lang/StringBuilder;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .local v13, "pinyinAll":Ljava/lang/StringBuilder;
    const/16 v18, 0x0

    .local v18, "x":I
    :goto_3
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_7

    .line 241
    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lagr$a;

    .line 242
    .local v16, "token":Lagr$a;
    move-object/from16 v0, v16

    iget v0, v0, Lagr$a;->a:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 245
    move-object/from16 v0, v16

    iget-object v12, v0, Lagr$a;->c:Ljava/lang/String;

    .line 246
    .local v12, "pinyin":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    .line 248
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .end local v12    # "pinyin":Ljava/lang/String;
    :cond_5
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 205
    .end local v6    # "j":I
    .end local v10    # "nameTmp":Ljava/lang/String;
    .end local v11    # "names":[Ljava/lang/String;
    .end local v13    # "pinyinAll":Ljava/lang/StringBuilder;
    .end local v14    # "pinyinHeader":Ljava/lang/StringBuilder;
    .end local v15    # "sb":Ljava/lang/StringBuilder;
    .end local v16    # "token":Lagr$a;
    .end local v17    # "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lagr$a;>;"
    .end local v18    # "x":I
    .restart local v5    # "firstPos":I
    :cond_6
    iget-object v0, v7, Lcom/alibaba/alimei/sdk/db/lookup/entry/RecipientLookup;->email:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v0, v7, Lcom/alibaba/alimei/sdk/db/lookup/entry/RecipientLookup;->name:Ljava/lang/String;

    goto/16 :goto_1

    .line 252
    .end local v5    # "firstPos":I
    .restart local v6    # "j":I
    .restart local v10    # "nameTmp":Ljava/lang/String;
    .restart local v11    # "names":[Ljava/lang/String;
    .restart local v13    # "pinyinAll":Ljava/lang/StringBuilder;
    .restart local v14    # "pinyinHeader":Ljava/lang/StringBuilder;
    .restart local v15    # "sb":Ljava/lang/StringBuilder;
    .restart local v17    # "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lagr$a;>;"
    .restart local v18    # "x":I
    :cond_7
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Laiw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    const-string/jumbo v20, " "

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Laiw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    const-string/jumbo v20, " "

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 259
    .end local v6    # "j":I
    .end local v10    # "nameTmp":Ljava/lang/String;
    .end local v11    # "names":[Ljava/lang/String;
    .end local v13    # "pinyinAll":Ljava/lang/StringBuilder;
    .end local v14    # "pinyinHeader":Ljava/lang/StringBuilder;
    .end local v17    # "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lagr$a;>;"
    .end local v18    # "x":I
    :cond_8
    iget-object v0, v7, Lcom/alibaba/alimei/sdk/db/lookup/entry/RecipientLookup;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Laiw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    :cond_9
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 263
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v7, Lcom/alibaba/alimei/sdk/db/lookup/entry/RecipientLookup;->lookup:Ljava/lang/String;

    .line 264
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method


# virtual methods
.method public final run()V
    .locals 26

    .prologue
    .line 98
    const-class v22, Lcom/alibaba/alimei/sdk/lookup/MailContactService;

    monitor-enter v22

    .line 99
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/lookup/MailContactService$a;->a:Ljava/util/HashMap;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/lookup/MailContactService$a;->a:Ljava/util/HashMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->size()I

    move-result v21

    if-nez v21, :cond_0

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/lookup/MailContactService$a;->a:Ljava/util/HashMap;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/alibaba/alimei/sdk/lookup/MailContactService;->a(Ljava/util/HashMap;)V

    .line 103
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/lookup/MailContactService$a;->a:Ljava/util/HashMap;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/lookup/MailContactService$a;->a:Ljava/util/HashMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 104
    :cond_1
    monitor-exit v22

    .line 174
    :goto_0
    return-void

    .line 107
    :cond_2
    const/4 v10, 0x1

    .line 108
    .local v10, "hasMore":Z
    new-instance v18, Lcom/alibaba/alimei/orm/query/Select;

    const-class v21, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v23, "EmailProvider.db"

    const-string/jumbo v24, "Message"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .local v18, "select":Lcom/alibaba/alimei/orm/query/Select;
    const/16 v21, 0x5

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v23, 0x0

    const-string/jumbo v24, "_id"

    aput-object v24, v21, v23

    const/16 v23, 0x1

    const-string/jumbo v24, "toList"

    aput-object v24, v21, v23

    const/16 v23, 0x2

    const-string/jumbo v24, "fromList"

    aput-object v24, v21, v23

    const/16 v23, 0x3

    const-string/jumbo v24, "bccList"

    aput-object v24, v21, v23

    const/16 v23, 0x4

    const-string/jumbo v24, "accountKey"

    aput-object v24, v21, v23

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 112
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v6, "bodyList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/lookup/entry/RecipientLookup;>;"
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 114
    .local v11, "mailKeys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 116
    .local v7, "count":I
    :goto_1
    if-eqz v10, :cond_a

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/lookup/MailContactService$a;->b:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/alibaba/alimei/sdk/lookup/MailContactService;->a(Landroid/content/Context;)J

    move-result-wide v12

    .line 118
    .local v12, "lastKey":J
    const-wide/16 v24, 0x64

    add-long v14, v12, v24

    .line 119
    .local v14, "maxKey":J
    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/alimei/orm/query/Select;->resetSelectAndKeepColumns()V

    .line 121
    const-string/jumbo v21, "_id>? AND _id<?"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v17

    .line 123
    .local v17, "msgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    if-nez v17, :cond_3

    .line 125
    const-string/jumbo v21, "MailContactService no more message found"

    invoke-static/range {v21 .. v21}, Lzb;->f(Ljava/lang/String;)I

    .line 127
    const/4 v10, 0x0

    .line 128
    goto :goto_1

    .line 132
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 133
    invoke-virtual {v11}, Ljava/util/HashSet;->clear()V

    .line 135
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_4
    :goto_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_8

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 136
    .local v16, "msg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    move-object/from16 v0, v16

    iget-object v9, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mFrom:Ljava/lang/String;

    .line 137
    .local v9, "fromList":Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mTo:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 138
    .local v20, "toList":Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mBcc:Ljava/lang/String;

    .line 140
    .local v5, "bccList":Ljava/lang/String;
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    move-wide/from16 v24, v0

    cmp-long v23, v24, v12

    if-lez v23, :cond_5

    .line 141
    move-object/from16 v0, v16

    iget-wide v12, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    .line 144
    :cond_5
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mAccountKey:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-direct {v0, v9, v1, v2, v11}, Lcom/alibaba/alimei/sdk/lookup/MailContactService$a;->a(Ljava/lang/String;JLjava/util/HashSet;)Ljava/util/List;

    move-result-object v8

    .line 145
    .local v8, "fromBodyList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/lookup/entry/RecipientLookup;>;"
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mAccountKey:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v2, v24

    invoke-direct {v0, v1, v2, v3, v11}, Lcom/alibaba/alimei/sdk/lookup/MailContactService$a;->a(Ljava/lang/String;JLjava/util/HashSet;)Ljava/util/List;

    move-result-object v19

    .line 146
    .local v19, "toBodyList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/lookup/entry/RecipientLookup;>;"
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mAccountKey:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-direct {v0, v5, v1, v2, v11}, Lcom/alibaba/alimei/sdk/lookup/MailContactService$a;->a(Ljava/lang/String;JLjava/util/HashSet;)Ljava/util/List;

    move-result-object v4

    .line 148
    .local v4, "bccBodyList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/lookup/entry/RecipientLookup;>;"
    if-eqz v8, :cond_6

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_6

    .line 149
    invoke-interface {v6, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 152
    :cond_6
    if-eqz v19, :cond_7

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_7

    .line 153
    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 156
    :cond_7
    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_4

    .line 157
    invoke-interface {v6, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 174
    .end local v4    # "bccBodyList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/lookup/entry/RecipientLookup;>;"
    .end local v5    # "bccList":Ljava/lang/String;
    .end local v6    # "bodyList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/lookup/entry/RecipientLookup;>;"
    .end local v7    # "count":I
    .end local v8    # "fromBodyList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/lookup/entry/RecipientLookup;>;"
    .end local v9    # "fromList":Ljava/lang/String;
    .end local v10    # "hasMore":Z
    .end local v11    # "mailKeys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v12    # "lastKey":J
    .end local v14    # "maxKey":J
    .end local v16    # "msg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .end local v17    # "msgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    .end local v18    # "select":Lcom/alibaba/alimei/orm/query/Select;
    .end local v19    # "toBodyList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/lookup/entry/RecipientLookup;>;"
    .end local v20    # "toList":Ljava/lang/String;
    :catchall_0
    move-exception v21

    monitor-exit v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v21

    .line 161
    .restart local v6    # "bodyList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/lookup/entry/RecipientLookup;>;"
    .restart local v7    # "count":I
    .restart local v10    # "hasMore":Z
    .restart local v11    # "mailKeys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v12    # "lastKey":J
    .restart local v14    # "maxKey":J
    .restart local v17    # "msgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    .restart local v18    # "select":Lcom/alibaba/alimei/orm/query/Select;
    :cond_8
    :try_start_1
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_9

    .line 162
    invoke-static {v6}, Lcom/alibaba/alimei/sdk/lookup/MailContactService;->a(Ljava/util/List;)Z

    .line 164
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/lookup/MailContactService$a;->b:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v12, v13}, Lcom/alibaba/alimei/sdk/lookup/MailContactService;->a(Landroid/content/Context;J)V

    .line 166
    add-int/lit8 v7, v7, 0x1

    .line 168
    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v23, "execute count = "

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lzb;->f(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 172
    .end local v12    # "lastKey":J
    .end local v14    # "maxKey":J
    .end local v17    # "msgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    :cond_a
    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v23, "final execute count = "

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lzb;->f(Ljava/lang/String;)I

    .line 174
    monitor-exit v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method
